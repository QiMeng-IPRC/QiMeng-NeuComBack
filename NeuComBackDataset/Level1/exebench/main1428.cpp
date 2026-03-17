#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int yuv_enhance_en; int /*<<< orphan*/  video_mode; } ;
typedef  TYPE_1__ IEP_MSG ;

/* Variables and functions */
extern  int /*<<< orphan*/  black_screen ; 
extern "C" { void iep_set_yuv_black_screen(IEP_MSG *msg);
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

void write_output(TYPE_1__* msg) {
  json output_json;
  TYPE_1__ output_temp_1 = *msg;
  json output_temp_2;

  output_temp_2["yuv_enhance_en"] = output_temp_1.yuv_enhance_en;

  output_temp_2["video_mode"] = output_temp_1.video_mode;
  output_json["msg"] = output_temp_2;

  output_json["black_screen"] = black_screen;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int msg_pointer__yuv_enhance_en = input_json["msg"]["yuv_enhance_en"];
  int msg_pointer__video_mode = input_json["msg"]["video_mode"];
  TYPE_1__ msg_pointer = {msg_pointer__yuv_enhance_en, msg_pointer__video_mode};
  TYPE_1__* msg = &msg_pointer;
  black_screen = input_json["black_screen"];
  clock_t begin = clock();
  iep_set_yuv_black_screen(msg);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(msg);
}