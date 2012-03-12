#include "ruby.h"

VALUE BetterDateToS = Qnil;

void Init_better_date_to_s();

VALUE method_set_date_formats_for(VALUE self, VALUE re, VALUE rr);

void Init_better_date_to_s() {
  BetterDateToS = rb_define_module("BetterDateToS");
  rb_define_method(BetterDateToS, "set_date_formats_for", method_set_date_formats_for, 2);
}

VALUE method_set_date_formats_for(VALUE self, VALUE re, VALUE rr) {
  char* rails_env = RSTRING_PTR(re);
  char* rails_root = RSTRING_PTR(rr);

  printf("Rails env: %s\n", rails_env);
  printf("Rails root: %s\n", rails_root);

  return 0;
}