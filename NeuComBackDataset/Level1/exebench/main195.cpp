#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ len; } ;
struct TYPE_11__ {scalar_t__ len; } ;
struct TYPE_10__ {scalar_t__ len; } ;
struct TYPE_9__ {char* buf; scalar_t__ len; } ;
struct TYPE_13__ {int /*<<< orphan*/  fragment; TYPE_4__ scheme; TYPE_3__ authority; TYPE_2__ query; TYPE_1__ path; TYPE_1__ path_base; } ;
typedef  TYPE_5__ SerdURI ;

/* Variables and functions */
extern "C" { void serd_uri_resolve(const SerdURI* r, const SerdURI* base, SerdURI* t);
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

void write_output(TYPE_5__* r, TYPE_5__* base, TYPE_5__* t) {
  json output_json;
  TYPE_5__ output_temp_1 = *r;
  json output_temp_2;

  output_temp_2["fragment"] = output_temp_1.fragment;
  json output_temp_3;

  output_temp_3["len"] = output_temp_1.scheme.len;
  output_temp_2["scheme"] = output_temp_3;
  json output_temp_4;

  output_temp_4["len"] = output_temp_1.authority.len;
  output_temp_2["authority"] = output_temp_4;
  json output_temp_5;

  output_temp_5["len"] = output_temp_1.query.len;
  output_temp_2["query"] = output_temp_5;
  json output_temp_6;

  output_temp_6["buf"] = output_temp_1.path.buf;

  output_temp_6["len"] = output_temp_1.path.len;
  output_temp_2["path"] = output_temp_6;
  json output_temp_7;

  output_temp_7["buf"] = output_temp_1.path_base.buf;

  output_temp_7["len"] = output_temp_1.path_base.len;
  output_temp_2["path_base"] = output_temp_7;
  output_json["r"] = output_temp_2;
  TYPE_5__ output_temp_8 = *base;
  json output_temp_9;

  output_temp_9["fragment"] = output_temp_8.fragment;
  json output_temp_10;

  output_temp_10["len"] = output_temp_8.scheme.len;
  output_temp_9["scheme"] = output_temp_10;
  json output_temp_11;

  output_temp_11["len"] = output_temp_8.authority.len;
  output_temp_9["authority"] = output_temp_11;
  json output_temp_12;

  output_temp_12["len"] = output_temp_8.query.len;
  output_temp_9["query"] = output_temp_12;
  json output_temp_13;

  output_temp_13["buf"] = output_temp_8.path.buf;

  output_temp_13["len"] = output_temp_8.path.len;
  output_temp_9["path"] = output_temp_13;
  json output_temp_14;

  output_temp_14["buf"] = output_temp_8.path_base.buf;

  output_temp_14["len"] = output_temp_8.path_base.len;
  output_temp_9["path_base"] = output_temp_14;
  output_json["base"] = output_temp_9;
  TYPE_5__ output_temp_15 = *t;
  json output_temp_16;

  output_temp_16["fragment"] = output_temp_15.fragment;
  json output_temp_17;

  output_temp_17["len"] = output_temp_15.scheme.len;
  output_temp_16["scheme"] = output_temp_17;
  json output_temp_18;

  output_temp_18["len"] = output_temp_15.authority.len;
  output_temp_16["authority"] = output_temp_18;
  json output_temp_19;

  output_temp_19["len"] = output_temp_15.query.len;
  output_temp_16["query"] = output_temp_19;
  json output_temp_20;

  output_temp_20["buf"] = output_temp_15.path.buf;

  output_temp_20["len"] = output_temp_15.path.len;
  output_temp_16["path"] = output_temp_20;
  json output_temp_21;

  output_temp_21["buf"] = output_temp_15.path_base.buf;

  output_temp_21["len"] = output_temp_15.path_base.len;
  output_temp_16["path_base"] = output_temp_21;
  output_json["t"] = output_temp_16;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int r_pointer__fragment = input_json["r"]["fragment"];
  long int r_pointer__scheme__len = input_json["r"]["scheme"]["len"];
  TYPE_4__ r_pointer__scheme = {r_pointer__scheme__len};
  long int r_pointer__authority__len = input_json["r"]["authority"]["len"];
  TYPE_3__ r_pointer__authority = {r_pointer__authority__len};
  long int r_pointer__query__len = input_json["r"]["query"]["len"];
  TYPE_2__ r_pointer__query = {r_pointer__query__len};
  char* r_pointer__path__buf = strdup(input_json["r"]["path"]["buf"].get<std::string>().c_str());
  long int r_pointer__path__len = input_json["r"]["path"]["len"];
  TYPE_1__ r_pointer__path = {r_pointer__path__buf, r_pointer__path__len};
  char* r_pointer__path_base__buf = strdup(input_json["r"]["path_base"]["buf"].get<std::string>().c_str());
  long int r_pointer__path_base__len = input_json["r"]["path_base"]["len"];
  TYPE_1__ r_pointer__path_base = {r_pointer__path_base__buf, r_pointer__path_base__len};
  TYPE_5__ r_pointer = {r_pointer__fragment, r_pointer__scheme, r_pointer__authority, r_pointer__query, r_pointer__path, r_pointer__path_base};
  TYPE_5__* r = &r_pointer;
  int base_pointer__fragment = input_json["base"]["fragment"];
  long int base_pointer__scheme__len = input_json["base"]["scheme"]["len"];
  TYPE_4__ base_pointer__scheme = {base_pointer__scheme__len};
  long int base_pointer__authority__len = input_json["base"]["authority"]["len"];
  TYPE_3__ base_pointer__authority = {base_pointer__authority__len};
  long int base_pointer__query__len = input_json["base"]["query"]["len"];
  TYPE_2__ base_pointer__query = {base_pointer__query__len};
  char* base_pointer__path__buf = strdup(input_json["base"]["path"]["buf"].get<std::string>().c_str());
  long int base_pointer__path__len = input_json["base"]["path"]["len"];
  TYPE_1__ base_pointer__path = {base_pointer__path__buf, base_pointer__path__len};
  char* base_pointer__path_base__buf = strdup(input_json["base"]["path_base"]["buf"].get<std::string>().c_str());
  long int base_pointer__path_base__len = input_json["base"]["path_base"]["len"];
  TYPE_1__ base_pointer__path_base = {base_pointer__path_base__buf, base_pointer__path_base__len};
  TYPE_5__ base_pointer = {base_pointer__fragment, base_pointer__scheme, base_pointer__authority, base_pointer__query, base_pointer__path, base_pointer__path_base};
  TYPE_5__* base = &base_pointer;
  int t_pointer__fragment = input_json["t"]["fragment"];
  long int t_pointer__scheme__len = input_json["t"]["scheme"]["len"];
  TYPE_4__ t_pointer__scheme = {t_pointer__scheme__len};
  long int t_pointer__authority__len = input_json["t"]["authority"]["len"];
  TYPE_3__ t_pointer__authority = {t_pointer__authority__len};
  long int t_pointer__query__len = input_json["t"]["query"]["len"];
  TYPE_2__ t_pointer__query = {t_pointer__query__len};
  char* t_pointer__path__buf = strdup(input_json["t"]["path"]["buf"].get<std::string>().c_str());
  long int t_pointer__path__len = input_json["t"]["path"]["len"];
  TYPE_1__ t_pointer__path = {t_pointer__path__buf, t_pointer__path__len};
  char* t_pointer__path_base__buf = strdup(input_json["t"]["path_base"]["buf"].get<std::string>().c_str());
  long int t_pointer__path_base__len = input_json["t"]["path_base"]["len"];
  TYPE_1__ t_pointer__path_base = {t_pointer__path_base__buf, t_pointer__path_base__len};
  TYPE_5__ t_pointer = {t_pointer__fragment, t_pointer__scheme, t_pointer__authority, t_pointer__query, t_pointer__path, t_pointer__path_base};
  TYPE_5__* t = &t_pointer;
  clock_t begin = clock();
  serd_uri_resolve(r, base, t);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(r, base, t);
}