#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_6__ TYPE_2__;
typedef struct TYPE_5__ TYPE_1__;

/* Type definitions */
struct TYPE_6__ {
  int /*<<< orphan*/ qp_rd_atom;
  int /*<<< orphan*/ mtu;
  int /*<<< orphan*/ vaddr;
  int /*<<< orphan*/ rkey;
  int /*<<< orphan*/ psn;
  int /*<<< orphan*/ qpn;
  int /*<<< orphan*/ lid;
  int /*<<< orphan*/ gid;
};
struct TYPE_5__ {
  int /*<<< orphan*/ r_qp_rd_atom;
  int /*<<< orphan*/ r_mtu;
  int /*<<< orphan*/ r_vaddr;
  int /*<<< orphan*/ r_rkey;
  int /*<<< orphan*/ r_psn;
  int /*<<< orphan*/ r_qpn;
  int /*<<< orphan*/ r_lid;
  int /*<<< orphan*/ r_gid;
};
typedef TYPE_1__ RDMAConnection;
typedef TYPE_2__ IbConEx;

/* Variables and functions */

void getibcfg(const IbConEx *ex, RDMAConnection *conn) {
  conn->r_gid = ex->gid;
  conn->r_lid = ex->lid;
  conn->r_qpn = ex->qpn;
  conn->r_psn = ex->psn;
  conn->r_rkey = ex->rkey;
  conn->r_vaddr = ex->vaddr;
  conn->r_mtu = ex->mtu;
  conn->r_qp_rd_atom = ex->qp_rd_atom;
}