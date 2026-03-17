#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  SPI_CR; } ;
typedef  TYPE_1__ Spi ;

/* Variables and functions */
extern  int /*<<< orphan*/  SPI_CR_SPIDIS ; 
extern "C" { void spi_disable(Spi *p_spi);
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

void write_output(TYPE_1__* p_spi) {
  json output_json;
  TYPE_1__ output_temp_1 = *p_spi;
  json output_temp_2;

  output_temp_2["SPI_CR"] = output_temp_1.SPI_CR;
  output_json["p_spi"] = output_temp_2;

  output_json["SPI_CR_SPIDIS"] = SPI_CR_SPIDIS;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int p_spi_pointer__SPI_CR = input_json["p_spi"]["SPI_CR"];
  TYPE_1__ p_spi_pointer = {p_spi_pointer__SPI_CR};
  TYPE_1__* p_spi = &p_spi_pointer;
  SPI_CR_SPIDIS = input_json["SPI_CR_SPIDIS"];
  clock_t begin = clock();
  spi_disable(p_spi);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(p_spi);
}