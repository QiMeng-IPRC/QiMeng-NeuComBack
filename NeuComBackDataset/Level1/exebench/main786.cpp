#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  int4 ;

/* Variables and functions */
extern  int /*<<< orphan*/  op_fetchintrrpt ; 
extern  int /*<<< orphan*/  op_forintrrpt ; 
extern  int /*<<< orphan*/  op_startintrrpt ; 
extern  scalar_t__ outofband ; 
extern  scalar_t__ tptimeout ; 
extern  size_t xf_forchk1 ; 
extern  size_t xf_forloop ; 
extern  size_t xf_linefetch ; 
extern  size_t xf_linestart ; 
extern  size_t xf_zbfetch ; 
extern  size_t xf_zbstart ; 
extern  int /*<<< orphan*/ * xfer_table ; 
extern "C" { void tptimeout_set(int4 dummy_param);
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

void write_output(int dummy_param) {
  json output_json;

  output_json["op_fetchintrrpt"] = op_fetchintrrpt;

  output_json["op_forintrrpt"] = op_forintrrpt;

  output_json["op_startintrrpt"] = op_startintrrpt;

  output_json["outofband"] = outofband;

  output_json["tptimeout"] = tptimeout;

  output_json["xf_forchk1"] = xf_forchk1;

  output_json["xf_forloop"] = xf_forloop;

  output_json["xf_linefetch"] = xf_linefetch;

  output_json["xf_linestart"] = xf_linestart;

  output_json["xf_zbfetch"] = xf_zbfetch;

  output_json["xf_zbstart"] = xf_zbstart;
  std::vector<json> output_temp_2;
  for (unsigned int i3 = 0; i3 < 32; i3++) {
    int output_temp_4 = xfer_table[i3];

    output_temp_2.push_back(output_temp_4);
  }
  output_json["xfer_table"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int dummy_param = input_json["dummy_param"];
  op_fetchintrrpt = input_json["op_fetchintrrpt"];
  op_forintrrpt = input_json["op_forintrrpt"];
  op_startintrrpt = input_json["op_startintrrpt"];
  outofband = input_json["outofband"];
  tptimeout = input_json["tptimeout"];
  xf_forchk1 = input_json["xf_forchk1"];
  xf_forloop = input_json["xf_forloop"];
  xf_linefetch = input_json["xf_linefetch"];
  xf_linestart = input_json["xf_linestart"];
  xf_zbfetch = input_json["xf_zbfetch"];
  xf_zbstart = input_json["xf_zbstart"];
  std::vector<int> input_temp_1_vec;
  for (auto& elem : input_json["xfer_table"]) {
    int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  xfer_table = &input_temp_1_vec[0];
  clock_t begin = clock();
  tptimeout_set(dummy_param);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(dummy_param);
}