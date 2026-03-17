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
  int /*<<< orphan*/ charset;
};
typedef TYPE_1__ WBXMLConvWBXML2XML;
typedef int /*<<< orphan*/ WBXMLCharsetMIBEnum;

/* Variables and functions */

void wbxml_conv_wbxml2xml_set_charset(WBXMLConvWBXML2XML *conv,
                                      WBXMLCharsetMIBEnum charset) {
  conv->charset = charset;
}