#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  h; int /*<<< orphan*/  w; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct widget {TYPE_1__ size; } ;
struct box {int /*<<< orphan*/  h; int /*<<< orphan*/  w; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;

/* Variables and functions */
extern "C" { void widget_toggle_place(struct widget *widget, const struct box *box);
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

void write_output(struct widget* widget, struct box* box) {
  json output_json;
  struct widget output_temp_1 = *widget;
  json output_temp_2;
  json output_temp_3;

  output_temp_3["h"] = output_temp_1.size.h;

  output_temp_3["w"] = output_temp_1.size.w;

  output_temp_3["y"] = output_temp_1.size.y;

  output_temp_3["x"] = output_temp_1.size.x;
  output_temp_2["size"] = output_temp_3;
  output_json["widget"] = output_temp_2;
  struct box output_temp_4 = *box;
  json output_temp_5;

  output_temp_5["h"] = output_temp_4.h;

  output_temp_5["w"] = output_temp_4.w;

  output_temp_5["y"] = output_temp_4.y;

  output_temp_5["x"] = output_temp_4.x;
  output_json["box"] = output_temp_5;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int widget_pointer__size__h = input_json["widget"]["size"]["h"];
  int widget_pointer__size__w = input_json["widget"]["size"]["w"];
  int widget_pointer__size__y = input_json["widget"]["size"]["y"];
  int widget_pointer__size__x = input_json["widget"]["size"]["x"];
  TYPE_1__ widget_pointer__size = {widget_pointer__size__h, widget_pointer__size__w, widget_pointer__size__y, widget_pointer__size__x};
  struct widget widget_pointer = {widget_pointer__size};
  struct widget* widget = &widget_pointer;
  int box_pointer__h = input_json["box"]["h"];
  int box_pointer__w = input_json["box"]["w"];
  int box_pointer__y = input_json["box"]["y"];
  int box_pointer__x = input_json["box"]["x"];
  struct box box_pointer = {box_pointer__h, box_pointer__w, box_pointer__y, box_pointer__x};
  struct box* box = &box_pointer;
  clock_t begin = clock();
  widget_toggle_place(widget, box);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(widget, box);
}