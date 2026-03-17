#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vfe_cmd_stats_wb_exp_ack {int /*<<< orphan*/  nextWbExpOutputBufferAddr; } ;
struct TYPE_3__ {int /*<<< orphan*/  ackPending; int /*<<< orphan*/  nextFrameAddrBuf; } ;
struct TYPE_4__ {TYPE_1__ awbStatsControl; } ;

/* Variables and functions */
extern  int /*<<< orphan*/  FALSE ; 
extern  TYPE_2__* ctrl ; 
extern "C" { void vfe_stats_wb_exp_ack(struct vfe_cmd_stats_wb_exp_ack *in);
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

void write_output(struct vfe_cmd_stats_wb_exp_ack* in) {
  json output_json;
  struct vfe_cmd_stats_wb_exp_ack output_temp_1 = *in;
  json output_temp_2;

  output_temp_2["nextWbExpOutputBufferAddr"] = output_temp_1.nextWbExpOutputBufferAddr;
  output_json["in"] = output_temp_2;

  output_json["FALSE"] = FALSE;
  TYPE_2__ output_temp_3 = *ctrl;
  json output_temp_4;
  json output_temp_5;

  output_temp_5["ackPending"] = output_temp_3.awbStatsControl.ackPending;

  output_temp_5["nextFrameAddrBuf"] = output_temp_3.awbStatsControl.nextFrameAddrBuf;
  output_temp_4["awbStatsControl"] = output_temp_5;
  output_json["ctrl"] = output_temp_4;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int in_pointer__nextWbExpOutputBufferAddr = input_json["in"]["nextWbExpOutputBufferAddr"];
  struct vfe_cmd_stats_wb_exp_ack in_pointer = {in_pointer__nextWbExpOutputBufferAddr};
  struct vfe_cmd_stats_wb_exp_ack* in = &in_pointer;
  FALSE = input_json["FALSE"];
  int ctrl_pointer__awbStatsControl__ackPending = input_json["ctrl"]["awbStatsControl"]["ackPending"];
  int ctrl_pointer__awbStatsControl__nextFrameAddrBuf = input_json["ctrl"]["awbStatsControl"]["nextFrameAddrBuf"];
  TYPE_1__ ctrl_pointer__awbStatsControl = {ctrl_pointer__awbStatsControl__ackPending, ctrl_pointer__awbStatsControl__nextFrameAddrBuf};
  TYPE_2__ ctrl_pointer = {ctrl_pointer__awbStatsControl};
  ctrl = &ctrl_pointer;
  clock_t begin = clock();
  vfe_stats_wb_exp_ack(in);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(in);
}