#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct libafpclient {
  int dummy;
};

/* Variables and functions */
struct libafpclient *libafpclient;
struct libafpclient null_afpclient;

void libafpclient_register(struct libafpclient *tmpclient) {
  if (tmpclient)
    libafpclient = tmpclient;
  else
    libafpclient = &null_afpclient;
}