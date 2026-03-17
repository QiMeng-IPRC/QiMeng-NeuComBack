#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct xfs_sb {int sb_versionnum; int sb_features2; } ;

/* Variables and functions */
extern "C" { void xfs_sb_version_addprojid32bit(struct xfs_sb *sbp);
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

void write_output(struct xfs_sb* sbp) {
  json output_json;
  struct xfs_sb output_temp_1 = *sbp;
  json output_temp_2;

  output_temp_2["sb_versionnum"] = output_temp_1.sb_versionnum;

  output_temp_2["sb_features2"] = output_temp_1.sb_features2;
  output_json["sbp"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int sbp_pointer__sb_versionnum = input_json["sbp"]["sb_versionnum"];
  int sbp_pointer__sb_features2 = input_json["sbp"]["sb_features2"];
  struct xfs_sb sbp_pointer = {sbp_pointer__sb_versionnum, sbp_pointer__sb_features2};
  struct xfs_sb* sbp = &sbp_pointer;
  clock_t begin = clock();
  xfs_sb_version_addprojid32bit(sbp);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(sbp);
}