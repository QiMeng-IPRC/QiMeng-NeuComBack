#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct orient_t {int dummy; } ;
struct TYPE_2__ {struct orient_t orient; } ;

/* Variables and functions */
extern  TYPE_1__* wpaddata ; 
extern "C" { void WPAD_Orientation(int chan, struct orient_t *orient);
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

void write_output(int chan, struct orient_t* orient) {
  json output_json;
  std::vector<json> output_temp_3;
  for (unsigned int i4 = 0; i4 < 32; i4++) {
    struct orient_t output_temp_5 = orient[i4];
    json output_temp_6;

    output_temp_6["dummy"] = output_temp_5.dummy;
    output_temp_3.push_back(output_temp_6);
  }
  output_json["orient"] = output_temp_3;
  std::vector<json> output_temp_7;
  for (unsigned int i8 = 0; i8 < 32; i8++) {
    TYPE_1__ output_temp_9 = wpaddata[i8];
    json output_temp_10;
    json output_temp_11;

    output_temp_11["dummy"] = output_temp_9.orient.dummy;
    output_temp_10["orient"] = output_temp_11;
    output_temp_7.push_back(output_temp_10);
  }
  output_json["wpaddata"] = output_temp_7;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int chan = input_json["chan"];
  std::vector<struct orient_t> input_temp_1_vec;
  for (auto& elem : input_json["orient"]) {
    int input_temp_1_inner__dummy = elem["dummy"];
    struct orient_t input_temp_1_inner = {input_temp_1_inner__dummy};
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  struct orient_t* orient = &input_temp_1_vec[0];
  std::vector<TYPE_1__> input_temp_2_vec;
  for (auto& elem : input_json["wpaddata"]) {
    int input_temp_2_inner__orient__dummy = elem["orient"]["dummy"];
    struct orient_t input_temp_2_inner__orient = {input_temp_2_inner__orient__dummy};
    TYPE_1__ input_temp_2_inner = {input_temp_2_inner__orient};
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  wpaddata = &input_temp_2_vec[0];
  clock_t begin = clock();
  WPAD_Orientation(chan, orient);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(chan, orient);
}