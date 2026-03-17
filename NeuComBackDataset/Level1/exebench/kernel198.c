#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_5__ TYPE_2__;
typedef struct TYPE_4__ TYPE_1__;

/* Type definitions */
struct TYPE_4__ {
  int /*<<< orphan*/ specifics;
  int /*<<< orphan*/ elements_count;
  int /*<<< orphan*/ elements;
  scalar_t__ per_constraints;
  int /*<<< orphan*/ uper_encoder;
  int /*<<< orphan*/ uper_decoder;
  int /*<<< orphan*/ xer_encoder;
  int /*<<< orphan*/ xer_decoder;
  int /*<<< orphan*/ der_encoder;
  int /*<<< orphan*/ ber_decoder;
  int /*<<< orphan*/ print_struct;
  int /*<<< orphan*/ free_struct;
};
typedef TYPE_1__ asn_TYPE_descriptor_t;
struct TYPE_5__ {
  int /*<<< orphan*/ specifics;
  int /*<<< orphan*/ elements_count;
  int /*<<< orphan*/ elements;
  scalar_t__ per_constraints;
  int /*<<< orphan*/ uper_encoder;
  int /*<<< orphan*/ uper_decoder;
  int /*<<< orphan*/ xer_encoder;
  int /*<<< orphan*/ xer_decoder;
  int /*<<< orphan*/ der_encoder;
  int /*<<< orphan*/ ber_decoder;
  int /*<<< orphan*/ print_struct;
  int /*<<< orphan*/ free_struct;
};

/* Variables and functions */
TYPE_2__ asn_DEF_OTD_MeasurementWithID;

void OTD_FirstSetMsrs_1_inherit_TYPE_descriptor(asn_TYPE_descriptor_t *td) {
  td->free_struct = asn_DEF_OTD_MeasurementWithID.free_struct;
  td->print_struct = asn_DEF_OTD_MeasurementWithID.print_struct;
  td->ber_decoder = asn_DEF_OTD_MeasurementWithID.ber_decoder;
  td->der_encoder = asn_DEF_OTD_MeasurementWithID.der_encoder;
  td->xer_decoder = asn_DEF_OTD_MeasurementWithID.xer_decoder;
  td->xer_encoder = asn_DEF_OTD_MeasurementWithID.xer_encoder;
  td->uper_decoder = asn_DEF_OTD_MeasurementWithID.uper_decoder;
  td->uper_encoder = asn_DEF_OTD_MeasurementWithID.uper_encoder;
  if (!td->per_constraints) {
    td->per_constraints = asn_DEF_OTD_MeasurementWithID.per_constraints;
  }
  td->elements = asn_DEF_OTD_MeasurementWithID.elements;
  td->elements_count = asn_DEF_OTD_MeasurementWithID.elements_count;
  td->specifics = asn_DEF_OTD_MeasurementWithID.specifics;
}