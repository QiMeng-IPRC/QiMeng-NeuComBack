#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int m_uint8_t;
typedef int m_uint32_t;

/* Variables and functions */

void m_hton32(m_uint8_t *ptr, m_uint32_t val) {
  ptr[0] = val >> 24;
  ptr[1] = val >> 16;
  ptr[2] = val >> 8;
  ptr[3] = val;
}