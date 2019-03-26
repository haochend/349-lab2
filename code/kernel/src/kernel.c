/**
 * @file   kernel.c
 *
 * @brief  entry point to the raspberry pi kernel
 *
 * @date   Feb.22nd, 2018
 * @author David Dong <haochend@andrew.cmu.edu>
 */

#include <kstdint.h>
#include <printk.h>
#include <supervisor.h>
#include <arm.h>
#include <uart.h>
#include <timer.h>
#include <swi_num.h>
#include <syscalls.h>
#include <servo.h>

/**
 * @brief The kernel entry point
 */
void kernel_main(void) {
  uart_init();
  install_interrupt_table();
  servo_init();
  enable_interrupts();
  timer_start(10);
  enter_user_mode();
}


/**
 * @brief Handler called when an IRQ occurs
 */
void irq_c_handler(void) {
  run();
  timer_clear_pending();
  return;
}


/**
 * @brief Handles the given swi_num
 *
 * @param swi_num the swi number passed in from swi_asm_handler
 * @param args pointer to arguments array, set up by the swi_asm_handler
 *
 * @return the return result of the syscall
 */
void *swi_c_handler(int swi_num, int *args) {
  switch(swi_num) {
    case SWI_EXIT:
      syscall_exit(0);
      break;
    case SWI_SBRK:
      return (void*)syscall_sbrk(*args);
    case SWI_WRITE:
      return (void*)syscall_write(*args,(char*)*(args+1),*(args+2));
    case SWI_CLOSE:
      return (void*)syscall_close(*args);
    case SWI_FSTAT:
      return (void*)syscall_fstat(*args,(void*)*(args+1));
    case SWI_ISATTY:
      return (void*)syscall_isatty(*args);
    case SWI_LSEEK:
      return (void*)syscall_lseek(*args,*(args+1),*(args+2));
    case SWI_READ:
      return (void*)syscall_read(*args,(char*)*(args+1),*(args+2));
    case SWI_SERVO_ENABLE:
      return (void*)syscall_servo_enable(*args, *(args+1));
    case SWI_SERVO_SET:
      return (void*)syscall_servo_set(*args, *(args+1));
  }
  return (void*) -1;
}
