#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ x; scalar_t__ y; } ;
struct TYPE_4__ {TYPE_2__ position; } ;
struct TYPE_6__ {TYPE_1__ mouse; } ;
typedef  scalar_t__ GWint ;
typedef  scalar_t__ GWfloat ;

/* Variables and functions */
extern  TYPE_3__ g_gwContext ; 
extern "C" { void gwTestMouseHit(GWint *res, GWfloat x, GWfloat y, GWfloat w, GWfloat h);
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

void write_output(long int* res, long int x, long int y, long int w, long int h) {
  json output_json;
  std::vector<json> output_temp_2;
  for (unsigned int i3 = 0; i3 < 32; i3++) {
    long int output_temp_4 = res[i3];

    output_temp_2.push_back(output_temp_4);
  }
  output_json["res"] = output_temp_2;
  json output_temp_5;
  json output_temp_6;
  json output_temp_7;

  output_temp_7["x"] = g_gwContext.mouse.position.x;

  output_temp_7["y"] = g_gwContext.mouse.position.y;
  output_temp_6["position"] = output_temp_7;
  output_temp_5["mouse"] = output_temp_6;
  output_json["g_gwContext"] = output_temp_5;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  std::vector<long int> input_temp_1_vec;
  for (auto& elem : input_json["res"]) {
    long int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  long int* res = &input_temp_1_vec[0];
  long int x = input_json["x"];
  long int y = input_json["y"];
  long int w = input_json["w"];
  long int h = input_json["h"];
  long int g_gwContext__mouse__position__x = input_json["g_gwContext"]["mouse"]["position"]["x"];
  long int g_gwContext__mouse__position__y = input_json["g_gwContext"]["mouse"]["position"]["y"];
  TYPE_2__ g_gwContext__mouse__position = {g_gwContext__mouse__position__x, g_gwContext__mouse__position__y};
  TYPE_1__ g_gwContext__mouse = {g_gwContext__mouse__position};
  g_gwContext = {g_gwContext__mouse};
  clock_t begin = clock();
  gwTestMouseHit(res, x, y, w, h);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(res, x, y, w, h);
}