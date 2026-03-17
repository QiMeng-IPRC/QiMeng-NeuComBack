#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int Xb; int Wb; int /*<<< orphan*/  NumberofBFrames; int /*<<< orphan*/  Nb; } ;
typedef  TYPE_1__ rc_quadratic ;
struct TYPE_5__ {int /*<<< orphan*/  NumberofCodedBFrame; } ;

/* Variables and functions */
extern  int THETA ; 
extern  TYPE_3__* generic_RC ; 
extern "C" { void updateBparams( rc_quadratic *prc, int complexity );
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

void write_output(TYPE_1__* prc, int complexity) {
  json output_json;
  TYPE_1__ output_temp_1 = *prc;
  json output_temp_2;

  output_temp_2["Xb"] = output_temp_1.Xb;

  output_temp_2["Wb"] = output_temp_1.Wb;

  output_temp_2["NumberofBFrames"] = output_temp_1.NumberofBFrames;

  output_temp_2["Nb"] = output_temp_1.Nb;
  output_json["prc"] = output_temp_2;

  output_json["THETA"] = THETA;
  TYPE_3__ output_temp_3 = *generic_RC;
  json output_temp_4;

  output_temp_4["NumberofCodedBFrame"] = output_temp_3.NumberofCodedBFrame;
  output_json["generic_RC"] = output_temp_4;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int prc_pointer__Xb = input_json["prc"]["Xb"];
  int prc_pointer__Wb = input_json["prc"]["Wb"];
  int prc_pointer__NumberofBFrames = input_json["prc"]["NumberofBFrames"];
  int prc_pointer__Nb = input_json["prc"]["Nb"];
  TYPE_1__ prc_pointer = {prc_pointer__Xb, prc_pointer__Wb, prc_pointer__NumberofBFrames, prc_pointer__Nb};
  TYPE_1__* prc = &prc_pointer;
  int complexity = input_json["complexity"];
  THETA = input_json["THETA"];
  int generic_RC_pointer__NumberofCodedBFrame = input_json["generic_RC"]["NumberofCodedBFrame"];
  TYPE_3__ generic_RC_pointer = {generic_RC_pointer__NumberofCodedBFrame};
  generic_RC = &generic_RC_pointer;
  clock_t begin = clock();
  updateBparams(prc, complexity);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(prc, complexity);
}