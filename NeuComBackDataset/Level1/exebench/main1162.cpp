#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct linked_list_t {int current_index; int /*<<< orphan*/  error_code; } ;

/* Variables and functions */
extern  int /*<<< orphan*/  LINKED_LIST_ERR_OK ; 
extern "C" { int linked_list_current(struct linked_list_t *list);
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

void write_output(struct linked_list_t* list, int returnv) {
  json output_json;
  struct linked_list_t output_temp_1 = *list;
  json output_temp_2;

  output_temp_2["current_index"] = output_temp_1.current_index;

  output_temp_2["error_code"] = output_temp_1.error_code;
  output_json["list"] = output_temp_2;

  output_json["LINKED_LIST_ERR_OK"] = LINKED_LIST_ERR_OK;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int list_pointer__current_index = input_json["list"]["current_index"];
  int list_pointer__error_code = input_json["list"]["error_code"];
  struct linked_list_t list_pointer = {list_pointer__current_index, list_pointer__error_code};
  struct linked_list_t* list = &list_pointer;
  LINKED_LIST_ERR_OK = input_json["LINKED_LIST_ERR_OK"];
  clock_t begin = clock();
  int returnv = linked_list_current(list);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(list, returnv);
}