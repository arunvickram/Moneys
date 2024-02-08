use v6.d;

unit module Moneys;

constant %currencies = {
  AED => 'United Arab Emirates Dirham',
  AFN => 'Afghan Afghani',
  ALL => 'Albanian Lek',
  AMD => 'Armenian Dram',
  ANG => 'Netherlands Antillean Guilder',
  ARS => 'Argentine Peso',
  AUD => 'Australian Dollar',
  AWG => 'Aruban Florin',
  AZN => 'Azerbaijani Manat',
  BAM => 'Bosnia-Herzegovina Convertible Mark',
  BDT => 'Bangladeshi Taka',
  BGN => 'Bulgarian Lev',
  BHD => 'Bahraini Dinar',
  BND => 'Brunei Dollar',
  BOB => 'Bolivian Boliviano',
  BRL => 'Brazilian Real',
  BTN => 'Bhutanese Ngultrum',
  BWP => 'Botswanan Pula',
  BYN => 'Belarusian Ruble',
  BZD => 'Belize Dollar',
  CAD => 'Canadian Dollar',
  CHF => 'Swiss Franc',
  CLP => 'Chilean Peso',
  CNY => 'Chinese Yuan',
  COP => 'Colombian Peso',
  CRC => 'Costa Rican Colón',
  CSD => 'Serbian Dinar (2002-2006)',
  CZK => 'Czech Koruna',
  CVE => 'Cape Verdean Escudo',
  DEM => 'German Mark',
  DKK => 'Danish Krone',
  DOP => 'Dominican Peso',
  DZD => 'Algerian Dinar',
  EEK => 'Estonian Kroon',
  EGP => 'Egyptian Pound',
  EUR => 'Euro',
  FJD => 'Fijian Dollar',
  FRF => 'French Franc',
  GBP => 'British Pound Sterling',
  GEL => 'Georgian Lari',
  GHS => 'Ghanaian Cedi',
  HKD => 'Hong Kong Dollar',
  HNL => 'Honduran Lempira',
  HRK => 'Croatian Kuna',
  HUF => 'Hungarian Forint',
  IDR => 'Indonesian Rupiah',
  ILS => 'Israeli New Sheqel',
  INR => 'Indian Rupee',
  IQD => 'Iraqi Dinar',
  ISK => 'Icelandic Króna',
  JMD => 'Jamaican Dollar',
  JOD => 'Jordanian Dinar',
  JPY => 'Japanese Yen',
  KES => 'Kenyan Shilling',
  KGS => 'Kyrgystani Som',
  KRW => 'South Korean Won',
  KWD => 'Kuwaiti Dinar',
  KYD => 'Cayman Islands Dollar',
  KZT => 'Kazakhstani Tenge',
  LAK => 'Laotian Kip',
  LBP => 'Lebanese Pound',
  LKR => 'Sri Lankan Rupee',
  LTL => 'Lithuanian Litas',
  MAD => 'Moroccan Dirham',
  MDL => 'Moldovan Leu',
  MKD => 'Macedonian Denar',
  MMK => 'Myanma Kyat',
  MOP => 'Macanese Pataca',
  MTL => 'Maltese Lira',
  MUR => 'Mauritian Rupee',
  MVR => 'Maldivian Rufiyaa',
  MXN => 'Mexican Peso',
  MYR => 'Malaysian Ringgit',
  NAD => 'Namibian Dollar',
  NGN => 'Nigerian Naira',
  NIO => 'Nicaraguan Córdoba',
  NOK => 'Norwegian Krone',
  NPR => 'Nepalese Rupee',
  NZD => 'New Zealand Dollar',
  OMR => 'Omani Rial',
  PAB => 'Panamanian Balboa',
  PEN => 'Peruvian Nuevo Sol',
  PHP => 'Philippine Peso',
  PKR => 'Pakistani Rupee',
  PLN => 'Polish Zloty',
  PYG => 'Paraguayan Guarani',
  QAR => 'Qatari Rial',
  RON => 'Romanian Leu',
  ROL => 'Romanian Leu (1952-2006)',
  RSD => 'Serbian Dinar',
  RUB => 'Russian Ruble',
  SAR => 'Saudi Riyal',
  SCR => 'Seychellois Rupee',
  SEK => 'Swedish Krona',
  SGD => 'Singapore Dollar',
  SIT => 'Slovenian Tolar',
  SKK => 'Slovak Koruna',
  SVC => 'Salvadoran Colón',
  THB => 'Thai Baht',
  TND => 'Tunisian Dinar',
  TRL => 'Turkish Lira (1922-2005)',
  TRY => 'Turkish Lira',
  TTD => 'Trinidad and Tobago Dollar',
  TWD => 'New Taiwan Dollar',
  TZS => 'Tanzanian Shilling',
  UAH => 'Ukrainian Hryvnia',
  UGX => 'Ugandan Shilling',
  USD => 'US Dollar',
  UYU => 'Uruguayan Peso',
  UZS => 'Uzbekistan Som',
  VEB => 'Venezuelan Bolívar (1871-2008)',
  VEF => 'Venezuelan Bolívar (2008-2018)',
  VES => 'Venezuelan Bolívar',
  VND => 'Vietnamese Dong',
  WST => 'Samoan Tala',
  XCD => 'East Caribbean Dollar',
  XOF => 'CFA Franc BCEAO',
  XPF => 'CFP Franc',
  YER => 'Yemeni Rial',
  ZAR => 'South African Rand',
}

constant @currencies-that-use-dollar-sign = <
  USD AUD CAD BSD BZD BSD BMD BND KYD XCD FJD GYD HKD JMD
  KID LRD NAD SGD SBD SRD TWD TTD TVD WST TOP MOP NIO ARS
  CLP UYU MXN BRL
>;

constant %prefix-currency-sigils = {
  any(@currencies-that-use-dollar-sign) => '$',
  'AMD' => '֏',
  'AZN' => '₼',
  'CRC' => '₡',
  'GBP' => '£',
  'GEL' => '₾',
  'EUR' => '€',
  'KRW' => '₩',
  'MNT' => '₮',
  'RUB' => '₽',
  'TRY' => '₺',
  'JPY'|'RMB' => '¥',
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
    has FatRat $.amount is required;
    has Str $.currency is required;

    multi method new(Str $input) {
        if $input ~~ /<money-regex>/ {
            self.bless(amount => $<money-regex><money-amount>.FatRat, currency => $<money-regex><currency-code>.Str);
        } else {
            fail { "Not a valid money string input" };
        }
    }

    multi method new(FatRat :$amount, Str :$currency) {
        self.bless(:$amount, :$currency);
    }

    multi method new(FatRat $amount, Str $currency) {
        self.bless(:$amount, :$currency);
    }

    multi method new(Rat :$amount, Str :$currency) {
        self.bless(:amount($amount.FatRat), :$currency)
    }

    multi method new(Rat $amount, Str $currency) {
        self.bless(:amount($amount.FatRat), :$currency)
    }

    multi method new(Int :$amount, Str :$currency) {
        self.bless(:amount($amount.FatRat), $currency)
    }

    multi method new(Int $amount, Str $currency) {
        self.bless(:amount($amount.FatRat), :$currency)
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
        Money.new(
          amount => $<money-regex><money-amount>.FatRat,
          currency => $<money-regex><currency-code>.Str
        );
    } else {
        fail { "Not a valid money string input" };
    }
}

multi sub money(Rat $amount, Str $currency --> Money) is export {
    Money.new(:$amount, :$currency)
}

multi sub infix:«==»(Money:D $a, Money:D $b) is export {
    $a.amount == $b.amount && $a.currency eq $b.currency
}

multi sub infix:«+»(Money $a, Money $b) is export {
    fail "Currencies must be the same in order to add value. Got $($a.currency) and $($b.currency)" \
        if $a.currency ne $b.currency;

    Money.new(amount => $a.amount + $b.amount, currency => $a.currency);
}

multi sub infix:«+»(Money $a, Rat $b) is export {
    Money.new(amount => $a.amount + $b, currency => $a.currency);
}

multi sub infix:«+»(Money $a, Int $b) is export {
    Money.new(amount => $a.amount + $b, currency => $a.currency);
}

multi sub infix:«-»(Money $a, Money $b) is export {
    fail "Currencies must be the same in order to subtract. Got $($a.currency) and $($b.currency)" \
        if $a.currency ne $b.currency;

    Money.new(amount => $a.amount - $b.amount, currency => $a.currency);
}

multi sub infix:«-»(Money $a, Rat $b) is export {
    Money.new(amount => $a.amount - $b, currency => $a.currency);
}

multi sub infix:«-»(Money $a, Int $b) is export {
    Money.new(amount => $a.amount - $b, currency => $a.currency);
}

multi sub prefix:«-»(Money $a) is export {
    Money.new(-$a.amount, $a.currency);
}

multi sub infix:<cmp>(Money $a, Money $b) is export {
    fail "Currencies must be the same in order to compare. Got $($a.currency) and $($b.currency)" \
        if $a.currency ne $b.currency;

    $a.amount cmp $b.amount
}

multi sub infix:«*»(Money $a, Rat $b) is export {
    Money.new(amount => $a.amount * $b, currency => $a.currency);
}

multi sub infix:«*»(Money $a, Int $b) is export {
    Money.new(amount => $a.amount * $b, currency => $a.currency);
}

multi sub infix:«/»(Money $a, Rat $b) is export {
    Money.new(amount => $a.amount / $b, currency => $a.currency);
}

multi sub infix:«/»(Money $a, Int $b) is export {
    Money.new(amount => $a.amount / $b, currency => $a.currency);
}

my package EXPORT::ALL {
    for %currencies.keys -> $currency-code {
        OUR::{'&postfix:<' ~ $currency-code ~ '>'} := sub (Rat:D $amount) { return Money.new($amount, $currency-code) };
    }
}
