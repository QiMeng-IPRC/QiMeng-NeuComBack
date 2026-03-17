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
  scalar_t__ endpoint;
};
typedef TYPE_1__ inp_ATOM;

/* Variables and functions */

void ClearEndpts(inp_ATOM *at, int num_at) {
  int i;
  for (i = 0; i < num_at; i++) {
    at[i].endpoint = 0;
  }
}