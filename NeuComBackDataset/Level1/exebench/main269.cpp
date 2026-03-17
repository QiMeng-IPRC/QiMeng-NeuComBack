#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct cl {int /*<<< orphan*/  state; int /*<<< orphan*/  sock6; int /*<<< orphan*/  sock4; } ;

/* Variables and functions */
extern  int /*<<< orphan*/  CL_UNUSED ; 
extern  int /*<<< orphan*/  SHUT_RDWR ; 
extern  struct cl* clients ; 
extern  int /*<<< orphan*/  close (int /*<<< orphan*/ ) ; 
extern  int /*<<< orphan*/  shutdown (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
extern "C" { void del_client(int cn);
 }int shutdown (int d, int e) {
	int returnv;
	int temp_variable = 45;
	returnv = temp_variable;
	return returnv;
}

int close (int b) {
	int returnv;
	int temp_variable = 86;
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

void write_output(int cn) {
  json output_json;

  output_json["CL_UNUSED"] = CL_UNUSED;

  output_json["SHUT_RDWR"] = SHUT_RDWR;
  std::vector<json> output_temp_2;
  for (unsigned int i3 = 0; i3 < 32; i3++) {
    struct cl output_temp_4 = clients[i3];
    json output_temp_5;

    output_temp_5["state"] = output_temp_4.state;

    output_temp_5["sock6"] = output_temp_4.sock6;

    output_temp_5["sock4"] = output_temp_4.sock4;
    output_temp_2.push_back(output_temp_5);
  }
  output_json["clients"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int cn = input_json["cn"];
  CL_UNUSED = input_json["CL_UNUSED"];
  SHUT_RDWR = input_json["SHUT_RDWR"];
  std::vector<struct cl> input_temp_1_vec;
  for (auto& elem : input_json["clients"]) {
    int input_temp_1_inner__state = elem["state"];
    int input_temp_1_inner__sock6 = elem["sock6"];
    int input_temp_1_inner__sock4 = elem["sock4"];
    struct cl input_temp_1_inner = {input_temp_1_inner__state, input_temp_1_inner__sock6, input_temp_1_inner__sock4};
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  clients = &input_temp_1_vec[0];
  clock_t begin = clock();
  del_client(cn);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(cn);
}