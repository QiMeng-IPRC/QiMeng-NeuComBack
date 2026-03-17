#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int randSeed1; int randSeed2; int previous; } ;
typedef  TYPE_1__ PaUtilTriangularDitherGenerator ;
typedef  int PaInt32 ;

/* Variables and functions */
extern  float const_float_dither_scale_ ; 
extern "C" { float PaUtil_GenerateFloatTriangularDither( PaUtilTriangularDitherGenerator *state );
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

void write_output(TYPE_1__* state, float returnv) {
  json output_json;
  TYPE_1__ output_temp_1 = *state;
  json output_temp_2;

  output_temp_2["randSeed1"] = output_temp_1.randSeed1;

  output_temp_2["randSeed2"] = output_temp_1.randSeed2;

  output_temp_2["previous"] = output_temp_1.previous;
  output_json["state"] = output_temp_2;

  output_json["const_float_dither_scale_"] = const_float_dither_scale_;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int state_pointer__randSeed1 = input_json["state"]["randSeed1"];
  int state_pointer__randSeed2 = input_json["state"]["randSeed2"];
  int state_pointer__previous = input_json["state"]["previous"];
  TYPE_1__ state_pointer = {state_pointer__randSeed1, state_pointer__randSeed2, state_pointer__previous};
  TYPE_1__* state = &state_pointer;
  const_float_dither_scale_ = input_json["const_float_dither_scale_"];
  clock_t begin = clock();
  float returnv = PaUtil_GenerateFloatTriangularDither(state);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(state, returnv);
}