#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  use; } ;
typedef  TYPE_1__ gentity_t ;

/* Variables and functions */
extern  int /*<<< orphan*/  target_alien_win_use ; 
extern "C" { void SP_target_alien_win( gentity_t *self );
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

void write_output(TYPE_1__* self) {
  json output_json;
  TYPE_1__ output_temp_1 = *self;
  json output_temp_2;

  output_temp_2["use"] = output_temp_1.use;
  output_json["self"] = output_temp_2;

  output_json["target_alien_win_use"] = target_alien_win_use;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int self_pointer__use = input_json["self"]["use"];
  TYPE_1__ self_pointer = {self_pointer__use};
  TYPE_1__* self = &self_pointer;
  target_alien_win_use = input_json["target_alien_win_use"];
  clock_t begin = clock();
  SP_target_alien_win(self);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(self);
}