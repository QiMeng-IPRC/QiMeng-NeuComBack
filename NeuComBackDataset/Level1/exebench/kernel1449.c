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
  int /*<<< orphan*/ refcnt;
};
typedef TYPE_1__ CcsToken_t;
typedef int /*<<< orphan*/ CcsScanInput_t;

/* Variables and functions */

void CcsScanInput_TokenIncRef(CcsScanInput_t *self, CcsToken_t *token) {
  ++token->refcnt;
}