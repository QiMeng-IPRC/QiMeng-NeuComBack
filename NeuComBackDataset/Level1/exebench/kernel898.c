#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_3__ TYPE_1__;

/* Type definitions */
typedef int tsk_size_t;
struct TYPE_3__ {
  int max_metadata_length_increment;
};
typedef TYPE_1__ tsk_node_table_t;

/* Variables and functions */

int tsk_node_table_set_max_metadata_length_increment(
    tsk_node_table_t *self, tsk_size_t max_metadata_length_increment) {
  if (max_metadata_length_increment == 0) {
    max_metadata_length_increment = 1024;
  }
  self->max_metadata_length_increment = max_metadata_length_increment;
  return 0;
}