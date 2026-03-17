#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct perf_event_attr {int dummy; } ;
struct TYPE_2__ {int size; int exclude_kernel; int exclude_hv; int exclude_idle; int exclude_callchain_kernel; int inherit; int exclude_guest; int disabled; int /*<<< orphan*/  read_format; int /*<<< orphan*/  type; } ;

/* Variables and functions */
extern  int /*<<< orphan*/  PERF_FORMAT_GROUP ; 
extern  int /*<<< orphan*/  PERF_TYPE_HARDWARE ; 
extern  TYPE_1__ pea_llc_miss ; 
extern "C" { void initialize_perf_event_attr(void);
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

void write_output() {
  json output_json;

  output_json["PERF_FORMAT_GROUP"] = PERF_FORMAT_GROUP;

  output_json["PERF_TYPE_HARDWARE"] = PERF_TYPE_HARDWARE;
  json output_temp_1;

  output_temp_1["size"] = pea_llc_miss.size;

  output_temp_1["exclude_kernel"] = pea_llc_miss.exclude_kernel;

  output_temp_1["exclude_hv"] = pea_llc_miss.exclude_hv;

  output_temp_1["exclude_idle"] = pea_llc_miss.exclude_idle;

  output_temp_1["exclude_callchain_kernel"] = pea_llc_miss.exclude_callchain_kernel;

  output_temp_1["inherit"] = pea_llc_miss.inherit;

  output_temp_1["exclude_guest"] = pea_llc_miss.exclude_guest;

  output_temp_1["disabled"] = pea_llc_miss.disabled;

  output_temp_1["read_format"] = pea_llc_miss.read_format;

  output_temp_1["type"] = pea_llc_miss.type;
  output_json["pea_llc_miss"] = output_temp_1;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  PERF_FORMAT_GROUP = input_json["PERF_FORMAT_GROUP"];
  PERF_TYPE_HARDWARE = input_json["PERF_TYPE_HARDWARE"];
  int pea_llc_miss__size = input_json["pea_llc_miss"]["size"];
  int pea_llc_miss__exclude_kernel = input_json["pea_llc_miss"]["exclude_kernel"];
  int pea_llc_miss__exclude_hv = input_json["pea_llc_miss"]["exclude_hv"];
  int pea_llc_miss__exclude_idle = input_json["pea_llc_miss"]["exclude_idle"];
  int pea_llc_miss__exclude_callchain_kernel = input_json["pea_llc_miss"]["exclude_callchain_kernel"];
  int pea_llc_miss__inherit = input_json["pea_llc_miss"]["inherit"];
  int pea_llc_miss__exclude_guest = input_json["pea_llc_miss"]["exclude_guest"];
  int pea_llc_miss__disabled = input_json["pea_llc_miss"]["disabled"];
  int pea_llc_miss__read_format = input_json["pea_llc_miss"]["read_format"];
  int pea_llc_miss__type = input_json["pea_llc_miss"]["type"];
  pea_llc_miss = {pea_llc_miss__size, pea_llc_miss__exclude_kernel, pea_llc_miss__exclude_hv, pea_llc_miss__exclude_idle, pea_llc_miss__exclude_callchain_kernel, pea_llc_miss__inherit, pea_llc_miss__exclude_guest, pea_llc_miss__disabled, pea_llc_miss__read_format, pea_llc_miss__type};
  clock_t begin = clock();
  initialize_perf_event_attr();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}