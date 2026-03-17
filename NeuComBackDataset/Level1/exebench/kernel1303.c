#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_2__ TYPE_1__;

/* Type definitions */
typedef int /*<<< orphan*/ word;
typedef int rbool;
typedef int /*<<< orphan*/ integer;
struct TYPE_2__ {
  int cnum;
  int vcode;
  int /*<<< orphan*/ miobj;
  int /*<<< orphan*/ mprep;
  int /*<<< orphan*/ mdobj;
  int /*<<< orphan*/ mactor;
  int /*<<< orphan*/ prep;
  int /*<<< orphan*/ vb;
};

/* Variables and functions */
int /*<<< orphan*/ prep;
int subcnt;
TYPE_1__ *substack;
int /*<<< orphan*/ vb;

rbool pop_subcall_grammar(integer *m_actor, int *vcode, integer *m_dobj,
                          word *m_prep, integer *m_iobj, int *cnum) {
  if (subcnt == 0)
    return 0;
  vb = substack[subcnt - 1].vb;
  prep = substack[subcnt - 1].prep;
  *cnum = substack[subcnt - 1].cnum;
  *m_actor = substack[subcnt - 1].mactor;
  *vcode = substack[subcnt - 1].vcode;
  *m_dobj = substack[subcnt - 1].mdobj;
  *m_prep = substack[subcnt - 1].mprep;
  *m_iobj = substack[subcnt - 1].miobj;
  return 1;
}