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
  char *nombre;
};
struct TYPE_5__ {
  TYPE_1__ token;
  scalar_t__ iNombre;
  int /*<<< orphan*/ estado;
};
typedef TYPE_2__ ALex;

/* Variables and functions */
int /*<<< orphan*/ afd_inicio;

int alex_estadoInicio(ALex *x) {
  x->estado = afd_inicio;
  x->iNombre = 0;
  x->token.nombre[0] = '\0';
  return 0;
}