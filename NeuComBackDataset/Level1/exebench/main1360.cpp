#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {unsigned char red; unsigned char green; unsigned char blue; } ;
typedef  TYPE_1__ bmp_pixel ;

/* Variables and functions */
extern "C" { void bmp_pixel_init (bmp_pixel *pxl, const unsigned char red, const unsigned char green, const unsigned char blue);
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

void write_output(TYPE_1__* pxl, unsigned char red, unsigned char green, unsigned char blue) {
  json output_json;
  TYPE_1__ output_temp_1 = *pxl;
  json output_temp_2;

  output_temp_2["red"] = output_temp_1.red;

  output_temp_2["green"] = output_temp_1.green;

  output_temp_2["blue"] = output_temp_1.blue;
  output_json["pxl"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  unsigned char pxl_pointer__red = input_json["pxl"]["red"];
  unsigned char pxl_pointer__green = input_json["pxl"]["green"];
  unsigned char pxl_pointer__blue = input_json["pxl"]["blue"];
  TYPE_1__ pxl_pointer = {pxl_pointer__red, pxl_pointer__green, pxl_pointer__blue};
  TYPE_1__* pxl = &pxl_pointer;
  unsigned char red = input_json["red"];
  unsigned char green = input_json["green"];
  unsigned char blue = input_json["blue"];
  clock_t begin = clock();
  bmp_pixel_init(pxl, red, green, blue);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(pxl, red, green, blue);
}