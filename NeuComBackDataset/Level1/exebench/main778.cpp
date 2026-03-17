#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {size_t cbCur; } ;
struct TYPE_4__ {TYPE_1__ buf; } ;
struct WMPStream {TYPE_2__ state; } ;
typedef  int /*<<< orphan*/  ERR ;

/* Variables and functions */
extern "C" { ERR SetPosWS_Memory(struct WMPStream* pWS, size_t offPos);
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

void write_output(struct WMPStream* pWS, unsigned long int offPos, int returnv) {
  json output_json;
  struct WMPStream output_temp_1 = *pWS;
  json output_temp_2;
  json output_temp_3;
  json output_temp_4;

  output_temp_4["cbCur"] = output_temp_1.state.buf.cbCur;
  output_temp_3["buf"] = output_temp_4;
  output_temp_2["state"] = output_temp_3;
  output_json["pWS"] = output_temp_2;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  unsigned long int pWS_pointer__state__buf__cbCur = input_json["pWS"]["state"]["buf"]["cbCur"];
  TYPE_1__ pWS_pointer__state__buf = {pWS_pointer__state__buf__cbCur};
  TYPE_2__ pWS_pointer__state = {pWS_pointer__state__buf};
  struct WMPStream pWS_pointer = {pWS_pointer__state};
  struct WMPStream* pWS = &pWS_pointer;
  unsigned long int offPos = input_json["offPos"];
  clock_t begin = clock();
  int returnv = SetPosWS_Memory(pWS, offPos);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(pWS, offPos, returnv);
}