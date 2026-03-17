#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int *dev_sd_clk;
scalar_t__ *dev_sd_cmd;
int *response_buffer;

int SD_read_response(int s) {
  int a = 0, b = 0, c = 0, r = 0, crc = 0;
  int i = 0, j = 6, k;
  while (1) {
    (dev_sd_clk[0] = 0);
    (dev_sd_clk[0] = 1);
    if ((dev_sd_cmd[0]) == 0)
      break;
    if (i++ > 100)
      return 2;
  }
  if (s == 2)
    j = 17;
  for (k = 0; k < j; k++) {
    c = 0;
    if (k > 0)
      b = response_buffer[k - 1];
    for (i = 0; i < 8; i++) {
      (dev_sd_clk[0] = 0);
      if (a) {
        c <<= 1;
      } else {
        i++;
        a = 1;
      }
      (dev_sd_clk[0] = 1);
      if ((dev_sd_cmd[0]))
        c |= 0x01;
      if (k > 0) {
        crc <<= 1;
        if ((crc ^ b) & 0x80)
          crc ^= 0x09;
        b <<= 1;
        crc &= 0x7f;
      }
    }
    if (s == 3) {
      if (k == 1 && ((c & 0x80) == 0))
        r = 1;
    }
    response_buffer[k] = c;
  }
  if (s == 1 || s == 6) {
    if (c != ((crc << 1) | 0x01))
      r = 2;
  }
  return r;
}