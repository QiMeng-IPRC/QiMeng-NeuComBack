#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  _char; } ;
struct TYPE_5__ {TYPE_1__ _content; int /*<<< orphan*/  _type; } ;
typedef  TYPE_2__ wave_data ;
typedef  int /*<<< orphan*/  wave_char ;

/* Variables and functions */
extern  int /*<<< orphan*/  WAVE_DATA_CHAR ; 
extern "C" { void wave_data_set_char (wave_data * const data, wave_char c);
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

void write_output(TYPE_2__* data, int c) {
  json output_json;
  TYPE_2__ output_temp_1 = *data;
  json output_temp_2;
  json output_temp_3;

  output_temp_3["_char"] = output_temp_1._content._char;
  output_temp_2["_content"] = output_temp_3;

  output_temp_2["_type"] = output_temp_1._type;
  output_json["data"] = output_temp_2;

  output_json["WAVE_DATA_CHAR"] = WAVE_DATA_CHAR;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int data_pointer___content___char = input_json["data"]["_content"]["_char"];
  TYPE_1__ data_pointer___content = {data_pointer___content___char};
  int data_pointer___type = input_json["data"]["_type"];
  TYPE_2__ data_pointer = {data_pointer___content, data_pointer___type};
  TYPE_2__* data = &data_pointer;
  int c = input_json["c"];
  WAVE_DATA_CHAR = input_json["WAVE_DATA_CHAR"];
  clock_t begin = clock();
  wave_data_set_char(data, c);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(data, c);
}