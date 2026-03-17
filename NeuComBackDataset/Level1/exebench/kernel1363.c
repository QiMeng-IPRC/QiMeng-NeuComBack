#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int u8;
typedef int u16;

/* Variables and functions */
scalar_t__ enabled;
int *pm25data;

u8 getPM25Index(float *result) {
  u16 vout = 0;

  if (0 == enabled) {
    return 0;
  }

  u8 checkCode = 0;
  checkCode = pm25data[1] + pm25data[2] + pm25data[3] + pm25data[4];
  if (checkCode != pm25data[5])
    return 0;

  vout |= pm25data[1];
  vout <<= 8;
  vout |= pm25data[2];

  *result = vout * 1.0 * (800.0) / 1024.0 * 5;

  enabled = 0;
  return 1;
}