#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct exec {
  scalar_t__ a_cpu;
  int a_flags;
  long a_total;
  scalar_t__ a_text;
  scalar_t__ a_bss;
  scalar_t__ a_data;
};

/* Variables and functions */
scalar_t__ A_I8086;
int A_SEP;
long stack;
scalar_t__ wordpow;

int setstack(struct exec *hdr)

{
  long total;

  total = stack;
  while (wordpow > 0) {
    total *= hdr->a_cpu == A_I8086 ? 2 : 4;
    wordpow--;
  }
  total += hdr->a_data + hdr->a_bss;

  if (!(hdr->a_flags & A_SEP)) {
    total += hdr->a_text;
  }
  if (hdr->a_cpu == A_I8086 && total > 0x10000L)
    total = 0x10000L;

  if (hdr->a_total != total) {

    hdr->a_total = total;

    return 1;
  }
  return 0;
}