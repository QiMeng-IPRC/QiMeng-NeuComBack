#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bfd_vma ;
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_3__ {int /*<<< orphan*/  start_address; } ;
typedef  TYPE_1__ bfd ;

/* Variables and functions */
extern  int /*<<< orphan*/  TRUE ; 
extern "C" { bfd_boolean bfd_set_start_address (bfd *abfd, bfd_vma vma);
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

void write_output(TYPE_1__* abfd, int vma, int returnv) {
  json output_json;
  TYPE_1__ output_temp_1 = *abfd;
  json output_temp_2;

  output_temp_2["start_address"] = output_temp_1.start_address;
  output_json["abfd"] = output_temp_2;

  output_json["TRUE"] = TRUE;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int abfd_pointer__start_address = input_json["abfd"]["start_address"];
  TYPE_1__ abfd_pointer = {abfd_pointer__start_address};
  TYPE_1__* abfd = &abfd_pointer;
  int vma = input_json["vma"];
  TRUE = input_json["TRUE"];
  clock_t begin = clock();
  int returnv = bfd_set_start_address(abfd, vma);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(abfd, vma, returnv);
}