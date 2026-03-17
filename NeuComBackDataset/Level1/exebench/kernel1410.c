#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_2__ TYPE_1__;

/* Type definitions */
typedef scalar_t__ bfd_boolean;
struct TYPE_2__ {
  char const *name;
};

/* Variables and functions */
scalar_t__ entry_from_cmdline;
TYPE_1__ entry_symbol;

void lang_add_entry(const char *name, bfd_boolean cmdline) {
  if (entry_symbol.name == NULL || cmdline || !entry_from_cmdline) {
    entry_symbol.name = name;
    entry_from_cmdline = cmdline;
  }
}