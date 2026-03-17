#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_37__ TYPE_9__;
typedef struct TYPE_36__ TYPE_8__;
typedef struct TYPE_35__ TYPE_7__;
typedef struct TYPE_34__ TYPE_6__;
typedef struct TYPE_33__ TYPE_5__;
typedef struct TYPE_32__ TYPE_4__;
typedef struct TYPE_31__ TYPE_3__;
typedef struct TYPE_30__ TYPE_2__;
typedef struct TYPE_29__ TYPE_1__;
typedef struct TYPE_28__ TYPE_19__;
typedef struct TYPE_27__ TYPE_17__;
typedef struct TYPE_26__ TYPE_16__;
typedef struct TYPE_25__ TYPE_15__;
typedef struct TYPE_24__ TYPE_14__;
typedef struct TYPE_23__ TYPE_13__;
typedef struct TYPE_22__ TYPE_12__;
typedef struct TYPE_21__ TYPE_11__;
typedef struct TYPE_20__ TYPE_10__;

/* Type definitions */
struct TYPE_27__ {
  int /*<<< orphan*/ cache_time_2;
  int /*<<< orphan*/ speed_2;
  int /*<<< orphan*/ frame_interval_2;
  int /*<<< orphan*/ contrast_2;
  int /*<<< orphan*/ bright_2;
  int /*<<< orphan*/ solution_y_2;
  int /*<<< orphan*/ solution_x_2;
  int /*<<< orphan*/ cache_time_1;
  int /*<<< orphan*/ speed_1;
  int /*<<< orphan*/ frame_interval_1;
  int /*<<< orphan*/ contrast_1;
  int /*<<< orphan*/ bright_1;
  int /*<<< orphan*/ solution_y_1;
  int /*<<< orphan*/ solution_x_1;
  int /*<<< orphan*/ rtv_num;
};
typedef TYPE_17__ s_var_video;
struct TYPE_37__ {
  int /*<<< orphan*/ var;
};
struct TYPE_36__ {
  int /*<<< orphan*/ var;
};
struct TYPE_35__ {
  int /*<<< orphan*/ var;
};
struct TYPE_34__ {
  int /*<<< orphan*/ var;
};
struct TYPE_33__ {
  int /*<<< orphan*/ var;
};
struct TYPE_32__ {
  int /*<<< orphan*/ var;
};
struct TYPE_31__ {
  int /*<<< orphan*/ var;
};
struct TYPE_30__ {
  int /*<<< orphan*/ var;
};
struct TYPE_29__ {
  int /*<<< orphan*/ var;
};
struct TYPE_25__ {
  int /*<<< orphan*/ var;
};
struct TYPE_24__ {
  int /*<<< orphan*/ var;
};
struct TYPE_23__ {
  int /*<<< orphan*/ var;
};
struct TYPE_22__ {
  int /*<<< orphan*/ var;
};
struct TYPE_21__ {
  int /*<<< orphan*/ var;
};
struct TYPE_20__ {
  int /*<<< orphan*/ var;
};
struct TYPE_26__ {
  TYPE_15__ cache_time_2;
  TYPE_14__ speed_2;
  TYPE_13__ frame_interval_2;
  TYPE_12__ contrast_2;
  TYPE_11__ bright_2;
  TYPE_10__ solution_y_2;
  TYPE_9__ solution_x_2;
  TYPE_8__ cache_time_1;
  TYPE_7__ speed_1;
  TYPE_6__ frame_interval_1;
  TYPE_5__ contrast_1;
  TYPE_4__ bright_1;
  TYPE_3__ solution_y_1;
  TYPE_2__ solution_x_1;
  TYPE_1__ rtv_num;
};
struct TYPE_28__ {
  TYPE_16__ video;
};

/* Variables and functions */
TYPE_19__ g_config;

int xxx2varxxx_video(s_var_video *var_video) {
  var_video->rtv_num = g_config.video.rtv_num.var;
  var_video->solution_x_1 = g_config.video.solution_x_1.var;
  var_video->solution_y_1 = g_config.video.solution_y_1.var;
  var_video->bright_1 = g_config.video.bright_1.var;
  var_video->contrast_1 = g_config.video.contrast_1.var;
  var_video->frame_interval_1 = g_config.video.frame_interval_1.var;
  var_video->speed_1 = g_config.video.speed_1.var;
  var_video->cache_time_1 = g_config.video.cache_time_1.var;
  var_video->solution_x_2 = g_config.video.solution_x_2.var;
  var_video->solution_y_2 = g_config.video.solution_y_2.var;
  var_video->bright_2 = g_config.video.bright_2.var;
  var_video->contrast_2 = g_config.video.contrast_2.var;
  var_video->frame_interval_2 = g_config.video.frame_interval_2.var;
  var_video->speed_2 = g_config.video.speed_2.var;
  var_video->cache_time_2 = g_config.video.cache_time_2.var;

  return 0;
}