#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int w_uint8_t;
typedef int w_uint32_t;
typedef int /*<<< orphan*/ w_bool_t;

/* Variables and functions */
int /*<<< orphan*/ W_TRUE;

w_bool_t wind_to_uint32(w_uint8_t *arr, w_uint32_t *value) {
  int i;
  w_uint32_t va = 0;
  for (i = 3; i >= 0; i--) {
    va = (va * 256) + arr[i];
  }
  *value = va;
  return W_TRUE;
}