#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct fio_file {int flags; } ;
typedef  enum fio_file_flags { ____Placeholder_fio_file_flags } fio_file_flags ;

/* Variables and functions */
extern  int FIO_FILE_open ; 
extern "C" { void fio_file_set_open(struct fio_file *f);
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

void write_output(struct fio_file* f) {
  json output_json;
  std::vector<json> output_temp_2;
  for (unsigned int i3 = 0; i3 < 32; i3++) {
    struct fio_file output_temp_4 = f[i3];
    json output_temp_5;

    output_temp_5["flags"] = output_temp_4.flags;
    output_temp_2.push_back(output_temp_5);
  }
  output_json["f"] = output_temp_2;

  output_json["FIO_FILE_open"] = FIO_FILE_open;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  std::vector<struct fio_file> input_temp_1_vec;
  for (auto& elem : input_json["f"]) {
    int input_temp_1_inner__flags = elem["flags"];
    struct fio_file input_temp_1_inner = {input_temp_1_inner__flags};
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  struct fio_file* f = &input_temp_1_vec[0];
  FIO_FILE_open = input_json["FIO_FILE_open"];
  clock_t begin = clock();
  fio_file_set_open(f);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(f);
}