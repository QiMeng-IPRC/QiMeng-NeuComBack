#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  at_end; } ;
struct TYPE_5__ {TYPE_1__ hdr; } ;
typedef  TYPE_2__ tymer_t ;

/* Variables and functions */
extern  int /*<<< orphan*/  at_end ; 
extern "C" { void update_timer_at_end(tymer_t *db);
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

void write_output(TYPE_2__* db) {
  json output_json;
  TYPE_2__ output_temp_1 = *db;
  json output_temp_2;
  json output_temp_3;

  output_temp_3["at_end"] = output_temp_1.hdr.at_end;
  output_temp_2["hdr"] = output_temp_3;
  output_json["db"] = output_temp_2;

  output_json["at_end"] = at_end;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int db_pointer__hdr__at_end = input_json["db"]["hdr"]["at_end"];
  TYPE_1__ db_pointer__hdr = {db_pointer__hdr__at_end};
  TYPE_2__ db_pointer = {db_pointer__hdr};
  TYPE_2__* db = &db_pointer;
  at_end = input_json["at_end"];
  clock_t begin = clock();
  update_timer_at_end(db);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(db);
}