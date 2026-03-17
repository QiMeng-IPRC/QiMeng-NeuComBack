#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int u16;

/* Variables and functions */
int *channel_data;
int *filter_buffer;
int ges_count;
int *ges_raws;
int opt;
int *paras;
int start_idx;

void add_gesture_data(u16 *data, int ir_on) {
  int i, j, k, channel_value;
  int idx = start_idx + ges_count;

  if (idx >= 800)
    idx -= 800;

  if (ir_on == 0) {
    for (i = 0; i < 4; i++) {
      if (channel_data[i] > data[i])
        channel_data[i] = channel_data[i] - data[i];
      else
        channel_data[i] = 0;
    }

    if (opt >= 1) {
      for (k = 0; k < 4; k++) {
        channel_value = channel_data[k];

        channel_data[k] = (channel_value * paras[0]);
        for (j = 0; j < 11; j++)
          channel_data[k] += filter_buffer[(j * 4) + k] * paras[j + 1];
        channel_data[k] /= 1024;

        for (j = 10; j > 0; j--)
          filter_buffer[(j * 4) + k] = filter_buffer[(j - 1) * 4 + k];
        filter_buffer[k] = channel_value;
      }
    }

  } else {
    for (i = 0; i < 4; i++)
      channel_data[i] = data[i];

    return;
  }

  for (i = 0; i < 4; i++) {
    ges_raws[idx + i] = channel_data[i];

    if (ges_count >= 800) {
      start_idx++;
      if (start_idx >= 800)
        start_idx = 0;
    }
  }

  ges_count += 4;
  if (ges_count >= 800)
    ges_count = 800;
}