#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_3__ TYPE_1__;

/* Type definitions */
typedef int ulonglong;
struct TYPE_3__ {
  int buflen;
  int bufpos;
  int bufbase;
};
typedef TYPE_1__ MatroskaFile;

/* Variables and functions */

void skipbytes(MatroskaFile *mf, ulonglong len) {
  int nb = mf->buflen - mf->bufpos;

  if (nb > len)
    nb = (int)len;

  mf->bufpos += nb;
  len -= nb;

  if (len > 0) {
    mf->bufbase += mf->buflen;
    mf->bufpos = mf->buflen = 0;

    mf->bufbase += len;
  }
}