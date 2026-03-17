#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int psr;
int *reg;

void bics(int rn, int rm) {

  int tempRn = reg[rn];
  int tempRm = reg[rm];
  int tempArRn[32];
  int tempArRm[32];
  int index = 0;
  int result[32];

  for (index; index < 32; index++) {
    tempArRn[index] = 0;
    tempArRm[index] = 0;
  }

  if (tempRn >= 0) {
    int indexRev = 31;
    for (indexRev; indexRev >= 0; indexRev--) {
      tempArRn[indexRev] = tempRn % 2;
      tempRn = tempRn / 2;
    }
  } else {
    int indexRev = 31;
    tempRn = -1 * tempRn;
    tempRn = tempRn - 1;
    for (indexRev; indexRev >= 0; indexRev--) {
      tempArRn[indexRev] = tempRn % 2;
      tempRn = tempRn / 2;
    }
    indexRev = 0;
    for (indexRev; indexRev < 32; indexRev++) {
      if (tempArRn[indexRev] == 0)
        tempArRn[indexRev] = 1;
      else
        tempArRn[indexRev] = 0;
    }
  }

  if (tempRm >= 0) {
    int indexRev = 31;
    for (indexRev; indexRev >= 0; indexRev--) {
      tempArRm[indexRev] = tempRm % 2;
      tempRm = tempRm / 2;
    }
  } else {
    int indexRev = 31;
    tempRm = -1 * tempRm;
    tempRm = tempRm - 1;
    for (indexRev; indexRev >= 0; indexRev--) {
      tempArRm[indexRev] = tempRm % 2;
      tempRm = tempRm / 2;
    }
    indexRev = 0;
    for (indexRev; indexRev < 32; indexRev++) {
      if (tempArRm[indexRev] == 0) {
        tempArRm[indexRev] = 1;
      } else {
        tempArRm[indexRev] = 0;
      }
    }
  }

  int indexRev = 0;
  for (indexRev; indexRev < 32; indexRev++) {
    if ((tempArRn[indexRev] == 1) && (tempArRm[indexRev] == 0)) {
      result[indexRev] = 1;
    } else {
      result[indexRev] = 0;
    }
  }

  int bit = 0;
  int pow = 1;
  indexRev = 31;
  for (indexRev; indexRev >= 0; indexRev--) {
    bit = bit + pow * result[indexRev];
    pow = pow * 2;
  }

  reg[rn] = bit;
  int c = reg[rn];

  if (reg[rn] & 0x80000000) {
    psr |= 0x80000000;
  }

  if (reg[rn] == 0) {
    if (c > reg[rn]) {
      psr |= 0x20000000;
      psr |= 0x40000000;
    } else {
      psr |= 0x40000000;
    }
  }
}