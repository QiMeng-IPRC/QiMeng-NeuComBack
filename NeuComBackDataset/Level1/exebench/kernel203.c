#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_3__ TYPE_1__;

/* Type definitions */
struct TYPE_3__ {
  float const *a;
};
typedef TYPE_1__ union512;

/* Variables and functions */

int __attribute__((noinline, unused))
check_union512(union512 u, const float *v) {
  int i;
  int err = 0;
  for (i = 0; i < (sizeof(u.a) / sizeof((u.a)[0])); i++)
    if (u.a[i] != v[i]) {
      err++;
      ;
    }
  return err;
}