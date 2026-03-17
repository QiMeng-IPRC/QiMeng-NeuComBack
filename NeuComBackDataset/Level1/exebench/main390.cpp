#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  initPar2; int /*<<< orphan*/  initPar1; int /*<<< orphan*/  Adiabatic_Index; } ;
struct domain {TYPE_1__ theParList; } ;

/* Variables and functions */
extern  int /*<<< orphan*/  csa ; 
extern  int /*<<< orphan*/  csw ; 
extern  int /*<<< orphan*/  gam ; 
extern "C" { void setICparams( struct domain * theDomain );
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

void write_output(struct domain* theDomain) {
  json output_json;
  struct domain output_temp_1 = *theDomain;
  json output_temp_2;
  json output_temp_3;

  output_temp_3["initPar2"] = output_temp_1.theParList.initPar2;

  output_temp_3["initPar1"] = output_temp_1.theParList.initPar1;

  output_temp_3["Adiabatic_Index"] = output_temp_1.theParList.Adiabatic_Index;
  output_temp_2["theParList"] = output_temp_3;
  output_json["theDomain"] = output_temp_2;

  output_json["csa"] = csa;

  output_json["csw"] = csw;

  output_json["gam"] = gam;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int theDomain_pointer__theParList__initPar2 = input_json["theDomain"]["theParList"]["initPar2"];
  int theDomain_pointer__theParList__initPar1 = input_json["theDomain"]["theParList"]["initPar1"];
  int theDomain_pointer__theParList__Adiabatic_Index = input_json["theDomain"]["theParList"]["Adiabatic_Index"];
  TYPE_1__ theDomain_pointer__theParList = {theDomain_pointer__theParList__initPar2, theDomain_pointer__theParList__initPar1, theDomain_pointer__theParList__Adiabatic_Index};
  struct domain theDomain_pointer = {theDomain_pointer__theParList};
  struct domain* theDomain = &theDomain_pointer;
  csa = input_json["csa"];
  csw = input_json["csw"];
  gam = input_json["gam"];
  clock_t begin = clock();
  setICparams(theDomain);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(theDomain);
}