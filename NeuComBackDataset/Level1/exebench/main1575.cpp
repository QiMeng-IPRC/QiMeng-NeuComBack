#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int g; int h; int processID; scalar_t__ discarded; scalar_t__ bytesRead; scalar_t__ bytesWritten; scalar_t__ currentPart; scalar_t__ baseSize; } ;
typedef  TYPE_1__ File ;

/* Variables and functions */
extern "C" { void file_init(File *file, int nprocessID);
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

void write_output(TYPE_1__* file, int nprocessID) {
  json output_json;
  TYPE_1__ output_temp_1 = *file;
  json output_temp_2;

  output_temp_2["g"] = output_temp_1.g;

  output_temp_2["h"] = output_temp_1.h;

  output_temp_2["processID"] = output_temp_1.processID;

  output_temp_2["discarded"] = output_temp_1.discarded;

  output_temp_2["bytesRead"] = output_temp_1.bytesRead;

  output_temp_2["bytesWritten"] = output_temp_1.bytesWritten;

  output_temp_2["currentPart"] = output_temp_1.currentPart;

  output_temp_2["baseSize"] = output_temp_1.baseSize;
  output_json["file"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int file_pointer__g = input_json["file"]["g"];
  int file_pointer__h = input_json["file"]["h"];
  int file_pointer__processID = input_json["file"]["processID"];
  long int file_pointer__discarded = input_json["file"]["discarded"];
  long int file_pointer__bytesRead = input_json["file"]["bytesRead"];
  long int file_pointer__bytesWritten = input_json["file"]["bytesWritten"];
  long int file_pointer__currentPart = input_json["file"]["currentPart"];
  long int file_pointer__baseSize = input_json["file"]["baseSize"];
  TYPE_1__ file_pointer = {file_pointer__g, file_pointer__h, file_pointer__processID, file_pointer__discarded, file_pointer__bytesRead, file_pointer__bytesWritten, file_pointer__currentPart, file_pointer__baseSize};
  TYPE_1__* file = &file_pointer;
  int nprocessID = input_json["nprocessID"];
  clock_t begin = clock();
  file_init(file, nprocessID);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(file, nprocessID);
}