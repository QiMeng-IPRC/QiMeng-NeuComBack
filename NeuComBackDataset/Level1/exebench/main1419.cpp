#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct gc_stat {int in_use; } ;
struct cache_set {int nbuckets; int avail_nbuckets; } ;

/* Variables and functions */
extern "C" { void bch_update_bucket_in_use(struct cache_set *c, struct gc_stat *stats);
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

void write_output(struct cache_set* c, struct gc_stat* stats) {
  json output_json;
  struct cache_set output_temp_1 = *c;
  json output_temp_2;

  output_temp_2["nbuckets"] = output_temp_1.nbuckets;

  output_temp_2["avail_nbuckets"] = output_temp_1.avail_nbuckets;
  output_json["c"] = output_temp_2;
  struct gc_stat output_temp_3 = *stats;
  json output_temp_4;

  output_temp_4["in_use"] = output_temp_3.in_use;
  output_json["stats"] = output_temp_4;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int c_pointer__nbuckets = input_json["c"]["nbuckets"];
  int c_pointer__avail_nbuckets = input_json["c"]["avail_nbuckets"];
  struct cache_set c_pointer = {c_pointer__nbuckets, c_pointer__avail_nbuckets};
  struct cache_set* c = &c_pointer;
  int stats_pointer__in_use = input_json["stats"]["in_use"];
  struct gc_stat stats_pointer = {stats_pointer__in_use};
  struct gc_stat* stats = &stats_pointer;
  clock_t begin = clock();
  bch_update_bucket_in_use(c, stats);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(c, stats);
}