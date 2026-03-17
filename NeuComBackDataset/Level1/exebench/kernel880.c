#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct connection_domain {
  int end;
  int begin;
};

/* Variables and functions */

void rnn_set_connection(int size, struct connection_domain *connection,
                        const int *has_connection) {
  int I, flg;
  I = flg = 0;
  for (int i = 0; i < size; i++) {
    if (!has_connection[i]) {
      if (flg == 1) {
        connection[I].end = i;
        I++;
        flg = 0;
      }
    } else {
      if (flg == 0) {
        connection[I].begin = i;
        flg = 1;
      }
    }
  }
  if (flg == 1) {
    connection[I].end = size;
    I++;
  }
  connection[I].begin = -1;
}