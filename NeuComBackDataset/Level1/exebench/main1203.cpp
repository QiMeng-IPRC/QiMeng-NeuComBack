#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int flags; } ;
typedef  TYPE_1__ history_t ;
struct TYPE_8__ {int num; int /*<<< orphan*/  str; } ;
struct TYPE_7__ {scalar_t__ h_next; scalar_t__ h_ref; } ;
typedef  TYPE_2__ History ;
typedef  TYPE_3__ HistEvent ;

/* Variables and functions */
extern  int /*<<< orphan*/ * he_errlist ; 
extern  scalar_t__ history_def_next ; 
extern "C" { int history_getunique(History *h, HistEvent *ev);
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

void write_output(TYPE_2__* h, TYPE_3__* ev, int returnv) {
  json output_json;
  TYPE_2__ output_temp_2 = *h;
  json output_temp_3;

  output_temp_3["h_next"] = output_temp_2.h_next;

  output_temp_3["h_ref"] = output_temp_2.h_ref;
  output_json["h"] = output_temp_3;
  TYPE_3__ output_temp_4 = *ev;
  json output_temp_5;

  output_temp_5["num"] = output_temp_4.num;

  output_temp_5["str"] = output_temp_4.str;
  output_json["ev"] = output_temp_5;
  std::vector<json> output_temp_6;
  for (unsigned int i7 = 0; i7 < 32; i7++) {
    int output_temp_8 = he_errlist[i7];

    output_temp_6.push_back(output_temp_8);
  }
  output_json["he_errlist"] = output_temp_6;

  output_json["history_def_next"] = history_def_next;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  long int h_pointer__h_next = input_json["h"]["h_next"];
  long int h_pointer__h_ref = input_json["h"]["h_ref"];
  TYPE_2__ h_pointer = {h_pointer__h_next, h_pointer__h_ref};
  TYPE_2__* h = &h_pointer;
  int ev_pointer__num = input_json["ev"]["num"];
  int ev_pointer__str = input_json["ev"]["str"];
  TYPE_3__ ev_pointer = {ev_pointer__num, ev_pointer__str};
  TYPE_3__* ev = &ev_pointer;
  std::vector<int> input_temp_1_vec;
  for (auto& elem : input_json["he_errlist"]) {
    int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  he_errlist = &input_temp_1_vec[0];
  history_def_next = input_json["history_def_next"];
  clock_t begin = clock();
  int returnv = history_getunique(h, ev);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(h, ev, returnv);
}