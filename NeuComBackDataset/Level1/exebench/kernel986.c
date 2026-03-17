#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_3__ TYPE_1__;

/* Type definitions */
struct TYPE_3__ {
  int /*<<< orphan*/ Typ;
};
typedef TYPE_1__ TempResult;

/* Variables and functions */
int /*<<< orphan*/ TempNone;

void Default_InternSymbol(char *Asc, TempResult *Erg) {
  (void)Asc;

  Erg->Typ = TempNone;
}