#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  usb_status_enum ;
typedef  scalar_t__ usb_core_id_enum ;
struct TYPE_4__ {unsigned int core_speed; unsigned int max_packet_size; unsigned int host_channel_num; unsigned int dev_endp_num; unsigned int max_fifo_size; unsigned int phy_interface; scalar_t__ core_id; } ;
struct TYPE_5__ {TYPE_1__ cfg; } ;
typedef  TYPE_2__ usb_core_handle_struct ;

/* Variables and functions */
extern  scalar_t__ USB_FS_CORE_ID ; 
extern  int /*<<< orphan*/  USB_OK ; 
extern "C" { usb_status_enum usb_core_select (usb_core_handle_struct *pudev, usb_core_id_enum core_id);
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

void write_output(TYPE_2__* pudev, long int core_id, int returnv) {
  json output_json;
  TYPE_2__ output_temp_1 = *pudev;
  json output_temp_2;
  json output_temp_3;

  output_temp_3["core_speed"] = output_temp_1.cfg.core_speed;

  output_temp_3["max_packet_size"] = output_temp_1.cfg.max_packet_size;

  output_temp_3["host_channel_num"] = output_temp_1.cfg.host_channel_num;

  output_temp_3["dev_endp_num"] = output_temp_1.cfg.dev_endp_num;

  output_temp_3["max_fifo_size"] = output_temp_1.cfg.max_fifo_size;

  output_temp_3["phy_interface"] = output_temp_1.cfg.phy_interface;

  output_temp_3["core_id"] = output_temp_1.cfg.core_id;
  output_temp_2["cfg"] = output_temp_3;
  output_json["pudev"] = output_temp_2;

  output_json["USB_FS_CORE_ID"] = USB_FS_CORE_ID;

  output_json["USB_OK"] = USB_OK;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  unsigned int pudev_pointer__cfg__core_speed = input_json["pudev"]["cfg"]["core_speed"];
  unsigned int pudev_pointer__cfg__max_packet_size = input_json["pudev"]["cfg"]["max_packet_size"];
  unsigned int pudev_pointer__cfg__host_channel_num = input_json["pudev"]["cfg"]["host_channel_num"];
  unsigned int pudev_pointer__cfg__dev_endp_num = input_json["pudev"]["cfg"]["dev_endp_num"];
  unsigned int pudev_pointer__cfg__max_fifo_size = input_json["pudev"]["cfg"]["max_fifo_size"];
  unsigned int pudev_pointer__cfg__phy_interface = input_json["pudev"]["cfg"]["phy_interface"];
  long int pudev_pointer__cfg__core_id = input_json["pudev"]["cfg"]["core_id"];
  TYPE_1__ pudev_pointer__cfg = {pudev_pointer__cfg__core_speed, pudev_pointer__cfg__max_packet_size, pudev_pointer__cfg__host_channel_num, pudev_pointer__cfg__dev_endp_num, pudev_pointer__cfg__max_fifo_size, pudev_pointer__cfg__phy_interface, pudev_pointer__cfg__core_id};
  TYPE_2__ pudev_pointer = {pudev_pointer__cfg};
  TYPE_2__* pudev = &pudev_pointer;
  long int core_id = input_json["core_id"];
  USB_FS_CORE_ID = input_json["USB_FS_CORE_ID"];
  USB_OK = input_json["USB_OK"];
  clock_t begin = clock();
  int returnv = usb_core_select(pudev, core_id);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(pudev, core_id, returnv);
}