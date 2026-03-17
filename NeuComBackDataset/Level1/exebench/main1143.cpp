#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u32 ;
struct net_device {int /*<<< orphan*/  features; } ;

/* Variables and functions */
extern  int /*<<< orphan*/  NETIF_F_HW_CSUM ; 
extern "C" { int ethtool_op_set_tx_hw_csum(struct net_device *dev, u32 data);
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

void write_output(struct net_device* dev, long int data, int returnv) {
  json output_json;
  struct net_device output_temp_1 = *dev;
  json output_temp_2;

  output_temp_2["features"] = output_temp_1.features;
  output_json["dev"] = output_temp_2;

  output_json["NETIF_F_HW_CSUM"] = NETIF_F_HW_CSUM;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int dev_pointer__features = input_json["dev"]["features"];
  struct net_device dev_pointer = {dev_pointer__features};
  struct net_device* dev = &dev_pointer;
  long int data = input_json["data"];
  NETIF_F_HW_CSUM = input_json["NETIF_F_HW_CSUM"];
  clock_t begin = clock();
  int returnv = ethtool_op_set_tx_hw_csum(dev, data);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(dev, data, returnv);
}