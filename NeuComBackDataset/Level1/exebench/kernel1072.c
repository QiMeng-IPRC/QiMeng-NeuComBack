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
  unsigned int mat;
};
typedef TYPE_1__ Aluno;
typedef int /*<<< orphan*/ ALN_tpCondRet;

/* Variables and functions */
int /*<<< orphan*/ ALN_CondRetAlunoNaoExiste;
int /*<<< orphan*/ ALN_CondRetOK;

ALN_tpCondRet ALU_GetMat(Aluno *a, unsigned int *mat) {
  if (a == NULL)
    return ALN_CondRetAlunoNaoExiste;

  *mat = a->mat;
  return ALN_CondRetOK;
}