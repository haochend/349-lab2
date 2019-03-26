/**
 * @file   syscalls.c
 *
 * @brief  Implementation of syscalls needed for newlib and 349 custom syscalls
 *
 * @date   Mar.4th, 2018
 * @author David Dong <haochend@andrew.cmu.edu>
 */

#include <kstdint.h>
#include <uart.h>
#include <printk.h>
#include <servo.h>

/** @brief Global variable to keep track of where our heap ends */
char *heap_end = 0;

void syscall_exit(int status) {
  printk("Exit status: %d", status);
  while(1);
  return;
}


int syscall_write(int file, char *ptr, int len) {
  int i;
  if (file) {
    for (i=0; i<len; i++){
      uart_put_byte(ptr[i]);
    }
    return i;
  }
  return -1;
}


/**
 * Reads until all len bytes are read or newline/return is found.
 * Detects backspace and EOL characters and handles them appropriately.
 *
 * The idea is to mimic normal terminal reading input, that is,
 * if the user hits backspace it should erase the previously read character.
 */
int syscall_read(int file, char *ptr, int len) {
  int i=0;
  char c;
  if (!file) {
    while (i<len) {
      c=uart_get_byte();
      if (c==4) break;
      else if (c==8 || c==127) {
        if (i > 0) {
          i--;
          printk("\b \b");
        }
      } else if (c==10 || c==13) {
        if (c == 13) c = uart_get_byte();
        ptr[i]=c;
        printk("\n");
        return i+1;
      } else {
        ptr[i]=c;
        uart_put_byte(c);
        i++;
      }
    }
    return i;
  }
  return -1;
}

int syscall_servo_enable(uint8_t channel, uint8_t enabled) {
  return servo_enable(channel, enabled);
}

int syscall_servo_set(uint8_t channel, uint8_t angle) {
  return servo_set(channel, angle);
}

/*****************************************************************************/
/* TA system call implementations:                                           */
/*****************************************************************************/

void *syscall_sbrk(int incr) {
  extern char __heap_low; // Defined by the linker
  extern char __heap_top; // Defined by the linker
  char *prev_heap_end;

  if (heap_end == 0) {
    // Initialize heap_end if this is the first time sbrk was called
    heap_end = &__heap_low;
  }

  prev_heap_end = heap_end;
  if (heap_end + incr > &__heap_top) {
    // Heap and stack collision, return error
    return (void *) -1;
  }

  // update heap_end and return old heap_end
  heap_end += incr;
  return (void *) prev_heap_end;
}

int syscall_close(int file) {
  return -1;
}

int syscall_fstat(int file, void *st) {
  return 0;
}

int syscall_isatty(int file) {
  return 1;
}

int syscall_lseek(int file, int ptr, int dir) {
  return 0;
}
