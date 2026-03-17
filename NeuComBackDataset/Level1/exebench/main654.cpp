#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  a; int /*<<< orphan*/  len; int /*<<< orphan*/  s; } ;
typedef  TYPE_1__ stralloc ;
struct TYPE_6__ {int /*<<< orphan*/  op; scalar_t__ fd; int /*<<< orphan*/  a; int /*<<< orphan*/  n; scalar_t__ p; int /*<<< orphan*/  x; } ;
typedef  TYPE_2__ buffer ;

/* Variables and functions */
extern  int /*<<< orphan*/  dummyreadwrite ; 
extern "C" { void buffer_fromsa(buffer* b,stralloc* sa);
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

void write_output(TYPE_2__* b, TYPE_1__* sa) {
  json output_json;
  TYPE_2__ output_temp_1 = *b;
  json output_temp_2;

  output_temp_2["op"] = output_temp_1.op;

  output_temp_2["fd"] = output_temp_1.fd;

  output_temp_2["a"] = output_temp_1.a;

  output_temp_2["n"] = output_temp_1.n;

  output_temp_2["p"] = output_temp_1.p;

  output_temp_2["x"] = output_temp_1.x;
  output_json["b"] = output_temp_2;
  TYPE_1__ output_temp_3 = *sa;
  json output_temp_4;

  output_temp_4["a"] = output_temp_3.a;

  output_temp_4["len"] = output_temp_3.len;

  output_temp_4["s"] = output_temp_3.s;
  output_json["sa"] = output_temp_4;

  output_json["dummyreadwrite"] = dummyreadwrite;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int b_pointer__op = input_json["b"]["op"];
  long int b_pointer__fd = input_json["b"]["fd"];
  int b_pointer__a = input_json["b"]["a"];
  int b_pointer__n = input_json["b"]["n"];
  long int b_pointer__p = input_json["b"]["p"];
  int b_pointer__x = input_json["b"]["x"];
  TYPE_2__ b_pointer = {b_pointer__op, b_pointer__fd, b_pointer__a, b_pointer__n, b_pointer__p, b_pointer__x};
  TYPE_2__* b = &b_pointer;
  int sa_pointer__a = input_json["sa"]["a"];
  int sa_pointer__len = input_json["sa"]["len"];
  int sa_pointer__s = input_json["sa"]["s"];
  TYPE_1__ sa_pointer = {sa_pointer__a, sa_pointer__len, sa_pointer__s};
  TYPE_1__* sa = &sa_pointer;
  dummyreadwrite = input_json["dummyreadwrite"];
  clock_t begin = clock();
  buffer_fromsa(b, sa);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(b, sa);
}