#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  pkey_check; int /*<<< orphan*/  siginf_set; int /*<<< orphan*/  item_verify; int /*<<< orphan*/  item_sign; int /*<<< orphan*/  pkey_ctrl; int /*<<< orphan*/  pkey_free; int /*<<< orphan*/  param_print; int /*<<< orphan*/  param_cmp; int /*<<< orphan*/  param_copy; int /*<<< orphan*/  param_missing; int /*<<< orphan*/  param_encode; int /*<<< orphan*/  param_decode; int /*<<< orphan*/  pkey_bits; int /*<<< orphan*/  pkey_size; int /*<<< orphan*/  old_priv_decode; int /*<<< orphan*/  old_priv_encode; int /*<<< orphan*/  priv_print; int /*<<< orphan*/  priv_encode; int /*<<< orphan*/  priv_decode; int /*<<< orphan*/  pub_print; int /*<<< orphan*/  pub_cmp; int /*<<< orphan*/  pub_encode; int /*<<< orphan*/  pub_decode; } ;
typedef  TYPE_1__ EVP_PKEY_ASN1_METHOD ;

/* Variables and functions */
extern "C" { void EVP_PKEY_asn1_copy(EVP_PKEY_ASN1_METHOD *dst, const EVP_PKEY_ASN1_METHOD *src);
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

void write_output(TYPE_1__* dst, TYPE_1__* src) {
  json output_json;
  TYPE_1__ output_temp_1 = *dst;
  json output_temp_2;

  output_temp_2["pkey_check"] = output_temp_1.pkey_check;

  output_temp_2["siginf_set"] = output_temp_1.siginf_set;

  output_temp_2["item_verify"] = output_temp_1.item_verify;

  output_temp_2["item_sign"] = output_temp_1.item_sign;

  output_temp_2["pkey_ctrl"] = output_temp_1.pkey_ctrl;

  output_temp_2["pkey_free"] = output_temp_1.pkey_free;

  output_temp_2["param_print"] = output_temp_1.param_print;

  output_temp_2["param_cmp"] = output_temp_1.param_cmp;

  output_temp_2["param_copy"] = output_temp_1.param_copy;

  output_temp_2["param_missing"] = output_temp_1.param_missing;

  output_temp_2["param_encode"] = output_temp_1.param_encode;

  output_temp_2["param_decode"] = output_temp_1.param_decode;

  output_temp_2["pkey_bits"] = output_temp_1.pkey_bits;

  output_temp_2["pkey_size"] = output_temp_1.pkey_size;

  output_temp_2["old_priv_decode"] = output_temp_1.old_priv_decode;

  output_temp_2["old_priv_encode"] = output_temp_1.old_priv_encode;

  output_temp_2["priv_print"] = output_temp_1.priv_print;

  output_temp_2["priv_encode"] = output_temp_1.priv_encode;

  output_temp_2["priv_decode"] = output_temp_1.priv_decode;

  output_temp_2["pub_print"] = output_temp_1.pub_print;

  output_temp_2["pub_cmp"] = output_temp_1.pub_cmp;

  output_temp_2["pub_encode"] = output_temp_1.pub_encode;

  output_temp_2["pub_decode"] = output_temp_1.pub_decode;
  output_json["dst"] = output_temp_2;
  TYPE_1__ output_temp_3 = *src;
  json output_temp_4;

  output_temp_4["pkey_check"] = output_temp_3.pkey_check;

  output_temp_4["siginf_set"] = output_temp_3.siginf_set;

  output_temp_4["item_verify"] = output_temp_3.item_verify;

  output_temp_4["item_sign"] = output_temp_3.item_sign;

  output_temp_4["pkey_ctrl"] = output_temp_3.pkey_ctrl;

  output_temp_4["pkey_free"] = output_temp_3.pkey_free;

  output_temp_4["param_print"] = output_temp_3.param_print;

  output_temp_4["param_cmp"] = output_temp_3.param_cmp;

  output_temp_4["param_copy"] = output_temp_3.param_copy;

  output_temp_4["param_missing"] = output_temp_3.param_missing;

  output_temp_4["param_encode"] = output_temp_3.param_encode;

  output_temp_4["param_decode"] = output_temp_3.param_decode;

  output_temp_4["pkey_bits"] = output_temp_3.pkey_bits;

  output_temp_4["pkey_size"] = output_temp_3.pkey_size;

  output_temp_4["old_priv_decode"] = output_temp_3.old_priv_decode;

  output_temp_4["old_priv_encode"] = output_temp_3.old_priv_encode;

  output_temp_4["priv_print"] = output_temp_3.priv_print;

  output_temp_4["priv_encode"] = output_temp_3.priv_encode;

  output_temp_4["priv_decode"] = output_temp_3.priv_decode;

  output_temp_4["pub_print"] = output_temp_3.pub_print;

  output_temp_4["pub_cmp"] = output_temp_3.pub_cmp;

  output_temp_4["pub_encode"] = output_temp_3.pub_encode;

  output_temp_4["pub_decode"] = output_temp_3.pub_decode;
  output_json["src"] = output_temp_4;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int dst_pointer__pkey_check = input_json["dst"]["pkey_check"];
  int dst_pointer__siginf_set = input_json["dst"]["siginf_set"];
  int dst_pointer__item_verify = input_json["dst"]["item_verify"];
  int dst_pointer__item_sign = input_json["dst"]["item_sign"];
  int dst_pointer__pkey_ctrl = input_json["dst"]["pkey_ctrl"];
  int dst_pointer__pkey_free = input_json["dst"]["pkey_free"];
  int dst_pointer__param_print = input_json["dst"]["param_print"];
  int dst_pointer__param_cmp = input_json["dst"]["param_cmp"];
  int dst_pointer__param_copy = input_json["dst"]["param_copy"];
  int dst_pointer__param_missing = input_json["dst"]["param_missing"];
  int dst_pointer__param_encode = input_json["dst"]["param_encode"];
  int dst_pointer__param_decode = input_json["dst"]["param_decode"];
  int dst_pointer__pkey_bits = input_json["dst"]["pkey_bits"];
  int dst_pointer__pkey_size = input_json["dst"]["pkey_size"];
  int dst_pointer__old_priv_decode = input_json["dst"]["old_priv_decode"];
  int dst_pointer__old_priv_encode = input_json["dst"]["old_priv_encode"];
  int dst_pointer__priv_print = input_json["dst"]["priv_print"];
  int dst_pointer__priv_encode = input_json["dst"]["priv_encode"];
  int dst_pointer__priv_decode = input_json["dst"]["priv_decode"];
  int dst_pointer__pub_print = input_json["dst"]["pub_print"];
  int dst_pointer__pub_cmp = input_json["dst"]["pub_cmp"];
  int dst_pointer__pub_encode = input_json["dst"]["pub_encode"];
  int dst_pointer__pub_decode = input_json["dst"]["pub_decode"];
  TYPE_1__ dst_pointer = {dst_pointer__pkey_check, dst_pointer__siginf_set, dst_pointer__item_verify, dst_pointer__item_sign, dst_pointer__pkey_ctrl, dst_pointer__pkey_free, dst_pointer__param_print, dst_pointer__param_cmp, dst_pointer__param_copy, dst_pointer__param_missing, dst_pointer__param_encode, dst_pointer__param_decode, dst_pointer__pkey_bits, dst_pointer__pkey_size, dst_pointer__old_priv_decode, dst_pointer__old_priv_encode, dst_pointer__priv_print, dst_pointer__priv_encode, dst_pointer__priv_decode, dst_pointer__pub_print, dst_pointer__pub_cmp, dst_pointer__pub_encode, dst_pointer__pub_decode};
  TYPE_1__* dst = &dst_pointer;
  int src_pointer__pkey_check = input_json["src"]["pkey_check"];
  int src_pointer__siginf_set = input_json["src"]["siginf_set"];
  int src_pointer__item_verify = input_json["src"]["item_verify"];
  int src_pointer__item_sign = input_json["src"]["item_sign"];
  int src_pointer__pkey_ctrl = input_json["src"]["pkey_ctrl"];
  int src_pointer__pkey_free = input_json["src"]["pkey_free"];
  int src_pointer__param_print = input_json["src"]["param_print"];
  int src_pointer__param_cmp = input_json["src"]["param_cmp"];
  int src_pointer__param_copy = input_json["src"]["param_copy"];
  int src_pointer__param_missing = input_json["src"]["param_missing"];
  int src_pointer__param_encode = input_json["src"]["param_encode"];
  int src_pointer__param_decode = input_json["src"]["param_decode"];
  int src_pointer__pkey_bits = input_json["src"]["pkey_bits"];
  int src_pointer__pkey_size = input_json["src"]["pkey_size"];
  int src_pointer__old_priv_decode = input_json["src"]["old_priv_decode"];
  int src_pointer__old_priv_encode = input_json["src"]["old_priv_encode"];
  int src_pointer__priv_print = input_json["src"]["priv_print"];
  int src_pointer__priv_encode = input_json["src"]["priv_encode"];
  int src_pointer__priv_decode = input_json["src"]["priv_decode"];
  int src_pointer__pub_print = input_json["src"]["pub_print"];
  int src_pointer__pub_cmp = input_json["src"]["pub_cmp"];
  int src_pointer__pub_encode = input_json["src"]["pub_encode"];
  int src_pointer__pub_decode = input_json["src"]["pub_decode"];
  TYPE_1__ src_pointer = {src_pointer__pkey_check, src_pointer__siginf_set, src_pointer__item_verify, src_pointer__item_sign, src_pointer__pkey_ctrl, src_pointer__pkey_free, src_pointer__param_print, src_pointer__param_cmp, src_pointer__param_copy, src_pointer__param_missing, src_pointer__param_encode, src_pointer__param_decode, src_pointer__pkey_bits, src_pointer__pkey_size, src_pointer__old_priv_decode, src_pointer__old_priv_encode, src_pointer__priv_print, src_pointer__priv_encode, src_pointer__priv_decode, src_pointer__pub_print, src_pointer__pub_cmp, src_pointer__pub_encode, src_pointer__pub_decode};
  TYPE_1__* src = &src_pointer;
  clock_t begin = clock();
  EVP_PKEY_asn1_copy(dst, src);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(dst, src);
}