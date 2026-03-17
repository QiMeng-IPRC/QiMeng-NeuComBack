#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {double _double; } ;
struct TYPE_6__ {TYPE_1__ val; int /*<<< orphan*/  type; } ;
typedef  TYPE_2__ upb_value ;

/* Variables and functions */
extern  int /*<<< orphan*/  GOOGLE_PROTOBUF_FIELDDESCRIPTORPROTO_TYPE_TYPE_DOUBLE ; 
extern  int /*<<< orphan*/  memset (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
extern "C" { void upb_value_setdouble(upb_value *val, double cval);
 }int memset__bench (TYPE_2__ * b, int d, int e) {
	int returnv;
	int temp_variable = 45;
	returnv = temp_variable;
	return returnv;
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

void write_output(TYPE_2__* val, double cval) {
  json output_json;
  TYPE_2__ output_temp_1 = *val;
  json output_temp_2;
  json output_temp_3;

  output_temp_3["_double"] = output_temp_1.val._double;
  output_temp_2["val"] = output_temp_3;

  output_temp_2["type"] = output_temp_1.type;
  output_json["val"] = output_temp_2;

  output_json["GOOGLE_PROTOBUF_FIELDDESCRIPTORPROTO_TYPE_TYPE_DOUBLE"] = GOOGLE_PROTOBUF_FIELDDESCRIPTORPROTO_TYPE_TYPE_DOUBLE;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  double val_pointer__val___double = input_json["val"]["val"]["_double"];
  TYPE_1__ val_pointer__val = {val_pointer__val___double};
  int val_pointer__type = input_json["val"]["type"];
  TYPE_2__ val_pointer = {val_pointer__val, val_pointer__type};
  TYPE_2__* val = &val_pointer;
  double cval = input_json["cval"];
  GOOGLE_PROTOBUF_FIELDDESCRIPTORPROTO_TYPE_TYPE_DOUBLE = input_json["GOOGLE_PROTOBUF_FIELDDESCRIPTORPROTO_TYPE_TYPE_DOUBLE"];
  clock_t begin = clock();
  upb_value_setdouble(val, cval);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(val, cval);
}