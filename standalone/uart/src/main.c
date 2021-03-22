#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sysctl.h>

#include "fpioa.h"
#include "gpio.h"
#include "uart.h"

#define UART_NUM UART_DEVICE_2
#define UART_RX_PIN 7
#define UART_TX_PIN 8

void uart_init_function();
void uart_pin_init();
char RecBuf[128];

int main() {
  uart_pin_init();
  uart_init_function();
  int len = 0;
  while (1) {
    len = uart_receive_data(UART_NUM, RecBuf, 1);
    if (len > 0) {
      uart_send_data(UART_NUM, RecBuf, len);
    }
  }

  return 1;
}

void uart_init_function() {
  uart_init(UART_NUM);
  uart_config(UART_NUM, 115200, UART_BITWIDTH_8BIT, UART_STOP_1,
              UART_PARITY_NONE);
}

void uart_pin_init() {
  fpioa_set_function(UART_RX_PIN, FUNC_UART1_RX + UART_NUM * 2);
  fpioa_set_function(UART_TX_PIN, FUNC_UART1_TX + UART_NUM * 2);
}
