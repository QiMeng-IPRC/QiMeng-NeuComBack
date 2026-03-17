#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int iFileNumDigits; } ;
typedef  TYPE_1__ strm_t ;
typedef  int /*<<< orphan*/  rsRetVal ;

/* Variables and functions */
extern  int /*<<< orphan*/  RS_RET_OK ; 
extern "C" { rsRetVal strmSetiFileNumDigits(strm_t *pThis, int pVal);
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

void write_output(TYPE_1__* pThis, int pVal, int returnv) {
  json output_json;
  TYPE_1__ output_temp_1 = *pThis;
  json output_temp_2;

  output_temp_2["iFileNumDigits"] = output_temp_1.iFileNumDigits;
  output_json["pThis"] = output_temp_2;

  output_json["RS_RET_OK"] = RS_RET_OK;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int pThis_pointer__iFileNumDigits = input_json["pThis"]["iFileNumDigits"];
  TYPE_1__ pThis_pointer = {pThis_pointer__iFileNumDigits};
  TYPE_1__* pThis = &pThis_pointer;
  int pVal = input_json["pVal"];
  RS_RET_OK = input_json["RS_RET_OK"];
  clock_t begin = clock();
  int returnv = strmSetiFileNumDigits(pThis, pVal);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(pThis, pVal, returnv);
}