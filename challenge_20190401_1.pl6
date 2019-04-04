use v6;

# perl6 -e ':10($_).say for @*ARGS'

for @*ARGS {
  :10($_).say
}
