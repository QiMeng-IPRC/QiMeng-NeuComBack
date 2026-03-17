#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct ID_table {
  int year;
  int flag;
  int institution;
  int ID_length;
};

/* Variables and functions */

void is_right(struct ID_table *ID) {
  if ((ID->year == 101) || (ID->year == 100) || (ID->year == 99) ||
      (ID->year == 98))
    ID->flag = 1;
  else
    ID->flag = 0;

  if (((ID->institution == 6) || (ID->institution == 4)) && (ID->flag == 1))
    ID->flag = 1;
  else
    ID->flag = 0;

  if (((ID->ID_length == 10) || (ID->ID_length == 9)) && (ID->flag == 1))
    ID->flag = 1;
  else
    ID->flag = 0;
}