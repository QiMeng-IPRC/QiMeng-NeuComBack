#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ comment_len; scalar_t__ value_len; } ;
typedef  TYPE_1__ header_record ;

/* Variables and functions */
extern  scalar_t__ mbx ; 
extern "C" { void scan_value_length(header_record *h);
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

void write_output(TYPE_1__* h) {
  json output_json;
  TYPE_1__ output_temp_1 = *h;
  json output_temp_2;

  output_temp_2["comment_len"] = output_temp_1.comment_len;

  output_temp_2["value_len"] = output_temp_1.value_len;
  output_json["h"] = output_temp_2;

  output_json["mbx"] = mbx;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  long int h_pointer__comment_len = input_json["h"]["comment_len"];
  long int h_pointer__value_len = input_json["h"]["value_len"];
  TYPE_1__ h_pointer = {h_pointer__comment_len, h_pointer__value_len};
  TYPE_1__* h = &h_pointer;
  mbx = input_json["mbx"];
  clock_t begin = clock();
  scan_value_length(h);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(h);
}