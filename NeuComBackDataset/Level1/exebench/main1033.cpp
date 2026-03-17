#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* name_wback; int /*<<< orphan*/  wbackf; } ;
typedef  TYPE_1__ d4cache ;

/* Variables and functions */
extern  int /*<<< orphan*/  d4wback_never ; 
extern "C" { void d4init_wback_never (d4cache *c);
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

void write_output(TYPE_1__* c) {
  json output_json;
  TYPE_1__ output_temp_1 = *c;
  json output_temp_2;

  output_temp_2["name_wback"] = output_temp_1.name_wback;

  output_temp_2["wbackf"] = output_temp_1.wbackf;
  output_json["c"] = output_temp_2;

  output_json["d4wback_never"] = d4wback_never;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  char* c_pointer__name_wback = strdup(input_json["c"]["name_wback"].get<std::string>().c_str());
  int c_pointer__wbackf = input_json["c"]["wbackf"];
  TYPE_1__ c_pointer = {c_pointer__name_wback, c_pointer__wbackf};
  TYPE_1__* c = &c_pointer;
  d4wback_never = input_json["d4wback_never"];
  clock_t begin = clock();
  d4init_wback_never(c);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(c);
}