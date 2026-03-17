#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  intvalue; } ;
typedef  TYPE_2__ stack_int ;
typedef  int /*<<< orphan*/  int32 ;
struct TYPE_4__ {int bytesp; TYPE_2__* intsp; } ;
struct TYPE_6__ {TYPE_1__ stacktop; } ;

/* Variables and functions */
extern  TYPE_3__ basicvars ; 
extern "C" { int32 pop_int(void);
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

void write_output(int returnv) {
  json output_json;
  json output_temp_2;
  json output_temp_3;

  output_temp_3["bytesp"] = basicvars.stacktop.bytesp;
  std::vector<json> output_temp_4;
  for (unsigned int i5 = 0; i5 < 32; i5++) {
    TYPE_2__ output_temp_6 = basicvars.stacktop.intsp[i5];
    json output_temp_7;

    output_temp_7["intvalue"] = output_temp_6.intvalue;
    output_temp_4.push_back(output_temp_7);
  }
  output_temp_3["intsp"] = output_temp_4;
  output_temp_2["stacktop"] = output_temp_3;
  output_json["basicvars"] = output_temp_2;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int basicvars__stacktop__bytesp = input_json["basicvars"]["stacktop"]["bytesp"];
  std::vector<TYPE_2__> input_temp_1_vec;
  for (auto& elem : input_json["basicvars"]["stacktop"]["intsp"]) {
    int input_temp_1_inner__intvalue = elem["intvalue"];
    TYPE_2__ input_temp_1_inner = {input_temp_1_inner__intvalue};
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  TYPE_2__* basicvars__stacktop__intsp = &input_temp_1_vec[0];
  TYPE_1__ basicvars__stacktop = {basicvars__stacktop__bytesp, basicvars__stacktop__intsp};
  basicvars = {basicvars__stacktop};
  clock_t begin = clock();
  int returnv = pop_int();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(returnv);
}