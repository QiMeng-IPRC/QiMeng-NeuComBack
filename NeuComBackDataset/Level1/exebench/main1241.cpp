#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {unsigned long idx_read; unsigned long buf_sz; } ;
typedef  TYPE_1__ BCMLOG_Fifo_t ;

/* Variables and functions */
extern "C" { unsigned long BCMLOG_FifoRemove( BCMLOG_Fifo_t *pFifo, unsigned long rmSize );
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

void write_output(TYPE_1__* pFifo, unsigned long int rmSize, unsigned long int returnv) {
  json output_json;
  TYPE_1__ output_temp_1 = *pFifo;
  json output_temp_2;

  output_temp_2["idx_read"] = output_temp_1.idx_read;

  output_temp_2["buf_sz"] = output_temp_1.buf_sz;
  output_json["pFifo"] = output_temp_2;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  unsigned long int pFifo_pointer__idx_read = input_json["pFifo"]["idx_read"];
  unsigned long int pFifo_pointer__buf_sz = input_json["pFifo"]["buf_sz"];
  TYPE_1__ pFifo_pointer = {pFifo_pointer__idx_read, pFifo_pointer__buf_sz};
  TYPE_1__* pFifo = &pFifo_pointer;
  unsigned long int rmSize = input_json["rmSize"];
  clock_t begin = clock();
  unsigned long int returnv = BCMLOG_FifoRemove(pFifo, rmSize);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(pFifo, rmSize, returnv);
}