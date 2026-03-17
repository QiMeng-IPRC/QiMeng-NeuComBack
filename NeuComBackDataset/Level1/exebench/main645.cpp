#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct csvparse {char* parse_ptr; char* errmsg; int errmsg_len; scalar_t__ need_nextline; } ;

/* Variables and functions */
extern "C" { void csvparse_init(struct csvparse *ctx,char *str,char *err,int len);
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

void write_output(struct csvparse* ctx, char* str, char* err, int len) {
  json output_json;
  struct csvparse output_temp_1 = *ctx;
  json output_temp_2;

  output_temp_2["parse_ptr"] = output_temp_1.parse_ptr;

  output_temp_2["errmsg"] = output_temp_1.errmsg;

  output_temp_2["errmsg_len"] = output_temp_1.errmsg_len;

  output_temp_2["need_nextline"] = output_temp_1.need_nextline;
  output_json["ctx"] = output_temp_2;

  output_json["str"] = str;

  output_json["err"] = err;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  char* ctx_pointer__parse_ptr = strdup(input_json["ctx"]["parse_ptr"].get<std::string>().c_str());
  char* ctx_pointer__errmsg = strdup(input_json["ctx"]["errmsg"].get<std::string>().c_str());
  int ctx_pointer__errmsg_len = input_json["ctx"]["errmsg_len"];
  long int ctx_pointer__need_nextline = input_json["ctx"]["need_nextline"];
  struct csvparse ctx_pointer = {ctx_pointer__parse_ptr, ctx_pointer__errmsg, ctx_pointer__errmsg_len, ctx_pointer__need_nextline};
  struct csvparse* ctx = &ctx_pointer;
  char* str = strdup(input_json["str"].get<std::string>().c_str());
  char* err = strdup(input_json["err"].get<std::string>().c_str());
  int len = input_json["len"];
  clock_t begin = clock();
  csvparse_init(ctx, str, err, len);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(ctx, str, err, len);
}