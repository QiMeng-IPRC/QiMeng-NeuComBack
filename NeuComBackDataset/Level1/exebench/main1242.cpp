#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ count; scalar_t__ tail; scalar_t__ head; int /*<<< orphan*/  size; int /*<<< orphan*/  end; } ;
typedef  TYPE_1__ rtems_capture_buffer_t ;

/* Variables and functions */
extern "C" { void rtems_capture_buffer_flush( rtems_capture_buffer_t* buffer );
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

void write_output(TYPE_1__* buffer) {
  json output_json;
  TYPE_1__ output_temp_1 = *buffer;
  json output_temp_2;

  output_temp_2["count"] = output_temp_1.count;

  output_temp_2["tail"] = output_temp_1.tail;

  output_temp_2["head"] = output_temp_1.head;

  output_temp_2["size"] = output_temp_1.size;

  output_temp_2["end"] = output_temp_1.end;
  output_json["buffer"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  long int buffer_pointer__count = input_json["buffer"]["count"];
  long int buffer_pointer__tail = input_json["buffer"]["tail"];
  long int buffer_pointer__head = input_json["buffer"]["head"];
  int buffer_pointer__size = input_json["buffer"]["size"];
  int buffer_pointer__end = input_json["buffer"]["end"];
  TYPE_1__ buffer_pointer = {buffer_pointer__count, buffer_pointer__tail, buffer_pointer__head, buffer_pointer__size, buffer_pointer__end};
  TYPE_1__* buffer = &buffer_pointer;
  clock_t begin = clock();
  rtems_capture_buffer_flush(buffer);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(buffer);
}