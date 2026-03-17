#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  USBD_StatusTypeDef ;
struct TYPE_3__ {int /*<<< orphan*/  dev_old_state; int /*<<< orphan*/  dev_state; } ;
typedef  TYPE_1__ USBD_HandleTypeDef ;

/* Variables and functions */
extern  int /*<<< orphan*/  USBD_OK ; 
extern "C" { USBD_StatusTypeDef USBD_LL_Resume(USBD_HandleTypeDef *pdev);
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

void write_output(TYPE_1__* pdev, int returnv) {
  json output_json;
  TYPE_1__ output_temp_1 = *pdev;
  json output_temp_2;

  output_temp_2["dev_old_state"] = output_temp_1.dev_old_state;

  output_temp_2["dev_state"] = output_temp_1.dev_state;
  output_json["pdev"] = output_temp_2;

  output_json["USBD_OK"] = USBD_OK;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int pdev_pointer__dev_old_state = input_json["pdev"]["dev_old_state"];
  int pdev_pointer__dev_state = input_json["pdev"]["dev_state"];
  TYPE_1__ pdev_pointer = {pdev_pointer__dev_old_state, pdev_pointer__dev_state};
  TYPE_1__* pdev = &pdev_pointer;
  USBD_OK = input_json["USBD_OK"];
  clock_t begin = clock();
  int returnv = USBD_LL_Resume(pdev);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(pdev, returnv);
}