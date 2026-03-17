#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef scalar_t__ ptrdiff_t;
typedef scalar_t__ DCpointer;
typedef scalar_t__ DClonglong;
typedef scalar_t__ DCint;
typedef scalar_t__ DCfloat;
typedef scalar_t__ DCdouble;
typedef scalar_t__ DCbool;

/* Variables and functions */
scalar_t__ *valueBool;
scalar_t__ *valueDouble;
scalar_t__ *valueFloat;
scalar_t__ *valueInt;
scalar_t__ *valueLongLong;
scalar_t__ *valuePointer;

void init() {
  int i;
  for (i = 0; i < 8; ++i) {
    valueBool[i] = (DCbool)((i % 1) ? 1 : 0);
    valueInt[i] = (DCint)(i);
    valueLongLong[i] = (DClonglong)(i);
    valueDouble[i] = (DCdouble)(i);
    valuePointer[i] = (DCpointer)(ptrdiff_t)(i);
    valueFloat[i] = (DCfloat)(i);
  }
}