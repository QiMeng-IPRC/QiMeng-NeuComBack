#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* finish_begin; char* finish_end; } ;
typedef  TYPE_1__ ticker_t ;

/* Variables and functions */
extern "C" { void ticker_add_finish_label(ticker_t* const ticker,char* const finish_begin,char* const finish_end);
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

void write_output(TYPE_1__* ticker, char* finish_begin, char* finish_end) {
  json output_json;
  TYPE_1__ output_temp_1 = *ticker;
  json output_temp_2;

  output_temp_2["finish_begin"] = output_temp_1.finish_begin;

  output_temp_2["finish_end"] = output_temp_1.finish_end;
  output_json["ticker"] = output_temp_2;

  output_json["finish_begin"] = finish_begin;

  output_json["finish_end"] = finish_end;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  char* ticker_pointer__finish_begin = strdup(input_json["ticker"]["finish_begin"].get<std::string>().c_str());
  char* ticker_pointer__finish_end = strdup(input_json["ticker"]["finish_end"].get<std::string>().c_str());
  TYPE_1__ ticker_pointer = {ticker_pointer__finish_begin, ticker_pointer__finish_end};
  TYPE_1__* ticker = &ticker_pointer;
  char* finish_begin = strdup(input_json["finish_begin"].get<std::string>().c_str());
  char* finish_end = strdup(input_json["finish_end"].get<std::string>().c_str());
  clock_t begin = clock();
  ticker_add_finish_label(ticker, finish_begin, finish_end);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(ticker, finish_begin, finish_end);
}