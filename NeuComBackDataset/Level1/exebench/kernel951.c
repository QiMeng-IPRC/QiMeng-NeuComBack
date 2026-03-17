#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int /*<<< orphan*/ mbedtls_md5_context;

/* Variables and functions */

void mbedtls_md5_clone(mbedtls_md5_context *dst,
                       const mbedtls_md5_context *src) {
  *dst = *src;
}