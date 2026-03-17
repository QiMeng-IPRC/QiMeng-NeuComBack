#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int /*<<< orphan*/ errorType_t;

/* Variables and functions */
int /*<<< orphan*/ NO_ERROR;
int /*<<< orphan*/ errorCode;

errorType_t error_Get() {
  errorType_t tmpErr = errorCode;
  errorCode = NO_ERROR;
  return tmpErr;
}