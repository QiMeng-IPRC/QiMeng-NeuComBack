#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int set; double llx; double urx; double lly; double ury; } ;

/* Variables and functions */
extern  TYPE_1__ bbox ; 
extern "C" { void cover(double x, double y);
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

void write_output(double x, double y) {
  json output_json;
  json output_temp_1;

  output_temp_1["set"] = bbox.set;

  output_temp_1["llx"] = bbox.llx;

  output_temp_1["urx"] = bbox.urx;

  output_temp_1["lly"] = bbox.lly;

  output_temp_1["ury"] = bbox.ury;
  output_json["bbox"] = output_temp_1;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  double x = input_json["x"];
  double y = input_json["y"];
  int bbox__set = input_json["bbox"]["set"];
  double bbox__llx = input_json["bbox"]["llx"];
  double bbox__urx = input_json["bbox"]["urx"];
  double bbox__lly = input_json["bbox"]["lly"];
  double bbox__ury = input_json["bbox"]["ury"];
  bbox = {bbox__set, bbox__llx, bbox__urx, bbox__lly, bbox__ury};
  clock_t begin = clock();
  cover(x, y);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(x, y);
}