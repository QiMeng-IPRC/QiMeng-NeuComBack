#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct adapter {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  bManualControl; } ;

/* Variables and functions */
extern  TYPE_1__ GLBtCoexist ; 
extern "C" { void hal_btcoex_SetManualControl(struct adapter *padapter, u8 bmanual);
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

void write_output(struct adapter* padapter, int bmanual) {
  json output_json;
  std::vector<json> output_temp_2;
  for (unsigned int i3 = 0; i3 < 32; i3++) {
    struct adapter output_temp_4 = padapter[i3];
    json output_temp_5;

    output_temp_5["dummy"] = output_temp_4.dummy;
    output_temp_2.push_back(output_temp_5);
  }
  output_json["padapter"] = output_temp_2;
  json output_temp_6;

  output_temp_6["bManualControl"] = GLBtCoexist.bManualControl;
  output_json["GLBtCoexist"] = output_temp_6;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  std::vector<struct adapter> input_temp_1_vec;
  for (auto& elem : input_json["padapter"]) {
    int input_temp_1_inner__dummy = elem["dummy"];
    struct adapter input_temp_1_inner = {input_temp_1_inner__dummy};
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  struct adapter* padapter = &input_temp_1_vec[0];
  int bmanual = input_json["bmanual"];
  int GLBtCoexist__bManualControl = input_json["GLBtCoexist"]["bManualControl"];
  GLBtCoexist = {GLBtCoexist__bManualControl};
  clock_t begin = clock();
  hal_btcoex_SetManualControl(padapter, bmanual);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(padapter, bmanual);
}