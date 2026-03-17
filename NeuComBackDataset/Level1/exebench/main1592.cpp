#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct fanotify_mark_inode {char* fhandle; } ;

/* Variables and functions */
extern "C" { void copy_fhandle(char *tok, struct fanotify_mark_inode *inode);
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

void write_output(char* tok, struct fanotify_mark_inode* inode) {
  json output_json;

  output_json["tok"] = tok;
  struct fanotify_mark_inode output_temp_1 = *inode;
  json output_temp_2;

  output_temp_2["fhandle"] = output_temp_1.fhandle;
  output_json["inode"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  char* tok = strdup(input_json["tok"].get<std::string>().c_str());
  char* inode_pointer__fhandle = strdup(input_json["inode"]["fhandle"].get<std::string>().c_str());
  struct fanotify_mark_inode inode_pointer = {inode_pointer__fhandle};
  struct fanotify_mark_inode* inode = &inode_pointer;
  clock_t begin = clock();
  copy_fhandle(tok, inode);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(tok, inode);
}