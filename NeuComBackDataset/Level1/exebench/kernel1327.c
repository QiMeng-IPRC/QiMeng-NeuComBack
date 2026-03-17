#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_11__ TYPE_5__;
typedef struct TYPE_10__ TYPE_4__;
typedef struct TYPE_9__ TYPE_3__;
typedef struct TYPE_8__ TYPE_2__;
typedef struct TYPE_7__ TYPE_1__;

/* Type definitions */
struct TYPE_9__ {
  int type_attrs;
};
struct TYPE_10__ {
  TYPE_3__ tas;
};
struct TYPE_7__ {
  int type_attrs;
};
struct TYPE_8__ {
  TYPE_1__ tas;
};
struct TYPE_11__ {
  int /*<<< orphan*/ no_match_priority;
  int /*<<< orphan*/ priority;
  TYPE_4__ match_key;
  TYPE_2__ best_key;
};
typedef TYPE_5__ match_record_t;

/* Variables and functions */
int t_null;

void reset_match(match_record_t *match) {
  (((&match->best_key)->tas.type_attrs = ((t_null) << 8) + (0)));
  (((&match->match_key)->tas.type_attrs = ((t_null) << 8) + (0)));
  match->priority = match->no_match_priority;
}