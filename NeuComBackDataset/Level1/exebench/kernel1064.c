#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int /*<<< orphan*/ ch;
int charpos;
int /*<<< orphan*/
error(int);
int /*<<< orphan*/ *prog;
int proglen;

void Getchar(void) {
  if (charpos < proglen - 1) {
    charpos++;
    ch = prog[charpos];
  } else
    error(1);
}