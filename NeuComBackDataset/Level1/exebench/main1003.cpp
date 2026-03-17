#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ sendwin; scalar_t__ send_conf_win; scalar_t__ recvwin; scalar_t__ cwnd; } ;
typedef  TYPE_1__ congestion_ctrl_info_t ;

/* Variables and functions */
extern "C" { void recalc_send_win_size(congestion_ctrl_info_t* cc_info);
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

void write_output(TYPE_1__* cc_info) {
  json output_json;
  TYPE_1__ output_temp_1 = *cc_info;
  json output_temp_2;

  output_temp_2["sendwin"] = output_temp_1.sendwin;

  output_temp_2["send_conf_win"] = output_temp_1.send_conf_win;

  output_temp_2["recvwin"] = output_temp_1.recvwin;

  output_temp_2["cwnd"] = output_temp_1.cwnd;
  output_json["cc_info"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  long int cc_info_pointer__sendwin = input_json["cc_info"]["sendwin"];
  long int cc_info_pointer__send_conf_win = input_json["cc_info"]["send_conf_win"];
  long int cc_info_pointer__recvwin = input_json["cc_info"]["recvwin"];
  long int cc_info_pointer__cwnd = input_json["cc_info"]["cwnd"];
  TYPE_1__ cc_info_pointer = {cc_info_pointer__sendwin, cc_info_pointer__send_conf_win, cc_info_pointer__recvwin, cc_info_pointer__cwnd};
  TYPE_1__* cc_info = &cc_info_pointer;
  clock_t begin = clock();
  recalc_send_win_size(cc_info);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(cc_info);
}