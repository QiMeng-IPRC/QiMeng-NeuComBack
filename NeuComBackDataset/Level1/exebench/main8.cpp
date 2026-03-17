#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  pending; } ;
struct tcp_opt {TYPE_1__ ack; } ;

/* Variables and functions */
extern  int /*<<< orphan*/  TCP_ACK_SCHED ; 
extern "C" { void tcp_schedule_ack (struct tcp_opt *tp);
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

void write_output(struct tcp_opt* tp) {
  json output_json;
  struct tcp_opt output_temp_1 = *tp;
  json output_temp_2;
  json output_temp_3;

  output_temp_3["pending"] = output_temp_1.ack.pending;
  output_temp_2["ack"] = output_temp_3;
  output_json["tp"] = output_temp_2;

  output_json["TCP_ACK_SCHED"] = TCP_ACK_SCHED;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int tp_pointer__ack__pending = input_json["tp"]["ack"]["pending"];
  TYPE_1__ tp_pointer__ack = {tp_pointer__ack__pending};
  struct tcp_opt tp_pointer = {tp_pointer__ack};
  struct tcp_opt* tp = &tp_pointer;
  TCP_ACK_SCHED = input_json["TCP_ACK_SCHED"];
  clock_t begin = clock();
  tcp_schedule_ack(tp);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(tp);
}