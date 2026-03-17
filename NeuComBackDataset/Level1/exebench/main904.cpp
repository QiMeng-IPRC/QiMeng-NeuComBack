#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */

/* Variables and functions */
extern  float arjunsingri ; 
extern  float c ; 
extern  int /*<<< orphan*/  singri ; 
extern "C" { int function(long x,float y,long z,short int a, float b, float q, long d, float e, long f);
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

void write_output(long int x, float y, long int z, short a, float b, float q, long int d, float e, long int f, int returnv) {
  json output_json;

  output_json["arjunsingri"] = arjunsingri;

  output_json["c"] = c;

  output_json["singri"] = singri;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  long int x = input_json["x"];
  float y = input_json["y"];
  long int z = input_json["z"];
  short a = input_json["a"];
  float b = input_json["b"];
  float q = input_json["q"];
  long int d = input_json["d"];
  float e = input_json["e"];
  long int f = input_json["f"];
  arjunsingri = input_json["arjunsingri"];
  c = input_json["c"];
  singri = input_json["singri"];
  clock_t begin = clock();
  int returnv = function(x, y, z, a, b, q, d, e, f);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(x, y, z, a, b, q, d, e, f, returnv);
}