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
  int grafting;
};
typedef TYPE_1__ redo_session;

/* Variables and functions */

int redo_setgraftbehavior(redo_session *session, int grafting) {
  int oldvalue;

  oldvalue = session->grafting;
  session->grafting = grafting;
  return oldvalue;
}