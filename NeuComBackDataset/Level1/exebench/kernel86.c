#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef scalar_t__ Uint;

/* Variables and functions */
scalar_t__ currentspace;
scalar_t__ spacepeak;

void mmaddspace(Uint space) {
  currentspace += space;
  if (currentspace > spacepeak) {
    spacepeak = currentspace;
    ;
  }
}