#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  listener_t ;
typedef  int error_t ;
struct TYPE_2__ {int size; int /*<<< orphan*/ * listeners; } ;

/* Variables and functions */
extern  TYPE_1__ event_listeners ; 
extern "C" { error_t add_mouse_listener(listener_t listener);
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

void write_output(int listener, int returnv) {
  json output_json;
  json output_temp_2;

  output_temp_2["size"] = event_listeners.size;
  std::vector<json> output_temp_3;
  for (unsigned int i4 = 0; i4 < 32; i4++) {
    int output_temp_5 = event_listeners.listeners[i4];

    output_temp_3.push_back(output_temp_5);
  }
  output_temp_2["listeners"] = output_temp_3;
  output_json["event_listeners"] = output_temp_2;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int listener = input_json["listener"];
  int event_listeners__size = input_json["event_listeners"]["size"];
  std::vector<int> input_temp_1_vec;
  for (auto& elem : input_json["event_listeners"]["listeners"]) {
    int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  int* event_listeners__listeners = &input_temp_1_vec[0];
  event_listeners = {event_listeners__size, event_listeners__listeners};
  clock_t begin = clock();
  int returnv = add_mouse_listener(listener);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(listener, returnv);
}