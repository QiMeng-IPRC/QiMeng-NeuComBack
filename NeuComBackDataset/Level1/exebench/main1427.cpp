#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct stat {int st_blksize; int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
extern  int /*<<< orphan*/  S_IFCHR ; 
extern  int /*<<< orphan*/  memset (struct stat*,int /*<<< orphan*/ ,int) ; 
extern "C" { int _fstat (int file, struct stat * st);
 }int memset__bench (struct stat * b, int d, int e) {
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

void write_output(int file, struct stat* st, int returnv) {
  json output_json;
  struct stat output_temp_1 = *st;
  json output_temp_2;

  output_temp_2["st_blksize"] = output_temp_1.st_blksize;

  output_temp_2["st_mode"] = output_temp_1.st_mode;
  output_json["st"] = output_temp_2;

  output_json["S_IFCHR"] = S_IFCHR;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int file = input_json["file"];
  int st_pointer__st_blksize = input_json["st"]["st_blksize"];
  int st_pointer__st_mode = input_json["st"]["st_mode"];
  struct stat st_pointer = {st_pointer__st_blksize, st_pointer__st_mode};
  struct stat* st = &st_pointer;
  S_IFCHR = input_json["S_IFCHR"];
  clock_t begin = clock();
  int returnv = _fstat(file, st);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(file, st, returnv);
}