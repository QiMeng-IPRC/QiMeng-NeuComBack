#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct io_funcs_t {int /*<<< orphan*/  catdoc_tell; int /*<<< orphan*/  catdoc_seek; int /*<<< orphan*/  catdoc_eof; int /*<<< orphan*/  catdoc_read; } ;

/* Variables and functions */
extern  int /*<<< orphan*/  ole_eof ; 
extern  int /*<<< orphan*/  ole_read ; 
extern  int /*<<< orphan*/  ole_seek ; 
extern  int /*<<< orphan*/  ole_tell ; 
extern "C" { void set_ole_func(struct io_funcs_t *io_funcs);
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

void write_output(struct io_funcs_t* io_funcs) {
  json output_json;
  struct io_funcs_t output_temp_1 = *io_funcs;
  json output_temp_2;

  output_temp_2["catdoc_tell"] = output_temp_1.catdoc_tell;

  output_temp_2["catdoc_seek"] = output_temp_1.catdoc_seek;

  output_temp_2["catdoc_eof"] = output_temp_1.catdoc_eof;

  output_temp_2["catdoc_read"] = output_temp_1.catdoc_read;
  output_json["io_funcs"] = output_temp_2;

  output_json["ole_eof"] = ole_eof;

  output_json["ole_read"] = ole_read;

  output_json["ole_seek"] = ole_seek;

  output_json["ole_tell"] = ole_tell;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int io_funcs_pointer__catdoc_tell = input_json["io_funcs"]["catdoc_tell"];
  int io_funcs_pointer__catdoc_seek = input_json["io_funcs"]["catdoc_seek"];
  int io_funcs_pointer__catdoc_eof = input_json["io_funcs"]["catdoc_eof"];
  int io_funcs_pointer__catdoc_read = input_json["io_funcs"]["catdoc_read"];
  struct io_funcs_t io_funcs_pointer = {io_funcs_pointer__catdoc_tell, io_funcs_pointer__catdoc_seek, io_funcs_pointer__catdoc_eof, io_funcs_pointer__catdoc_read};
  struct io_funcs_t* io_funcs = &io_funcs_pointer;
  ole_eof = input_json["ole_eof"];
  ole_read = input_json["ole_read"];
  ole_seek = input_json["ole_seek"];
  ole_tell = input_json["ole_tell"];
  clock_t begin = clock();
  set_ole_func(io_funcs);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(io_funcs);
}