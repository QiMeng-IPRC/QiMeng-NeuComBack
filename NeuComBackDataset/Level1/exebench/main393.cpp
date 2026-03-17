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
typedef  int /*<<< orphan*/  stack_int ;
struct TYPE_5__ {int bytesp; TYPE_1__* intsp; } ;
struct TYPE_6__ {TYPE_2__ stacktop; int /*<<< orphan*/  current; } ;
struct TYPE_4__ {int intvalue; int /*<<< orphan*/  itemtype; } ;

/* Variables and functions */
extern  int /*<<< orphan*/  STACK_INT ; 
extern  TYPE_3__ basicvars ; 
extern "C" { void do_intone(void);
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

  output_json["STACK_INT"] = STACK_INT;
  json output_temp_2;
  json output_temp_3;

  output_temp_3["bytesp"] = basicvars.stacktop.bytesp;
  std::vector<json> output_temp_4;
  for (unsigned int i5 = 0; i5 < 32; i5++) {
    TYPE_1__ output_temp_6 = basicvars.stacktop.intsp[i5];
    json output_temp_7;

    output_temp_7["intvalue"] = output_temp_6.intvalue;

    output_temp_7["itemtype"] = output_temp_6.itemtype;
    output_temp_4.push_back(output_temp_7);
  }
  output_temp_3["intsp"] = output_temp_4;
  output_temp_2["stacktop"] = output_temp_3;

  output_temp_2["current"] = basicvars.current;
  output_json["basicvars"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  STACK_INT = input_json["STACK_INT"];
  int basicvars__stacktop__bytesp = input_json["basicvars"]["stacktop"]["bytesp"];
  std::vector<TYPE_1__> input_temp_1_vec;
  for (auto& elem : input_json["basicvars"]["stacktop"]["intsp"]) {
    int input_temp_1_inner__intvalue = elem["intvalue"];
    int input_temp_1_inner__itemtype = elem["itemtype"];
    TYPE_1__ input_temp_1_inner = {input_temp_1_inner__intvalue, input_temp_1_inner__itemtype};
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  TYPE_1__* basicvars__stacktop__intsp = &input_temp_1_vec[0];
  TYPE_2__ basicvars__stacktop = {basicvars__stacktop__bytesp, basicvars__stacktop__intsp};
  int basicvars__current = input_json["basicvars"]["current"];
  basicvars = {basicvars__stacktop, basicvars__current};
  clock_t begin = clock();
  do_intone();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}