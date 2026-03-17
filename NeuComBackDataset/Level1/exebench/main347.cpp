#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct ide_timing {scalar_t__ setup; scalar_t__ act8b; scalar_t__ rec8b; scalar_t__ cyc8b; scalar_t__ active; scalar_t__ recover; scalar_t__ cycle; scalar_t__ udma; } ;

/* Variables and functions */
extern "C" { void ide_timing_merge(struct ide_timing *a, struct ide_timing *b, struct ide_timing *m, unsigned int what);
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

void write_output(struct ide_timing* a, struct ide_timing* b, struct ide_timing* m, unsigned int what) {
  json output_json;
  struct ide_timing output_temp_1 = *a;
  json output_temp_2;

  output_temp_2["setup"] = output_temp_1.setup;

  output_temp_2["act8b"] = output_temp_1.act8b;

  output_temp_2["rec8b"] = output_temp_1.rec8b;

  output_temp_2["cyc8b"] = output_temp_1.cyc8b;

  output_temp_2["active"] = output_temp_1.active;

  output_temp_2["recover"] = output_temp_1.recover;

  output_temp_2["cycle"] = output_temp_1.cycle;

  output_temp_2["udma"] = output_temp_1.udma;
  output_json["a"] = output_temp_2;
  struct ide_timing output_temp_3 = *b;
  json output_temp_4;

  output_temp_4["setup"] = output_temp_3.setup;

  output_temp_4["act8b"] = output_temp_3.act8b;

  output_temp_4["rec8b"] = output_temp_3.rec8b;

  output_temp_4["cyc8b"] = output_temp_3.cyc8b;

  output_temp_4["active"] = output_temp_3.active;

  output_temp_4["recover"] = output_temp_3.recover;

  output_temp_4["cycle"] = output_temp_3.cycle;

  output_temp_4["udma"] = output_temp_3.udma;
  output_json["b"] = output_temp_4;
  struct ide_timing output_temp_5 = *m;
  json output_temp_6;

  output_temp_6["setup"] = output_temp_5.setup;

  output_temp_6["act8b"] = output_temp_5.act8b;

  output_temp_6["rec8b"] = output_temp_5.rec8b;

  output_temp_6["cyc8b"] = output_temp_5.cyc8b;

  output_temp_6["active"] = output_temp_5.active;

  output_temp_6["recover"] = output_temp_5.recover;

  output_temp_6["cycle"] = output_temp_5.cycle;

  output_temp_6["udma"] = output_temp_5.udma;
  output_json["m"] = output_temp_6;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  long int a_pointer__setup = input_json["a"]["setup"];
  long int a_pointer__act8b = input_json["a"]["act8b"];
  long int a_pointer__rec8b = input_json["a"]["rec8b"];
  long int a_pointer__cyc8b = input_json["a"]["cyc8b"];
  long int a_pointer__active = input_json["a"]["active"];
  long int a_pointer__recover = input_json["a"]["recover"];
  long int a_pointer__cycle = input_json["a"]["cycle"];
  long int a_pointer__udma = input_json["a"]["udma"];
  struct ide_timing a_pointer = {a_pointer__setup, a_pointer__act8b, a_pointer__rec8b, a_pointer__cyc8b, a_pointer__active, a_pointer__recover, a_pointer__cycle, a_pointer__udma};
  struct ide_timing* a = &a_pointer;
  long int b_pointer__setup = input_json["b"]["setup"];
  long int b_pointer__act8b = input_json["b"]["act8b"];
  long int b_pointer__rec8b = input_json["b"]["rec8b"];
  long int b_pointer__cyc8b = input_json["b"]["cyc8b"];
  long int b_pointer__active = input_json["b"]["active"];
  long int b_pointer__recover = input_json["b"]["recover"];
  long int b_pointer__cycle = input_json["b"]["cycle"];
  long int b_pointer__udma = input_json["b"]["udma"];
  struct ide_timing b_pointer = {b_pointer__setup, b_pointer__act8b, b_pointer__rec8b, b_pointer__cyc8b, b_pointer__active, b_pointer__recover, b_pointer__cycle, b_pointer__udma};
  struct ide_timing* b = &b_pointer;
  long int m_pointer__setup = input_json["m"]["setup"];
  long int m_pointer__act8b = input_json["m"]["act8b"];
  long int m_pointer__rec8b = input_json["m"]["rec8b"];
  long int m_pointer__cyc8b = input_json["m"]["cyc8b"];
  long int m_pointer__active = input_json["m"]["active"];
  long int m_pointer__recover = input_json["m"]["recover"];
  long int m_pointer__cycle = input_json["m"]["cycle"];
  long int m_pointer__udma = input_json["m"]["udma"];
  struct ide_timing m_pointer = {m_pointer__setup, m_pointer__act8b, m_pointer__rec8b, m_pointer__cyc8b, m_pointer__active, m_pointer__recover, m_pointer__cycle, m_pointer__udma};
  struct ide_timing* m = &m_pointer;
  unsigned int what = input_json["what"];
  clock_t begin = clock();
  ide_timing_merge(a, b, m, what);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(a, b, m, what);
}