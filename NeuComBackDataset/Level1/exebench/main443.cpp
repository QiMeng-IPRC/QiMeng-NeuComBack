#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  qp_rd_atom; int /*<<< orphan*/  mtu; int /*<<< orphan*/  vaddr; int /*<<< orphan*/  rkey; int /*<<< orphan*/  psn; int /*<<< orphan*/  qpn; int /*<<< orphan*/  lid; int /*<<< orphan*/  gid; } ;
struct TYPE_5__ {int /*<<< orphan*/  r_qp_rd_atom; int /*<<< orphan*/  r_mtu; int /*<<< orphan*/  r_vaddr; int /*<<< orphan*/  r_rkey; int /*<<< orphan*/  r_psn; int /*<<< orphan*/  r_qpn; int /*<<< orphan*/  r_lid; int /*<<< orphan*/  r_gid; } ;
typedef  TYPE_1__ RDMAConnection ;
typedef  TYPE_2__ IbConEx ;

/* Variables and functions */
extern "C" { void getibcfg(const IbConEx *ex, RDMAConnection *conn);
 }

#include <vector>
#include <nlohmann/json.hpp>
#include <fstream>
#include <iomanip>
#include <clib/synthesizer.h>
#include <time.h>
#include <math.h>
#include <iostream>
char* output_file;
char* pre_accel_dump_file;  // optional dump file.
using json = nlohmann::json;
const char* __asan_default_options() {
  return "detect_leaks=0";
}

clock_t AcceleratorStart;
clock_t AcceleratorTotalNanos = 0;
void StartAcceleratorTimer() {
  AcceleratorStart = clock();
}

void StopAcceleratorTimer() {
  AcceleratorTotalNanos += (clock()) - AcceleratorStart;
}

void write_output(TYPE_2__* ex, TYPE_1__* conn) {
  json output_json;
  TYPE_2__ output_temp_1 = *ex;
  json output_temp_2;

  output_temp_2["qp_rd_atom"] = output_temp_1.qp_rd_atom;

  output_temp_2["mtu"] = output_temp_1.mtu;

  output_temp_2["vaddr"] = output_temp_1.vaddr;

  output_temp_2["rkey"] = output_temp_1.rkey;

  output_temp_2["psn"] = output_temp_1.psn;

  output_temp_2["qpn"] = output_temp_1.qpn;

  output_temp_2["lid"] = output_temp_1.lid;

  output_temp_2["gid"] = output_temp_1.gid;
  output_json["ex"] = output_temp_2;
  TYPE_1__ output_temp_3 = *conn;
  json output_temp_4;

  output_temp_4["r_qp_rd_atom"] = output_temp_3.r_qp_rd_atom;

  output_temp_4["r_mtu"] = output_temp_3.r_mtu;

  output_temp_4["r_vaddr"] = output_temp_3.r_vaddr;

  output_temp_4["r_rkey"] = output_temp_3.r_rkey;

  output_temp_4["r_psn"] = output_temp_3.r_psn;

  output_temp_4["r_qpn"] = output_temp_3.r_qpn;

  output_temp_4["r_lid"] = output_temp_3.r_lid;

  output_temp_4["r_gid"] = output_temp_3.r_gid;
  output_json["conn"] = output_temp_4;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int ex_pointer__qp_rd_atom = input_json["ex"]["qp_rd_atom"];
  int ex_pointer__mtu = input_json["ex"]["mtu"];
  int ex_pointer__vaddr = input_json["ex"]["vaddr"];
  int ex_pointer__rkey = input_json["ex"]["rkey"];
  int ex_pointer__psn = input_json["ex"]["psn"];
  int ex_pointer__qpn = input_json["ex"]["qpn"];
  int ex_pointer__lid = input_json["ex"]["lid"];
  int ex_pointer__gid = input_json["ex"]["gid"];
  TYPE_2__ ex_pointer = {ex_pointer__qp_rd_atom, ex_pointer__mtu, ex_pointer__vaddr, ex_pointer__rkey, ex_pointer__psn, ex_pointer__qpn, ex_pointer__lid, ex_pointer__gid};
  TYPE_2__* ex = &ex_pointer;
  int conn_pointer__r_qp_rd_atom = input_json["conn"]["r_qp_rd_atom"];
  int conn_pointer__r_mtu = input_json["conn"]["r_mtu"];
  int conn_pointer__r_vaddr = input_json["conn"]["r_vaddr"];
  int conn_pointer__r_rkey = input_json["conn"]["r_rkey"];
  int conn_pointer__r_psn = input_json["conn"]["r_psn"];
  int conn_pointer__r_qpn = input_json["conn"]["r_qpn"];
  int conn_pointer__r_lid = input_json["conn"]["r_lid"];
  int conn_pointer__r_gid = input_json["conn"]["r_gid"];
  TYPE_1__ conn_pointer = {conn_pointer__r_qp_rd_atom, conn_pointer__r_mtu, conn_pointer__r_vaddr, conn_pointer__r_rkey, conn_pointer__r_psn, conn_pointer__r_qpn, conn_pointer__r_lid, conn_pointer__r_gid};
  TYPE_1__* conn = &conn_pointer;
  clock_t begin = clock();
  getibcfg(ex, conn);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(ex, conn);
}