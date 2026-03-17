#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
typedef  int uint8 ;
struct can_frame {int* data; } ;

/* Variables and functions */
extern  scalar_t__ nextFrameRead ; 
extern  size_t package_read_index ; 
extern "C" { void Can_Read_First_Frame(struct can_frame frame, uint8* package);
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

void write_output(struct can_frame frame, int* package) {
  json output_json;
  json output_temp_3;
  std::vector<json> output_temp_4;
  for (unsigned int i5 = 0; i5 < 32; i5++) {
    int output_temp_6 = frame.data[i5];

    output_temp_4.push_back(output_temp_6);
  }
  output_temp_3["data"] = output_temp_4;
  output_json["frame"] = output_temp_3;
  std::vector<json> output_temp_7;
  for (unsigned int i8 = 0; i8 < 32; i8++) {
    int output_temp_9 = package[i8];

    output_temp_7.push_back(output_temp_9);
  }
  output_json["package"] = output_temp_7;

  output_json["nextFrameRead"] = nextFrameRead;

  output_json["package_read_index"] = package_read_index;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  std::vector<int> input_temp_1_vec;
  for (auto& elem : input_json["frame"]["data"]) {
    int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  int* frame__data = &input_temp_1_vec[0];
  struct can_frame frame = {frame__data};
  std::vector<int> input_temp_2_vec;
  for (auto& elem : input_json["package"]) {
    int input_temp_2_inner = elem;
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  int* package = &input_temp_2_vec[0];
  nextFrameRead = input_json["nextFrameRead"];
  package_read_index = input_json["package_read_index"];
  clock_t begin = clock();
  Can_Read_First_Frame(frame, package);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(frame, package);
}