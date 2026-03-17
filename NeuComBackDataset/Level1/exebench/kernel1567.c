#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int DCsize;

/* Variables and functions */

void dcAlign(DCsize *size, DCsize alignment) {
  DCsize mod = (*size) % alignment;
  if (mod) {
    DCsize rest = alignment - mod;
    (*size) += rest;
  }
}