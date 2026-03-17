#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int ADDRCTRL; } ;
typedef  TYPE_1__ DMA_CH_t ;
typedef  int DMA_CH_SRCRELOAD_t ;
typedef  int DMA_CH_SRCDIR_t ;
typedef  int DMA_CH_DESTRELOAD_t ;
typedef  int DMA_CH_DESTDIR_t ;

/* Variables and functions */
extern "C" { void dma_address_ctrl(volatile DMA_CH_t *dma_ch, DMA_CH_SRCRELOAD_t s_reload, DMA_CH_SRCDIR_t s_addrm, DMA_CH_DESTRELOAD_t d_reload, DMA_CH_DESTDIR_t d_addrm);
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

void write_output(TYPE_1__* dma_ch, int s_reload, int s_addrm, int d_reload, int d_addrm) {
  json output_json;
  TYPE_1__ output_temp_1 = *dma_ch;
  json output_temp_2;

  output_temp_2["ADDRCTRL"] = output_temp_1.ADDRCTRL;
  output_json["dma_ch"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int dma_ch_pointer__ADDRCTRL = input_json["dma_ch"]["ADDRCTRL"];
  TYPE_1__ dma_ch_pointer = {dma_ch_pointer__ADDRCTRL};
  TYPE_1__* dma_ch = &dma_ch_pointer;
  int s_reload = input_json["s_reload"];
  int s_addrm = input_json["s_addrm"];
  int d_reload = input_json["d_reload"];
  int d_addrm = input_json["d_addrm"];
  clock_t begin = clock();
  dma_address_ctrl(dma_ch, s_reload, s_addrm, d_reload, d_addrm);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(dma_ch, s_reload, s_addrm, d_reload, d_addrm);
}