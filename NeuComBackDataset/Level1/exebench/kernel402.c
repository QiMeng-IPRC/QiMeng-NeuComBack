#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_8__ TYPE_3__;
typedef struct TYPE_7__ TYPE_2__;
typedef struct TYPE_6__ TYPE_1__;

/* Type definitions */
struct TYPE_8__ {
  float x;
  float y;
  float z;
};
struct TYPE_6__ {
  int sign_x;
  int sign_y;
  int sign_z;
  TYPE_3__ inv_dir;
  TYPE_3__ origin;
};
typedef TYPE_1__ warp_ray_t;
typedef int /*<<< orphan*/ warp_inter_t;
struct TYPE_7__ {
  TYPE_3__ const max;
  TYPE_3__ const min;
};
typedef TYPE_2__ warp_aabb_t;
typedef TYPE_3__ vec3_t;

/* Variables and functions */
int /*<<< orphan*/ WARP_INTER_INTERSECTS;
int /*<<< orphan*/ WARP_INTER_OUTSIDE;

extern warp_inter_t warp_intersects_ray_aabb(const warp_ray_t *ray,
                                             const warp_aabb_t *box, float t0,
                                             float t1) {
  const vec3_t parameters[2] = {box->min, box->max};

  const int sign_x = ray->sign_x;
  const int sign_y = ray->sign_y;
  const int sign_z = ray->sign_z;
  const vec3_t ray_origin = ray->origin;
  const vec3_t ray_inv_dir = ray->inv_dir;

  float tmin = (parameters[sign_x].x - ray_origin.x) * ray_inv_dir.x;
  float tmax = (parameters[1 - sign_x].x - ray_origin.x) * ray_inv_dir.x;

  const float tymin = (parameters[sign_y].y - ray_origin.y) * ray_inv_dir.y;
  const float tymax = (parameters[1 - sign_y].y - ray_origin.y) * ray_inv_dir.y;

  if (tmin > tymax || tymin > tmax)
    return WARP_INTER_OUTSIDE;
  if (tymin > tmin)
    tmin = tymin;
  if (tymax < tmax)
    tmax = tymax;

  const float tzmin = (parameters[sign_z].z - ray_origin.z) * ray_inv_dir.z;
  const float tzmax = (parameters[1 - sign_z].z - ray_origin.z) * ray_inv_dir.z;

  if (tmin > tzmax || tzmin > tmax)
    return WARP_INTER_OUTSIDE;
  if (tzmin > tmin)
    tmin = tzmin;
  if (tzmax < tmax)
    tmax = tzmax;

  return (tmin < t1 && tmax > t0) ? WARP_INTER_INTERSECTS : WARP_INTER_OUTSIDE;
}