#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  head; } ;
struct TYPE_5__ {int /*<<< orphan*/  next; } ;
typedef  TYPE_1__ KeylistIterator ;
typedef  TYPE_2__ Keylist ;

/* Variables and functions */
extern "C" { void keylist_rewind(Keylist *keylist, KeylistIterator *iter);
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

void write_output(TYPE_2__* keylist, TYPE_1__* iter) {
  json output_json;
  TYPE_2__ output_temp_1 = *keylist;
  json output_temp_2;

  output_temp_2["head"] = output_temp_1.head;
  output_json["keylist"] = output_temp_2;
  TYPE_1__ output_temp_3 = *iter;
  json output_temp_4;

  output_temp_4["next"] = output_temp_3.next;
  output_json["iter"] = output_temp_4;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int keylist_pointer__head = input_json["keylist"]["head"];
  TYPE_2__ keylist_pointer = {keylist_pointer__head};
  TYPE_2__* keylist = &keylist_pointer;
  int iter_pointer__next = input_json["iter"]["next"];
  TYPE_1__ iter_pointer = {iter_pointer__next};
  TYPE_1__* iter = &iter_pointer;
  clock_t begin = clock();
  keylist_rewind(keylist, iter);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(keylist, iter);
}