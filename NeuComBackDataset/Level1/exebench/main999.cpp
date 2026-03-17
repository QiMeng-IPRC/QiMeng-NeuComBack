#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */

/* Variables and functions */
extern  int COLS ; 
extern  int ERR ; 
extern  int LINES ; 
extern  int OK ; 
extern  int cursolX ; 
extern  int cursolY ; 
extern "C" { int move(int y, int x);
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

void write_output(int y, int x, int returnv) {
  json output_json;

  output_json["COLS"] = COLS;

  output_json["ERR"] = ERR;

  output_json["LINES"] = LINES;

  output_json["OK"] = OK;

  output_json["cursolX"] = cursolX;

  output_json["cursolY"] = cursolY;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int y = input_json["y"];
  int x = input_json["x"];
  COLS = input_json["COLS"];
  ERR = input_json["ERR"];
  LINES = input_json["LINES"];
  OK = input_json["OK"];
  cursolX = input_json["cursolX"];
  cursolY = input_json["cursolY"];
  clock_t begin = clock();
  int returnv = move(y, x);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(y, x, returnv);
}