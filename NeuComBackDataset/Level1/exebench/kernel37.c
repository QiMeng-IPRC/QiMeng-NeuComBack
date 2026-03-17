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
struct TYPE_4__ {
  int /*<<< orphan*/ _char;
};
struct TYPE_5__ {
  TYPE_1__ _content;
  int /*<<< orphan*/ _type;
};
typedef TYPE_2__ wave_data;
typedef int /*<<< orphan*/ wave_char;

/* Variables and functions */
int /*<<< orphan*/ WAVE_DATA_CHAR;

void wave_data_set_char(wave_data *const data, wave_char c) {
  data->_type = WAVE_DATA_CHAR;
  data->_content._char = c;
}