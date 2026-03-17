#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int pTask; int Delay; int Period; char RunMe; } ;

/* Variables and functions */
extern  int Error_code ; 
extern  TYPE_1__* SCH_tasks ; 
extern "C" { char SCH_Delete_Task(const int TASK_INDEX);
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

void write_output(int TASK_INDEX, char returnv) {
  json output_json;

  output_json["Error_code"] = Error_code;
  std::vector<json> output_temp_2;
  for (unsigned int i3 = 0; i3 < 32; i3++) {
    TYPE_1__ output_temp_4 = SCH_tasks[i3];
    json output_temp_5;

    output_temp_5["pTask"] = output_temp_4.pTask;

    output_temp_5["Delay"] = output_temp_4.Delay;

    output_temp_5["Period"] = output_temp_4.Period;

    output_temp_5["RunMe"] = output_temp_4.RunMe;
    output_temp_2.push_back(output_temp_5);
  }
  output_json["SCH_tasks"] = output_temp_2;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int TASK_INDEX = input_json["TASK_INDEX"];
  Error_code = input_json["Error_code"];
  std::vector<TYPE_1__> input_temp_1_vec;
  for (auto& elem : input_json["SCH_tasks"]) {
    int input_temp_1_inner__pTask = elem["pTask"];
    int input_temp_1_inner__Delay = elem["Delay"];
    int input_temp_1_inner__Period = elem["Period"];
    char input_temp_1_inner__RunMe = elem["RunMe"].get<char>();
    TYPE_1__ input_temp_1_inner = {input_temp_1_inner__pTask, input_temp_1_inner__Delay, input_temp_1_inner__Period, input_temp_1_inner__RunMe};
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  SCH_tasks = &input_temp_1_vec[0];
  clock_t begin = clock();
  char returnv = SCH_Delete_Task(TASK_INDEX);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(TASK_INDEX, returnv);
}