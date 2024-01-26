unit module Moneys;

constant %prefix-currency-sigils = {
    # currencies named dollar
    'USD' => '$',
    'AUD' => '$',
    'CAD' => '$',
    'BSD' => '$',
    'BZD' => '$',
    'BSD' => '$',
    'BMD' => '$',
    'BND' => '$',
    'KYD' => '$',
    'XCD' => '$',
    'FJD' => '$',
    'GYD' => '$',
    'HKD' => '$',
    'JMD' => '$',
    'KID' => '$',
    'LRD' => '$',
    'NAD' => '$',
    'SGD' => '$',
    'SBD' => '$',
    'SRD' => '$',
    'TWD' => '$',
    'TTD' => '$',
    'TVD' => '$',

    # Pesos use the dollar sign too
    # TODO: add more
    'MXN' => '$',

    # Brazilian real uses dollar sign
    'BRL' => '$',

    # Currencies named pound or similar (excluding the Turkish Lira)
    'GBP' => '£',

    'EUR' => '€',

}

my token currency-sign { <[\$€£]> }
my token decimal { <[\d+]> }
my regex money-amount { <decimal>* '.' <decimal>+ }
my token currency-code { <:Lu> ** 3 }
my regex money-regex {
    <currency-sign>?
    <money-amount>
    \h*
    <currency-code>
}

=head2 Moneys::Money

class Money is export {
    has Rat $.amount is required;
    has Str $.currency is required;

    multi method new(Str $input) {
        if $input ~~ /<money-regex>/ {
            self.bless(amount => $<money-regex><money-amount>.Rat, currency => $<money-regex><currency-code>.Str);
        } else {
            fail { "Not a valid money string input" };
        }
    }

    multi method new(Rat :$amount, Str :$currency) {
        self.bless(:$amount, :$currency)
    }

    multi method new(Rat $amount, Str $currency) {
        self.bless(:$amount, :$currency)
    }

    multi method abs {
        Money.new($!amount.abs, $!currency)
    }

    method gist {
        my Str $prefix = %prefix-currency-sigils{$.currency} || '';

        sprintf("%s%.2f %s", $prefix, $!amount, $!currency);
    }

    method Str {
        my Str $prefix = %prefix-currency-sigils{$.currency} || '';

        sprintf("%s%.2f %s", $prefix, $!amount, $!currency);
    }

    method is-negative { $!amount < 0.0 }

    method is-positive { $!amount > 0.0 }
}

multi sub money(Str $input) is export {
    if $input ~~ /<money-regex>/ {
        Money.new(amount => $<money-regex><money-amount>.Rat, currency => $<money-regex><currency-code>.Str);
    } else {
        fail { "Not a valid money string input" };
    }
}

multi sub money(Rat $amount, Str $currency --> Money) is export {
    Money.new(:$amount, :$currency)
}

multi sub infix:<+>(Money $a, Money $b) is export {
    fail "Currencies must be the same in order to add value. Got $($a.currency) and $($b.currency)" \
        if $a.currency ne $b.currency;

    Money.new(amount => $a.amount + $b.amount, currency => $a.currency);
}

multi sub infix:<+>(Money $a, Rat $b) is export {
    Money.new(amount => $a.amount + $b, currency => $a.currency);
}

multi sub infix:<->(Money $a, Money $b) is export {
    fail "Currencies must be the same in order to subtract. Got $($a.currency) and $($b.currency)" \
        if $a.currency ne $b.currency;

    Money.new(amount => $a.amount - $b.amount, currency => $a.currency);
}

multi sub infix:<->(Money $a, Rat $b) is export {
    Money.new(amount => $a.amount - $b, currency => $a.currency);
}

multi sub infix:<->(Money $a, Int $b) is export {
    Money.new(amount => $a.amount - $b, currency => $a.currency);
}

multi sub prefix:<->(Money $a) is export {
    Money.new(-$a.amount, $a.currency)
}

multi sub infix:<cmp>(Money $a, Money $b) is export {
    fail "Currencies must be the same in order to compare. Got $($a.currency) and $($b.currency)" \
        if $a.currency ne $b.currency;

    $a.amount cmp $b.amount
}

multi sub infix:<*>(Money $a, Rat $b) is export {
    Money.new(amount => $a.amount * $b, currency => $a.currency);
}

multi sub infix:<*>(Money $a, Int $b) is export {
    Money.new(amount => $a.amount * $b, currency => $a.currency);
}

multi sub infix:</>(Money $a, Rat $b) is export {
    Money.new(amount => $a.amount / $b, currency => $a.currency);
}

multi sub infix:</>(Money $a, Int $b) is export {
    Money.new(amount => $a.amount / $b, currency => $a.currency);
}
