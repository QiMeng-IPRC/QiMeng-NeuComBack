#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct record {
  int phone;
};

/* Variables and functions */
int REC_NOT_FOUND_ERR;
int SUCCESS;
struct record *bArray;
int rCnt;

int searchRec(int phone, struct record *prec) {
  int ii;
  for (ii = 0; ii < rCnt; ii++) {
    if (bArray[ii].phone == phone) {
      *prec = bArray[ii];
      return SUCCESS;
    }
  }
  return REC_NOT_FOUND_ERR;
}