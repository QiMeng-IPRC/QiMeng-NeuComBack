#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_8__ TYPE_3__;
typedef struct TYPE_7__ TYPE_2__;
typedef struct TYPE_6__ TYPE_1__;

/* Type definitions */
struct TYPE_7__ {
  int /*<<< orphan*/ im;
  int /*<<< orphan*/ re;
};
struct TYPE_6__ {
  int /*<<< orphan*/ im;
  int /*<<< orphan*/ re;
};
struct TYPE_8__ {
  TYPE_2__ beta;
  TYPE_1__ alpha;
};
typedef TYPE_3__ tf_qcs_qubit;

/* Variables and functions */

void qcs_1q_not_gate(tf_qcs_qubit *in_qubit, tf_qcs_qubit *out_qubit) {

  out_qubit->beta.re = in_qubit->alpha.re;
  out_qubit->beta.im = in_qubit->alpha.im;

  out_qubit->alpha.re = in_qubit->beta.re;
  out_qubit->alpha.im = in_qubit->beta.im;
}