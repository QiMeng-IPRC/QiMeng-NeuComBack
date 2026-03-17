#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct myvm_vm {
  int ip;
};

/* Variables and functions */

void myvm_jmp(int l, struct myvm_vm *vm) { vm->ip = l; }