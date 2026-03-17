#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* name; int /*<<< orphan*/  handle_waitpid; int /*<<< orphan*/  handle_trigger; int /*<<< orphan*/  handle_subrequest; int /*<<< orphan*/  handle_subrequest_start; int /*<<< orphan*/  handle_uri_clean; int /*<<< orphan*/  handle_request_reset; int /*<<< orphan*/  set_defaults; int /*<<< orphan*/  cleanup; int /*<<< orphan*/  init; int /*<<< orphan*/  version; } ;
typedef  TYPE_1__ plugin ;

/* Variables and functions */
extern  int /*<<< orphan*/  LIGHTTPD_VERSION_ID ; 
extern  int /*<<< orphan*/  gw_free ; 
extern  int /*<<< orphan*/  gw_handle_request_reset ; 
extern  int /*<<< orphan*/  gw_handle_subrequest ; 
extern  int /*<<< orphan*/  gw_handle_trigger ; 
extern  int /*<<< orphan*/  gw_handle_waitpid_cb ; 
extern  int /*<<< orphan*/  gw_init ; 
extern  int /*<<< orphan*/  mod_scgi_set_defaults ; 
extern  int /*<<< orphan*/  scgi_check_extension_1 ; 
extern  int /*<<< orphan*/  scgi_check_extension_2 ; 
extern "C" { int mod_scgi_plugin_init(plugin *p);
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

void write_output(TYPE_1__* p, int returnv) {
  json output_json;
  TYPE_1__ output_temp_1 = *p;
  json output_temp_2;

  output_temp_2["name"] = output_temp_1.name;

  output_temp_2["handle_waitpid"] = output_temp_1.handle_waitpid;

  output_temp_2["handle_trigger"] = output_temp_1.handle_trigger;

  output_temp_2["handle_subrequest"] = output_temp_1.handle_subrequest;

  output_temp_2["handle_subrequest_start"] = output_temp_1.handle_subrequest_start;

  output_temp_2["handle_uri_clean"] = output_temp_1.handle_uri_clean;

  output_temp_2["handle_request_reset"] = output_temp_1.handle_request_reset;

  output_temp_2["set_defaults"] = output_temp_1.set_defaults;

  output_temp_2["cleanup"] = output_temp_1.cleanup;

  output_temp_2["init"] = output_temp_1.init;

  output_temp_2["version"] = output_temp_1.version;
  output_json["p"] = output_temp_2;

  output_json["LIGHTTPD_VERSION_ID"] = LIGHTTPD_VERSION_ID;

  output_json["gw_free"] = gw_free;

  output_json["gw_handle_request_reset"] = gw_handle_request_reset;

  output_json["gw_handle_subrequest"] = gw_handle_subrequest;

  output_json["gw_handle_trigger"] = gw_handle_trigger;

  output_json["gw_handle_waitpid_cb"] = gw_handle_waitpid_cb;

  output_json["gw_init"] = gw_init;

  output_json["mod_scgi_set_defaults"] = mod_scgi_set_defaults;

  output_json["scgi_check_extension_1"] = scgi_check_extension_1;

  output_json["scgi_check_extension_2"] = scgi_check_extension_2;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  char* p_pointer__name = strdup(input_json["p"]["name"].get<std::string>().c_str());
  int p_pointer__handle_waitpid = input_json["p"]["handle_waitpid"];
  int p_pointer__handle_trigger = input_json["p"]["handle_trigger"];
  int p_pointer__handle_subrequest = input_json["p"]["handle_subrequest"];
  int p_pointer__handle_subrequest_start = input_json["p"]["handle_subrequest_start"];
  int p_pointer__handle_uri_clean = input_json["p"]["handle_uri_clean"];
  int p_pointer__handle_request_reset = input_json["p"]["handle_request_reset"];
  int p_pointer__set_defaults = input_json["p"]["set_defaults"];
  int p_pointer__cleanup = input_json["p"]["cleanup"];
  int p_pointer__init = input_json["p"]["init"];
  int p_pointer__version = input_json["p"]["version"];
  TYPE_1__ p_pointer = {p_pointer__name, p_pointer__handle_waitpid, p_pointer__handle_trigger, p_pointer__handle_subrequest, p_pointer__handle_subrequest_start, p_pointer__handle_uri_clean, p_pointer__handle_request_reset, p_pointer__set_defaults, p_pointer__cleanup, p_pointer__init, p_pointer__version};
  TYPE_1__* p = &p_pointer;
  LIGHTTPD_VERSION_ID = input_json["LIGHTTPD_VERSION_ID"];
  gw_free = input_json["gw_free"];
  gw_handle_request_reset = input_json["gw_handle_request_reset"];
  gw_handle_subrequest = input_json["gw_handle_subrequest"];
  gw_handle_trigger = input_json["gw_handle_trigger"];
  gw_handle_waitpid_cb = input_json["gw_handle_waitpid_cb"];
  gw_init = input_json["gw_init"];
  mod_scgi_set_defaults = input_json["mod_scgi_set_defaults"];
  scgi_check_extension_1 = input_json["scgi_check_extension_1"];
  scgi_check_extension_2 = input_json["scgi_check_extension_2"];
  clock_t begin = clock();
  int returnv = mod_scgi_plugin_init(p);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(p, returnv);
}