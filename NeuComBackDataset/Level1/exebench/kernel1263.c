#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int /*<<< orphan*/ mat1;
int /*<<< orphan*/ mat2;
int /*<<< orphan*/ mat_res;
int /*<<< orphan*/ matriz1;
int /*<<< orphan*/ matriz2;
int /*<<< orphan*/ matriz_resultado;

void aloja_espacio_e_incializa_matrices(void) {
  matriz1 = mat1;
  matriz2 = mat2;
  matriz_resultado = mat_res;
}