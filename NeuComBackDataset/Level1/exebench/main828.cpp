#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int TCR; int TER; } ;
struct TYPE_3__ {int TRACECONFIG; } ;

/* Variables and functions */
extern  int CLOCK_TRACECONFIG_TRACEMUX_Pos ; 
extern  int CLOCK_TRACECONFIG_TRACEMUX_Serial ; 
extern  int CLOCK_TRACECONFIG_TRACEPORTSPEED_16MHz ; 
extern  int CLOCK_TRACECONFIG_TRACEPORTSPEED_Pos ; 
extern  TYPE_2__* ITM ; 
extern  TYPE_1__* NRF_CLOCK ; 
extern "C" { void nrf_power_swo_open();
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

void write_output() {
  json output_json;

  output_json["CLOCK_TRACECONFIG_TRACEMUX_Pos"] = CLOCK_TRACECONFIG_TRACEMUX_Pos;

  output_json["CLOCK_TRACECONFIG_TRACEMUX_Serial"] = CLOCK_TRACECONFIG_TRACEMUX_Serial;

  output_json["CLOCK_TRACECONFIG_TRACEPORTSPEED_16MHz"] = CLOCK_TRACECONFIG_TRACEPORTSPEED_16MHz;

  output_json["CLOCK_TRACECONFIG_TRACEPORTSPEED_Pos"] = CLOCK_TRACECONFIG_TRACEPORTSPEED_Pos;
  TYPE_2__ output_temp_1 = *ITM;
  json output_temp_2;

  output_temp_2["TCR"] = output_temp_1.TCR;

  output_temp_2["TER"] = output_temp_1.TER;
  output_json["ITM"] = output_temp_2;
  TYPE_1__ output_temp_3 = *NRF_CLOCK;
  json output_temp_4;

  output_temp_4["TRACECONFIG"] = output_temp_3.TRACECONFIG;
  output_json["NRF_CLOCK"] = output_temp_4;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  CLOCK_TRACECONFIG_TRACEMUX_Pos = input_json["CLOCK_TRACECONFIG_TRACEMUX_Pos"];
  CLOCK_TRACECONFIG_TRACEMUX_Serial = input_json["CLOCK_TRACECONFIG_TRACEMUX_Serial"];
  CLOCK_TRACECONFIG_TRACEPORTSPEED_16MHz = input_json["CLOCK_TRACECONFIG_TRACEPORTSPEED_16MHz"];
  CLOCK_TRACECONFIG_TRACEPORTSPEED_Pos = input_json["CLOCK_TRACECONFIG_TRACEPORTSPEED_Pos"];
  int ITM_pointer__TCR = input_json["ITM"]["TCR"];
  int ITM_pointer__TER = input_json["ITM"]["TER"];
  TYPE_2__ ITM_pointer = {ITM_pointer__TCR, ITM_pointer__TER};
  ITM = &ITM_pointer;
  int NRF_CLOCK_pointer__TRACECONFIG = input_json["NRF_CLOCK"]["TRACECONFIG"];
  TYPE_1__ NRF_CLOCK_pointer = {NRF_CLOCK_pointer__TRACECONFIG};
  NRF_CLOCK = &NRF_CLOCK_pointer;
  clock_t begin = clock();
  nrf_power_swo_open();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}