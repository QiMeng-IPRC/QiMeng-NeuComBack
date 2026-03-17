#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char sname; } ;
struct TYPE_8__ {TYPE_2__ opt; } ;
struct TYPE_6__ {char sname; } ;
struct TYPE_9__ {scalar_t__ type; TYPE_3__ optv; TYPE_1__ opt; } ;
typedef  TYPE_4__ option_t ;

/* Variables and functions */
extern  int /*<<< orphan*/  CCLAP_ERR_NULLVALUE ; 
extern  int /*<<< orphan*/  CCLAP_SUCCESS ; 
extern  scalar_t__ SOPTION ; 
extern  int /*<<< orphan*/  cclap_errno ; 
extern "C" { char cclap_option_sname(option_t* option);
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

void write_output(TYPE_4__* option, char returnv) {
  json output_json;
  TYPE_4__ output_temp_1 = *option;
  json output_temp_2;

  output_temp_2["type"] = output_temp_1.type;
  json output_temp_3;
  json output_temp_4;

  output_temp_4["sname"] = output_temp_1.optv.opt.sname;
  output_temp_3["opt"] = output_temp_4;
  output_temp_2["optv"] = output_temp_3;
  json output_temp_5;

  output_temp_5["sname"] = output_temp_1.opt.sname;
  output_temp_2["opt"] = output_temp_5;
  output_json["option"] = output_temp_2;

  output_json["CCLAP_ERR_NULLVALUE"] = CCLAP_ERR_NULLVALUE;

  output_json["CCLAP_SUCCESS"] = CCLAP_SUCCESS;

  output_json["SOPTION"] = SOPTION;

  output_json["cclap_errno"] = cclap_errno;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  long int option_pointer__type = input_json["option"]["type"];
  char option_pointer__optv__opt__sname = input_json["option"]["optv"]["opt"]["sname"].get<char>();
  TYPE_2__ option_pointer__optv__opt = {option_pointer__optv__opt__sname};
  TYPE_3__ option_pointer__optv = {option_pointer__optv__opt};
  char option_pointer__opt__sname = input_json["option"]["opt"]["sname"].get<char>();
  TYPE_1__ option_pointer__opt = {option_pointer__opt__sname};
  TYPE_4__ option_pointer = {option_pointer__type, option_pointer__optv, option_pointer__opt};
  TYPE_4__* option = &option_pointer;
  CCLAP_ERR_NULLVALUE = input_json["CCLAP_ERR_NULLVALUE"];
  CCLAP_SUCCESS = input_json["CCLAP_SUCCESS"];
  SOPTION = input_json["SOPTION"];
  cclap_errno = input_json["cclap_errno"];
  clock_t begin = clock();
  char returnv = cclap_option_sname(option);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(option, returnv);
}