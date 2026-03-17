#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int mime_max_depth; } ;
typedef  TYPE_1__ zmail_parser_t ;

/* Variables and functions */
extern "C" { int zmail_parser_set_mime_max_depth(zmail_parser_t * parser, int length);
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

void write_output(TYPE_1__* parser, int length, int returnv) {
  json output_json;
  TYPE_1__ output_temp_1 = *parser;
  json output_temp_2;

  output_temp_2["mime_max_depth"] = output_temp_1.mime_max_depth;
  output_json["parser"] = output_temp_2;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int parser_pointer__mime_max_depth = input_json["parser"]["mime_max_depth"];
  TYPE_1__ parser_pointer = {parser_pointer__mime_max_depth};
  TYPE_1__* parser = &parser_pointer;
  int length = input_json["length"];
  clock_t begin = clock();
  int returnv = zmail_parser_set_mime_max_depth(parser, length);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(parser, length, returnv);
}