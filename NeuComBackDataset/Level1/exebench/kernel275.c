#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct raop_handle {
  unsigned char channels;
};

/* Variables and functions */

unsigned char raop_get_channels(struct raop_handle *h) {
  if (h == NULL)
    return 0;

  return h->channels;
}