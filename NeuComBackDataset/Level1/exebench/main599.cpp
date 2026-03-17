#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct token {int pos; int len; } ;

/* Variables and functions */
extern "C" { int separate(const char *s, struct token *t, int m);
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

void write_output(char* s, struct token* t, int m, int returnv) {
  json output_json;

  output_json["s"] = s;
  std::vector<json> output_temp_2;
  for (unsigned int i3 = 0; i3 < 32; i3++) {
    struct token output_temp_4 = t[i3];
    json output_temp_5;

    output_temp_5["pos"] = output_temp_4.pos;

    output_temp_5["len"] = output_temp_4.len;
    output_temp_2.push_back(output_temp_5);
  }
  output_json["t"] = output_temp_2;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  char* s = strdup(input_json["s"].get<std::string>().c_str());
  std::vector<struct token> input_temp_1_vec;
  for (auto& elem : input_json["t"]) {
    int input_temp_1_inner__pos = elem["pos"];
    int input_temp_1_inner__len = elem["len"];
    struct token input_temp_1_inner = {input_temp_1_inner__pos, input_temp_1_inner__len};
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  struct token* t = &input_temp_1_vec[0];
  int m = input_json["m"];
  clock_t begin = clock();
  int returnv = separate(s, t, m);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(s, t, m, returnv);
}