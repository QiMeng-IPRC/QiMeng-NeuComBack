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
  int sock;
};
typedef TYPE_1__ tcps_sess_t;
typedef int /*<<< orphan*/ rsRetVal;

/* Variables and functions */
int /*<<< orphan*/ RS_RET_OK;

rsRetVal SetSock(tcps_sess_t *pThis, int sock) {
  rsRetVal iRet = RS_RET_OK;
  do {
    ;
    ;
    ;
  } while (0);
  ;
  pThis->sock = sock;
  do {
    return iRet;
  } while (0);
}