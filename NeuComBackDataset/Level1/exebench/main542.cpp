#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {float x; float y; float z; float a; float e; float r; } ;
struct TYPE_7__ {scalar_t__ x; scalar_t__ y; scalar_t__ z; scalar_t__ a; scalar_t__ e; scalar_t__ r; int /*<<< orphan*/  unit_type; } ;
struct TYPE_6__ {scalar_t__ x; scalar_t__ y; scalar_t__ z; scalar_t__ a; scalar_t__ e; scalar_t__ r; } ;
struct TYPE_9__ {TYPE_3__ speed; TYPE_2__ real; TYPE_1__ ideal; } ;
typedef  TYPE_4__ delta_position_t ;

/* Variables and functions */
extern  int /*<<< orphan*/  ORL_CART_POSITION ; 
extern "C" { void apply_delta_position(delta_position_t * px_Delta_position, float override );
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

void write_output(TYPE_4__* px_Delta_position, float override) {
  json output_json;
  TYPE_4__ output_temp_1 = *px_Delta_position;
  json output_temp_2;
  json output_temp_3;

  output_temp_3["x"] = output_temp_1.speed.x;

  output_temp_3["y"] = output_temp_1.speed.y;

  output_temp_3["z"] = output_temp_1.speed.z;

  output_temp_3["a"] = output_temp_1.speed.a;

  output_temp_3["e"] = output_temp_1.speed.e;

  output_temp_3["r"] = output_temp_1.speed.r;
  output_temp_2["speed"] = output_temp_3;
  json output_temp_4;

  output_temp_4["x"] = output_temp_1.real.x;

  output_temp_4["y"] = output_temp_1.real.y;

  output_temp_4["z"] = output_temp_1.real.z;

  output_temp_4["a"] = output_temp_1.real.a;

  output_temp_4["e"] = output_temp_1.real.e;

  output_temp_4["r"] = output_temp_1.real.r;

  output_temp_4["unit_type"] = output_temp_1.real.unit_type;
  output_temp_2["real"] = output_temp_4;
  json output_temp_5;

  output_temp_5["x"] = output_temp_1.ideal.x;

  output_temp_5["y"] = output_temp_1.ideal.y;

  output_temp_5["z"] = output_temp_1.ideal.z;

  output_temp_5["a"] = output_temp_1.ideal.a;

  output_temp_5["e"] = output_temp_1.ideal.e;

  output_temp_5["r"] = output_temp_1.ideal.r;
  output_temp_2["ideal"] = output_temp_5;
  output_json["px_Delta_position"] = output_temp_2;

  output_json["ORL_CART_POSITION"] = ORL_CART_POSITION;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  float px_Delta_position_pointer__speed__x = input_json["px_Delta_position"]["speed"]["x"];
  float px_Delta_position_pointer__speed__y = input_json["px_Delta_position"]["speed"]["y"];
  float px_Delta_position_pointer__speed__z = input_json["px_Delta_position"]["speed"]["z"];
  float px_Delta_position_pointer__speed__a = input_json["px_Delta_position"]["speed"]["a"];
  float px_Delta_position_pointer__speed__e = input_json["px_Delta_position"]["speed"]["e"];
  float px_Delta_position_pointer__speed__r = input_json["px_Delta_position"]["speed"]["r"];
  TYPE_3__ px_Delta_position_pointer__speed = {px_Delta_position_pointer__speed__x, px_Delta_position_pointer__speed__y, px_Delta_position_pointer__speed__z, px_Delta_position_pointer__speed__a, px_Delta_position_pointer__speed__e, px_Delta_position_pointer__speed__r};
  long int px_Delta_position_pointer__real__x = input_json["px_Delta_position"]["real"]["x"];
  long int px_Delta_position_pointer__real__y = input_json["px_Delta_position"]["real"]["y"];
  long int px_Delta_position_pointer__real__z = input_json["px_Delta_position"]["real"]["z"];
  long int px_Delta_position_pointer__real__a = input_json["px_Delta_position"]["real"]["a"];
  long int px_Delta_position_pointer__real__e = input_json["px_Delta_position"]["real"]["e"];
  long int px_Delta_position_pointer__real__r = input_json["px_Delta_position"]["real"]["r"];
  int px_Delta_position_pointer__real__unit_type = input_json["px_Delta_position"]["real"]["unit_type"];
  TYPE_2__ px_Delta_position_pointer__real = {px_Delta_position_pointer__real__x, px_Delta_position_pointer__real__y, px_Delta_position_pointer__real__z, px_Delta_position_pointer__real__a, px_Delta_position_pointer__real__e, px_Delta_position_pointer__real__r, px_Delta_position_pointer__real__unit_type};
  long int px_Delta_position_pointer__ideal__x = input_json["px_Delta_position"]["ideal"]["x"];
  long int px_Delta_position_pointer__ideal__y = input_json["px_Delta_position"]["ideal"]["y"];
  long int px_Delta_position_pointer__ideal__z = input_json["px_Delta_position"]["ideal"]["z"];
  long int px_Delta_position_pointer__ideal__a = input_json["px_Delta_position"]["ideal"]["a"];
  long int px_Delta_position_pointer__ideal__e = input_json["px_Delta_position"]["ideal"]["e"];
  long int px_Delta_position_pointer__ideal__r = input_json["px_Delta_position"]["ideal"]["r"];
  TYPE_1__ px_Delta_position_pointer__ideal = {px_Delta_position_pointer__ideal__x, px_Delta_position_pointer__ideal__y, px_Delta_position_pointer__ideal__z, px_Delta_position_pointer__ideal__a, px_Delta_position_pointer__ideal__e, px_Delta_position_pointer__ideal__r};
  TYPE_4__ px_Delta_position_pointer = {px_Delta_position_pointer__speed, px_Delta_position_pointer__real, px_Delta_position_pointer__ideal};
  TYPE_4__* px_Delta_position = &px_Delta_position_pointer;
  float override = input_json["override"];
  ORL_CART_POSITION = input_json["ORL_CART_POSITION"];
  clock_t begin = clock();
  apply_delta_position(px_Delta_position, override);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(px_Delta_position, override);
}