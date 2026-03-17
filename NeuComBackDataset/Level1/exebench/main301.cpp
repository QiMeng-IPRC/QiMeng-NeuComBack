#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  halt; int /*<<< orphan*/  task_free; int /*<<< orphan*/  write; int /*<<< orphan*/  handle_dl; int /*<<< orphan*/  handle_timeout; int /*<<< orphan*/  probe; } ;

/* Variables and functions */
extern  int /*<<< orphan*/  do_sniff_free ; 
extern  int /*<<< orphan*/  do_sniff_halt ; 
extern  int /*<<< orphan*/  do_sniff_handle_dl ; 
extern  int /*<<< orphan*/  do_sniff_handle_timeout ; 
extern  int /*<<< orphan*/  do_sniff_probe ; 
extern  int /*<<< orphan*/  do_sniff_write ; 
extern  TYPE_1__ sniff_funcs ; 
extern "C" { int scamper_do_sniff_init();
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

void write_output(int returnv) {
  json output_json;

  output_json["do_sniff_free"] = do_sniff_free;

  output_json["do_sniff_halt"] = do_sniff_halt;

  output_json["do_sniff_handle_dl"] = do_sniff_handle_dl;

  output_json["do_sniff_handle_timeout"] = do_sniff_handle_timeout;

  output_json["do_sniff_probe"] = do_sniff_probe;

  output_json["do_sniff_write"] = do_sniff_write;
  json output_temp_1;

  output_temp_1["halt"] = sniff_funcs.halt;

  output_temp_1["task_free"] = sniff_funcs.task_free;

  output_temp_1["write"] = sniff_funcs.write;

  output_temp_1["handle_dl"] = sniff_funcs.handle_dl;

  output_temp_1["handle_timeout"] = sniff_funcs.handle_timeout;

  output_temp_1["probe"] = sniff_funcs.probe;
  output_json["sniff_funcs"] = output_temp_1;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  do_sniff_free = input_json["do_sniff_free"];
  do_sniff_halt = input_json["do_sniff_halt"];
  do_sniff_handle_dl = input_json["do_sniff_handle_dl"];
  do_sniff_handle_timeout = input_json["do_sniff_handle_timeout"];
  do_sniff_probe = input_json["do_sniff_probe"];
  do_sniff_write = input_json["do_sniff_write"];
  int sniff_funcs__halt = input_json["sniff_funcs"]["halt"];
  int sniff_funcs__task_free = input_json["sniff_funcs"]["task_free"];
  int sniff_funcs__write = input_json["sniff_funcs"]["write"];
  int sniff_funcs__handle_dl = input_json["sniff_funcs"]["handle_dl"];
  int sniff_funcs__handle_timeout = input_json["sniff_funcs"]["handle_timeout"];
  int sniff_funcs__probe = input_json["sniff_funcs"]["probe"];
  sniff_funcs = {sniff_funcs__halt, sniff_funcs__task_free, sniff_funcs__write, sniff_funcs__handle_dl, sniff_funcs__handle_timeout, sniff_funcs__probe};
  clock_t begin = clock();
  int returnv = scamper_do_sniff_init();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(returnv);
}