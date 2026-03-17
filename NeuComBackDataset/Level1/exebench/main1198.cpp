#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ map; int /*<<< orphan*/  len; } ;
typedef  TYPE_1__ Cdb ;

/* Variables and functions */
extern  int /*<<< orphan*/  munmap (scalar_t__,int /*<<< orphan*/ ) ; 
extern "C" { void cdb_close ( Cdb *cdb );
 }int munmap (long int b, int d) {
	int returnv;
	int temp_variable = 45;
	returnv = temp_variable;
	return returnv;
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

void write_output(TYPE_1__* cdb) {
  json output_json;
  TYPE_1__ output_temp_1 = *cdb;
  json output_temp_2;

  output_temp_2["map"] = output_temp_1.map;

  output_temp_2["len"] = output_temp_1.len;
  output_json["cdb"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  long int cdb_pointer__map = input_json["cdb"]["map"];
  int cdb_pointer__len = input_json["cdb"]["len"];
  TYPE_1__ cdb_pointer = {cdb_pointer__map, cdb_pointer__len};
  TYPE_1__* cdb = &cdb_pointer;
  clock_t begin = clock();
  cdb_close(cdb);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(cdb);
}