#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ x; } ;
struct taia {unsigned long nano; unsigned long atto; TYPE_1__ sec; } ;

/* Variables and functions */
extern "C" { void taia_sub(struct taia *t,struct taia *u,struct taia *v);
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

void write_output(struct taia* t, struct taia* u, struct taia* v) {
  json output_json;
  struct taia output_temp_1 = *t;
  json output_temp_2;

  output_temp_2["nano"] = output_temp_1.nano;

  output_temp_2["atto"] = output_temp_1.atto;
  json output_temp_3;

  output_temp_3["x"] = output_temp_1.sec.x;
  output_temp_2["sec"] = output_temp_3;
  output_json["t"] = output_temp_2;
  struct taia output_temp_4 = *u;
  json output_temp_5;

  output_temp_5["nano"] = output_temp_4.nano;

  output_temp_5["atto"] = output_temp_4.atto;
  json output_temp_6;

  output_temp_6["x"] = output_temp_4.sec.x;
  output_temp_5["sec"] = output_temp_6;
  output_json["u"] = output_temp_5;
  struct taia output_temp_7 = *v;
  json output_temp_8;

  output_temp_8["nano"] = output_temp_7.nano;

  output_temp_8["atto"] = output_temp_7.atto;
  json output_temp_9;

  output_temp_9["x"] = output_temp_7.sec.x;
  output_temp_8["sec"] = output_temp_9;
  output_json["v"] = output_temp_8;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  unsigned long int t_pointer__nano = input_json["t"]["nano"];
  unsigned long int t_pointer__atto = input_json["t"]["atto"];
  long int t_pointer__sec__x = input_json["t"]["sec"]["x"];
  TYPE_1__ t_pointer__sec = {t_pointer__sec__x};
  struct taia t_pointer = {t_pointer__nano, t_pointer__atto, t_pointer__sec};
  struct taia* t = &t_pointer;
  unsigned long int u_pointer__nano = input_json["u"]["nano"];
  unsigned long int u_pointer__atto = input_json["u"]["atto"];
  long int u_pointer__sec__x = input_json["u"]["sec"]["x"];
  TYPE_1__ u_pointer__sec = {u_pointer__sec__x};
  struct taia u_pointer = {u_pointer__nano, u_pointer__atto, u_pointer__sec};
  struct taia* u = &u_pointer;
  unsigned long int v_pointer__nano = input_json["v"]["nano"];
  unsigned long int v_pointer__atto = input_json["v"]["atto"];
  long int v_pointer__sec__x = input_json["v"]["sec"]["x"];
  TYPE_1__ v_pointer__sec = {v_pointer__sec__x};
  struct taia v_pointer = {v_pointer__nano, v_pointer__atto, v_pointer__sec};
  struct taia* v = &v_pointer;
  clock_t begin = clock();
  taia_sub(t, u, v);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(t, u, v);
}