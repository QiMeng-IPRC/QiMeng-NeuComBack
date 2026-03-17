#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_5__ TYPE_2__;
typedef struct TYPE_4__ TYPE_1__;

/* Type definitions */
struct TYPE_4__ {
  int capacity;
  int size;
  int /*<<< orphan*/ data;
};
struct TYPE_5__ {
  TYPE_1__ members;
};
typedef TYPE_2__ int_array;

/* Variables and functions */
int /*<<< orphan*/
malloc(int);
int /*<<< orphan*/
realloc(int /*<<< orphan*/, int);

void int_array_double_capacity_if_full(int_array *vector) {
  if (vector->members.capacity == 0) {
    vector->members.capacity = 100;
    vector->members.data = malloc(sizeof(int) * vector->members.capacity);
  }
  if (vector->members.size >= vector->members.capacity) {

    vector->members.capacity *= 2;
    vector->members.data =
        realloc(vector->members.data, sizeof(int) * vector->members.capacity);
  }
}