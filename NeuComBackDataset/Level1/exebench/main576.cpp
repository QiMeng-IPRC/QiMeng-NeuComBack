#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  charset; } ;
typedef  TYPE_1__ WBXMLConvWBXML2XML ;
typedef  int /*<<< orphan*/  WBXMLCharsetMIBEnum ;

/* Variables and functions */
extern "C" { void wbxml_conv_wbxml2xml_set_charset(WBXMLConvWBXML2XML *conv, WBXMLCharsetMIBEnum charset);
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

void write_output(TYPE_1__* conv, int charset) {
  json output_json;
  TYPE_1__ output_temp_1 = *conv;
  json output_temp_2;

  output_temp_2["charset"] = output_temp_1.charset;
  output_json["conv"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int conv_pointer__charset = input_json["conv"]["charset"];
  TYPE_1__ conv_pointer = {conv_pointer__charset};
  TYPE_1__* conv = &conv_pointer;
  int charset = input_json["charset"];
  clock_t begin = clock();
  wbxml_conv_wbxml2xml_set_charset(conv, charset);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(conv, charset);
}