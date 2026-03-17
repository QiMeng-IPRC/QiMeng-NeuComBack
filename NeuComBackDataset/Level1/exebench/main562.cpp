#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int left; int x; int right; int flags; scalar_t__ y; scalar_t__ bottom; scalar_t__ top; } ;
struct TYPE_5__ {int columns; int seperation; int width; int height; TYPE_1__ generic; scalar_t__ top; scalar_t__ curvalue; scalar_t__ oldvalue; } ;
typedef  TYPE_2__ menulist_s ;

/* Variables and functions */
extern "C" { void ScrollList_Init( menulist_s *l );
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

void write_output(TYPE_2__* l) {
  json output_json;
  TYPE_2__ output_temp_1 = *l;
  json output_temp_2;

  output_temp_2["columns"] = output_temp_1.columns;

  output_temp_2["seperation"] = output_temp_1.seperation;

  output_temp_2["width"] = output_temp_1.width;

  output_temp_2["height"] = output_temp_1.height;
  json output_temp_3;

  output_temp_3["left"] = output_temp_1.generic.left;

  output_temp_3["x"] = output_temp_1.generic.x;

  output_temp_3["right"] = output_temp_1.generic.right;

  output_temp_3["flags"] = output_temp_1.generic.flags;

  output_temp_3["y"] = output_temp_1.generic.y;

  output_temp_3["bottom"] = output_temp_1.generic.bottom;

  output_temp_3["top"] = output_temp_1.generic.top;
  output_temp_2["generic"] = output_temp_3;

  output_temp_2["top"] = output_temp_1.top;

  output_temp_2["curvalue"] = output_temp_1.curvalue;

  output_temp_2["oldvalue"] = output_temp_1.oldvalue;
  output_json["l"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int l_pointer__columns = input_json["l"]["columns"];
  int l_pointer__seperation = input_json["l"]["seperation"];
  int l_pointer__width = input_json["l"]["width"];
  int l_pointer__height = input_json["l"]["height"];
  int l_pointer__generic__left = input_json["l"]["generic"]["left"];
  int l_pointer__generic__x = input_json["l"]["generic"]["x"];
  int l_pointer__generic__right = input_json["l"]["generic"]["right"];
  int l_pointer__generic__flags = input_json["l"]["generic"]["flags"];
  long int l_pointer__generic__y = input_json["l"]["generic"]["y"];
  long int l_pointer__generic__bottom = input_json["l"]["generic"]["bottom"];
  long int l_pointer__generic__top = input_json["l"]["generic"]["top"];
  TYPE_1__ l_pointer__generic = {l_pointer__generic__left, l_pointer__generic__x, l_pointer__generic__right, l_pointer__generic__flags, l_pointer__generic__y, l_pointer__generic__bottom, l_pointer__generic__top};
  long int l_pointer__top = input_json["l"]["top"];
  long int l_pointer__curvalue = input_json["l"]["curvalue"];
  long int l_pointer__oldvalue = input_json["l"]["oldvalue"];
  TYPE_2__ l_pointer = {l_pointer__columns, l_pointer__seperation, l_pointer__width, l_pointer__height, l_pointer__generic, l_pointer__top, l_pointer__curvalue, l_pointer__oldvalue};
  TYPE_2__* l = &l_pointer;
  clock_t begin = clock();
  ScrollList_Init(l);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(l);
}