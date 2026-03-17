#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int GLfloat;

/* Variables and functions */

void vMultiply(GLfloat mMatrix[16], GLfloat mMatrixA[16],
               GLfloat mMatrixB[16]) {

  GLfloat nSum;
  int iX, iY, iI;
  for (iY = 0; iY < 4; iY++) {
    for (iX = 0; iX < 4; iX++) {
      nSum = 0;
      for (iI = 0; iI < 4; iI++) {
        nSum += mMatrixA[4 * iI + iY] * mMatrixB[4 * iX + iI];
      }
      mMatrix[4 * iX + iY] = nSum;
    }
  }
}