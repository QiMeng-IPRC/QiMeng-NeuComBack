#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_3__ TYPE_1__;

/* Type definitions */
typedef int /*<<< orphan*/ dglInt32_t;
struct TYPE_3__ {
  int iErrno;
  int Version;
};
typedef TYPE_1__ dglGraph_s;

/* Variables and functions */

dglInt32_t dglNodeGet_Status(dglGraph_s *pGraph, dglInt32_t *pnNode) {
  pGraph->iErrno = 0;
  if (pnNode) {
    switch (pGraph->Version) {
    case 1:
      return ((pnNode)[1]);

    case 2:
    case 3:
      return ((pnNode)[1]);
    }
    pGraph->iErrno = 1;
    return 0;
  }
  pGraph->iErrno = 17;
  return 0;
}