#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct tree_halo {scalar_t__ mvir; float vmax; } ;

/* Variables and functions */
extern  float LAST_DITCH_VMAX_RATIO_2 ; 
extern  float UNPHYSICAL ; 
extern "C" { float last_ditch_metric(struct tree_halo *h1, struct tree_halo *h2);
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

void write_output(struct tree_halo* h1, struct tree_halo* h2, float returnv) {
  json output_json;
  struct tree_halo output_temp_1 = *h1;
  json output_temp_2;

  output_temp_2["mvir"] = output_temp_1.mvir;

  output_temp_2["vmax"] = output_temp_1.vmax;
  output_json["h1"] = output_temp_2;
  struct tree_halo output_temp_3 = *h2;
  json output_temp_4;

  output_temp_4["mvir"] = output_temp_3.mvir;

  output_temp_4["vmax"] = output_temp_3.vmax;
  output_json["h2"] = output_temp_4;

  output_json["LAST_DITCH_VMAX_RATIO_2"] = LAST_DITCH_VMAX_RATIO_2;

  output_json["UNPHYSICAL"] = UNPHYSICAL;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  long int h1_pointer__mvir = input_json["h1"]["mvir"];
  float h1_pointer__vmax = input_json["h1"]["vmax"];
  struct tree_halo h1_pointer = {h1_pointer__mvir, h1_pointer__vmax};
  struct tree_halo* h1 = &h1_pointer;
  long int h2_pointer__mvir = input_json["h2"]["mvir"];
  float h2_pointer__vmax = input_json["h2"]["vmax"];
  struct tree_halo h2_pointer = {h2_pointer__mvir, h2_pointer__vmax};
  struct tree_halo* h2 = &h2_pointer;
  LAST_DITCH_VMAX_RATIO_2 = input_json["LAST_DITCH_VMAX_RATIO_2"];
  UNPHYSICAL = input_json["UNPHYSICAL"];
  clock_t begin = clock();
  float returnv = last_ditch_metric(h1, h2);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(h1, h2, returnv);
}