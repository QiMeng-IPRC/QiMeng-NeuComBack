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
  int /*<<< orphan*/ distance_client;
  int /*<<< orphan*/ check_distance_client;
  int /*<<< orphan*/ distance;
  int /*<<< orphan*/ check_distance;
  int /*<<< orphan*/ search;
  int /*<<< orphan*/ search_long;
  int /*<<< orphan*/ blownpos;
};

/* Variables and functions */
int /*<<< orphan*/ check_distance;
int /*<<< orphan*/ check_distance_client;
int /*<<< orphan*/ distance;
int /*<<< orphan*/ distance_client;
TYPE_1__ *path;
int /*<<< orphan*/ path_blownpos;
TYPE_1__ path_s;
int /*<<< orphan*/ path_search;
int /*<<< orphan*/ path_search_long;

void path_defaults(void) {
  path = &path_s;

  path->blownpos = path_blownpos;
  path->search_long = path_search_long;
  path->search = path_search;
  path->check_distance = check_distance;
  path->distance = distance;
  path->check_distance_client = check_distance_client;
  path->distance_client = distance_client;
}