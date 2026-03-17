#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  Typ; } ;
typedef  TYPE_1__ TempResult ;

/* Variables and functions */
extern  int /*<<< orphan*/  TempNone ; 
extern "C" { void Default_InternSymbol(char *Asc, TempResult *Erg);
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

void write_output(char* Asc, TYPE_1__* Erg) {
  json output_json;

  output_json["Asc"] = Asc;
  TYPE_1__ output_temp_1 = *Erg;
  json output_temp_2;

  output_temp_2["Typ"] = output_temp_1.Typ;
  output_json["Erg"] = output_temp_2;

  output_json["TempNone"] = TempNone;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  char* Asc = strdup(input_json["Asc"].get<std::string>().c_str());
  int Erg_pointer__Typ = input_json["Erg"]["Typ"];
  TYPE_1__ Erg_pointer = {Erg_pointer__Typ};
  TYPE_1__* Erg = &Erg_pointer;
  TempNone = input_json["TempNone"];
  clock_t begin = clock();
  Default_InternSymbol(Asc, Erg);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(Asc, Erg);
}