#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct dma_desc {int des1; } ;

/* Variables and functions */
extern  int TDES1_BUFFER1_SIZE_MASK ; 
extern "C" { void norm_set_tx_desc_len_on_chain(struct dma_desc *p, int len);
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

void write_output(struct dma_desc* p, int len) {
  json output_json;
  struct dma_desc output_temp_1 = *p;
  json output_temp_2;

  output_temp_2["des1"] = output_temp_1.des1;
  output_json["p"] = output_temp_2;

  output_json["TDES1_BUFFER1_SIZE_MASK"] = TDES1_BUFFER1_SIZE_MASK;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int p_pointer__des1 = input_json["p"]["des1"];
  struct dma_desc p_pointer = {p_pointer__des1};
  struct dma_desc* p = &p_pointer;
  int len = input_json["len"];
  TDES1_BUFFER1_SIZE_MASK = input_json["TDES1_BUFFER1_SIZE_MASK"];
  clock_t begin = clock();
  norm_set_tx_desc_len_on_chain(p, len);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(p, len);
}