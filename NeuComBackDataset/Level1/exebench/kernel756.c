#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_3__ TYPE_1__;

/* Type definitions */
typedef int /*<<< orphan*/ target_ulong;
struct TYPE_3__ {
  int /*<<< orphan*/ cr27;
};
typedef TYPE_1__ CPUHPPAState;

/* Variables and functions */

void cpu_set_tls(CPUHPPAState *env, target_ulong newtls) { env->cr27 = newtls; }