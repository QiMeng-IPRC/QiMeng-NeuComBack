#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned long j ;
typedef  int /*<<< orphan*/  Tchar ;
struct TYPE_4__ {int _ohc; } ;
struct TYPE_3__ {int* width; int Char; } ;

/* Variables and functions */
extern  TYPE_2__* envp ; 
extern  int eschar ; 
extern  TYPE_1__ t ; 
extern  int* trtab ; 
extern  int widthp ; 
extern "C" { int n_width(Tchar j);
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

void write_output(int j, int returnv) {
  json output_json;
  TYPE_2__ output_temp_3 = *envp;
  json output_temp_4;

  output_temp_4["_ohc"] = output_temp_3._ohc;
  output_json["envp"] = output_temp_4;

  output_json["eschar"] = eschar;
  json output_temp_5;
  std::vector<json> output_temp_6;
  for (unsigned int i7 = 0; i7 < 32; i7++) {
    int output_temp_8 = t.width[i7];

    output_temp_6.push_back(output_temp_8);
  }
  output_temp_5["width"] = output_temp_6;

  output_temp_5["Char"] = t.Char;
  output_json["t"] = output_temp_5;
  std::vector<json> output_temp_9;
  for (unsigned int i10 = 0; i10 < 32; i10++) {
    int output_temp_11 = trtab[i10];

    output_temp_9.push_back(output_temp_11);
  }
  output_json["trtab"] = output_temp_9;

  output_json["widthp"] = widthp;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int j = input_json["j"];
  int envp_pointer___ohc = input_json["envp"]["_ohc"];
  TYPE_2__ envp_pointer = {envp_pointer___ohc};
  envp = &envp_pointer;
  eschar = input_json["eschar"];
  std::vector<int> input_temp_1_vec;
  for (auto& elem : input_json["t"]["width"]) {
    int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  int* t__width = &input_temp_1_vec[0];
  int t__Char = input_json["t"]["Char"];
  t = {t__width, t__Char};
  std::vector<int> input_temp_2_vec;
  for (auto& elem : input_json["trtab"]) {
    int input_temp_2_inner = elem;
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  trtab = &input_temp_2_vec[0];
  widthp = input_json["widthp"];
  clock_t begin = clock();
  int returnv = n_width(j);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(j, returnv);
}