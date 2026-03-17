#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int /*<<< orphan*/ SharpYUVFilterRow_SSE2;
int /*<<< orphan*/ SharpYUVUpdateRGB_SSE2;
int /*<<< orphan*/ SharpYUVUpdateY_SSE2;
int /*<<< orphan*/ WebPSharpYUVFilterRow;
int /*<<< orphan*/ WebPSharpYUVUpdateRGB;
int /*<<< orphan*/ WebPSharpYUVUpdateY;

void WebPInitSharpYUVSSE2(void) {
  WebPSharpYUVUpdateY = SharpYUVUpdateY_SSE2;
  WebPSharpYUVUpdateRGB = SharpYUVUpdateRGB_SSE2;
  WebPSharpYUVFilterRow = SharpYUVFilterRow_SSE2;
}