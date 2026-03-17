#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct tlsv1_client {
  int disable_time_checks;
};

/* Variables and functions */

void tlsv1_client_set_time_checks(struct tlsv1_client *conn, int enabled) {
  conn->disable_time_checks = !enabled;
}