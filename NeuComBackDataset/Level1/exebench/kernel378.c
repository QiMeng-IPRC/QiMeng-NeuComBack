#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef size_t u_long;

/* Variables and functions */
size_t tbuf;

u_long talloc(size_t amt) {
  u_long rv = tbuf;
  tbuf += amt;
  return rv;
}