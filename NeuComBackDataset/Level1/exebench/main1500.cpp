#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tcb {int /*<<< orphan*/  scno; } ;
struct TYPE_2__ {int /*<<< orphan*/  orig_eax; } ;

/* Variables and functions */
extern  TYPE_1__ i386_regs ; 
extern "C" { int arch_get_scno(struct tcb *tcp);
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

void write_output(struct tcb* tcp, int returnv) {
  json output_json;
  struct tcb output_temp_1 = *tcp;
  json output_temp_2;

  output_temp_2["scno"] = output_temp_1.scno;
  output_json["tcp"] = output_temp_2;
  json output_temp_3;

  output_temp_3["orig_eax"] = i386_regs.orig_eax;
  output_json["i386_regs"] = output_temp_3;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int tcp_pointer__scno = input_json["tcp"]["scno"];
  struct tcb tcp_pointer = {tcp_pointer__scno};
  struct tcb* tcp = &tcp_pointer;
  int i386_regs__orig_eax = input_json["i386_regs"]["orig_eax"];
  i386_regs = {i386_regs__orig_eax};
  clock_t begin = clock();
  int returnv = arch_get_scno(tcp);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(tcp, returnv);
}