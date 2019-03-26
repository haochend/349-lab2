 /**
 * @file   timer.c
 *
 * @brief  Implementation of routines for interacting with ARM timer
 *
 * @date   Feb.21st, 2018
 * @author David Dong <haochend@andrew.cmu.edu>
 */

#include <timer.h>
#include <BCM2836.h>
#include <kstdint.h>

/* Register physical addresses */
/** @brief physical address for IRQ Pending */
#define IRQ_PENDING (volatile uint32_t *)(MMIO_BASE_PHYSICAL+0xb200)
/** @brief physical address for IRQ Enable */
#define IRQ_ENABLE (volatile uint32_t *)(MMIO_BASE_PHYSICAL+0xb218)
/** @brief physical address for IRQ Disable */
#define IRQ_DISABLE (volatile uint32_t *)(MMIO_BASE_PHYSICAL+0xb224)

/** @brief physical address for Timer load */
#define TIMER_LOAD (volatile uint32_t *)(MMIO_BASE_PHYSICAL+0xb400)
/** @brief physical address for Timer value */
#define TIMER_VAL (volatile uint32_t *)(MMIO_BASE_PHYSICAL+0xb404)
/** @brief physical address for Timer control */
#define TIMER_CON (volatile uint32_t *)(MMIO_BASE_PHYSICAL+0xb408)
/** @brief physical address for Timer IRQ clear */
#define TIMER_CLR (volatile uint32_t *)(MMIO_BASE_PHYSICAL+0xb40c)

/** @brief bit mask for timer control register */
#define CONTROL_MASK ((1<<1)|(1<<5)|(1<<7)|(1<<9))

/**
 * @brief Configures the arm timer to start running with the given frequency.
 *        The Timer should run in 32 bit mode, with a prescaler of 1, and
 *        with interrupts enabled.
 *
 * @param freq  frequency at which to run the timer
 */
void timer_start(int freq) {
  *IRQ_ENABLE |= 1;
  *TIMER_CLR = 1;
  *TIMER_LOAD = freq;
  *TIMER_CON = CONTROL_MASK;
  return;
}

/**
 * @brief Disables timer IRQs
 */
void timer_stop(void) {
  *IRQ_DISABLE = 1;
  return;
}

/**
 * @brief Determines if there is currently a pending timer interrupt
 *
 * @return 1 if timer interrupt is pending, 0 if not.
 */
int timer_is_pending(void) {
  return (*IRQ_PENDING & 1);
}

/**
 * @brief Should be called to acknowledge that a timer interrupt occurred
 *        and has been appropriately handled. Will clear the pending bit
 *        in the timer's MMIO registers.
 */
void timer_clear_pending(void) {
  *TIMER_CLR = 1;
  return;
}
