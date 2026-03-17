#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int /*<<< orphan*/ UniChar;

/* Variables and functions */

UniChar *UniStrcpy(UniChar *ucs1, const UniChar *ucs2) {
  UniChar *anchor = ucs1;

  while ((*ucs1++ = *ucs2++))
    ;
  return anchor;
}