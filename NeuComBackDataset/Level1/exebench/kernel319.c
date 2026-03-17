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
  int last_valid_element;
};
typedef TYPE_1__ XArray;

/* Variables and functions */
int XARRAY_ENULLPOINTER;
int XARRAY_SUCCESS;

int xarray_Count(XArray *xarray, unsigned int *out_count) {
  {
    if (xarray == NULL)
      return XARRAY_ENULLPOINTER;
  };

  *out_count = xarray->last_valid_element + 1;

  return XARRAY_SUCCESS;
}