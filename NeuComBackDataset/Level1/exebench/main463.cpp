#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct ttyinq {int /*<<< orphan*/  ti_lastblock; int /*<<< orphan*/  ti_reprintblock; int /*<<< orphan*/  ti_end; int /*<<< orphan*/  ti_reprint; } ;

/* Variables and functions */
extern "C" { void ttyinq_reprintpos_set(struct ttyinq *ti);
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

void write_output(struct ttyinq* ti) {
  json output_json;
  struct ttyinq output_temp_1 = *ti;
  json output_temp_2;

  output_temp_2["ti_lastblock"] = output_temp_1.ti_lastblock;

  output_temp_2["ti_reprintblock"] = output_temp_1.ti_reprintblock;

  output_temp_2["ti_end"] = output_temp_1.ti_end;

  output_temp_2["ti_reprint"] = output_temp_1.ti_reprint;
  output_json["ti"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int ti_pointer__ti_lastblock = input_json["ti"]["ti_lastblock"];
  int ti_pointer__ti_reprintblock = input_json["ti"]["ti_reprintblock"];
  int ti_pointer__ti_end = input_json["ti"]["ti_end"];
  int ti_pointer__ti_reprint = input_json["ti"]["ti_reprint"];
  struct ttyinq ti_pointer = {ti_pointer__ti_lastblock, ti_pointer__ti_reprintblock, ti_pointer__ti_end, ti_pointer__ti_reprint};
  struct ttyinq* ti = &ti_pointer;
  clock_t begin = clock();
  ttyinq_reprintpos_set(ti);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(ti);
}