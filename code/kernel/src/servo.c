/**
 * @file   servo.c
 *
 * @brief  software servo driver
 *
 * @date   Mar.7th, 2018
 * @author David Dong <haochend@andrew.cmu.edu>
 */

#include <kstdint.h>
#include <servo.h>
#include <gpio.h>

/** @brief GPIO servo pin for channel 1*/
#define CHANNEL_1_PIN 12
/** @brief GPIO servo pin for channel 2*/
#define CHANNEL_2_PIN 13
/** @brief Channel 1 constant*/
#define CHANNEL_1 1
/** @brief Channel 2 constant*/
#define CHANNEL_2 2
/** @brief 20ms time constant*/
#define CONST_20MS 2000
/** @brief 0.6ms time constant*/
#define BASE 60

/** @brief if channel 1 enabled */
int enable1 = 0;
/** @brief if channel 2 enabled */
int enable2 = 0;
/** @brief channel 1 angle */
int angle1 = BASE;
/** @brief channel 2 angle */
int angle2 = BASE;
/** @brief timer count */
int timer = 0;
/** @brief set channel 1 high */
int high1 = 0;
/** @brief set channel 2 high */
int high2 = 0;

void servo_init() {
  gpio_set_pull(CHANNEL_1_PIN, GPIO_PULL_DISABLE);
  gpio_set_pull(CHANNEL_2_PIN, GPIO_PULL_DISABLE);
  gpio_config(CHANNEL_1_PIN, GPIO_FUN_OUTPUT);
  gpio_config(CHANNEL_2_PIN, GPIO_FUN_OUTPUT);
  servo_set(1,0);
  servo_set(2,0);
}

int servo_enable(uint8_t channel, uint8_t enabled) {
  if (channel == CHANNEL_1) {
    enable1 = enabled;
  } else if (channel == CHANNEL_2) {
    enable2 = enabled;
  } else return -1;
  return 0;
}

int servo_set(uint8_t channel, uint8_t angle) {
  if (channel == CHANNEL_1) {
    angle1 = BASE + angle;
  } else if (channel == CHANNEL_2) {
    angle2 = BASE + angle;
  } else return -1;
  return 0;
}

void run() {
  if(timer == 0){
    if(enable1) {
      gpio_set(CHANNEL_1_PIN);
      high1 = 1;
    }
    if(enable2) {
      gpio_set(CHANNEL_2_PIN);
      high2 = 1;
    }
  }
  else {
    if(high1 == 1 && timer == angle1) {
      gpio_clr(CHANNEL_1_PIN);
      high1 = 0;
    }
    if(high2 == 1 && timer == angle2) {
      gpio_clr(CHANNEL_2_PIN);
      high2 = 0;
    }
  }
  timer = (timer + 1) % CONST_20MS;
}
