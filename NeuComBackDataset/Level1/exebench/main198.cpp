#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  specifics; int /*<<< orphan*/  elements_count; int /*<<< orphan*/  elements; scalar_t__ per_constraints; int /*<<< orphan*/  uper_encoder; int /*<<< orphan*/  uper_decoder; int /*<<< orphan*/  xer_encoder; int /*<<< orphan*/  xer_decoder; int /*<<< orphan*/  der_encoder; int /*<<< orphan*/  ber_decoder; int /*<<< orphan*/  print_struct; int /*<<< orphan*/  free_struct; } ;
typedef  TYPE_1__ asn_TYPE_descriptor_t ;
struct TYPE_5__ {int /*<<< orphan*/  specifics; int /*<<< orphan*/  elements_count; int /*<<< orphan*/  elements; scalar_t__ per_constraints; int /*<<< orphan*/  uper_encoder; int /*<<< orphan*/  uper_decoder; int /*<<< orphan*/  xer_encoder; int /*<<< orphan*/  xer_decoder; int /*<<< orphan*/  der_encoder; int /*<<< orphan*/  ber_decoder; int /*<<< orphan*/  print_struct; int /*<<< orphan*/  free_struct; } ;

/* Variables and functions */
extern  TYPE_2__ asn_DEF_OTD_MeasurementWithID ; 
extern "C" { void OTD_FirstSetMsrs_1_inherit_TYPE_descriptor( asn_TYPE_descriptor_t *td);
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

void write_output(TYPE_1__* td) {
  json output_json;
  TYPE_1__ output_temp_1 = *td;
  json output_temp_2;

  output_temp_2["specifics"] = output_temp_1.specifics;

  output_temp_2["elements_count"] = output_temp_1.elements_count;

  output_temp_2["elements"] = output_temp_1.elements;

  output_temp_2["per_constraints"] = output_temp_1.per_constraints;

  output_temp_2["uper_encoder"] = output_temp_1.uper_encoder;

  output_temp_2["uper_decoder"] = output_temp_1.uper_decoder;

  output_temp_2["xer_encoder"] = output_temp_1.xer_encoder;

  output_temp_2["xer_decoder"] = output_temp_1.xer_decoder;

  output_temp_2["der_encoder"] = output_temp_1.der_encoder;

  output_temp_2["ber_decoder"] = output_temp_1.ber_decoder;

  output_temp_2["print_struct"] = output_temp_1.print_struct;

  output_temp_2["free_struct"] = output_temp_1.free_struct;
  output_json["td"] = output_temp_2;
  json output_temp_3;

  output_temp_3["specifics"] = asn_DEF_OTD_MeasurementWithID.specifics;

  output_temp_3["elements_count"] = asn_DEF_OTD_MeasurementWithID.elements_count;

  output_temp_3["elements"] = asn_DEF_OTD_MeasurementWithID.elements;

  output_temp_3["per_constraints"] = asn_DEF_OTD_MeasurementWithID.per_constraints;

  output_temp_3["uper_encoder"] = asn_DEF_OTD_MeasurementWithID.uper_encoder;

  output_temp_3["uper_decoder"] = asn_DEF_OTD_MeasurementWithID.uper_decoder;

  output_temp_3["xer_encoder"] = asn_DEF_OTD_MeasurementWithID.xer_encoder;

  output_temp_3["xer_decoder"] = asn_DEF_OTD_MeasurementWithID.xer_decoder;

  output_temp_3["der_encoder"] = asn_DEF_OTD_MeasurementWithID.der_encoder;

  output_temp_3["ber_decoder"] = asn_DEF_OTD_MeasurementWithID.ber_decoder;

  output_temp_3["print_struct"] = asn_DEF_OTD_MeasurementWithID.print_struct;

  output_temp_3["free_struct"] = asn_DEF_OTD_MeasurementWithID.free_struct;
  output_json["asn_DEF_OTD_MeasurementWithID"] = output_temp_3;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int td_pointer__specifics = input_json["td"]["specifics"];
  int td_pointer__elements_count = input_json["td"]["elements_count"];
  int td_pointer__elements = input_json["td"]["elements"];
  long int td_pointer__per_constraints = input_json["td"]["per_constraints"];
  int td_pointer__uper_encoder = input_json["td"]["uper_encoder"];
  int td_pointer__uper_decoder = input_json["td"]["uper_decoder"];
  int td_pointer__xer_encoder = input_json["td"]["xer_encoder"];
  int td_pointer__xer_decoder = input_json["td"]["xer_decoder"];
  int td_pointer__der_encoder = input_json["td"]["der_encoder"];
  int td_pointer__ber_decoder = input_json["td"]["ber_decoder"];
  int td_pointer__print_struct = input_json["td"]["print_struct"];
  int td_pointer__free_struct = input_json["td"]["free_struct"];
  TYPE_1__ td_pointer = {td_pointer__specifics, td_pointer__elements_count, td_pointer__elements, td_pointer__per_constraints, td_pointer__uper_encoder, td_pointer__uper_decoder, td_pointer__xer_encoder, td_pointer__xer_decoder, td_pointer__der_encoder, td_pointer__ber_decoder, td_pointer__print_struct, td_pointer__free_struct};
  TYPE_1__* td = &td_pointer;
  int asn_DEF_OTD_MeasurementWithID__specifics = input_json["asn_DEF_OTD_MeasurementWithID"]["specifics"];
  int asn_DEF_OTD_MeasurementWithID__elements_count = input_json["asn_DEF_OTD_MeasurementWithID"]["elements_count"];
  int asn_DEF_OTD_MeasurementWithID__elements = input_json["asn_DEF_OTD_MeasurementWithID"]["elements"];
  long int asn_DEF_OTD_MeasurementWithID__per_constraints = input_json["asn_DEF_OTD_MeasurementWithID"]["per_constraints"];
  int asn_DEF_OTD_MeasurementWithID__uper_encoder = input_json["asn_DEF_OTD_MeasurementWithID"]["uper_encoder"];
  int asn_DEF_OTD_MeasurementWithID__uper_decoder = input_json["asn_DEF_OTD_MeasurementWithID"]["uper_decoder"];
  int asn_DEF_OTD_MeasurementWithID__xer_encoder = input_json["asn_DEF_OTD_MeasurementWithID"]["xer_encoder"];
  int asn_DEF_OTD_MeasurementWithID__xer_decoder = input_json["asn_DEF_OTD_MeasurementWithID"]["xer_decoder"];
  int asn_DEF_OTD_MeasurementWithID__der_encoder = input_json["asn_DEF_OTD_MeasurementWithID"]["der_encoder"];
  int asn_DEF_OTD_MeasurementWithID__ber_decoder = input_json["asn_DEF_OTD_MeasurementWithID"]["ber_decoder"];
  int asn_DEF_OTD_MeasurementWithID__print_struct = input_json["asn_DEF_OTD_MeasurementWithID"]["print_struct"];
  int asn_DEF_OTD_MeasurementWithID__free_struct = input_json["asn_DEF_OTD_MeasurementWithID"]["free_struct"];
  asn_DEF_OTD_MeasurementWithID = {asn_DEF_OTD_MeasurementWithID__specifics, asn_DEF_OTD_MeasurementWithID__elements_count, asn_DEF_OTD_MeasurementWithID__elements, asn_DEF_OTD_MeasurementWithID__per_constraints, asn_DEF_OTD_MeasurementWithID__uper_encoder, asn_DEF_OTD_MeasurementWithID__uper_decoder, asn_DEF_OTD_MeasurementWithID__xer_encoder, asn_DEF_OTD_MeasurementWithID__xer_decoder, asn_DEF_OTD_MeasurementWithID__der_encoder, asn_DEF_OTD_MeasurementWithID__ber_decoder, asn_DEF_OTD_MeasurementWithID__print_struct, asn_DEF_OTD_MeasurementWithID__free_struct};
  clock_t begin = clock();
  OTD_FirstSetMsrs_1_inherit_TYPE_descriptor(td);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(td);
}