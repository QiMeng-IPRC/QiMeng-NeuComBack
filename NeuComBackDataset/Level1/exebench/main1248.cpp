#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct gdtdesc {int lim0_15; int base0_15; int base16_23; int acces; int lim16_19; int other; int base24_31; } ;

/* Variables and functions */
extern "C" { void init_gdt_desc(u32 base, u32 limite, u8 acces, u8 other, struct gdtdesc *desc);
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

void write_output(int base, int limite, int acces, int other, struct gdtdesc* desc) {
  json output_json;
  struct gdtdesc output_temp_1 = *desc;
  json output_temp_2;

  output_temp_2["lim0_15"] = output_temp_1.lim0_15;

  output_temp_2["base0_15"] = output_temp_1.base0_15;

  output_temp_2["base16_23"] = output_temp_1.base16_23;

  output_temp_2["acces"] = output_temp_1.acces;

  output_temp_2["lim16_19"] = output_temp_1.lim16_19;

  output_temp_2["other"] = output_temp_1.other;

  output_temp_2["base24_31"] = output_temp_1.base24_31;
  output_json["desc"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int base = input_json["base"];
  int limite = input_json["limite"];
  int acces = input_json["acces"];
  int other = input_json["other"];
  int desc_pointer__lim0_15 = input_json["desc"]["lim0_15"];
  int desc_pointer__base0_15 = input_json["desc"]["base0_15"];
  int desc_pointer__base16_23 = input_json["desc"]["base16_23"];
  int desc_pointer__acces = input_json["desc"]["acces"];
  int desc_pointer__lim16_19 = input_json["desc"]["lim16_19"];
  int desc_pointer__other = input_json["desc"]["other"];
  int desc_pointer__base24_31 = input_json["desc"]["base24_31"];
  struct gdtdesc desc_pointer = {desc_pointer__lim0_15, desc_pointer__base0_15, desc_pointer__base16_23, desc_pointer__acces, desc_pointer__lim16_19, desc_pointer__other, desc_pointer__base24_31};
  struct gdtdesc* desc = &desc_pointer;
  clock_t begin = clock();
  init_gdt_desc(base, limite, acces, other, desc);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(base, limite, acces, other, desc);
}