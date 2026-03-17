#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ai_async_status_t ;
struct TYPE_3__ {scalar_t__ all; } ;
typedef  TYPE_1__ Ai_player_flag_t ;

/* Variables and functions */
extern  int /*<<< orphan*/  CMD_DONE ; 
extern "C" { Ai_player_flag_t ai_audio_ctrl_status_null(ai_async_status_t *status);
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

void write_output(int* status, TYPE_1__ returnv) {
  json output_json;
  std::vector<json> output_temp_2;
  for (unsigned int i3 = 0; i3 < 32; i3++) {
    int output_temp_4 = status[i3];

    output_temp_2.push_back(output_temp_4);
  }
  output_json["status"] = output_temp_2;

  output_json["CMD_DONE"] = CMD_DONE;
  json output_temp_5;

  output_temp_5["all"] = returnv.all;
  output_json["returnv"] = output_temp_5;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  std::vector<int> input_temp_1_vec;
  for (auto& elem : input_json["status"]) {
    int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  int* status = &input_temp_1_vec[0];
  CMD_DONE = input_json["CMD_DONE"];
  clock_t begin = clock();
  TYPE_1__ returnv = ai_audio_ctrl_status_null(status);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(status, returnv);
}