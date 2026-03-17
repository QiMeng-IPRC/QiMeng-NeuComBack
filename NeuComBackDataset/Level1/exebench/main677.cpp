#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int process_cc_data_flag; scalar_t__ cc_count; scalar_t__ additional_data_flag; scalar_t__ process_em_data_flag; } ;
struct TYPE_6__ {char user_identifier; int atsc1_data_user_data_type_code; TYPE_1__ user_data; scalar_t__ directv_user_data_length; int /*<<< orphan*/  provider; int /*<<< orphan*/  country; } ;
typedef  TYPE_2__ cea708_t ;

/* Variables and functions */
extern  int /*<<< orphan*/  country_united_states ; 
extern  int /*<<< orphan*/  memset (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
extern  int /*<<< orphan*/  t35_provider_atsc ; 
extern "C" { int cea708_init (cea708_t* cea708);
 }int memset__bench (TYPE_2__ * b, int d, int e) {
	int returnv;
	int temp_variable = 45;
	returnv = temp_variable;
	return returnv;
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

void write_output(TYPE_2__* cea708, int returnv) {
  json output_json;
  TYPE_2__ output_temp_1 = *cea708;
  json output_temp_2;

  output_temp_2["user_identifier"] = output_temp_1.user_identifier;

  output_temp_2["atsc1_data_user_data_type_code"] = output_temp_1.atsc1_data_user_data_type_code;
  json output_temp_3;

  output_temp_3["process_cc_data_flag"] = output_temp_1.user_data.process_cc_data_flag;

  output_temp_3["cc_count"] = output_temp_1.user_data.cc_count;

  output_temp_3["additional_data_flag"] = output_temp_1.user_data.additional_data_flag;

  output_temp_3["process_em_data_flag"] = output_temp_1.user_data.process_em_data_flag;
  output_temp_2["user_data"] = output_temp_3;

  output_temp_2["directv_user_data_length"] = output_temp_1.directv_user_data_length;

  output_temp_2["provider"] = output_temp_1.provider;

  output_temp_2["country"] = output_temp_1.country;
  output_json["cea708"] = output_temp_2;

  output_json["country_united_states"] = country_united_states;

  output_json["t35_provider_atsc"] = t35_provider_atsc;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  char cea708_pointer__user_identifier = input_json["cea708"]["user_identifier"].get<char>();
  int cea708_pointer__atsc1_data_user_data_type_code = input_json["cea708"]["atsc1_data_user_data_type_code"];
  int cea708_pointer__user_data__process_cc_data_flag = input_json["cea708"]["user_data"]["process_cc_data_flag"];
  long int cea708_pointer__user_data__cc_count = input_json["cea708"]["user_data"]["cc_count"];
  long int cea708_pointer__user_data__additional_data_flag = input_json["cea708"]["user_data"]["additional_data_flag"];
  long int cea708_pointer__user_data__process_em_data_flag = input_json["cea708"]["user_data"]["process_em_data_flag"];
  TYPE_1__ cea708_pointer__user_data = {cea708_pointer__user_data__process_cc_data_flag, cea708_pointer__user_data__cc_count, cea708_pointer__user_data__additional_data_flag, cea708_pointer__user_data__process_em_data_flag};
  long int cea708_pointer__directv_user_data_length = input_json["cea708"]["directv_user_data_length"];
  int cea708_pointer__provider = input_json["cea708"]["provider"];
  int cea708_pointer__country = input_json["cea708"]["country"];
  TYPE_2__ cea708_pointer = {cea708_pointer__user_identifier, cea708_pointer__atsc1_data_user_data_type_code, cea708_pointer__user_data, cea708_pointer__directv_user_data_length, cea708_pointer__provider, cea708_pointer__country};
  TYPE_2__* cea708 = &cea708_pointer;
  country_united_states = input_json["country_united_states"];
  t35_provider_atsc = input_json["t35_provider_atsc"];
  clock_t begin = clock();
  int returnv = cea708_init(cea708);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(cea708, returnv);
}