#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int size; char* buf; scalar_t__ tail; scalar_t__ head; } ;
typedef  TYPE_1__ bufman_t ;

/* Variables and functions */
extern "C" { int bufman_init(bufman_t *bufman, char *buffer, int bufsize);
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

void write_output(TYPE_1__* bufman, char* buffer, int bufsize, int returnv) {
  json output_json;
  TYPE_1__ output_temp_1 = *bufman;
  json output_temp_2;

  output_temp_2["size"] = output_temp_1.size;

  output_temp_2["buf"] = output_temp_1.buf;

  output_temp_2["tail"] = output_temp_1.tail;

  output_temp_2["head"] = output_temp_1.head;
  output_json["bufman"] = output_temp_2;

  output_json["buffer"] = buffer;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int bufman_pointer__size = input_json["bufman"]["size"];
  char* bufman_pointer__buf = strdup(input_json["bufman"]["buf"].get<std::string>().c_str());
  long int bufman_pointer__tail = input_json["bufman"]["tail"];
  long int bufman_pointer__head = input_json["bufman"]["head"];
  TYPE_1__ bufman_pointer = {bufman_pointer__size, bufman_pointer__buf, bufman_pointer__tail, bufman_pointer__head};
  TYPE_1__* bufman = &bufman_pointer;
  char* buffer = strdup(input_json["buffer"].get<std::string>().c_str());
  int bufsize = input_json["bufsize"];
  clock_t begin = clock();
  int returnv = bufman_init(bufman, buffer, bufsize);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(bufman, buffer, bufsize, returnv);
}