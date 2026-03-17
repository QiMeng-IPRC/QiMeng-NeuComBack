#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  status; } ;
struct ctl_scsiio {TYPE_1__ io_hdr; scalar_t__ sense_len; int /*<<< orphan*/  scsi_status; } ;

/* Variables and functions */
extern  int /*<<< orphan*/  CTL_CMD_ABORTED ; 
extern  int /*<<< orphan*/  SCSI_STATUS_TASK_ABORTED ; 
extern "C" { void ctl_set_task_aborted(struct ctl_scsiio *ctsio);
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

void write_output(struct ctl_scsiio* ctsio) {
  json output_json;
  struct ctl_scsiio output_temp_1 = *ctsio;
  json output_temp_2;
  json output_temp_3;

  output_temp_3["status"] = output_temp_1.io_hdr.status;
  output_temp_2["io_hdr"] = output_temp_3;

  output_temp_2["sense_len"] = output_temp_1.sense_len;

  output_temp_2["scsi_status"] = output_temp_1.scsi_status;
  output_json["ctsio"] = output_temp_2;

  output_json["CTL_CMD_ABORTED"] = CTL_CMD_ABORTED;

  output_json["SCSI_STATUS_TASK_ABORTED"] = SCSI_STATUS_TASK_ABORTED;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int ctsio_pointer__io_hdr__status = input_json["ctsio"]["io_hdr"]["status"];
  TYPE_1__ ctsio_pointer__io_hdr = {ctsio_pointer__io_hdr__status};
  long int ctsio_pointer__sense_len = input_json["ctsio"]["sense_len"];
  int ctsio_pointer__scsi_status = input_json["ctsio"]["scsi_status"];
  struct ctl_scsiio ctsio_pointer = {ctsio_pointer__io_hdr, ctsio_pointer__sense_len, ctsio_pointer__scsi_status};
  struct ctl_scsiio* ctsio = &ctsio_pointer;
  CTL_CMD_ABORTED = input_json["CTL_CMD_ABORTED"];
  SCSI_STATUS_TASK_ABORTED = input_json["SCSI_STATUS_TASK_ABORTED"];
  clock_t begin = clock();
  ctl_set_task_aborted(ctsio);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(ctsio);
}