#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct vsofont {
  float spacing;
};

/* Variables and functions */

int vsofont_set_spacing(struct vsofont *font, float spacing) {

  if (font == NULL)
    return 0;

  font->spacing = spacing;

  return 1;
}