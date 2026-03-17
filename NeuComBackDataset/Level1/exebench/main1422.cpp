#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct shmTime {int receiveTimeStampUSec; } ;

/* Variables and functions */
extern "C" { void set_receiveTimeStampUSec(struct shmTime *shm_time, int receiveTimeStampUSec);
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

void write_output(struct shmTime* shm_time, int receiveTimeStampUSec) {
  json output_json;
  struct shmTime output_temp_1 = *shm_time;
  json output_temp_2;

  output_temp_2["receiveTimeStampUSec"] = output_temp_1.receiveTimeStampUSec;
  output_json["shm_time"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int shm_time_pointer__receiveTimeStampUSec = input_json["shm_time"]["receiveTimeStampUSec"];
  struct shmTime shm_time_pointer = {shm_time_pointer__receiveTimeStampUSec};
  struct shmTime* shm_time = &shm_time_pointer;
  int receiveTimeStampUSec = input_json["receiveTimeStampUSec"];
  clock_t begin = clock();
  set_receiveTimeStampUSec(shm_time, receiveTimeStampUSec);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(shm_time, receiveTimeStampUSec);
}