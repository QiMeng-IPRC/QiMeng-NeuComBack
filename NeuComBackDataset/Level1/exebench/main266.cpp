#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */

/* Variables and functions */
extern  unsigned int VME_MAX_SOURCES ; 
extern  unsigned int VME_SOURCE_BASE ; 
extern  int free_vme_vec_bitmap ; 
extern "C" { void atari_unregister_vme_int(unsigned int irq);
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

void write_output(unsigned int irq) {
  json output_json;

  output_json["VME_MAX_SOURCES"] = VME_MAX_SOURCES;

  output_json["VME_SOURCE_BASE"] = VME_SOURCE_BASE;

  output_json["free_vme_vec_bitmap"] = free_vme_vec_bitmap;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  unsigned int irq = input_json["irq"];
  VME_MAX_SOURCES = input_json["VME_MAX_SOURCES"];
  VME_SOURCE_BASE = input_json["VME_SOURCE_BASE"];
  free_vme_vec_bitmap = input_json["free_vme_vec_bitmap"];
  clock_t begin = clock();
  atari_unregister_vme_int(irq);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(irq);
}