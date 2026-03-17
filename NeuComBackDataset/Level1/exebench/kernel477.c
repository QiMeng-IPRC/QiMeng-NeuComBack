#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int *MolName;
int *MolType;
int Nmoltype;

int CheckExistence(int id) {

  int i, j, num, molid, itemp;
  int flag, flag_identity = 1;

  for (i = 0; i < Nmoltype; i++) {
    flag = 0;
    for (j = 0; j < 4; j++) {
      molid = MolType[4 * i + j];
      if (molid != MolName[4 * id + j])
        flag = 1;
    }
    if (flag == 0)
      return i;
    flag_identity *= flag;
  }

  for (i = 0; i < 4; i++) {
    MolType[4 * Nmoltype + i] = MolName[4 * id + i];
  }
  Nmoltype++;

  return Nmoltype - 1;
}