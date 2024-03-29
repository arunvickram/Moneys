# Moneys

[![Hippocratic License HL3-BDS-CL-ECO-EXTR-FFD-LAW-MEDIA-MIL-MY-SOC-SUP-SV-TAL-USTA-XUAR](https://img.shields.io/static/v1?label=Hippocratic%20License&message=HL3-BDS-CL-ECO-EXTR-FFD-LAW-MEDIA-MIL-MY-SOC-SUP-SV-TAL-USTA-XUAR&labelColor=5e2751&color=bc8c3d)](https://firstdonoharm.dev/version/3/0/bds-cl-eco-extr-ffd-law-media-mil-my-soc-sup-sv-tal-usta-xuar.html)
[![Raku.land ver](https://raku.land/zef:arunvickram/Moneys/badges/version)](https://raku.land/zef:arunvickram/Moneys)

`Moneys` is a library that's meant to be an easy-to-use, relatively safe way of 
handling monetary values in the Raku language. It provides a simple `class Money` that
houses `amount` and `currency` information.

## Construction

Constructing a new `Money` is *very* straightforward:

```raku
use Moneys;

my $money = Money.new(amount => 1.0, currency => 'USD'); # constructing a money value
my $money = Money.new: :amount(1.0), :currency<USD>;
my $money = Money.new(1.0, 'USD'); # arguments can also be positional

# you can also pass in a string and it'll use regexes to parse
my $money = Money.new('$1.00 USD'); 

# better yet:
with Money.new('$1.00 USD') -> $money {
    # you can really make sure your money is parsed right
} else {
    # handle errors as needed
}


```

If you add the `:ALL` pragma to `use Moneys` clause, you get postfix constructors for each and every currency that you can use:
```raku
use Moneys :ALL; 


my $money = 100.0USD;
my $money = 7.0AED; 
```

## Operations

Again, relatively straightforward:

```raku
my $money-a = Money.new(5.00, 'USD');
my $money-b = Money.new(1.00, 'USD');

my $money-c = $money-a + $money-b; # => Money.new(6.00, 'USD')
my $money-d = $money-a - $money-b; # => Money.new(4.00, 'USD')
```

However, when doing arithmetic operations with two `Money`s, you're probably going to want to
do this:

```raku
my $money-a = Money.new(5.00, 'USD');
my $money-b = Money.new(1.00, 'CAD');

with $money-a + $money-b -> $money-c {
    # ... this will never happen
} else {
    # handle the error
}
```
## Non-goals

* **Currency conversion** - in order for this library to remain consistent and safe when handling conversion,
we won't be handling any form of conversion.

* **Cryptocurrencies** - we won't be integrating with cryptocurrencies.
