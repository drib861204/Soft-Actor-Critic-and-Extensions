"""
Title: pendulum_pygame
Author: [jadenhensley](https://github.com/jadenhensley)
Last modified: 2021/10/18
Description: Pendulum project, built using pygame and math modules.

Title: wheelPole
Author: [aimetz](https://github.com/aimetz)
Last modified: 2021/04/20

Title: gym/gym/envs/classic_control/pendulum.py
Author: [openai](https://github.com/openai)
Last modified: 2021/10/31
"""
import pygame
from math import pi, sin, cos
import numpy as np


class Pendulum:
    def __init__(self, rend):
        # paras according to paper [LQR and MPC controller design and comparison for a stationary self-balancing bicycle robot with a reaction wheel]
        self.theta_rod = 0
        self.theta_wheel = 0
        self.theta_rod_dot = 0
        self.theta_wheel_dot = 0
        self.len_rod = 0.5 # 0.25
        self.len_wheel = 0.9 # 0.35
        self.rad_wheel = 0.1
        self.mass_rod = 0.1 # 20.1
        self.mass_wheel = 0.05 # 3.7
        self.momentum_rod = self.mass_rod*self.len_rod**2/12
        self.momentum_wheel = self.mass_wheel*self.rad_wheel**2/2 #depends on wheel shape
        self.dt = 0.001
        self.gravity = 9.8
        self.max_speed = 100
        self.torque = 0
        self.voltage = 0

        width = 800
        height = 600
        self.origin_x = width//2
        self.origin_y = height//2
        self.POS = np.array([self.origin_x, self.origin_y])

        if rend:
            pygame.init()
            self.screen = pygame.display.set_mode((width, height))
            pygame.display.set_caption("Pendulum Simulation")
            pygame.font.init()
            self.debug_font = pygame.font.SysFont('Bauhuas 93', 30)
            self.hint_font = pygame.font.SysFont('Bauhaus 93', 26)
            #print("font")


    def reset(self):
        roll_range = 20 #in degree
        self.theta_rod = (np.random.random()*2-1)*roll_range*pi/180
        #self.theta_wheel = 0
        self.theta_rod_dot = 0
        self.theta_wheel_dot = 0
        state = np.array([self.theta_rod, self.theta_rod_dot, self.theta_wheel_dot], dtype=np.float32)
        return state


    def render(self):
        #torque = action
        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                pygame.quit()


        SCALE = 100
        BLACK = (0, 0, 0)
        WHITE = (255, 255, 255)
        RED = (255, 0, 0)
        GRAY = (128, 128, 128)

        tip_x = self.POS[0]+self.len_wheel*sin(self.theta_rod)*SCALE
        tip_y = self.POS[1]-self.len_wheel*cos(self.theta_rod)*SCALE
        POSTIP = np.array([tip_x, tip_y])
        POSWHEEL = np.array(([tip_x+self.rad_wheel*sin(self.theta_wheel)*SCALE, tip_y+self.rad_wheel*cos(self.theta_wheel)*SCALE]))
        #print(POSTIP)
        self.screen.fill(WHITE)
        pygame.draw.line(self.screen, BLACK, self.POS, POSTIP, 10)
        pygame.draw.circle(self.screen, GRAY, POSTIP, self.rad_wheel*2*SCALE)
        pygame.draw.circle(self.screen, RED, POSWHEEL, self.rad_wheel*2*SCALE//5)
        img = self.hint_font.render(f"torque: {self.torque}", True, BLACK)
        img2 = self.hint_font.render(f"voltage: {self.voltage}", True, BLACK)
        self.screen.blit(img, (self.origin_x, self.origin_y/2-50))
        self.screen.blit(img2, (self.origin_x, self.origin_y/2-30))

        pygame.display.update()


    def step(self, action):
        q1 = self.theta_rod
        q2 = self.theta_wheel
        q1_dot = self.theta_rod_dot
        q2_dot = self.theta_wheel_dot
        l1 = self.len_rod
        l2 = self.len_wheel
        m1 = self.mass_rod
        m2 = self.mass_wheel
        I1 = self.momentum_rod
        I2 = self.momentum_wheel
        dt = self.dt
        g = self.gravity
        gear_ratio = 25
        kt = 0.0229
        ke = 0.0229
        R = 0.71
        action_scale = 12

        #torque = action
        voltage = action * action_scale
        torque = gear_ratio*kt/R*(voltage-ke*gear_ratio*q2_dot)

        Ip = m1*l1**2+m2*l2**2+I1+I2
        a = (m1*l1+m2*l2)*g*sin(angle_normalize(q1))

        newq1_dot = q1_dot + ((a-torque)/(Ip-I2))*dt
        #print("rod ang_vel",newq1_dot)
        #newq1_dot = np.clip(newq1_dot, -self.max_speed, self.max_speed)
        #print("rod ang_vel",newq1_dot)
        newq1 = angle_normalize(angle_normalize(q1) + newq1_dot * dt)
        #print("rod angle",newq1)

        newq2_dot = q2_dot + ((torque*Ip-a*I2)/I2/(Ip-I2))*dt
        newq2_dot = np.clip(newq2_dot, -self.max_speed, self.max_speed)
        #print("wheel ang_vel",newq2_dot)
        newq2 = angle_normalize(angle_normalize(q2) + newq2_dot * dt)
        #print("wheel angle",newq2)

        #print("torque",torque)
        #print("\n")
        #print([torque, newq1[0], newq2[0], newq1_dot[0], newq2_dot[0]])
        state = np.array([newq1[0], newq1_dot[0], newq2_dot[0]], dtype=np.float32)
        self.theta_rod = newq1
        self.theta_wheel = newq2
        self.theta_rod_dot = newq1_dot
        self.theta_wheel_dot = newq2_dot
        self.torque = torque
        self.voltage = voltage

        costs = 100 * angle_normalize(q1)**2 + 0.1 * q1_dot**2 + 0.001 * voltage**2

        return state, -costs, False, {}


    def close(self):
        pygame.display.quit()
        pygame.quit()


def angle_normalize(th):
    return ((th+pi)%(2*pi))-pi