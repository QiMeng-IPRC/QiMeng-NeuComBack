#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int pitchL_Q8; } ;
struct TYPE_5__ {int frame_length; TYPE_1__ sPLC; } ;
typedef  TYPE_2__ SKP_Silk_decoder_state ;

/* Variables and functions */
extern "C" { void SKP_Silk_PLC_Reset( SKP_Silk_decoder_state *psDec );
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

void write_output(TYPE_2__* psDec) {
  json output_json;
  TYPE_2__ output_temp_1 = *psDec;
  json output_temp_2;

  output_temp_2["frame_length"] = output_temp_1.frame_length;
  json output_temp_3;

  output_temp_3["pitchL_Q8"] = output_temp_1.sPLC.pitchL_Q8;
  output_temp_2["sPLC"] = output_temp_3;
  output_json["psDec"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int psDec_pointer__frame_length = input_json["psDec"]["frame_length"];
  int psDec_pointer__sPLC__pitchL_Q8 = input_json["psDec"]["sPLC"]["pitchL_Q8"];
  TYPE_1__ psDec_pointer__sPLC = {psDec_pointer__sPLC__pitchL_Q8};
  TYPE_2__ psDec_pointer = {psDec_pointer__frame_length, psDec_pointer__sPLC};
  TYPE_2__* psDec = &psDec_pointer;
  clock_t begin = clock();
  SKP_Silk_PLC_Reset(psDec);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(psDec);
}