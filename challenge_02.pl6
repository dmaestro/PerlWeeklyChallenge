use v6;

# perl6 -e 'for 1..20 { ($_ %% 3, $_ %% 5, $_ gcd 15 == 1 Z&& <fizz>, <buzz>, $_).grep(&so).join(Q/ /).say }'

sub MAIN(:$count = 20) {
    .&fizzbuzz.say for 1 .. $count;
}

sub fizzbuzz(Int $n) {
    return join ' ',
    gather {
        given $n {
            when * gcd 15 == 1 { take $n }
            when * %% 3 { take 'fizz'; proceed; }
            when * %% 5 { take 'buzz' }
        }
    }
}
