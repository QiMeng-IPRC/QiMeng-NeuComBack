#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_4__ TYPE_1__;

/* Type definitions */
struct TYPE_4__ {
  scalar_t__ tv_usec;
  scalar_t__ tv_sec;
};
typedef TYPE_1__ timeval_t;

/* Variables and functions */

void timeval_sub(timeval_t *a, const timeval_t *b) {
  if (b->tv_usec > a->tv_usec) {
    a->tv_sec--;
    a->tv_usec += 1000000;
  }
  a->tv_sec -= b->tv_sec;
  a->tv_usec -= b->tv_usec;
}