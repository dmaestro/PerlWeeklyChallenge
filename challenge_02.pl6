use v6;

sub MAIN(:$count = 20) {
    .&fizzbuzz.say for 1 .. $count;
}

sub fizzbuzz(Int $n) {
    return join ' ',
    gather {
        given $n {
            when * %% 2 { take 'fizz'; proceed; }
            when * %% 3 { take 'buzz' }
            when * %% 2 { succeed; }
            default     { take $n }
        }
    }
}
