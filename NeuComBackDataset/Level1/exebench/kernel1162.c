#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct linked_list_t {
  int current_index;
  int /*<<< orphan*/ error_code;
};

/* Variables and functions */
int /*<<< orphan*/ LINKED_LIST_ERR_OK;

int linked_list_current(struct linked_list_t *list) {
  list->error_code = LINKED_LIST_ERR_OK;
  return list->current_index;
}