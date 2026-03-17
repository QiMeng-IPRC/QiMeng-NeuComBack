#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  sigev_signo; int /*<<< orphan*/  sigev_notify; } ;
struct TYPE_4__ {char* aio_buf; int aio_nbytes; TYPE_1__ aio_sigevent; scalar_t__ aio_offset; scalar_t__ aio_fildes; } ;

/* Variables and functions */
extern  int /*<<< orphan*/  SIGEV_SIGNAL ; 
extern  int /*<<< orphan*/  SIGIO ; 
extern  TYPE_2__ kbcbuf ; 
extern "C" { void setup_aio_buffer(void);
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

void write_output() {
  json output_json;

  output_json["SIGEV_SIGNAL"] = SIGEV_SIGNAL;

  output_json["SIGIO"] = SIGIO;
  json output_temp_1;

  output_temp_1["aio_buf"] = kbcbuf.aio_buf;

  output_temp_1["aio_nbytes"] = kbcbuf.aio_nbytes;
  json output_temp_2;

  output_temp_2["sigev_signo"] = kbcbuf.aio_sigevent.sigev_signo;

  output_temp_2["sigev_notify"] = kbcbuf.aio_sigevent.sigev_notify;
  output_temp_1["aio_sigevent"] = output_temp_2;

  output_temp_1["aio_offset"] = kbcbuf.aio_offset;

  output_temp_1["aio_fildes"] = kbcbuf.aio_fildes;
  output_json["kbcbuf"] = output_temp_1;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  SIGEV_SIGNAL = input_json["SIGEV_SIGNAL"];
  SIGIO = input_json["SIGIO"];
  char* kbcbuf__aio_buf = strdup(input_json["kbcbuf"]["aio_buf"].get<std::string>().c_str());
  int kbcbuf__aio_nbytes = input_json["kbcbuf"]["aio_nbytes"];
  int kbcbuf__aio_sigevent__sigev_signo = input_json["kbcbuf"]["aio_sigevent"]["sigev_signo"];
  int kbcbuf__aio_sigevent__sigev_notify = input_json["kbcbuf"]["aio_sigevent"]["sigev_notify"];
  TYPE_1__ kbcbuf__aio_sigevent = {kbcbuf__aio_sigevent__sigev_signo, kbcbuf__aio_sigevent__sigev_notify};
  long int kbcbuf__aio_offset = input_json["kbcbuf"]["aio_offset"];
  long int kbcbuf__aio_fildes = input_json["kbcbuf"]["aio_fildes"];
  kbcbuf = {kbcbuf__aio_buf, kbcbuf__aio_nbytes, kbcbuf__aio_sigevent, kbcbuf__aio_offset, kbcbuf__aio_fildes};
  clock_t begin = clock();
  setup_aio_buffer();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}