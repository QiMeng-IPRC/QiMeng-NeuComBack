#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int lang; int unknown; int nextOffset; int packedLen; int unpackedLen; } ;
typedef  TYPE_1__ TextComprInfo ;

/* Variables and functions */
extern "C" { void es_textComprInfo (TextComprInfo * tci);
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

void write_output(TYPE_1__* tci) {
  json output_json;
  TYPE_1__ output_temp_1 = *tci;
  json output_temp_2;

  output_temp_2["lang"] = output_temp_1.lang;

  output_temp_2["unknown"] = output_temp_1.unknown;

  output_temp_2["nextOffset"] = output_temp_1.nextOffset;

  output_temp_2["packedLen"] = output_temp_1.packedLen;

  output_temp_2["unpackedLen"] = output_temp_1.unpackedLen;
  output_json["tci"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int tci_pointer__lang = input_json["tci"]["lang"];
  int tci_pointer__unknown = input_json["tci"]["unknown"];
  int tci_pointer__nextOffset = input_json["tci"]["nextOffset"];
  int tci_pointer__packedLen = input_json["tci"]["packedLen"];
  int tci_pointer__unpackedLen = input_json["tci"]["unpackedLen"];
  TYPE_1__ tci_pointer = {tci_pointer__lang, tci_pointer__unknown, tci_pointer__nextOffset, tci_pointer__packedLen, tci_pointer__unpackedLen};
  TYPE_1__* tci = &tci_pointer;
  clock_t begin = clock();
  es_textComprInfo(tci);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(tci);
}