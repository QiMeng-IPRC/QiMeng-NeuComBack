#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ update_rate; double ctime_last; } ;
typedef  TYPE_1__ qp_state_t ;

/* Variables and functions */
extern  scalar_t__ QP_DO_NEVER ; 
extern  scalar_t__ QP_DO_ONCE ; 
extern "C" { int qp_check_update(qp_state_t *state, double ctime);
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

void write_output(TYPE_1__* state, double ctime, int returnv) {
  json output_json;
  TYPE_1__ output_temp_1 = *state;
  json output_temp_2;

  output_temp_2["update_rate"] = output_temp_1.update_rate;

  output_temp_2["ctime_last"] = output_temp_1.ctime_last;
  output_json["state"] = output_temp_2;

  output_json["QP_DO_NEVER"] = QP_DO_NEVER;

  output_json["QP_DO_ONCE"] = QP_DO_ONCE;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  long int state_pointer__update_rate = input_json["state"]["update_rate"];
  double state_pointer__ctime_last = input_json["state"]["ctime_last"];
  TYPE_1__ state_pointer = {state_pointer__update_rate, state_pointer__ctime_last};
  TYPE_1__* state = &state_pointer;
  double ctime = input_json["ctime"];
  QP_DO_NEVER = input_json["QP_DO_NEVER"];
  QP_DO_ONCE = input_json["QP_DO_ONCE"];
  clock_t begin = clock();
  int returnv = qp_check_update(state, ctime);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(state, ctime, returnv);
}