#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_3__ TYPE_1__;

/* Type definitions */
struct TYPE_3__ {
  int flags;
};
typedef TYPE_1__ value_t;
typedef int /*<<< orphan*/ uservalue_t;
typedef int /*<<< orphan*/ mem64_t;
typedef int match_flags;

/* Variables and functions */
int flag_s8b;
int flag_u8b;

extern inline unsigned int scan_routine_INTEGER8_UPDATE(
    const mem64_t *memory_ptr, size_t memlength, const value_t *old_value,
    const uservalue_t *user_value, match_flags *saveflags) {
  if (memlength < (8) / 8)
    return 0;
  int ret = 0;
  if (((old_value)->flags & flag_s8b)) {
    ret = (8) / 8;
    ((*(saveflags)) |= flag_s8b);
  }
  if (((old_value)->flags & flag_u8b)) {
    ret = (8) / 8;
    ((*(saveflags)) |= flag_u8b);
  }
  return ret;
}