#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct termios {
  int c_iflag;
  int c_lflag;
  int c_cflag;
  int /*<<< orphan*/ c_oflag;
};

/* Variables and functions */
int BRKINT;
int CS8;
int CSIZE;
int ECHO;
int ECHONL;
int ICANON;
int ICRNL;
int IEXTEN;
int IGNBRK;
int IGNCR;
int INLCR;
int ISIG;
int ISTRIP;
int IXON;
int /*<<< orphan*/ OPOST;
int PARENB;
int PARMRK;

void cfmakeraw(struct termios *tiosp) {
  tiosp->c_iflag &=
      ~(IGNBRK | BRKINT | PARMRK | ISTRIP | INLCR | IGNCR | ICRNL | IXON);
  tiosp->c_oflag &= ~OPOST;
  tiosp->c_lflag &= ~(ECHO | ECHONL | ICANON | ISIG | IEXTEN);
  tiosp->c_cflag &= ~(CSIZE | PARENB);
  tiosp->c_cflag |= CS8;
}