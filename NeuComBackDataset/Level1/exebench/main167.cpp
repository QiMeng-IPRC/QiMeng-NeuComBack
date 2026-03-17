#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  debug_handles_t ;
struct TYPE_4__ {int fd; } ;

/* Variables and functions */
extern  TYPE_1__* debug_handles ; 
extern  int debug_handles_count ; 
extern  int /*<<< orphan*/  memcpy (TYPE_1__*,TYPE_1__*,int) ; 
extern "C" { int remove_debug_handle_internal(int fd);
 }int memcpy__bench (TYPE_1__ * c, TYPE_1__ * m, int g) {
	int returnv;
	int temp_variable = 45;
	returnv = temp_variable;
	return returnv;
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

void write_output(int fd, int returnv) {
  json output_json;
  std::vector<json> output_temp_2;
  for (unsigned int i3 = 0; i3 < 32; i3++) {
    TYPE_1__ output_temp_4 = debug_handles[i3];
    json output_temp_5;

    output_temp_5["fd"] = output_temp_4.fd;
    output_temp_2.push_back(output_temp_5);
  }
  output_json["debug_handles"] = output_temp_2;

  output_json["debug_handles_count"] = debug_handles_count;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int fd = input_json["fd"];
  std::vector<TYPE_1__> input_temp_1_vec;
  for (auto& elem : input_json["debug_handles"]) {
    int input_temp_1_inner__fd = elem["fd"];
    TYPE_1__ input_temp_1_inner = {input_temp_1_inner__fd};
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  debug_handles = &input_temp_1_vec[0];
  debug_handles_count = input_json["debug_handles_count"];
  clock_t begin = clock();
  int returnv = remove_debug_handle_internal(fd);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(fd, returnv);
}