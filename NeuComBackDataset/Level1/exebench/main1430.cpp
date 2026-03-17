#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  distance_client; int /*<<< orphan*/  check_distance_client; int /*<<< orphan*/  distance; int /*<<< orphan*/  check_distance; int /*<<< orphan*/  search; int /*<<< orphan*/  search_long; int /*<<< orphan*/  blownpos; } ;

/* Variables and functions */
extern  int /*<<< orphan*/  check_distance ; 
extern  int /*<<< orphan*/  check_distance_client ; 
extern  int /*<<< orphan*/  distance ; 
extern  int /*<<< orphan*/  distance_client ; 
extern  TYPE_1__* path ; 
extern  int /*<<< orphan*/  path_blownpos ; 
extern  TYPE_1__ path_s ; 
extern  int /*<<< orphan*/  path_search ; 
extern  int /*<<< orphan*/  path_search_long ; 
extern "C" { void path_defaults(void);
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

void write_output() {
  json output_json;

  output_json["check_distance"] = check_distance;

  output_json["check_distance_client"] = check_distance_client;

  output_json["distance"] = distance;

  output_json["distance_client"] = distance_client;
  TYPE_1__ output_temp_1 = *path;
  json output_temp_2;

  output_temp_2["distance_client"] = output_temp_1.distance_client;

  output_temp_2["check_distance_client"] = output_temp_1.check_distance_client;

  output_temp_2["distance"] = output_temp_1.distance;

  output_temp_2["check_distance"] = output_temp_1.check_distance;

  output_temp_2["search"] = output_temp_1.search;

  output_temp_2["search_long"] = output_temp_1.search_long;

  output_temp_2["blownpos"] = output_temp_1.blownpos;
  output_json["path"] = output_temp_2;

  output_json["path_blownpos"] = path_blownpos;
  json output_temp_3;

  output_temp_3["distance_client"] = path_s.distance_client;

  output_temp_3["check_distance_client"] = path_s.check_distance_client;

  output_temp_3["distance"] = path_s.distance;

  output_temp_3["check_distance"] = path_s.check_distance;

  output_temp_3["search"] = path_s.search;

  output_temp_3["search_long"] = path_s.search_long;

  output_temp_3["blownpos"] = path_s.blownpos;
  output_json["path_s"] = output_temp_3;

  output_json["path_search"] = path_search;

  output_json["path_search_long"] = path_search_long;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  check_distance = input_json["check_distance"];
  check_distance_client = input_json["check_distance_client"];
  distance = input_json["distance"];
  distance_client = input_json["distance_client"];
  int path_pointer__distance_client = input_json["path"]["distance_client"];
  int path_pointer__check_distance_client = input_json["path"]["check_distance_client"];
  int path_pointer__distance = input_json["path"]["distance"];
  int path_pointer__check_distance = input_json["path"]["check_distance"];
  int path_pointer__search = input_json["path"]["search"];
  int path_pointer__search_long = input_json["path"]["search_long"];
  int path_pointer__blownpos = input_json["path"]["blownpos"];
  TYPE_1__ path_pointer = {path_pointer__distance_client, path_pointer__check_distance_client, path_pointer__distance, path_pointer__check_distance, path_pointer__search, path_pointer__search_long, path_pointer__blownpos};
  path = &path_pointer;
  path_blownpos = input_json["path_blownpos"];
  int path_s__distance_client = input_json["path_s"]["distance_client"];
  int path_s__check_distance_client = input_json["path_s"]["check_distance_client"];
  int path_s__distance = input_json["path_s"]["distance"];
  int path_s__check_distance = input_json["path_s"]["check_distance"];
  int path_s__search = input_json["path_s"]["search"];
  int path_s__search_long = input_json["path_s"]["search_long"];
  int path_s__blownpos = input_json["path_s"]["blownpos"];
  path_s = {path_s__distance_client, path_s__check_distance_client, path_s__distance, path_s__check_distance, path_s__search, path_s__search_long, path_s__blownpos};
  path_search = input_json["path_search"];
  path_search_long = input_json["path_search_long"];
  clock_t begin = clock();
  path_defaults();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}