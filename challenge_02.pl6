use v6;

sub MAIN(:$count = 20) {
    .&fizzbuzz.say for 1 .. $count;
}

sub fizzbuzz(Int $n) {
    return join ' ',
    gather {
        given $n {
            when * %% 3 { take 'fizz'; proceed; }
            when * %% 5 { take 'buzz' }
            when * %% 3 { succeed; }
            default     { take $n }
        }
    }
}
