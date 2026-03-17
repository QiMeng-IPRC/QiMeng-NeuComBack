#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct TYPE_3__ {int CR1; int CR3; int CR4; int HIRQ; scalar_t__ CR2; } ;
struct TYPE_4__ {int status; int numfiles; TYPE_1__ reg; } ;

/* Variables and functions */
extern  int CDB_HIRQ_CMOK ; 
extern  int CDB_HIRQ_EFLS ; 
extern  TYPE_2__* Cs2Area ; 
extern "C" { void Cs2GetFileSystemScope(void);
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

  output_json["CDB_HIRQ_CMOK"] = CDB_HIRQ_CMOK;

  output_json["CDB_HIRQ_EFLS"] = CDB_HIRQ_EFLS;
  TYPE_2__ output_temp_1 = *Cs2Area;
  json output_temp_2;

  output_temp_2["status"] = output_temp_1.status;

  output_temp_2["numfiles"] = output_temp_1.numfiles;
  json output_temp_3;

  output_temp_3["CR1"] = output_temp_1.reg.CR1;

  output_temp_3["CR3"] = output_temp_1.reg.CR3;

  output_temp_3["CR4"] = output_temp_1.reg.CR4;

  output_temp_3["HIRQ"] = output_temp_1.reg.HIRQ;

  output_temp_3["CR2"] = output_temp_1.reg.CR2;
  output_temp_2["reg"] = output_temp_3;
  output_json["Cs2Area"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  CDB_HIRQ_CMOK = input_json["CDB_HIRQ_CMOK"];
  CDB_HIRQ_EFLS = input_json["CDB_HIRQ_EFLS"];
  int Cs2Area_pointer__status = input_json["Cs2Area"]["status"];
  int Cs2Area_pointer__numfiles = input_json["Cs2Area"]["numfiles"];
  int Cs2Area_pointer__reg__CR1 = input_json["Cs2Area"]["reg"]["CR1"];
  int Cs2Area_pointer__reg__CR3 = input_json["Cs2Area"]["reg"]["CR3"];
  int Cs2Area_pointer__reg__CR4 = input_json["Cs2Area"]["reg"]["CR4"];
  int Cs2Area_pointer__reg__HIRQ = input_json["Cs2Area"]["reg"]["HIRQ"];
  long int Cs2Area_pointer__reg__CR2 = input_json["Cs2Area"]["reg"]["CR2"];
  TYPE_1__ Cs2Area_pointer__reg = {Cs2Area_pointer__reg__CR1, Cs2Area_pointer__reg__CR3, Cs2Area_pointer__reg__CR4, Cs2Area_pointer__reg__HIRQ, Cs2Area_pointer__reg__CR2};
  TYPE_2__ Cs2Area_pointer = {Cs2Area_pointer__status, Cs2Area_pointer__numfiles, Cs2Area_pointer__reg};
  Cs2Area = &Cs2Area_pointer;
  clock_t begin = clock();
  Cs2GetFileSystemScope();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}