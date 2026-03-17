#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {size_t rptr; int sum; int* data; } ;

/* Variables and functions */
extern  TYPE_1__ rec_buffer ; 
extern "C" { void unget_rec_buffer_delta(int delta);
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

void write_output(int delta) {
  json output_json;
  json output_temp_2;

  output_temp_2["rptr"] = rec_buffer.rptr;

  output_temp_2["sum"] = rec_buffer.sum;
  std::vector<json> output_temp_3;
  for (unsigned int i4 = 0; i4 < 32; i4++) {
    int output_temp_5 = rec_buffer.data[i4];

    output_temp_3.push_back(output_temp_5);
  }
  output_temp_2["data"] = output_temp_3;
  output_json["rec_buffer"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int delta = input_json["delta"];
  unsigned long int rec_buffer__rptr = input_json["rec_buffer"]["rptr"];
  int rec_buffer__sum = input_json["rec_buffer"]["sum"];
  std::vector<int> input_temp_1_vec;
  for (auto& elem : input_json["rec_buffer"]["data"]) {
    int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  int* rec_buffer__data = &input_temp_1_vec[0];
  rec_buffer = {rec_buffer__rptr, rec_buffer__sum, rec_buffer__data};
  clock_t begin = clock();
  unget_rec_buffer_delta(delta);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(delta);
}