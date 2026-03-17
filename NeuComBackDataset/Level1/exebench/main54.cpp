#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* nombre; } ;
struct TYPE_5__ {TYPE_1__ token; scalar_t__ iNombre; int /*<<< orphan*/  estado; } ;
typedef  TYPE_2__ ALex ;

/* Variables and functions */
extern  int /*<<< orphan*/  afd_inicio ; 
extern "C" { int alex_estadoInicio(ALex *x);
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

void write_output(TYPE_2__* x, int returnv) {
  json output_json;
  TYPE_2__ output_temp_1 = *x;
  json output_temp_2;
  json output_temp_3;

  output_temp_3["nombre"] = output_temp_1.token.nombre;
  output_temp_2["token"] = output_temp_3;

  output_temp_2["iNombre"] = output_temp_1.iNombre;

  output_temp_2["estado"] = output_temp_1.estado;
  output_json["x"] = output_temp_2;

  output_json["afd_inicio"] = afd_inicio;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  char* x_pointer__token__nombre = strdup(input_json["x"]["token"]["nombre"].get<std::string>().c_str());
  TYPE_1__ x_pointer__token = {x_pointer__token__nombre};
  long int x_pointer__iNombre = input_json["x"]["iNombre"];
  int x_pointer__estado = input_json["x"]["estado"];
  TYPE_2__ x_pointer = {x_pointer__token, x_pointer__iNombre, x_pointer__estado};
  TYPE_2__* x = &x_pointer;
  afd_inicio = input_json["afd_inicio"];
  clock_t begin = clock();
  int returnv = alex_estadoInicio(x);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(x, returnv);
}