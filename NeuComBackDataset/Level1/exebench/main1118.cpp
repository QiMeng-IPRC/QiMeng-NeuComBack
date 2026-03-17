#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char* p; int len; } ;
typedef  TYPE_1__ string ;

/* Variables and functions */
extern "C" { void split(string what, char *delimiter, string *l, string *r);
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

void write_output(TYPE_1__ what, char* delimiter, TYPE_1__* l, TYPE_1__* r) {
  json output_json;

  output_json["delimiter"] = delimiter;
  TYPE_1__ output_temp_1 = *l;
  json output_temp_2;

  output_temp_2["p"] = output_temp_1.p;

  output_temp_2["len"] = output_temp_1.len;
  output_json["l"] = output_temp_2;
  TYPE_1__ output_temp_3 = *r;
  json output_temp_4;

  output_temp_4["p"] = output_temp_3.p;

  output_temp_4["len"] = output_temp_3.len;
  output_json["r"] = output_temp_4;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  char* what__p = strdup(input_json["what"]["p"].get<std::string>().c_str());
  int what__len = input_json["what"]["len"];
  TYPE_1__ what = {what__p, what__len};
  char* delimiter = strdup(input_json["delimiter"].get<std::string>().c_str());
  char* l_pointer__p = strdup(input_json["l"]["p"].get<std::string>().c_str());
  int l_pointer__len = input_json["l"]["len"];
  TYPE_1__ l_pointer = {l_pointer__p, l_pointer__len};
  TYPE_1__* l = &l_pointer;
  char* r_pointer__p = strdup(input_json["r"]["p"].get<std::string>().c_str());
  int r_pointer__len = input_json["r"]["len"];
  TYPE_1__ r_pointer = {r_pointer__p, r_pointer__len};
  TYPE_1__* r = &r_pointer;
  clock_t begin = clock();
  split(what, delimiter, l, r);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(what, delimiter, l, r);
}