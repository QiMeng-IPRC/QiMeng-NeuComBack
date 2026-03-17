#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_5__ TYPE_1__;

/* Type definitions */
struct TYPE_5__ {
  scalar_t__ tv_usec;
  scalar_t__ tv_sec;
};
typedef TYPE_1__ timeval_t;

/* Variables and functions */

int timeval_subtract(timeval_t *result, timeval_t *x, timeval_t *y) {
  int nsec = 0;
  if (x->tv_usec < y->tv_usec) {
    nsec = (y->tv_usec - x->tv_usec) / 1000000 + 1;
    y->tv_usec -= 1000000 * nsec;
    y->tv_sec += nsec;
  }
  if (x->tv_usec - y->tv_usec > 1000000) {
    nsec = (x->tv_usec - y->tv_usec) / 1000000;
    y->tv_usec += 1000000 * nsec;
    y->tv_sec -= nsec;
  }
  result->tv_sec = x->tv_sec - y->tv_sec;
  result->tv_usec = x->tv_usec - y->tv_usec;
  return x->tv_sec < y->tv_sec;
}