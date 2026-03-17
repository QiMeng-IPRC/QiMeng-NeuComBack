#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int vuint32_t;
struct stm_gpio {
  int ospeedr;
};

/* Variables and functions */

void stm_ospeedr_set(struct stm_gpio *gpio, int pin, vuint32_t value) {
  gpio->ospeedr =
      ((gpio->ospeedr & ~(3 << ((pin) << 1))) | value << ((pin) << 1));
}