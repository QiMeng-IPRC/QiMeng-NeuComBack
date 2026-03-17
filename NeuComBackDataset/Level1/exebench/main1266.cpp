#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ posX; } ;
struct TYPE_4__ {scalar_t__ posX; int /*<<< orphan*/  xDirection; } ;
typedef  TYPE_1__ CK_object ;

/* Variables and functions */
extern  int /*<<< orphan*/  IN_motion_Left ; 
extern  int /*<<< orphan*/  IN_motion_Right ; 
extern  TYPE_2__* ck_keenObj ; 
extern "C" { void CK4_ArachnutSearch(CK_object *obj);
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

void write_output(TYPE_1__* obj) {
  json output_json;
  TYPE_1__ output_temp_1 = *obj;
  json output_temp_2;

  output_temp_2["posX"] = output_temp_1.posX;

  output_temp_2["xDirection"] = output_temp_1.xDirection;
  output_json["obj"] = output_temp_2;

  output_json["IN_motion_Left"] = IN_motion_Left;

  output_json["IN_motion_Right"] = IN_motion_Right;
  TYPE_2__ output_temp_3 = *ck_keenObj;
  json output_temp_4;

  output_temp_4["posX"] = output_temp_3.posX;
  output_json["ck_keenObj"] = output_temp_4;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  long int obj_pointer__posX = input_json["obj"]["posX"];
  int obj_pointer__xDirection = input_json["obj"]["xDirection"];
  TYPE_1__ obj_pointer = {obj_pointer__posX, obj_pointer__xDirection};
  TYPE_1__* obj = &obj_pointer;
  IN_motion_Left = input_json["IN_motion_Left"];
  IN_motion_Right = input_json["IN_motion_Right"];
  long int ck_keenObj_pointer__posX = input_json["ck_keenObj"]["posX"];
  TYPE_2__ ck_keenObj_pointer = {ck_keenObj_pointer__posX};
  ck_keenObj = &ck_keenObj_pointer;
  clock_t begin = clock();
  CK4_ArachnutSearch(obj);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(obj);
}