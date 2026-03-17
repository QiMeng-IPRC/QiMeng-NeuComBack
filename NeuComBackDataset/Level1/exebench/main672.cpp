#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct cpu_stat {scalar_t__ softirq; scalar_t__ irq; scalar_t__ iowait; scalar_t__ idle; scalar_t__ sys; scalar_t__ nice; scalar_t__ user; } ;

/* Variables and functions */
extern "C" { void accumulate_cpu_stat( struct cpu_stat * const accum, const struct cpu_stat * const current );
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

void write_output(struct cpu_stat* accum, struct cpu_stat* current) {
  json output_json;
  struct cpu_stat output_temp_1 = *accum;
  json output_temp_2;

  output_temp_2["softirq"] = output_temp_1.softirq;

  output_temp_2["irq"] = output_temp_1.irq;

  output_temp_2["iowait"] = output_temp_1.iowait;

  output_temp_2["idle"] = output_temp_1.idle;

  output_temp_2["sys"] = output_temp_1.sys;

  output_temp_2["nice"] = output_temp_1.nice;

  output_temp_2["user"] = output_temp_1.user;
  output_json["accum"] = output_temp_2;
  struct cpu_stat output_temp_3 = *current;
  json output_temp_4;

  output_temp_4["softirq"] = output_temp_3.softirq;

  output_temp_4["irq"] = output_temp_3.irq;

  output_temp_4["iowait"] = output_temp_3.iowait;

  output_temp_4["idle"] = output_temp_3.idle;

  output_temp_4["sys"] = output_temp_3.sys;

  output_temp_4["nice"] = output_temp_3.nice;

  output_temp_4["user"] = output_temp_3.user;
  output_json["current"] = output_temp_4;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  long int accum_pointer__softirq = input_json["accum"]["softirq"];
  long int accum_pointer__irq = input_json["accum"]["irq"];
  long int accum_pointer__iowait = input_json["accum"]["iowait"];
  long int accum_pointer__idle = input_json["accum"]["idle"];
  long int accum_pointer__sys = input_json["accum"]["sys"];
  long int accum_pointer__nice = input_json["accum"]["nice"];
  long int accum_pointer__user = input_json["accum"]["user"];
  struct cpu_stat accum_pointer = {accum_pointer__softirq, accum_pointer__irq, accum_pointer__iowait, accum_pointer__idle, accum_pointer__sys, accum_pointer__nice, accum_pointer__user};
  struct cpu_stat* accum = &accum_pointer;
  long int current_pointer__softirq = input_json["current"]["softirq"];
  long int current_pointer__irq = input_json["current"]["irq"];
  long int current_pointer__iowait = input_json["current"]["iowait"];
  long int current_pointer__idle = input_json["current"]["idle"];
  long int current_pointer__sys = input_json["current"]["sys"];
  long int current_pointer__nice = input_json["current"]["nice"];
  long int current_pointer__user = input_json["current"]["user"];
  struct cpu_stat current_pointer = {current_pointer__softirq, current_pointer__irq, current_pointer__iowait, current_pointer__idle, current_pointer__sys, current_pointer__nice, current_pointer__user};
  struct cpu_stat* current = &current_pointer;
  clock_t begin = clock();
  accumulate_cpu_stat(accum, current);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(accum, current);
}