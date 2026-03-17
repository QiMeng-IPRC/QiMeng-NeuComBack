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
  int real;
  int imag;
};
typedef TYPE_1__ comp;

/* Variables and functions */

void multiply(comp a, comp b, comp *c) {
  c->real = a.real * b.real - a.imag * b.imag;
  c->imag = a.real * b.imag + a.imag * b.real;
}