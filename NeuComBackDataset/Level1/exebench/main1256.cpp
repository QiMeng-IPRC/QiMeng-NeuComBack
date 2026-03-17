#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {size_t end; scalar_t__ fetch; scalar_t__ discard; scalar_t__ start; } ;
struct TYPE_5__ {char const* str; size_t len; TYPE_1__ byteregion; } ;
typedef  TYPE_2__ upb_stringsrc ;

/* Variables and functions */
extern "C" { void upb_stringsrc_reset(upb_stringsrc *s, const char *str, size_t len);
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

void write_output(TYPE_2__* s, char* str, unsigned long int len) {
  json output_json;
  TYPE_2__ output_temp_1 = *s;
  json output_temp_2;

  output_temp_2["str"] = output_temp_1.str;

  output_temp_2["len"] = output_temp_1.len;
  json output_temp_3;

  output_temp_3["end"] = output_temp_1.byteregion.end;

  output_temp_3["fetch"] = output_temp_1.byteregion.fetch;

  output_temp_3["discard"] = output_temp_1.byteregion.discard;

  output_temp_3["start"] = output_temp_1.byteregion.start;
  output_temp_2["byteregion"] = output_temp_3;
  output_json["s"] = output_temp_2;

  output_json["str"] = str;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  char* s_pointer__str = strdup(input_json["s"]["str"].get<std::string>().c_str());
  unsigned long int s_pointer__len = input_json["s"]["len"];
  unsigned long int s_pointer__byteregion__end = input_json["s"]["byteregion"]["end"];
  long int s_pointer__byteregion__fetch = input_json["s"]["byteregion"]["fetch"];
  long int s_pointer__byteregion__discard = input_json["s"]["byteregion"]["discard"];
  long int s_pointer__byteregion__start = input_json["s"]["byteregion"]["start"];
  TYPE_1__ s_pointer__byteregion = {s_pointer__byteregion__end, s_pointer__byteregion__fetch, s_pointer__byteregion__discard, s_pointer__byteregion__start};
  TYPE_2__ s_pointer = {s_pointer__str, s_pointer__len, s_pointer__byteregion};
  TYPE_2__* s = &s_pointer;
  char* str = strdup(input_json["str"].get<std::string>().c_str());
  unsigned long int len = input_json["len"];
  clock_t begin = clock();
  upb_stringsrc_reset(s, str, len);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(s, str, len);
}