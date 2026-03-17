#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ max_y; } ;
struct TYPE_4__ {scalar_t__ y; scalar_t__ h; scalar_t__ vel; } ;
typedef  TYPE_1__ Paddle ;

/* Variables and functions */
extern  TYPE_3__ Screen ; 
extern "C" { void movePaddleDown(Paddle *paddle);
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

void write_output(TYPE_1__* paddle) {
  json output_json;
  TYPE_1__ output_temp_1 = *paddle;
  json output_temp_2;

  output_temp_2["y"] = output_temp_1.y;

  output_temp_2["h"] = output_temp_1.h;

  output_temp_2["vel"] = output_temp_1.vel;
  output_json["paddle"] = output_temp_2;
  json output_temp_3;

  output_temp_3["max_y"] = Screen.max_y;
  output_json["Screen"] = output_temp_3;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  long int paddle_pointer__y = input_json["paddle"]["y"];
  long int paddle_pointer__h = input_json["paddle"]["h"];
  long int paddle_pointer__vel = input_json["paddle"]["vel"];
  TYPE_1__ paddle_pointer = {paddle_pointer__y, paddle_pointer__h, paddle_pointer__vel};
  TYPE_1__* paddle = &paddle_pointer;
  long int Screen__max_y = input_json["Screen"]["max_y"];
  Screen = {Screen__max_y};
  clock_t begin = clock();
  movePaddleDown(paddle);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(paddle);
}