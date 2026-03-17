#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {double rounded_cwnd; int cwnd; int ssthresh; int sendwin; int send_conf_win; scalar_t__ recvwin; } ;
typedef  TYPE_1__ congestion_ctrl_info_t ;

/* Variables and functions */
extern "C" { void init_congestion_ctrl_info(congestion_ctrl_info_t* cc_info, int send_conf_win);
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

void write_output(TYPE_1__* cc_info, int send_conf_win) {
  json output_json;
  TYPE_1__ output_temp_1 = *cc_info;
  json output_temp_2;

  output_temp_2["rounded_cwnd"] = output_temp_1.rounded_cwnd;

  output_temp_2["cwnd"] = output_temp_1.cwnd;

  output_temp_2["ssthresh"] = output_temp_1.ssthresh;

  output_temp_2["sendwin"] = output_temp_1.sendwin;

  output_temp_2["send_conf_win"] = output_temp_1.send_conf_win;

  output_temp_2["recvwin"] = output_temp_1.recvwin;
  output_json["cc_info"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  double cc_info_pointer__rounded_cwnd = input_json["cc_info"]["rounded_cwnd"];
  int cc_info_pointer__cwnd = input_json["cc_info"]["cwnd"];
  int cc_info_pointer__ssthresh = input_json["cc_info"]["ssthresh"];
  int cc_info_pointer__sendwin = input_json["cc_info"]["sendwin"];
  int cc_info_pointer__send_conf_win = input_json["cc_info"]["send_conf_win"];
  long int cc_info_pointer__recvwin = input_json["cc_info"]["recvwin"];
  TYPE_1__ cc_info_pointer = {cc_info_pointer__rounded_cwnd, cc_info_pointer__cwnd, cc_info_pointer__ssthresh, cc_info_pointer__sendwin, cc_info_pointer__send_conf_win, cc_info_pointer__recvwin};
  TYPE_1__* cc_info = &cc_info_pointer;
  int send_conf_win = input_json["send_conf_win"];
  clock_t begin = clock();
  init_congestion_ctrl_info(cc_info, send_conf_win);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(cc_info, send_conf_win);
}