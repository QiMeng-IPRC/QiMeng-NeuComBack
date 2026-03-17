#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int euint32 ;
struct TYPE_3__ {int FirstClusterHigh; int FirstClusterLow; } ;
typedef  TYPE_1__ FileRecord ;

/* Variables and functions */
extern "C" { void fs_setFirstClusterInDirEntry(FileRecord *rec,euint32 cluster_addr);
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

void write_output(TYPE_1__* rec, int cluster_addr) {
  json output_json;
  TYPE_1__ output_temp_1 = *rec;
  json output_temp_2;

  output_temp_2["FirstClusterHigh"] = output_temp_1.FirstClusterHigh;

  output_temp_2["FirstClusterLow"] = output_temp_1.FirstClusterLow;
  output_json["rec"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int rec_pointer__FirstClusterHigh = input_json["rec"]["FirstClusterHigh"];
  int rec_pointer__FirstClusterLow = input_json["rec"]["FirstClusterLow"];
  TYPE_1__ rec_pointer = {rec_pointer__FirstClusterHigh, rec_pointer__FirstClusterLow};
  TYPE_1__* rec = &rec_pointer;
  int cluster_addr = input_json["cluster_addr"];
  clock_t begin = clock();
  fs_setFirstClusterInDirEntry(rec, cluster_addr);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(rec, cluster_addr);
}