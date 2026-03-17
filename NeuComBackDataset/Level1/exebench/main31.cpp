#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
typedef  int u8 ;
struct __gx_litobj {float k0; float k1; float k2; } ;
typedef  float f32 ;
typedef  int /*<<< orphan*/  GXLightObj ;

/* Variables and functions */
#define  GX_DA_GENTLE 131 
#define  GX_DA_MEDIUM 130 
#define  GX_DA_OFF 129 
#define  GX_DA_STEEP 128 
extern "C" { void GX_InitLightDistAttn(GXLightObj *lit_obj,f32 ref_dist,f32 ref_brite,u8 dist_fn);
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

void write_output(int* lit_obj, float ref_dist, float ref_brite, int dist_fn) {
  json output_json;
  std::vector<json> output_temp_2;
  for (unsigned int i3 = 0; i3 < 32; i3++) {
    int output_temp_4 = lit_obj[i3];

    output_temp_2.push_back(output_temp_4);
  }
  output_json["lit_obj"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  std::vector<int> input_temp_1_vec;
  for (auto& elem : input_json["lit_obj"]) {
    int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  int* lit_obj = &input_temp_1_vec[0];
  float ref_dist = input_json["ref_dist"];
  float ref_brite = input_json["ref_brite"];
  int dist_fn = input_json["dist_fn"];
  clock_t begin = clock();
  GX_InitLightDistAttn(lit_obj, ref_dist, ref_brite, dist_fn);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(lit_obj, ref_dist, ref_brite, dist_fn);
}