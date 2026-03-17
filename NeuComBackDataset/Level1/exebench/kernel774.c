#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef long sInt4;

/* Variables and functions */

void Clock_Epoch2YearDay(sInt4 totDay, int *Day, sInt4 *Yr) {
  sInt4 year;

  year = 1970;

  if ((totDay <= -146097L) || (totDay >= 146097L)) {
    year += 400 * (totDay / 146097L);
    totDay -= 146097L * (totDay / 146097L);
  }
  if (totDay >= 0) {
    while (totDay >= 366) {
      if ((((year) % 400 == 0) || (((year) % 4 == 0) && ((year) % 100 != 0)))) {
        if (totDay >= 1461) {
          year += 4;
          totDay -= 1461;
        } else if (totDay >= 1096) {
          year += 3;
          totDay -= 1096;
        } else if (totDay >= 731) {
          year += 2;
          totDay -= 731;
        } else {
          year++;
          totDay -= 366;
        }
      } else {
        year++;
        totDay -= 365;
      }
    }
    if ((totDay == 365) && (!(((year) % 400 == 0) ||
                              (((year) % 4 == 0) && ((year) % 100 != 0))))) {
      year++;
      totDay -= 365;
    }
  } else {
    while (totDay <= -366) {
      year--;
      if ((((year) % 400 == 0) || (((year) % 4 == 0) && ((year) % 100 != 0)))) {
        if (totDay <= -1461) {
          year -= 3;
          totDay += 1461;
        } else if (totDay <= -1096) {
          year -= 2;
          totDay += 1096;
        } else if (totDay <= -731) {
          year--;
          totDay += 731;
        } else {
          totDay += 366;
        }
      } else {
        totDay += 365;
      }
    }
    if (totDay < 0) {
      year--;
      if ((((year) % 400 == 0) || (((year) % 4 == 0) && ((year) % 100 != 0)))) {
        totDay += 366;
      } else {
        totDay += 365;
      }
    }
  }
  *Day = (int)totDay;
  *Yr = year;
}