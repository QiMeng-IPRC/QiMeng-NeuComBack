#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int sign_state_t ;
struct TYPE_5__ {int id; int /*<<< orphan*/  str; } ;
struct TYPE_6__ {TYPE_1__ state; } ;
struct TYPE_7__ {TYPE_2__ signature; } ;
typedef  TYPE_3__ mediacheck_t ;

/* Variables and functions */
extern  int /*<<< orphan*/ * sign_states ; 
extern "C" { void set_signature_state(mediacheck_t *media, sign_state_t state);
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

void write_output(TYPE_3__* media, int state) {
  json output_json;
  TYPE_3__ output_temp_2 = *media;
  json output_temp_3;
  json output_temp_4;
  json output_temp_5;

  output_temp_5["id"] = output_temp_2.signature.state.id;

  output_temp_5["str"] = output_temp_2.signature.state.str;
  output_temp_4["state"] = output_temp_5;
  output_temp_3["signature"] = output_temp_4;
  output_json["media"] = output_temp_3;
  std::vector<json> output_temp_6;
  for (unsigned int i7 = 0; i7 < 32; i7++) {
    int output_temp_8 = sign_states[i7];

    output_temp_6.push_back(output_temp_8);
  }
  output_json["sign_states"] = output_temp_6;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int media_pointer__signature__state__id = input_json["media"]["signature"]["state"]["id"];
  int media_pointer__signature__state__str = input_json["media"]["signature"]["state"]["str"];
  TYPE_1__ media_pointer__signature__state = {media_pointer__signature__state__id, media_pointer__signature__state__str};
  TYPE_2__ media_pointer__signature = {media_pointer__signature__state};
  TYPE_3__ media_pointer = {media_pointer__signature};
  TYPE_3__* media = &media_pointer;
  int state = input_json["state"];
  std::vector<int> input_temp_1_vec;
  for (auto& elem : input_json["sign_states"]) {
    int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  sign_states = &input_temp_1_vec[0];
  clock_t begin = clock();
  set_signature_state(media, state);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(media, state);
}