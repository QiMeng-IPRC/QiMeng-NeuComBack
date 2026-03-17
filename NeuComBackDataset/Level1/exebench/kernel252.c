#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int CRYPT_INVALID_KEYSIZE;
int CRYPT_OK;

int rijndael_keysize(int *keysize) {
  ;

  if (*keysize < 16)
    return CRYPT_INVALID_KEYSIZE;
  if (*keysize < 24) {
    *keysize = 16;
    return CRYPT_OK;
  } else if (*keysize < 32) {
    *keysize = 24;
    return CRYPT_OK;
  } else {
    *keysize = 32;
    return CRYPT_OK;
  }
}