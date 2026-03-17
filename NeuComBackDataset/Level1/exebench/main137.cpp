#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {unsigned int flags; } ;
struct task_struct {TYPE_1__ thread; } ;

/* Variables and functions */
extern  unsigned int SH_THREAD_UAC_MASK ; 
extern "C" { int set_unalign_ctl(struct task_struct *tsk, unsigned int val);
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

void write_output(struct task_struct* tsk, unsigned int val, int returnv) {
  json output_json;
  struct task_struct output_temp_1 = *tsk;
  json output_temp_2;
  json output_temp_3;

  output_temp_3["flags"] = output_temp_1.thread.flags;
  output_temp_2["thread"] = output_temp_3;
  output_json["tsk"] = output_temp_2;

  output_json["SH_THREAD_UAC_MASK"] = SH_THREAD_UAC_MASK;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  unsigned int tsk_pointer__thread__flags = input_json["tsk"]["thread"]["flags"];
  TYPE_1__ tsk_pointer__thread = {tsk_pointer__thread__flags};
  struct task_struct tsk_pointer = {tsk_pointer__thread};
  struct task_struct* tsk = &tsk_pointer;
  unsigned int val = input_json["val"];
  SH_THREAD_UAC_MASK = input_json["SH_THREAD_UAC_MASK"];
  clock_t begin = clock();
  int returnv = set_unalign_ctl(tsk, val);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(tsk, val, returnv);
}