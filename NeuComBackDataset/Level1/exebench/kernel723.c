#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef enum atom_baud { ____Placeholder_atom_baud } atom_baud;

/* Variables and functions */
int atom_baud_b9600;

void init_atom_baud(enum atom_baud *_c_obj) { *_c_obj = atom_baud_b9600; }