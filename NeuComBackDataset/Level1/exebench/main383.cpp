#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int _Carry; int _Zero; int _Negative; } ;
struct TYPE_5__ {int l; } ;
struct TYPE_6__ {TYPE_1__ B; } ;
struct TYPE_7__ {TYPE_2__ A; } ;

/* Variables and functions */
extern  TYPE_4__ SA1 ; 
extern  TYPE_3__ SA1Registers ; 
extern "C" { void Op4AM1 (void);
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
  json output_temp_1;

  output_temp_1["_Carry"] = SA1._Carry;

  output_temp_1["_Zero"] = SA1._Zero;

  output_temp_1["_Negative"] = SA1._Negative;
  output_json["SA1"] = output_temp_1;
  json output_temp_2;
  json output_temp_3;
  json output_temp_4;

  output_temp_4["l"] = SA1Registers.A.B.l;
  output_temp_3["B"] = output_temp_4;
  output_temp_2["A"] = output_temp_3;
  output_json["SA1Registers"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int SA1___Carry = input_json["SA1"]["_Carry"];
  int SA1___Zero = input_json["SA1"]["_Zero"];
  int SA1___Negative = input_json["SA1"]["_Negative"];
  SA1 = {SA1___Carry, SA1___Zero, SA1___Negative};
  int SA1Registers__A__B__l = input_json["SA1Registers"]["A"]["B"]["l"];
  TYPE_1__ SA1Registers__A__B = {SA1Registers__A__B__l};
  TYPE_2__ SA1Registers__A = {SA1Registers__A__B};
  SA1Registers = {SA1Registers__A};
  clock_t begin = clock();
  Op4AM1();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}