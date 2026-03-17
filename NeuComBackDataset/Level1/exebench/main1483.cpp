#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct int_ch_state {scalar_t__ service_counter; scalar_t__ request_counter; scalar_t__ level; } ;
struct dim_channel {int /*<<< orphan*/  done_sw_buffers_number; struct int_ch_state state; } ;

/* Variables and functions */
extern  int /*<<< orphan*/  DIM_ERR_UNDERFLOW ; 
extern  int /*<<< orphan*/  DIM_NO_ERROR ; 
extern "C" { u8 channel_service(struct dim_channel *ch);
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

void write_output(struct dim_channel* ch, int returnv) {
  json output_json;
  struct dim_channel output_temp_1 = *ch;
  json output_temp_2;

  output_temp_2["done_sw_buffers_number"] = output_temp_1.done_sw_buffers_number;
  json output_temp_3;

  output_temp_3["service_counter"] = output_temp_1.state.service_counter;

  output_temp_3["request_counter"] = output_temp_1.state.request_counter;

  output_temp_3["level"] = output_temp_1.state.level;
  output_temp_2["state"] = output_temp_3;
  output_json["ch"] = output_temp_2;

  output_json["DIM_ERR_UNDERFLOW"] = DIM_ERR_UNDERFLOW;

  output_json["DIM_NO_ERROR"] = DIM_NO_ERROR;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int ch_pointer__done_sw_buffers_number = input_json["ch"]["done_sw_buffers_number"];
  long int ch_pointer__state__service_counter = input_json["ch"]["state"]["service_counter"];
  long int ch_pointer__state__request_counter = input_json["ch"]["state"]["request_counter"];
  long int ch_pointer__state__level = input_json["ch"]["state"]["level"];
  struct int_ch_state ch_pointer__state = {ch_pointer__state__service_counter, ch_pointer__state__request_counter, ch_pointer__state__level};
  struct dim_channel ch_pointer = {ch_pointer__done_sw_buffers_number, ch_pointer__state};
  struct dim_channel* ch = &ch_pointer;
  DIM_ERR_UNDERFLOW = input_json["DIM_ERR_UNDERFLOW"];
  DIM_NO_ERROR = input_json["DIM_NO_ERROR"];
  clock_t begin = clock();
  int returnv = channel_service(ch);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(ch, returnv);
}