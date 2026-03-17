#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int chdir(scalar_t__);
scalar_t__ *dirStack;
int /*<<< orphan*/ free(scalar_t__);
size_t stackCnt;

int pwpCwdPop(void) {
  int ret = -1;
  if ((0 < stackCnt) && (0 != dirStack[--stackCnt])) {
    ret = chdir(dirStack[stackCnt]);
    free(dirStack[stackCnt]);
    dirStack[stackCnt] = 0;
  }
  return ret;
}