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
  int k_id;
};
typedef TYPE_1__ KeyListEntry;

/* Variables and functions */

int SetKeyEntryIdValue(KeyListEntry *node, int idval) {
  if (node == NULL)
    return 0;
  node->k_id = idval;
  return node->k_id;
}