#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  gx_device ;
struct TYPE_5__ {long x; long y; } ;
struct TYPE_6__ {long x; long y; } ;
struct TYPE_7__ {TYPE_1__ q; TYPE_2__ p; } ;
typedef  TYPE_3__ gs_fixed_rect ;

/* Variables and functions */
extern  int ARCH_LOG2_SIZEOF_LONG ; 
extern "C" { void gx_get_largest_clipping_box(gx_device * dev, gs_fixed_rect * pbox);
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

void write_output(int* dev, TYPE_3__* pbox) {
  json output_json;
  std::vector<json> output_temp_2;
  for (unsigned int i3 = 0; i3 < 32; i3++) {
    int output_temp_4 = dev[i3];

    output_temp_2.push_back(output_temp_4);
  }
  output_json["dev"] = output_temp_2;
  TYPE_3__ output_temp_5 = *pbox;
  json output_temp_6;
  json output_temp_7;

  output_temp_7["x"] = output_temp_5.q.x;

  output_temp_7["y"] = output_temp_5.q.y;
  output_temp_6["q"] = output_temp_7;
  json output_temp_8;

  output_temp_8["x"] = output_temp_5.p.x;

  output_temp_8["y"] = output_temp_5.p.y;
  output_temp_6["p"] = output_temp_8;
  output_json["pbox"] = output_temp_6;

  output_json["ARCH_LOG2_SIZEOF_LONG"] = ARCH_LOG2_SIZEOF_LONG;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  std::vector<int> input_temp_1_vec;
  for (auto& elem : input_json["dev"]) {
    int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  int* dev = &input_temp_1_vec[0];
  long int pbox_pointer__q__x = input_json["pbox"]["q"]["x"];
  long int pbox_pointer__q__y = input_json["pbox"]["q"]["y"];
  TYPE_1__ pbox_pointer__q = {pbox_pointer__q__x, pbox_pointer__q__y};
  long int pbox_pointer__p__x = input_json["pbox"]["p"]["x"];
  long int pbox_pointer__p__y = input_json["pbox"]["p"]["y"];
  TYPE_2__ pbox_pointer__p = {pbox_pointer__p__x, pbox_pointer__p__y};
  TYPE_3__ pbox_pointer = {pbox_pointer__q, pbox_pointer__p};
  TYPE_3__* pbox = &pbox_pointer;
  ARCH_LOG2_SIZEOF_LONG = input_json["ARCH_LOG2_SIZEOF_LONG"];
  clock_t begin = clock();
  gx_get_largest_clipping_box(dev, pbox);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(dev, pbox);
}