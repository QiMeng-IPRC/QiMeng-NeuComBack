#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct exec {scalar_t__ a_cpu; int a_flags; long a_total; scalar_t__ a_text; scalar_t__ a_bss; scalar_t__ a_data; } ;

/* Variables and functions */
extern  scalar_t__ A_I8086 ; 
extern  int A_SEP ; 
extern  long stack ; 
extern  scalar_t__ wordpow ; 
extern "C" { int setstack(struct exec *hdr);
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

void write_output(struct exec* hdr, int returnv) {
  json output_json;
  struct exec output_temp_1 = *hdr;
  json output_temp_2;

  output_temp_2["a_cpu"] = output_temp_1.a_cpu;

  output_temp_2["a_flags"] = output_temp_1.a_flags;

  output_temp_2["a_total"] = output_temp_1.a_total;

  output_temp_2["a_text"] = output_temp_1.a_text;

  output_temp_2["a_bss"] = output_temp_1.a_bss;

  output_temp_2["a_data"] = output_temp_1.a_data;
  output_json["hdr"] = output_temp_2;

  output_json["A_I8086"] = A_I8086;

  output_json["A_SEP"] = A_SEP;

  output_json["stack"] = stack;

  output_json["wordpow"] = wordpow;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  long int hdr_pointer__a_cpu = input_json["hdr"]["a_cpu"];
  int hdr_pointer__a_flags = input_json["hdr"]["a_flags"];
  long int hdr_pointer__a_total = input_json["hdr"]["a_total"];
  long int hdr_pointer__a_text = input_json["hdr"]["a_text"];
  long int hdr_pointer__a_bss = input_json["hdr"]["a_bss"];
  long int hdr_pointer__a_data = input_json["hdr"]["a_data"];
  struct exec hdr_pointer = {hdr_pointer__a_cpu, hdr_pointer__a_flags, hdr_pointer__a_total, hdr_pointer__a_text, hdr_pointer__a_bss, hdr_pointer__a_data};
  struct exec* hdr = &hdr_pointer;
  A_I8086 = input_json["A_I8086"];
  A_SEP = input_json["A_SEP"];
  stack = input_json["stack"];
  wordpow = input_json["wordpow"];
  clock_t begin = clock();
  int returnv = setstack(hdr);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(hdr, returnv);
}