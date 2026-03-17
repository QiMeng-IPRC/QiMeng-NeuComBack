#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  tr_doCutoff; int /*<<< orphan*/  tr_itCount; int /*<<< orphan*/  tr_lhDEC; int /*<<< orphan*/  tr_lhAVG; int /*<<< orphan*/  tr_lhCutoff; int /*<<< orphan*/  tr_likelihood; int /*<<< orphan*/  tr_thoroughInsertion; int /*<<< orphan*/  tr_optimizeRateCategoryInvocations; } ;
struct TYPE_5__ {TYPE_1__ ckp; int /*<<< orphan*/  doCutoff; int /*<<< orphan*/  itCount; int /*<<< orphan*/  lhDEC; int /*<<< orphan*/  lhAVG; int /*<<< orphan*/  lhCutoff; int /*<<< orphan*/  likelihood; int /*<<< orphan*/  thoroughInsertion; int /*<<< orphan*/  optimizeRateCategoryInvocations; } ;
typedef  TYPE_2__ tree ;

/* Variables and functions */
extern "C" { void restoreTreeDataValuesFromCheckpoint(tree *tr);
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

void write_output(TYPE_2__* tr) {
  json output_json;
  TYPE_2__ output_temp_1 = *tr;
  json output_temp_2;
  json output_temp_3;

  output_temp_3["tr_doCutoff"] = output_temp_1.ckp.tr_doCutoff;

  output_temp_3["tr_itCount"] = output_temp_1.ckp.tr_itCount;

  output_temp_3["tr_lhDEC"] = output_temp_1.ckp.tr_lhDEC;

  output_temp_3["tr_lhAVG"] = output_temp_1.ckp.tr_lhAVG;

  output_temp_3["tr_lhCutoff"] = output_temp_1.ckp.tr_lhCutoff;

  output_temp_3["tr_likelihood"] = output_temp_1.ckp.tr_likelihood;

  output_temp_3["tr_thoroughInsertion"] = output_temp_1.ckp.tr_thoroughInsertion;

  output_temp_3["tr_optimizeRateCategoryInvocations"] = output_temp_1.ckp.tr_optimizeRateCategoryInvocations;
  output_temp_2["ckp"] = output_temp_3;

  output_temp_2["doCutoff"] = output_temp_1.doCutoff;

  output_temp_2["itCount"] = output_temp_1.itCount;

  output_temp_2["lhDEC"] = output_temp_1.lhDEC;

  output_temp_2["lhAVG"] = output_temp_1.lhAVG;

  output_temp_2["lhCutoff"] = output_temp_1.lhCutoff;

  output_temp_2["likelihood"] = output_temp_1.likelihood;

  output_temp_2["thoroughInsertion"] = output_temp_1.thoroughInsertion;

  output_temp_2["optimizeRateCategoryInvocations"] = output_temp_1.optimizeRateCategoryInvocations;
  output_json["tr"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int tr_pointer__ckp__tr_doCutoff = input_json["tr"]["ckp"]["tr_doCutoff"];
  int tr_pointer__ckp__tr_itCount = input_json["tr"]["ckp"]["tr_itCount"];
  int tr_pointer__ckp__tr_lhDEC = input_json["tr"]["ckp"]["tr_lhDEC"];
  int tr_pointer__ckp__tr_lhAVG = input_json["tr"]["ckp"]["tr_lhAVG"];
  int tr_pointer__ckp__tr_lhCutoff = input_json["tr"]["ckp"]["tr_lhCutoff"];
  int tr_pointer__ckp__tr_likelihood = input_json["tr"]["ckp"]["tr_likelihood"];
  int tr_pointer__ckp__tr_thoroughInsertion = input_json["tr"]["ckp"]["tr_thoroughInsertion"];
  int tr_pointer__ckp__tr_optimizeRateCategoryInvocations = input_json["tr"]["ckp"]["tr_optimizeRateCategoryInvocations"];
  TYPE_1__ tr_pointer__ckp = {tr_pointer__ckp__tr_doCutoff, tr_pointer__ckp__tr_itCount, tr_pointer__ckp__tr_lhDEC, tr_pointer__ckp__tr_lhAVG, tr_pointer__ckp__tr_lhCutoff, tr_pointer__ckp__tr_likelihood, tr_pointer__ckp__tr_thoroughInsertion, tr_pointer__ckp__tr_optimizeRateCategoryInvocations};
  int tr_pointer__doCutoff = input_json["tr"]["doCutoff"];
  int tr_pointer__itCount = input_json["tr"]["itCount"];
  int tr_pointer__lhDEC = input_json["tr"]["lhDEC"];
  int tr_pointer__lhAVG = input_json["tr"]["lhAVG"];
  int tr_pointer__lhCutoff = input_json["tr"]["lhCutoff"];
  int tr_pointer__likelihood = input_json["tr"]["likelihood"];
  int tr_pointer__thoroughInsertion = input_json["tr"]["thoroughInsertion"];
  int tr_pointer__optimizeRateCategoryInvocations = input_json["tr"]["optimizeRateCategoryInvocations"];
  TYPE_2__ tr_pointer = {tr_pointer__ckp, tr_pointer__doCutoff, tr_pointer__itCount, tr_pointer__lhDEC, tr_pointer__lhAVG, tr_pointer__lhCutoff, tr_pointer__likelihood, tr_pointer__thoroughInsertion, tr_pointer__optimizeRateCategoryInvocations};
  TYPE_2__* tr = &tr_pointer;
  clock_t begin = clock();
  restoreTreeDataValuesFromCheckpoint(tr);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(tr);
}