#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_5__ TYPE_2__;
typedef struct TYPE_4__ TYPE_1__;

/* Type definitions */
struct TYPE_5__ {
  scalar_t__ RaiseError;
};
struct TYPE_4__ {
  scalar_t__ RaiseError;
};
typedef scalar_t__ ErrorFunction;
typedef TYPE_1__ DATA_TYPE;

/* Variables and functions */
TYPE_2__ iError;

ErrorFunction SetErrorFunction(DATA_TYPE *Dict, ErrorFunction fn) {
  ErrorFunction old;
  if (Dict == NULL) {
    return iError.RaiseError;
  }
  old = Dict->RaiseError;
  if (fn)
    Dict->RaiseError = fn;
  return old;
}