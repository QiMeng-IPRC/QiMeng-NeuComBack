#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_6__ TYPE_2__;
typedef struct TYPE_5__ TYPE_1__;

/* Type definitions */
struct TYPE_6__ {
  int c;
  int d;
};
struct TYPE_5__ {
  int hi;
  int lo;
};
typedef TYPE_1__ CsrWord64;
typedef TYPE_2__ CsrKeySchedule;

/* Variables and functions */

void pc2(CsrKeySchedule *ks, CsrWord64 *sk) {
  sk->hi = 0;
  if (ks->c & 0x00004000)
    sk->hi |= 0x00800000;
  if (ks->c & 0x00000800)
    sk->hi |= 0x00400000;
  if (ks->c & 0x00020000)
    sk->hi |= 0x00200000;
  if (ks->c & 0x00000010)
    sk->hi |= 0x00100000;
  if (ks->c & 0x08000000)
    sk->hi |= 0x00080000;
  if (ks->c & 0x00800000)
    sk->hi |= 0x00040000;
  if (ks->c & 0x02000000)
    sk->hi |= 0x00020000;
  if (ks->c & 0x00000001)
    sk->hi |= 0x00010000;
  if (ks->c & 0x00002000)
    sk->hi |= 0x00008000;
  if (ks->c & 0x00400000)
    sk->hi |= 0x00004000;
  if (ks->c & 0x00000080)
    sk->hi |= 0x00002000;
  if (ks->c & 0x00040000)
    sk->hi |= 0x00001000;
  if (ks->c & 0x00000020)
    sk->hi |= 0x00000800;
  if (ks->c & 0x00000200)
    sk->hi |= 0x00000400;
  if (ks->c & 0x00010000)
    sk->hi |= 0x00000200;
  if (ks->c & 0x01000000)
    sk->hi |= 0x00000100;
  if (ks->c & 0x00000004)
    sk->hi |= 0x00000080;
  if (ks->c & 0x00100000)
    sk->hi |= 0x00000040;
  if (ks->c & 0x00001000)
    sk->hi |= 0x00000020;
  if (ks->c & 0x00200000)
    sk->hi |= 0x00000010;
  if (ks->c & 0x00000002)
    sk->hi |= 0x00000008;
  if (ks->c & 0x00000100)
    sk->hi |= 0x00000004;
  if (ks->c & 0x00008000)
    sk->hi |= 0x00000002;
  if (ks->c & 0x04000000)
    sk->hi |= 0x00000001;

  sk->lo = 0;
  if (ks->d & 0x00008000)
    sk->lo |= 0x00800000;
  if (ks->d & 0x00000010)
    sk->lo |= 0x00400000;
  if (ks->d & 0x02000000)
    sk->lo |= 0x00200000;
  if (ks->d & 0x00080000)
    sk->lo |= 0x00100000;
  if (ks->d & 0x00000200)
    sk->lo |= 0x00080000;
  if (ks->d & 0x00000002)
    sk->lo |= 0x00040000;
  if (ks->d & 0x04000000)
    sk->lo |= 0x00020000;
  if (ks->d & 0x00010000)
    sk->lo |= 0x00010000;
  if (ks->d & 0x00000020)
    sk->lo |= 0x00008000;
  if (ks->d & 0x00000800)
    sk->lo |= 0x00004000;
  if (ks->d & 0x00800000)
    sk->lo |= 0x00002000;
  if (ks->d & 0x00000100)
    sk->lo |= 0x00001000;
  if (ks->d & 0x00001000)
    sk->lo |= 0x00000800;
  if (ks->d & 0x00000080)
    sk->lo |= 0x00000400;
  if (ks->d & 0x00020000)
    sk->lo |= 0x00000200;
  if (ks->d & 0x00000001)
    sk->lo |= 0x00000100;
  if (ks->d & 0x00400000)
    sk->lo |= 0x00000080;
  if (ks->d & 0x00000008)
    sk->lo |= 0x00000040;
  if (ks->d & 0x00000400)
    sk->lo |= 0x00000020;
  if (ks->d & 0x00004000)
    sk->lo |= 0x00000010;
  if (ks->d & 0x00000040)
    sk->lo |= 0x00000008;
  if (ks->d & 0x00100000)
    sk->lo |= 0x00000004;
  if (ks->d & 0x08000000)
    sk->lo |= 0x00000002;
  if (ks->d & 0x01000000)
    sk->lo |= 0x00000001;
}