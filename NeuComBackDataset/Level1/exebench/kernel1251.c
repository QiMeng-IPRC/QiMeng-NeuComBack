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
  int /*<<< orphan*/ tr_doCutoff;
  int /*<<< orphan*/ tr_itCount;
  int /*<<< orphan*/ tr_lhDEC;
  int /*<<< orphan*/ tr_lhAVG;
  int /*<<< orphan*/ tr_lhCutoff;
  int /*<<< orphan*/ tr_likelihood;
  int /*<<< orphan*/ tr_thoroughInsertion;
  int /*<<< orphan*/ tr_optimizeRateCategoryInvocations;
};
struct TYPE_5__ {
  TYPE_1__ ckp;
  int /*<<< orphan*/ doCutoff;
  int /*<<< orphan*/ itCount;
  int /*<<< orphan*/ lhDEC;
  int /*<<< orphan*/ lhAVG;
  int /*<<< orphan*/ lhCutoff;
  int /*<<< orphan*/ likelihood;
  int /*<<< orphan*/ thoroughInsertion;
  int /*<<< orphan*/ optimizeRateCategoryInvocations;
};
typedef TYPE_2__ tree;

/* Variables and functions */

void restoreTreeDataValuesFromCheckpoint(tree *tr) {
  tr->optimizeRateCategoryInvocations =
      tr->ckp.tr_optimizeRateCategoryInvocations;
  tr->thoroughInsertion = tr->ckp.tr_thoroughInsertion;
  tr->likelihood = tr->ckp.tr_likelihood;
  tr->lhCutoff = tr->ckp.tr_lhCutoff;
  tr->lhAVG = tr->ckp.tr_lhAVG;
  tr->lhDEC = tr->ckp.tr_lhDEC;
  tr->itCount = tr->ckp.tr_itCount;
  tr->doCutoff = tr->ckp.tr_doCutoff;
}