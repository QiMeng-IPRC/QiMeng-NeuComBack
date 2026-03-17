#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int /*<<< orphan*/ sqlite3_file;

/* Variables and functions */

int fsCheckReservedLock(sqlite3_file *pFile, int *pResOut) {
  *pResOut = 0;
  return 0;
}