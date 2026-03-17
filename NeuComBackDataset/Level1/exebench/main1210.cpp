#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int h8cflag; int h8vflag; int h8zflag; int h8nflag; int h8hflag; } ;
typedef  TYPE_1__ h83xx_state ;
typedef  int UINT8 ;
typedef  int UINT16 ;

/* Variables and functions */
extern "C" { void h8_cmp8(h83xx_state *h8, UINT8 src, UINT8 dst);
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

void write_output(TYPE_1__* h8, int src, int dst) {
  json output_json;
  TYPE_1__ output_temp_1 = *h8;
  json output_temp_2;

  output_temp_2["h8cflag"] = output_temp_1.h8cflag;

  output_temp_2["h8vflag"] = output_temp_1.h8vflag;

  output_temp_2["h8zflag"] = output_temp_1.h8zflag;

  output_temp_2["h8nflag"] = output_temp_1.h8nflag;

  output_temp_2["h8hflag"] = output_temp_1.h8hflag;
  output_json["h8"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int h8_pointer__h8cflag = input_json["h8"]["h8cflag"];
  int h8_pointer__h8vflag = input_json["h8"]["h8vflag"];
  int h8_pointer__h8zflag = input_json["h8"]["h8zflag"];
  int h8_pointer__h8nflag = input_json["h8"]["h8nflag"];
  int h8_pointer__h8hflag = input_json["h8"]["h8hflag"];
  TYPE_1__ h8_pointer = {h8_pointer__h8cflag, h8_pointer__h8vflag, h8_pointer__h8zflag, h8_pointer__h8nflag, h8_pointer__h8hflag};
  TYPE_1__* h8 = &h8_pointer;
  int src = input_json["src"];
  int dst = input_json["dst"];
  clock_t begin = clock();
  h8_cmp8(h8, src, dst);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(h8, src, dst);
}