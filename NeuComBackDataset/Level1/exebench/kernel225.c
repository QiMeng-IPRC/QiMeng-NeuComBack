#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_2__ TYPE_1__;

/* Type definitions */
struct TYPE_2__ {
  char *text;
  int http_size;
};

/* Variables and functions */
TYPE_1__ *http_r;
scalar_t__ http_resp_cout;
scalar_t__ resp_index;

void set_http_cb(char *buf, int size) {
  http_r[0].text = buf;
  http_r[0].http_size = size;
  resp_index = 0;
  http_resp_cout = 0;
}