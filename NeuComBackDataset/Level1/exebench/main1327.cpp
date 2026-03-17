#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int type_attrs; } ;
struct TYPE_10__ {TYPE_3__ tas; } ;
struct TYPE_7__ {int type_attrs; } ;
struct TYPE_8__ {TYPE_1__ tas; } ;
struct TYPE_11__ {int /*<<< orphan*/  no_match_priority; int /*<<< orphan*/  priority; TYPE_4__ match_key; TYPE_2__ best_key; } ;
typedef  TYPE_5__ match_record_t ;

/* Variables and functions */
extern  int t_null ; 
extern "C" { void reset_match(match_record_t *match);
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

void write_output(TYPE_5__* match) {
  json output_json;
  TYPE_5__ output_temp_1 = *match;
  json output_temp_2;

  output_temp_2["no_match_priority"] = output_temp_1.no_match_priority;

  output_temp_2["priority"] = output_temp_1.priority;
  json output_temp_3;
  json output_temp_4;

  output_temp_4["type_attrs"] = output_temp_1.match_key.tas.type_attrs;
  output_temp_3["tas"] = output_temp_4;
  output_temp_2["match_key"] = output_temp_3;
  json output_temp_5;
  json output_temp_6;

  output_temp_6["type_attrs"] = output_temp_1.best_key.tas.type_attrs;
  output_temp_5["tas"] = output_temp_6;
  output_temp_2["best_key"] = output_temp_5;
  output_json["match"] = output_temp_2;

  output_json["t_null"] = t_null;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int match_pointer__no_match_priority = input_json["match"]["no_match_priority"];
  int match_pointer__priority = input_json["match"]["priority"];
  int match_pointer__match_key__tas__type_attrs = input_json["match"]["match_key"]["tas"]["type_attrs"];
  TYPE_3__ match_pointer__match_key__tas = {match_pointer__match_key__tas__type_attrs};
  TYPE_4__ match_pointer__match_key = {match_pointer__match_key__tas};
  int match_pointer__best_key__tas__type_attrs = input_json["match"]["best_key"]["tas"]["type_attrs"];
  TYPE_1__ match_pointer__best_key__tas = {match_pointer__best_key__tas__type_attrs};
  TYPE_2__ match_pointer__best_key = {match_pointer__best_key__tas};
  TYPE_5__ match_pointer = {match_pointer__no_match_priority, match_pointer__priority, match_pointer__match_key, match_pointer__best_key};
  TYPE_5__* match = &match_pointer;
  t_null = input_json["t_null"];
  clock_t begin = clock();
  reset_match(match);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(match);
}