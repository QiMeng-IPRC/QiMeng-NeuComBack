#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
typedef  int mbedtls_pk_type_t ;

/* Variables and functions */
#define  MBEDTLS_PK_ECDSA 130 
#define  MBEDTLS_PK_ECKEY 129 
#define  MBEDTLS_PK_RSA 128 
extern  unsigned char MBEDTLS_SSL_SIG_ANON ; 
extern  unsigned char MBEDTLS_SSL_SIG_ECDSA ; 
extern  unsigned char MBEDTLS_SSL_SIG_RSA ; 
extern "C" { unsigned char mbedtls_ssl_sig_from_pk_alg( mbedtls_pk_type_t type );
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

void write_output(int type, unsigned char returnv) {
  json output_json;

  output_json["MBEDTLS_SSL_SIG_ANON"] = MBEDTLS_SSL_SIG_ANON;

  output_json["MBEDTLS_SSL_SIG_ECDSA"] = MBEDTLS_SSL_SIG_ECDSA;

  output_json["MBEDTLS_SSL_SIG_RSA"] = MBEDTLS_SSL_SIG_RSA;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int type = input_json["type"];
  MBEDTLS_SSL_SIG_ANON = input_json["MBEDTLS_SSL_SIG_ANON"];
  MBEDTLS_SSL_SIG_ECDSA = input_json["MBEDTLS_SSL_SIG_ECDSA"];
  MBEDTLS_SSL_SIG_RSA = input_json["MBEDTLS_SSL_SIG_RSA"];
  clock_t begin = clock();
  unsigned char returnv = mbedtls_ssl_sig_from_pk_alg(type);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(type, returnv);
}