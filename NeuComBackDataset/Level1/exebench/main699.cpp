#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  _Negative; int /*<<< orphan*/  _Zero; } ;
struct TYPE_9__ {int /*<<< orphan*/  l; } ;
struct TYPE_10__ {TYPE_3__ B; } ;
struct TYPE_7__ {int /*<<< orphan*/  l; } ;
struct TYPE_8__ {TYPE_1__ B; } ;
struct TYPE_11__ {TYPE_4__ A; TYPE_2__ Y; } ;

/* Variables and functions */
extern  TYPE_6__ SA1 ; 
extern  TYPE_5__ SA1Registers ; 
extern "C" { void Op98M1 (void);
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

  output_temp_1["_Negative"] = SA1._Negative;

  output_temp_1["_Zero"] = SA1._Zero;
  output_json["SA1"] = output_temp_1;
  json output_temp_2;
  json output_temp_3;
  json output_temp_4;

  output_temp_4["l"] = SA1Registers.A.B.l;
  output_temp_3["B"] = output_temp_4;
  output_temp_2["A"] = output_temp_3;
  json output_temp_5;
  json output_temp_6;

  output_temp_6["l"] = SA1Registers.Y.B.l;
  output_temp_5["B"] = output_temp_6;
  output_temp_2["Y"] = output_temp_5;
  output_json["SA1Registers"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int SA1___Negative = input_json["SA1"]["_Negative"];
  int SA1___Zero = input_json["SA1"]["_Zero"];
  SA1 = {SA1___Negative, SA1___Zero};
  int SA1Registers__A__B__l = input_json["SA1Registers"]["A"]["B"]["l"];
  TYPE_3__ SA1Registers__A__B = {SA1Registers__A__B__l};
  TYPE_4__ SA1Registers__A = {SA1Registers__A__B};
  int SA1Registers__Y__B__l = input_json["SA1Registers"]["Y"]["B"]["l"];
  TYPE_1__ SA1Registers__Y__B = {SA1Registers__Y__B__l};
  TYPE_2__ SA1Registers__Y = {SA1Registers__Y__B};
  SA1Registers = {SA1Registers__A, SA1Registers__Y};
  clock_t begin = clock();
  Op98M1();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}