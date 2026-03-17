#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct mmli_context {int octave; int whole; double dmul; double fill; int oct_track_p; int oct_override_p; int /*<<< orphan*/  last_pitch; scalar_t__ tail; } ;

/* Variables and functions */
extern  int /*<<< orphan*/  INT_MIN ; 
extern "C" { void mmli_init (struct mmli_context *c);
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

void write_output(struct mmli_context* c) {
  json output_json;
  struct mmli_context output_temp_1 = *c;
  json output_temp_2;

  output_temp_2["octave"] = output_temp_1.octave;

  output_temp_2["whole"] = output_temp_1.whole;

  output_temp_2["dmul"] = output_temp_1.dmul;

  output_temp_2["fill"] = output_temp_1.fill;

  output_temp_2["oct_track_p"] = output_temp_1.oct_track_p;

  output_temp_2["oct_override_p"] = output_temp_1.oct_override_p;

  output_temp_2["last_pitch"] = output_temp_1.last_pitch;

  output_temp_2["tail"] = output_temp_1.tail;
  output_json["c"] = output_temp_2;

  output_json["INT_MIN"] = INT_MIN;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int c_pointer__octave = input_json["c"]["octave"];
  int c_pointer__whole = input_json["c"]["whole"];
  double c_pointer__dmul = input_json["c"]["dmul"];
  double c_pointer__fill = input_json["c"]["fill"];
  int c_pointer__oct_track_p = input_json["c"]["oct_track_p"];
  int c_pointer__oct_override_p = input_json["c"]["oct_override_p"];
  int c_pointer__last_pitch = input_json["c"]["last_pitch"];
  long int c_pointer__tail = input_json["c"]["tail"];
  struct mmli_context c_pointer = {c_pointer__octave, c_pointer__whole, c_pointer__dmul, c_pointer__fill, c_pointer__oct_track_p, c_pointer__oct_override_p, c_pointer__last_pitch, c_pointer__tail};
  struct mmli_context* c = &c_pointer;
  INT_MIN = input_json["INT_MIN"];
  clock_t begin = clock();
  mmli_init(c);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(c);
}