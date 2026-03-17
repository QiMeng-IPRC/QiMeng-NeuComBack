#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef enum mine { ____Placeholder_mine } mine;

/* Variables and functions */

int mixedenums(short *a, enum mine *e) {
  *a = 2;
  *e = 5;
  return *a;
}