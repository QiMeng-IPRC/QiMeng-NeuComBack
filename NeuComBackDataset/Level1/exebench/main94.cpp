#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int actual_length; scalar_t__ max_length; char* chars; } ;
typedef  TYPE_1__ String ;
typedef  int /*<<< orphan*/  Returncode ;
typedef  int Int ;
typedef  int Bool ;

/* Variables and functions */
extern  int /*<<< orphan*/  ERR ; 
extern  int /*<<< orphan*/  OK ; 
extern "C" { Returncode int_to_string(String* str, Int value);
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

void write_output(TYPE_1__* str, int value, int returnv) {
  json output_json;
  TYPE_1__ output_temp_1 = *str;
  json output_temp_2;

  output_temp_2["actual_length"] = output_temp_1.actual_length;

  output_temp_2["max_length"] = output_temp_1.max_length;

  output_temp_2["chars"] = output_temp_1.chars;
  output_json["str"] = output_temp_2;

  output_json["ERR"] = ERR;

  output_json["OK"] = OK;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int str_pointer__actual_length = input_json["str"]["actual_length"];
  long int str_pointer__max_length = input_json["str"]["max_length"];
  char* str_pointer__chars = strdup(input_json["str"]["chars"].get<std::string>().c_str());
  TYPE_1__ str_pointer = {str_pointer__actual_length, str_pointer__max_length, str_pointer__chars};
  TYPE_1__* str = &str_pointer;
  int value = input_json["value"];
  ERR = input_json["ERR"];
  OK = input_json["OK"];
  clock_t begin = clock();
  int returnv = int_to_string(str, value);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(str, value, returnv);
}