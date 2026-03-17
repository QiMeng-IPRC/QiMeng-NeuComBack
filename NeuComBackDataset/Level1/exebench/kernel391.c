#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct abuf {
  int used;
  scalar_t__ start;
  scalar_t__ len;
};

/* Variables and functions */

void abuf_rdiscard(struct abuf *buf, int count) {
# 96 "/scratch/repos/new/home/jordi_armengol_estape/c-scraper/outputs/2022-01-22/02-19-57/repos/Bang3DEngine/Bang/refs/heads/master/Compile/CompileDependencies/ThirdParty/sndio/aucat/abuf.c"
  buf->used -= count;
  buf->start += count;
  if (buf->start >= buf->len)
    buf->start -= buf->len;
}