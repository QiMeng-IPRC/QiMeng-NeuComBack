#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int /*<<< orphan*/ id3_ucs4_t;

/* Variables and functions */

void id3_ucs4_copy(id3_ucs4_t *dest, id3_ucs4_t const *src) {
  while ((*dest++ = *src++))
    ;
}