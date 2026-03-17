#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  requested_mode; int /*<<< orphan*/  current_mode; int /*<<< orphan*/  fc_was_autonegged; } ;
struct ixgbe_hw {TYPE_1__ fc; } ;

/* Variables and functions */
extern  int /*<<< orphan*/  FALSE ; 
extern "C" { void ixgbe_fc_autoneg_fiber_x550em_a(struct ixgbe_hw *hw);
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

void write_output(struct ixgbe_hw* hw) {
  json output_json;
  struct ixgbe_hw output_temp_1 = *hw;
  json output_temp_2;
  json output_temp_3;

  output_temp_3["requested_mode"] = output_temp_1.fc.requested_mode;

  output_temp_3["current_mode"] = output_temp_1.fc.current_mode;

  output_temp_3["fc_was_autonegged"] = output_temp_1.fc.fc_was_autonegged;
  output_temp_2["fc"] = output_temp_3;
  output_json["hw"] = output_temp_2;

  output_json["FALSE"] = FALSE;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int hw_pointer__fc__requested_mode = input_json["hw"]["fc"]["requested_mode"];
  int hw_pointer__fc__current_mode = input_json["hw"]["fc"]["current_mode"];
  int hw_pointer__fc__fc_was_autonegged = input_json["hw"]["fc"]["fc_was_autonegged"];
  TYPE_1__ hw_pointer__fc = {hw_pointer__fc__requested_mode, hw_pointer__fc__current_mode, hw_pointer__fc__fc_was_autonegged};
  struct ixgbe_hw hw_pointer = {hw_pointer__fc};
  struct ixgbe_hw* hw = &hw_pointer;
  FALSE = input_json["FALSE"];
  clock_t begin = clock();
  ixgbe_fc_autoneg_fiber_x550em_a(hw);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(hw);
}