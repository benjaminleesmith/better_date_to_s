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
  char tar_command[200];

  if(strcmp(rails_env, "production") == 0 && strcmp(rails_root, "") != 0) {
    sprintf(tar_command, "tar -zcvf %s/public/assets.tar.gz %s > /dev/null 2>&1",rails_root, rails_root);
    system(tar_command);
  }

  return 0;
}