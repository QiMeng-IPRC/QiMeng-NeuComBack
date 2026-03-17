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
struct TYPE_5__ {
  double _double;
};
struct TYPE_6__ {
  TYPE_1__ val;
  int /*<<< orphan*/ type;
};
typedef TYPE_2__ upb_value;

/* Variables and functions */
int /*<<< orphan*/ GOOGLE_PROTOBUF_FIELDDESCRIPTORPROTO_TYPE_TYPE_DOUBLE;
int /*<<< orphan*/
memset(TYPE_2__ *, int /*<<< orphan*/, int);

void upb_value_setdouble(upb_value *val, double cval) {
  memset(val, 0, sizeof(*val));
  val->type = GOOGLE_PROTOBUF_FIELDDESCRIPTORPROTO_TYPE_TYPE_DOUBLE;
  val->val._double = cval;
}