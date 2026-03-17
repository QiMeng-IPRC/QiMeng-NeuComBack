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
  int ebx;
  unsigned int eax;
};
typedef TYPE_1__ context_t;
struct TYPE_5__ {
  scalar_t__ egid;
  scalar_t__ gid;
  scalar_t__ euid;
  scalar_t__ uid;
};

/* Variables and functions */
size_t current_task;
TYPE_2__ *thread_table;

void syscall_query_ids(context_t *r) {

  switch (r->ebx) {
  case 0: {
    r->eax = (unsigned int)((thread_table[current_task].uid));
    return;
  };
  case 1: {
    r->eax = (unsigned int)((thread_table[current_task].euid));
    return;
  };
  case 2: {
    r->eax = (unsigned int)((thread_table[current_task].gid));
    return;
  };
  case 3: {
    r->eax = (unsigned int)((thread_table[current_task].egid));
    return;
  };
  default: {
    r->eax = (unsigned int)((-1));
    return;
  };
  }
}