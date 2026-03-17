#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct c2c_stats {scalar_t__ noparse; scalar_t__ nomap; scalar_t__ rmt_dram; scalar_t__ lcl_dram; scalar_t__ rmt_hit; scalar_t__ tot_hitm; scalar_t__ rmt_hitm; scalar_t__ lcl_hitm; scalar_t__ ld_llchit; scalar_t__ ld_l2hit; scalar_t__ ld_l1hit; scalar_t__ ld_fbhit; scalar_t__ ld_noadrs; scalar_t__ ld_miss; scalar_t__ ld_io; scalar_t__ ld_uncache; scalar_t__ ld_shared; scalar_t__ ld_excl; scalar_t__ load; scalar_t__ st_l1miss; scalar_t__ st_l1hit; scalar_t__ st_noadrs; scalar_t__ st_uncache; scalar_t__ store; scalar_t__ locks; scalar_t__ nr_entries; } ;

/* Variables and functions */
extern "C" { void c2c_add_stats(struct c2c_stats *stats, struct c2c_stats *add);
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

void write_output(struct c2c_stats* stats, struct c2c_stats* add) {
  json output_json;
  struct c2c_stats output_temp_1 = *stats;
  json output_temp_2;

  output_temp_2["noparse"] = output_temp_1.noparse;

  output_temp_2["nomap"] = output_temp_1.nomap;

  output_temp_2["rmt_dram"] = output_temp_1.rmt_dram;

  output_temp_2["lcl_dram"] = output_temp_1.lcl_dram;

  output_temp_2["rmt_hit"] = output_temp_1.rmt_hit;

  output_temp_2["tot_hitm"] = output_temp_1.tot_hitm;

  output_temp_2["rmt_hitm"] = output_temp_1.rmt_hitm;

  output_temp_2["lcl_hitm"] = output_temp_1.lcl_hitm;

  output_temp_2["ld_llchit"] = output_temp_1.ld_llchit;

  output_temp_2["ld_l2hit"] = output_temp_1.ld_l2hit;

  output_temp_2["ld_l1hit"] = output_temp_1.ld_l1hit;

  output_temp_2["ld_fbhit"] = output_temp_1.ld_fbhit;

  output_temp_2["ld_noadrs"] = output_temp_1.ld_noadrs;

  output_temp_2["ld_miss"] = output_temp_1.ld_miss;

  output_temp_2["ld_io"] = output_temp_1.ld_io;

  output_temp_2["ld_uncache"] = output_temp_1.ld_uncache;

  output_temp_2["ld_shared"] = output_temp_1.ld_shared;

  output_temp_2["ld_excl"] = output_temp_1.ld_excl;

  output_temp_2["load"] = output_temp_1.load;

  output_temp_2["st_l1miss"] = output_temp_1.st_l1miss;

  output_temp_2["st_l1hit"] = output_temp_1.st_l1hit;

  output_temp_2["st_noadrs"] = output_temp_1.st_noadrs;

  output_temp_2["st_uncache"] = output_temp_1.st_uncache;

  output_temp_2["store"] = output_temp_1.store;

  output_temp_2["locks"] = output_temp_1.locks;

  output_temp_2["nr_entries"] = output_temp_1.nr_entries;
  output_json["stats"] = output_temp_2;
  struct c2c_stats output_temp_3 = *add;
  json output_temp_4;

  output_temp_4["noparse"] = output_temp_3.noparse;

  output_temp_4["nomap"] = output_temp_3.nomap;

  output_temp_4["rmt_dram"] = output_temp_3.rmt_dram;

  output_temp_4["lcl_dram"] = output_temp_3.lcl_dram;

  output_temp_4["rmt_hit"] = output_temp_3.rmt_hit;

  output_temp_4["tot_hitm"] = output_temp_3.tot_hitm;

  output_temp_4["rmt_hitm"] = output_temp_3.rmt_hitm;

  output_temp_4["lcl_hitm"] = output_temp_3.lcl_hitm;

  output_temp_4["ld_llchit"] = output_temp_3.ld_llchit;

  output_temp_4["ld_l2hit"] = output_temp_3.ld_l2hit;

  output_temp_4["ld_l1hit"] = output_temp_3.ld_l1hit;

  output_temp_4["ld_fbhit"] = output_temp_3.ld_fbhit;

  output_temp_4["ld_noadrs"] = output_temp_3.ld_noadrs;

  output_temp_4["ld_miss"] = output_temp_3.ld_miss;

  output_temp_4["ld_io"] = output_temp_3.ld_io;

  output_temp_4["ld_uncache"] = output_temp_3.ld_uncache;

  output_temp_4["ld_shared"] = output_temp_3.ld_shared;

  output_temp_4["ld_excl"] = output_temp_3.ld_excl;

  output_temp_4["load"] = output_temp_3.load;

  output_temp_4["st_l1miss"] = output_temp_3.st_l1miss;

  output_temp_4["st_l1hit"] = output_temp_3.st_l1hit;

  output_temp_4["st_noadrs"] = output_temp_3.st_noadrs;

  output_temp_4["st_uncache"] = output_temp_3.st_uncache;

  output_temp_4["store"] = output_temp_3.store;

  output_temp_4["locks"] = output_temp_3.locks;

  output_temp_4["nr_entries"] = output_temp_3.nr_entries;
  output_json["add"] = output_temp_4;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  long int stats_pointer__noparse = input_json["stats"]["noparse"];
  long int stats_pointer__nomap = input_json["stats"]["nomap"];
  long int stats_pointer__rmt_dram = input_json["stats"]["rmt_dram"];
  long int stats_pointer__lcl_dram = input_json["stats"]["lcl_dram"];
  long int stats_pointer__rmt_hit = input_json["stats"]["rmt_hit"];
  long int stats_pointer__tot_hitm = input_json["stats"]["tot_hitm"];
  long int stats_pointer__rmt_hitm = input_json["stats"]["rmt_hitm"];
  long int stats_pointer__lcl_hitm = input_json["stats"]["lcl_hitm"];
  long int stats_pointer__ld_llchit = input_json["stats"]["ld_llchit"];
  long int stats_pointer__ld_l2hit = input_json["stats"]["ld_l2hit"];
  long int stats_pointer__ld_l1hit = input_json["stats"]["ld_l1hit"];
  long int stats_pointer__ld_fbhit = input_json["stats"]["ld_fbhit"];
  long int stats_pointer__ld_noadrs = input_json["stats"]["ld_noadrs"];
  long int stats_pointer__ld_miss = input_json["stats"]["ld_miss"];
  long int stats_pointer__ld_io = input_json["stats"]["ld_io"];
  long int stats_pointer__ld_uncache = input_json["stats"]["ld_uncache"];
  long int stats_pointer__ld_shared = input_json["stats"]["ld_shared"];
  long int stats_pointer__ld_excl = input_json["stats"]["ld_excl"];
  long int stats_pointer__load = input_json["stats"]["load"];
  long int stats_pointer__st_l1miss = input_json["stats"]["st_l1miss"];
  long int stats_pointer__st_l1hit = input_json["stats"]["st_l1hit"];
  long int stats_pointer__st_noadrs = input_json["stats"]["st_noadrs"];
  long int stats_pointer__st_uncache = input_json["stats"]["st_uncache"];
  long int stats_pointer__store = input_json["stats"]["store"];
  long int stats_pointer__locks = input_json["stats"]["locks"];
  long int stats_pointer__nr_entries = input_json["stats"]["nr_entries"];
  struct c2c_stats stats_pointer = {stats_pointer__noparse, stats_pointer__nomap, stats_pointer__rmt_dram, stats_pointer__lcl_dram, stats_pointer__rmt_hit, stats_pointer__tot_hitm, stats_pointer__rmt_hitm, stats_pointer__lcl_hitm, stats_pointer__ld_llchit, stats_pointer__ld_l2hit, stats_pointer__ld_l1hit, stats_pointer__ld_fbhit, stats_pointer__ld_noadrs, stats_pointer__ld_miss, stats_pointer__ld_io, stats_pointer__ld_uncache, stats_pointer__ld_shared, stats_pointer__ld_excl, stats_pointer__load, stats_pointer__st_l1miss, stats_pointer__st_l1hit, stats_pointer__st_noadrs, stats_pointer__st_uncache, stats_pointer__store, stats_pointer__locks, stats_pointer__nr_entries};
  struct c2c_stats* stats = &stats_pointer;
  long int add_pointer__noparse = input_json["add"]["noparse"];
  long int add_pointer__nomap = input_json["add"]["nomap"];
  long int add_pointer__rmt_dram = input_json["add"]["rmt_dram"];
  long int add_pointer__lcl_dram = input_json["add"]["lcl_dram"];
  long int add_pointer__rmt_hit = input_json["add"]["rmt_hit"];
  long int add_pointer__tot_hitm = input_json["add"]["tot_hitm"];
  long int add_pointer__rmt_hitm = input_json["add"]["rmt_hitm"];
  long int add_pointer__lcl_hitm = input_json["add"]["lcl_hitm"];
  long int add_pointer__ld_llchit = input_json["add"]["ld_llchit"];
  long int add_pointer__ld_l2hit = input_json["add"]["ld_l2hit"];
  long int add_pointer__ld_l1hit = input_json["add"]["ld_l1hit"];
  long int add_pointer__ld_fbhit = input_json["add"]["ld_fbhit"];
  long int add_pointer__ld_noadrs = input_json["add"]["ld_noadrs"];
  long int add_pointer__ld_miss = input_json["add"]["ld_miss"];
  long int add_pointer__ld_io = input_json["add"]["ld_io"];
  long int add_pointer__ld_uncache = input_json["add"]["ld_uncache"];
  long int add_pointer__ld_shared = input_json["add"]["ld_shared"];
  long int add_pointer__ld_excl = input_json["add"]["ld_excl"];
  long int add_pointer__load = input_json["add"]["load"];
  long int add_pointer__st_l1miss = input_json["add"]["st_l1miss"];
  long int add_pointer__st_l1hit = input_json["add"]["st_l1hit"];
  long int add_pointer__st_noadrs = input_json["add"]["st_noadrs"];
  long int add_pointer__st_uncache = input_json["add"]["st_uncache"];
  long int add_pointer__store = input_json["add"]["store"];
  long int add_pointer__locks = input_json["add"]["locks"];
  long int add_pointer__nr_entries = input_json["add"]["nr_entries"];
  struct c2c_stats add_pointer = {add_pointer__noparse, add_pointer__nomap, add_pointer__rmt_dram, add_pointer__lcl_dram, add_pointer__rmt_hit, add_pointer__tot_hitm, add_pointer__rmt_hitm, add_pointer__lcl_hitm, add_pointer__ld_llchit, add_pointer__ld_l2hit, add_pointer__ld_l1hit, add_pointer__ld_fbhit, add_pointer__ld_noadrs, add_pointer__ld_miss, add_pointer__ld_io, add_pointer__ld_uncache, add_pointer__ld_shared, add_pointer__ld_excl, add_pointer__load, add_pointer__st_l1miss, add_pointer__st_l1hit, add_pointer__st_noadrs, add_pointer__st_uncache, add_pointer__store, add_pointer__locks, add_pointer__nr_entries};
  struct c2c_stats* add = &add_pointer;
  clock_t begin = clock();
  c2c_add_stats(stats, add);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(stats, add);
}