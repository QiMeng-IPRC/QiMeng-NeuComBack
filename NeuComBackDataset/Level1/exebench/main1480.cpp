#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */

/* Variables and functions */
extern  int /*<<< orphan*/  AUDIO_PCM_ALSA ; 
extern  int /*<<< orphan*/  AUDIO_PCM_ANY ; 
extern  int /*<<< orphan*/  AUDIO_PCM_DMY ; 
extern  int /*<<< orphan*/  AUDIO_PCM_ESD ; 
extern  int /*<<< orphan*/  AUDIO_PCM_OSS ; 
extern  int /*<<< orphan*/  mode ; 
extern  int mode_onlyone ; 
extern "C" { void audio_set_output_device(char c);
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

void write_output(char c) {
  json output_json;

  output_json["AUDIO_PCM_ALSA"] = AUDIO_PCM_ALSA;

  output_json["AUDIO_PCM_ANY"] = AUDIO_PCM_ANY;

  output_json["AUDIO_PCM_DMY"] = AUDIO_PCM_DMY;

  output_json["AUDIO_PCM_ESD"] = AUDIO_PCM_ESD;

  output_json["AUDIO_PCM_OSS"] = AUDIO_PCM_OSS;

  output_json["mode"] = mode;

  output_json["mode_onlyone"] = mode_onlyone;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  char c = input_json["c"].get<char>();
  AUDIO_PCM_ALSA = input_json["AUDIO_PCM_ALSA"];
  AUDIO_PCM_ANY = input_json["AUDIO_PCM_ANY"];
  AUDIO_PCM_DMY = input_json["AUDIO_PCM_DMY"];
  AUDIO_PCM_ESD = input_json["AUDIO_PCM_ESD"];
  AUDIO_PCM_OSS = input_json["AUDIO_PCM_OSS"];
  mode = input_json["mode"];
  mode_onlyone = input_json["mode_onlyone"];
  clock_t begin = clock();
  audio_set_output_device(c);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(c);
}