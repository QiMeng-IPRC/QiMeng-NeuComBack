#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */

/* Variables and functions */
extern  int /*<<< orphan*/  mat1 ; 
extern  int /*<<< orphan*/  mat2 ; 
extern  int /*<<< orphan*/  mat_res ; 
extern  int /*<<< orphan*/  matriz1 ; 
extern  int /*<<< orphan*/  matriz2 ; 
extern  int /*<<< orphan*/  matriz_resultado ; 
extern "C" { void aloja_espacio_e_incializa_matrices(void);
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

  output_json["mat1"] = mat1;

  output_json["mat2"] = mat2;

  output_json["mat_res"] = mat_res;

  output_json["matriz1"] = matriz1;

  output_json["matriz2"] = matriz2;

  output_json["matriz_resultado"] = matriz_resultado;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  mat1 = input_json["mat1"];
  mat2 = input_json["mat2"];
  mat_res = input_json["mat_res"];
  matriz1 = input_json["matriz1"];
  matriz2 = input_json["matriz2"];
  matriz_resultado = input_json["matriz_resultado"];
  clock_t begin = clock();
  aloja_espacio_e_incializa_matrices();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}