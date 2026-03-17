#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int minBaudRate; int maxBaudRate; int requiredSerialPortFeatures; } ;
typedef  TYPE_1__ functionConstraint_t ;

/* Variables and functions */
extern  int SPF_SUPPORTS_CALLBACK ; 
extern  int SPF_SUPPORTS_SBUS_MODE ; 
extern "C" { void sbusUpdateSerialRxFunctionConstraint(functionConstraint_t *functionConstraint);
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

void write_output(TYPE_1__* functionConstraint) {
  json output_json;
  TYPE_1__ output_temp_1 = *functionConstraint;
  json output_temp_2;

  output_temp_2["minBaudRate"] = output_temp_1.minBaudRate;

  output_temp_2["maxBaudRate"] = output_temp_1.maxBaudRate;

  output_temp_2["requiredSerialPortFeatures"] = output_temp_1.requiredSerialPortFeatures;
  output_json["functionConstraint"] = output_temp_2;

  output_json["SPF_SUPPORTS_CALLBACK"] = SPF_SUPPORTS_CALLBACK;

  output_json["SPF_SUPPORTS_SBUS_MODE"] = SPF_SUPPORTS_SBUS_MODE;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int functionConstraint_pointer__minBaudRate = input_json["functionConstraint"]["minBaudRate"];
  int functionConstraint_pointer__maxBaudRate = input_json["functionConstraint"]["maxBaudRate"];
  int functionConstraint_pointer__requiredSerialPortFeatures = input_json["functionConstraint"]["requiredSerialPortFeatures"];
  TYPE_1__ functionConstraint_pointer = {functionConstraint_pointer__minBaudRate, functionConstraint_pointer__maxBaudRate, functionConstraint_pointer__requiredSerialPortFeatures};
  TYPE_1__* functionConstraint = &functionConstraint_pointer;
  SPF_SUPPORTS_CALLBACK = input_json["SPF_SUPPORTS_CALLBACK"];
  SPF_SUPPORTS_SBUS_MODE = input_json["SPF_SUPPORTS_SBUS_MODE"];
  clock_t begin = clock();
  sbusUpdateSerialRxFunctionConstraint(functionConstraint);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(functionConstraint);
}