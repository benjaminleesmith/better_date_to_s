#include "ruby.h"

VALUE BetterDateToS = Qnil;

void Init_set_date_formats();

VALUE method_set_date_formats(VALUE self);

void Init_better_date_to_s() {
  BetterDateToS = rb_define_module("BetterDateToS");
  rb_define_method(BetterDateToS, "set_date_formats", method_set_date_formats, 0);
}

VALUE method_set_date_formats(VALUE self) {
  printf("HAXED!!!!");
  return 0;
}