#include <stdio.h>
#include <unistd.h>

#include "fpioa.h"
#include "gpio.h"

#define R_LED_PIN 13
#define G_LED_PIN 12
#define B_LED_PIN 14

int main() {
  gpio_init();
  fpioa_set_function(R_LED_PIN, FUNC_GPIO0);
  fpioa_set_function(G_LED_PIN, FUNC_GPIO1);
  fpioa_set_function(B_LED_PIN, FUNC_GPIO2);

  gpio_set_drive_mode(0, GPIO_DM_OUTPUT);
  gpio_set_drive_mode(1, GPIO_DM_OUTPUT);
  gpio_set_drive_mode(2, GPIO_DM_OUTPUT);

  gpio_set_pin(0, GPIO_PV_LOW);
  gpio_set_pin(1, GPIO_PV_LOW);
  gpio_set_pin(2, GPIO_PV_LOW);

  while (1) {
    gpio_set_pin(0, GPIO_PV_HIGH);
    sleep(1);
    gpio_set_pin(0, GPIO_PV_LOW);
    sleep(1);
    gpio_set_pin(1, GPIO_PV_HIGH);
    sleep(1);
    gpio_set_pin(1, GPIO_PV_LOW);
    sleep(1);
    gpio_set_pin(2, GPIO_PV_HIGH);
    sleep(1);
    gpio_set_pin(2, GPIO_PV_LOW);
    sleep(1);
  }
  return 1;
}
