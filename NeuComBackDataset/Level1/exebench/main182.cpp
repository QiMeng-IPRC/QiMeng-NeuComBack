#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  readstat_progress_handler ;
struct TYPE_3__ {int /*<<< orphan*/  progress_handler; } ;
typedef  TYPE_1__ readstat_parser_t ;
typedef  int /*<<< orphan*/  readstat_error_t ;

/* Variables and functions */
extern  int /*<<< orphan*/  READSTAT_OK ; 
extern "C" { readstat_error_t readstat_set_progress_handler(readstat_parser_t *parser, readstat_progress_handler progress_handler);
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

void write_output(TYPE_1__* parser, int progress_handler, int returnv) {
  json output_json;
  TYPE_1__ output_temp_1 = *parser;
  json output_temp_2;

  output_temp_2["progress_handler"] = output_temp_1.progress_handler;
  output_json["parser"] = output_temp_2;

  output_json["READSTAT_OK"] = READSTAT_OK;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int parser_pointer__progress_handler = input_json["parser"]["progress_handler"];
  TYPE_1__ parser_pointer = {parser_pointer__progress_handler};
  TYPE_1__* parser = &parser_pointer;
  int progress_handler = input_json["progress_handler"];
  READSTAT_OK = input_json["READSTAT_OK"];
  clock_t begin = clock();
  int returnv = readstat_set_progress_handler(parser, progress_handler);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(parser, progress_handler, returnv);
}