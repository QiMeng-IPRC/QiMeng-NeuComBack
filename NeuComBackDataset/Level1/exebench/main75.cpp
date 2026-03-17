#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  isGarbage; } ;
typedef  TYPE_1__ element_t ;
typedef  int /*<<< orphan*/  bool_t ;

/* Variables and functions */
extern "C" { void element_setIsGarbage (element_t* elementPtr, bool_t status);
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

void write_output(TYPE_1__* elementPtr, int status) {
  json output_json;
  TYPE_1__ output_temp_1 = *elementPtr;
  json output_temp_2;

  output_temp_2["isGarbage"] = output_temp_1.isGarbage;
  output_json["elementPtr"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int elementPtr_pointer__isGarbage = input_json["elementPtr"]["isGarbage"];
  TYPE_1__ elementPtr_pointer = {elementPtr_pointer__isGarbage};
  TYPE_1__* elementPtr = &elementPtr_pointer;
  int status = input_json["status"];
  clock_t begin = clock();
  element_setIsGarbage(elementPtr, status);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(elementPtr, status);
}