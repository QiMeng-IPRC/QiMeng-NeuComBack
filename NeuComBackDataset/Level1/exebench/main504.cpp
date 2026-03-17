#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  cb; } ;
typedef  int /*<<< orphan*/  MidiPlayerCallbacks_t ;
typedef  TYPE_1__ MIDI_PLAYER ;

/* Variables and functions */
extern  int /*<<< orphan*/  memset (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
extern "C" { void midiplayer_init(MIDI_PLAYER* mpl, MidiPlayerCallbacks_t callbacks);
 }int memset__bench (TYPE_1__ * b, int d, int e) {
	int returnv;
	int temp_variable = 45;
	returnv = temp_variable;
	return returnv;
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

void write_output(TYPE_1__* mpl, int callbacks) {
  json output_json;
  TYPE_1__ output_temp_1 = *mpl;
  json output_temp_2;

  output_temp_2["cb"] = output_temp_1.cb;
  output_json["mpl"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int mpl_pointer__cb = input_json["mpl"]["cb"];
  TYPE_1__ mpl_pointer = {mpl_pointer__cb};
  TYPE_1__* mpl = &mpl_pointer;
  int callbacks = input_json["callbacks"];
  clock_t begin = clock();
  midiplayer_init(mpl, callbacks);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(mpl, callbacks);
}