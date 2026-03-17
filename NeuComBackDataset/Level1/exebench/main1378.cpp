#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int fd; } ;
typedef  TYPE_1__ nar_writer ;

/* Variables and functions */
extern  int /*<<< orphan*/  memset (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
extern "C" { int libnar_init_writer(nar_writer* nar, int fd);
 }int memset__bench (TYPE_1__ * b, int d, int e) {
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

void write_output(TYPE_1__* nar, int fd, int returnv) {
  json output_json;
  TYPE_1__ output_temp_1 = *nar;
  json output_temp_2;

  output_temp_2["fd"] = output_temp_1.fd;
  output_json["nar"] = output_temp_2;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int nar_pointer__fd = input_json["nar"]["fd"];
  TYPE_1__ nar_pointer = {nar_pointer__fd};
  TYPE_1__* nar = &nar_pointer;
  int fd = input_json["fd"];
  clock_t begin = clock();
  int returnv = libnar_init_writer(nar, fd);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(nar, fd, returnv);
}