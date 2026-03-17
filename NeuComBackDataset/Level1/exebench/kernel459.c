#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int opCode;

/* Variables and functions */
int *codes;
size_t highLoc;
size_t loc;
int /*<<< orphan*/
memcpy(int *, int *, int);

void emitJmp(opCode op, int arg1, int arg2, int arg3, int arg4) {
  codes[loc] = op;
  codes[loc + 1] = arg1;
  codes[loc + 2] = arg2;
  memcpy(codes + loc + 3, &arg3, sizeof(int));
  codes[loc + 7] = arg4;
  loc += 8;

  if (loc > highLoc)
    highLoc = loc;
}