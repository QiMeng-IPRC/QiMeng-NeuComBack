#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct irq_desc {int /*<<< orphan*/  status; } ;

/* Variables and functions */
extern  int /*<<< orphan*/  IRQ_PENDING ; 
extern "C" { void irq_compat_set_pending(struct irq_desc *desc);
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

void write_output(struct irq_desc* desc) {
  json output_json;
  struct irq_desc output_temp_1 = *desc;
  json output_temp_2;

  output_temp_2["status"] = output_temp_1.status;
  output_json["desc"] = output_temp_2;

  output_json["IRQ_PENDING"] = IRQ_PENDING;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int desc_pointer__status = input_json["desc"]["status"];
  struct irq_desc desc_pointer = {desc_pointer__status};
  struct irq_desc* desc = &desc_pointer;
  IRQ_PENDING = input_json["IRQ_PENDING"];
  clock_t begin = clock();
  irq_compat_set_pending(desc);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(desc);
}