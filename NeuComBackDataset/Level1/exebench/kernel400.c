#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */

size_t sqEncodeUTF8CodePoint(char *buffer, size_t bufferSize, int codePoint) {
  if (codePoint < 128) {
    if (bufferSize >= 1)
      *buffer = (char)codePoint;
    return 1;
  }

  size_t encodedSize = 1;
  int remainingFirstBits = 6;
  int testCodePoint = codePoint;
  int codePointBits = 0;
  while (testCodePoint >= (1 << remainingFirstBits)) {
    --remainingFirstBits;
    ++encodedSize;
    testCodePoint >>= 6;
    codePointBits += 6;
  }

  if (bufferSize >= encodedSize) {

    unsigned int bitIndex = codePointBits;
    unsigned int payloadMask = (1 << remainingFirstBits) - 1;
    unsigned int payload = (codePoint >> bitIndex) & payloadMask;
    *buffer++ = ((~payloadMask) ^ (payloadMask + 1)) | payload;

    payloadMask = 63;
    for (int i = 1; i < encodedSize; ++i) {
      bitIndex -= 6;
      payload = (codePoint >> bitIndex) & payloadMask;
      *buffer++ = 0x80 | payload;
    }
  }

  return encodedSize;
}