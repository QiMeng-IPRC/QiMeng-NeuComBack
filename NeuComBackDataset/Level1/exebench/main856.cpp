#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  at_type; } ;
struct TYPE_4__ {TYPE_1__ ai_termid; int /*<<< orphan*/  ai_auid; } ;
struct ucred {TYPE_2__ cr_audit; } ;

/* Variables and functions */
extern  int /*<<< orphan*/  AU_DEFAUDITID ; 
extern  int /*<<< orphan*/  AU_IPv4 ; 
extern "C" { void audit_cred_proc1(struct ucred *cred);
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

void write_output(struct ucred* cred) {
  json output_json;
  struct ucred output_temp_1 = *cred;
  json output_temp_2;
  json output_temp_3;
  json output_temp_4;

  output_temp_4["at_type"] = output_temp_1.cr_audit.ai_termid.at_type;
  output_temp_3["ai_termid"] = output_temp_4;

  output_temp_3["ai_auid"] = output_temp_1.cr_audit.ai_auid;
  output_temp_2["cr_audit"] = output_temp_3;
  output_json["cred"] = output_temp_2;

  output_json["AU_DEFAUDITID"] = AU_DEFAUDITID;

  output_json["AU_IPv4"] = AU_IPv4;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int cred_pointer__cr_audit__ai_termid__at_type = input_json["cred"]["cr_audit"]["ai_termid"]["at_type"];
  TYPE_1__ cred_pointer__cr_audit__ai_termid = {cred_pointer__cr_audit__ai_termid__at_type};
  int cred_pointer__cr_audit__ai_auid = input_json["cred"]["cr_audit"]["ai_auid"];
  TYPE_2__ cred_pointer__cr_audit = {cred_pointer__cr_audit__ai_termid, cred_pointer__cr_audit__ai_auid};
  struct ucred cred_pointer = {cred_pointer__cr_audit};
  struct ucred* cred = &cred_pointer;
  AU_DEFAUDITID = input_json["AU_DEFAUDITID"];
  AU_IPv4 = input_json["AU_IPv4"];
  clock_t begin = clock();
  audit_cred_proc1(cred);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(cred);
}