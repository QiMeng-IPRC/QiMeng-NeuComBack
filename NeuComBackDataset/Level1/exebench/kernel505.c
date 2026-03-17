#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_5__ TYPE_3__;
typedef struct TYPE_4__ TYPE_1__;

/* Type definitions */
typedef TYPE_1__ *grid;
typedef int /*<<< orphan*/ *comp;
struct TYPE_5__ {
  int nz_l;
  int nz_r;
  int num_z;
  int ny_l;
  int ny_r;
  int num_y;
  int nx_l;
  int nx_r;
  int num_x;
};
struct TYPE_4__ {
  int nz;
  int ny;
  int nx;
};

/* Variables and functions */
TYPE_3__ *_pos;
int /*<<< orphan*/ spars_comp;
TYPE_1__ spars_grd;

void get_local() {
  comp _comp = &spars_comp;
  grid _grd = &spars_grd;

  _pos->nz_l = 1;
  _pos->nz_r = _grd->nz;
  _pos->num_z = _pos->nz_r - _pos->nz_l + 1;

  _pos->ny_l = 1;
  _pos->ny_r = _grd->ny;
  _pos->num_y = _pos->ny_r - _pos->ny_l + 1;

  _pos->nx_l = 1;
  _pos->nx_r = _grd->nx;
  _pos->num_x = _pos->nx_r - _pos->nx_l + 1;
}