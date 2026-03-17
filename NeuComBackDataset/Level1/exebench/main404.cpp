#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct f2fs_gc_kthread {unsigned int min_sleep_time; unsigned int no_gc_sleep_time; unsigned int max_sleep_time; } ;

/* Variables and functions */
extern "C" { void decrease_sleep_time(struct f2fs_gc_kthread *gc_th, unsigned int *wait);
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

void write_output(struct f2fs_gc_kthread* gc_th, unsigned int* wait) {
  json output_json;
  struct f2fs_gc_kthread output_temp_2 = *gc_th;
  json output_temp_3;

  output_temp_3["min_sleep_time"] = output_temp_2.min_sleep_time;

  output_temp_3["no_gc_sleep_time"] = output_temp_2.no_gc_sleep_time;

  output_temp_3["max_sleep_time"] = output_temp_2.max_sleep_time;
  output_json["gc_th"] = output_temp_3;
  std::vector<json> output_temp_4;
  for (unsigned int i5 = 0; i5 < 32; i5++) {
    unsigned int output_temp_6 = wait[i5];

    output_temp_4.push_back(output_temp_6);
  }
  output_json["wait"] = output_temp_4;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  unsigned int gc_th_pointer__min_sleep_time = input_json["gc_th"]["min_sleep_time"];
  unsigned int gc_th_pointer__no_gc_sleep_time = input_json["gc_th"]["no_gc_sleep_time"];
  unsigned int gc_th_pointer__max_sleep_time = input_json["gc_th"]["max_sleep_time"];
  struct f2fs_gc_kthread gc_th_pointer = {gc_th_pointer__min_sleep_time, gc_th_pointer__no_gc_sleep_time, gc_th_pointer__max_sleep_time};
  struct f2fs_gc_kthread* gc_th = &gc_th_pointer;
  std::vector<unsigned int> input_temp_1_vec;
  for (auto& elem : input_json["wait"]) {
    unsigned int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  unsigned int* wait = &input_temp_1_vec[0];
  clock_t begin = clock();
  decrease_sleep_time(gc_th, wait);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(gc_th, wait);
}