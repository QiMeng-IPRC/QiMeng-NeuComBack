#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */

/* Variables and functions */
extern  int* GT ; 
extern  int Gc ; 
extern  int* I ; 
extern  int MAX_GROUPS ; 
extern  int /*<<< orphan*/  adj_rec ; 
extern  size_t gs_id ; 
extern  size_t gs_is_event ; 
extern "C" { void process_groups_short_row (void);
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

void write_output() {
  json output_json;
  std::vector<json> output_temp_3;
  for (unsigned int i4 = 0; i4 < 32; i4++) {
    int output_temp_5 = GT[i4];

    output_temp_3.push_back(output_temp_5);
  }
  output_json["GT"] = output_temp_3;

  output_json["Gc"] = Gc;
  std::vector<json> output_temp_6;
  for (unsigned int i7 = 0; i7 < 32; i7++) {
    int output_temp_8 = I[i7];

    output_temp_6.push_back(output_temp_8);
  }
  output_json["I"] = output_temp_6;

  output_json["MAX_GROUPS"] = MAX_GROUPS;

  output_json["adj_rec"] = adj_rec;

  output_json["gs_id"] = gs_id;

  output_json["gs_is_event"] = gs_is_event;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  std::vector<int> input_temp_1_vec;
  for (auto& elem : input_json["GT"]) {
    int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  GT = &input_temp_1_vec[0];
  Gc = input_json["Gc"];
  std::vector<int> input_temp_2_vec;
  for (auto& elem : input_json["I"]) {
    int input_temp_2_inner = elem;
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  I = &input_temp_2_vec[0];
  MAX_GROUPS = input_json["MAX_GROUPS"];
  adj_rec = input_json["adj_rec"];
  gs_id = input_json["gs_id"];
  gs_is_event = input_json["gs_is_event"];
  clock_t begin = clock();
  process_groups_short_row();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}