#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int status; int phase; int packet_status; double callback; } ;
typedef  TYPE_1__ scsi_disk_t ;

/* Variables and functions */
extern "C" { void scsi_disk_command_common(scsi_disk_t *dev);
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

void write_output(TYPE_1__* dev) {
  json output_json;
  TYPE_1__ output_temp_1 = *dev;
  json output_temp_2;

  output_temp_2["status"] = output_temp_1.status;

  output_temp_2["phase"] = output_temp_1.phase;

  output_temp_2["packet_status"] = output_temp_1.packet_status;

  output_temp_2["callback"] = output_temp_1.callback;
  output_json["dev"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int dev_pointer__status = input_json["dev"]["status"];
  int dev_pointer__phase = input_json["dev"]["phase"];
  int dev_pointer__packet_status = input_json["dev"]["packet_status"];
  double dev_pointer__callback = input_json["dev"]["callback"];
  TYPE_1__ dev_pointer = {dev_pointer__status, dev_pointer__phase, dev_pointer__packet_status, dev_pointer__callback};
  TYPE_1__* dev = &dev_pointer;
  clock_t begin = clock();
  scsi_disk_command_common(dev);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(dev);
}