#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8 ;
struct TYPE_16__ {int _Zero; int _Negative; } ;
struct TYPE_14__ {int l; } ;
struct TYPE_13__ {int W; TYPE_6__ B; } ;
struct TYPE_9__ {int l; } ;
struct TYPE_10__ {int W; TYPE_1__ B; } ;
struct TYPE_11__ {int l; } ;
struct TYPE_12__ {TYPE_3__ B; } ;
struct TYPE_15__ {TYPE_5__ X; TYPE_2__ S; TYPE_4__ P; } ;

/* Variables and functions */
extern  TYPE_8__ SA1 ; 
extern  TYPE_7__ SA1Registers ; 
extern "C" { void OpBASlow (void);
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

  output_temp_1["_Zero"] = SA1._Zero;

  output_temp_1["_Negative"] = SA1._Negative;
  output_json["SA1"] = output_temp_1;
  json output_temp_2;
  json output_temp_3;

  output_temp_3["W"] = SA1Registers.X.W;
  json output_temp_4;

  output_temp_4["l"] = SA1Registers.X.B.l;
  output_temp_3["B"] = output_temp_4;
  output_temp_2["X"] = output_temp_3;
  json output_temp_5;

  output_temp_5["W"] = SA1Registers.S.W;
  json output_temp_6;

  output_temp_6["l"] = SA1Registers.S.B.l;
  output_temp_5["B"] = output_temp_6;
  output_temp_2["S"] = output_temp_5;
  json output_temp_7;
  json output_temp_8;

  output_temp_8["l"] = SA1Registers.P.B.l;
  output_temp_7["B"] = output_temp_8;
  output_temp_2["P"] = output_temp_7;
  output_json["SA1Registers"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int SA1___Zero = input_json["SA1"]["_Zero"];
  int SA1___Negative = input_json["SA1"]["_Negative"];
  SA1 = {SA1___Zero, SA1___Negative};
  int SA1Registers__X__W = input_json["SA1Registers"]["X"]["W"];
  int SA1Registers__X__B__l = input_json["SA1Registers"]["X"]["B"]["l"];
  TYPE_6__ SA1Registers__X__B = {SA1Registers__X__B__l};
  TYPE_5__ SA1Registers__X = {SA1Registers__X__W, SA1Registers__X__B};
  int SA1Registers__S__W = input_json["SA1Registers"]["S"]["W"];
  int SA1Registers__S__B__l = input_json["SA1Registers"]["S"]["B"]["l"];
  TYPE_1__ SA1Registers__S__B = {SA1Registers__S__B__l};
  TYPE_2__ SA1Registers__S = {SA1Registers__S__W, SA1Registers__S__B};
  int SA1Registers__P__B__l = input_json["SA1Registers"]["P"]["B"]["l"];
  TYPE_3__ SA1Registers__P__B = {SA1Registers__P__B__l};
  TYPE_4__ SA1Registers__P = {SA1Registers__P__B};
  SA1Registers = {SA1Registers__X, SA1Registers__S, SA1Registers__P};
  clock_t begin = clock();
  OpBASlow();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}