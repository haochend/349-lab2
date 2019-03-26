/**
 * @file   349libc.h
 *
 * @brief  Custom syscalls defined for use in 18-349
 *
 * @date   September 26th, 2015
 * @author Kenneth Li <kyli@andrew.cmu.edu>
 */

#ifndef _349libc_H_
#define _349libc_H_

#include <stdint.h>

/**
 * @brief Starts sampling the ADC periodically, calling the given callback
 *        with the ADC sample value.
 *
 * @param freq      frequency at which to sample
 * @param channel   channel to sample
 * @param callback  function to be called everytime an adc sample is read.
 *
 * @return 0 on success or -1 on failure
 */
int sample_adc_start(int freq, uint8_t channel, void (*callback)(uint16_t));


/**
 * @brief Stops periodic sampling of the ADC.
 *
 * @return 0 on success or -1 on failure
 */
int sample_adc_stop();


int servo_enable(uint8_t channel, uint8_t enabled);

int servo_set(uint8_t channel, uint8_t angle);

#endif /* _349libc_H_ */
