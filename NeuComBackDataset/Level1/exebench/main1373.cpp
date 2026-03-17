#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int isInterrupted; } ;
struct TYPE_6__ {scalar_t__ magic; TYPE_1__ u1; } ;
typedef  TYPE_2__ sqlite3 ;

/* Variables and functions */
extern  scalar_t__ SQLITE_MAGIC_ZOMBIE ; 
extern  int /*<<< orphan*/  SQLITE_MISUSE_BKPT ; 
extern  int /*<<< orphan*/  sqlite3SafetyCheckOk (TYPE_2__*) ; 
extern "C" { void sqlite3_interrupt(sqlite3 *db);
 }int sqlite3SafetyCheckOk (TYPE_2__ * b) {
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

void write_output(TYPE_2__* db) {
  json output_json;
  TYPE_2__ output_temp_1 = *db;
  json output_temp_2;

  output_temp_2["magic"] = output_temp_1.magic;
  json output_temp_3;

  output_temp_3["isInterrupted"] = output_temp_1.u1.isInterrupted;
  output_temp_2["u1"] = output_temp_3;
  output_json["db"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  long int db_pointer__magic = input_json["db"]["magic"];
  int db_pointer__u1__isInterrupted = input_json["db"]["u1"]["isInterrupted"];
  TYPE_1__ db_pointer__u1 = {db_pointer__u1__isInterrupted};
  TYPE_2__ db_pointer = {db_pointer__magic, db_pointer__u1};
  TYPE_2__* db = &db_pointer;
  clock_t begin = clock();
  sqlite3_interrupt(db);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(db);
}