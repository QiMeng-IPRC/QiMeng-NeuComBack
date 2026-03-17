#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int mode; int /*<<< orphan*/  attribute; int /*<<< orphan*/  cursor; } ;
struct terminal {int mode; TYPE_1__ state; int /*<<< orphan*/  attribute; int /*<<< orphan*/  cursor; } ;

/* Variables and functions */
extern  int MODE_ORIGIN ; 
extern "C" { void restore_state(struct terminal *term);
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

void write_output(struct terminal* term) {
  json output_json;
  struct terminal output_temp_1 = *term;
  json output_temp_2;

  output_temp_2["mode"] = output_temp_1.mode;
  json output_temp_3;

  output_temp_3["mode"] = output_temp_1.state.mode;

  output_temp_3["attribute"] = output_temp_1.state.attribute;

  output_temp_3["cursor"] = output_temp_1.state.cursor;
  output_temp_2["state"] = output_temp_3;

  output_temp_2["attribute"] = output_temp_1.attribute;

  output_temp_2["cursor"] = output_temp_1.cursor;
  output_json["term"] = output_temp_2;

  output_json["MODE_ORIGIN"] = MODE_ORIGIN;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int term_pointer__mode = input_json["term"]["mode"];
  int term_pointer__state__mode = input_json["term"]["state"]["mode"];
  int term_pointer__state__attribute = input_json["term"]["state"]["attribute"];
  int term_pointer__state__cursor = input_json["term"]["state"]["cursor"];
  TYPE_1__ term_pointer__state = {term_pointer__state__mode, term_pointer__state__attribute, term_pointer__state__cursor};
  int term_pointer__attribute = input_json["term"]["attribute"];
  int term_pointer__cursor = input_json["term"]["cursor"];
  struct terminal term_pointer = {term_pointer__mode, term_pointer__state, term_pointer__attribute, term_pointer__cursor};
  struct terminal* term = &term_pointer;
  MODE_ORIGIN = input_json["MODE_ORIGIN"];
  clock_t begin = clock();
  restore_state(term);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(term);
}