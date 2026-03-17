#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */

/* Variables and functions */
extern  int /*<<< orphan*/  ch ; 
extern  int charpos ; 
extern  int /*<<< orphan*/  error (int) ; 
extern  int /*<<< orphan*/ * prog ; 
extern  int proglen ; 
extern "C" { void Getchar(void);
 }int error (int b) {
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

void write_output() {
  json output_json;

  output_json["ch"] = ch;

  output_json["charpos"] = charpos;
  std::vector<json> output_temp_2;
  for (unsigned int i3 = 0; i3 < 32; i3++) {
    int output_temp_4 = prog[i3];

    output_temp_2.push_back(output_temp_4);
  }
  output_json["prog"] = output_temp_2;

  output_json["proglen"] = proglen;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  ch = input_json["ch"];
  charpos = input_json["charpos"];
  std::vector<int> input_temp_1_vec;
  for (auto& elem : input_json["prog"]) {
    int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  prog = &input_temp_1_vec[0];
  proglen = input_json["proglen"];
  clock_t begin = clock();
  Getchar();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}