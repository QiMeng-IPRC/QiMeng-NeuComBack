#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {double x; double y; int c; int d; int s; } ;
typedef  TYPE_1__ Ball ;

/* Variables and functions */
extern  int* SIN_TABLE ; 
extern "C" { void updateBallPosition(Ball* ball);
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

void write_output(TYPE_1__* ball) {
  json output_json;
  TYPE_1__ output_temp_2 = *ball;
  json output_temp_3;

  output_temp_3["x"] = output_temp_2.x;

  output_temp_3["y"] = output_temp_2.y;

  output_temp_3["c"] = output_temp_2.c;

  output_temp_3["d"] = output_temp_2.d;

  output_temp_3["s"] = output_temp_2.s;
  output_json["ball"] = output_temp_3;
  std::vector<json> output_temp_4;
  for (unsigned int i5 = 0; i5 < 32; i5++) {
    int output_temp_6 = SIN_TABLE[i5];

    output_temp_4.push_back(output_temp_6);
  }
  output_json["SIN_TABLE"] = output_temp_4;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  double ball_pointer__x = input_json["ball"]["x"];
  double ball_pointer__y = input_json["ball"]["y"];
  int ball_pointer__c = input_json["ball"]["c"];
  int ball_pointer__d = input_json["ball"]["d"];
  int ball_pointer__s = input_json["ball"]["s"];
  TYPE_1__ ball_pointer = {ball_pointer__x, ball_pointer__y, ball_pointer__c, ball_pointer__d, ball_pointer__s};
  TYPE_1__* ball = &ball_pointer;
  std::vector<int> input_temp_1_vec;
  for (auto& elem : input_json["SIN_TABLE"]) {
    int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  SIN_TABLE = &input_temp_1_vec[0];
  clock_t begin = clock();
  updateBallPosition(ball);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(ball);
}