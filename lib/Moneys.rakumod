use v6.d;

unit module Moneys;

# TODO: Finish up expanding the currency info to contain currency information
class Currency is Enumeration {
  our %currency-info = (
    AED => (
      :name<United Arab Emirates Dirham>
    ),
    AFN => (
      :name<Afghan Afghani>
    ),
    ALL => (
      :name<Albanian Lek>
    ),
    AMD => (
      :name<Armenian Dram>
    ),
    ANG => (
      :name<Netherlands Antillean Guilder>
    ),
    ARS => (
      :name<Argentine Peso>
    ),
    AUD => (
      :name<Australian Dollar>
    ),
    AWG => (
      :name<Aruban Florin>
    ),
    AZN => (
      :name<Azerbaijani Manat>
    ),
    BAM => (
      :name<Bosnia-Herzegovina Convertible Mark>
    ),
    BDT => (
      :name<Bangladeshi Taka>
    ),
    BGN => (
      :name<Bulgarian Lev>
    ),
    BHD => (
      :name<Bahraini Dinar>
    ),
    BND => (
      :name<Brunei Dollar>
    ),
    BOB => (
      :name<Bolivian Boliviano>
    ),
    BRL => (
      :name<Brazilian Real>
    ),
    BTN => (
      :name<Bhutanese Ngultrum>
    ),
    BWP => (
      :name<Botswanan Pula>
    ),
    BYN => (
      :name<Belarusian Ruble>
    ),
    BZD => (
      :name<Belize Dollar>
    ),
    CAD => (
      :name<Canadian Dollar>
    ),
    CHF => (
      :name<Swiss Franc>
    ),
    CLP => (
      :name<Chilean Peso>
    ),
    CNY => (
      :name<Chinese Yuan>
    ),
    COP => (
      :name<Colombian Peso>
    ),
    CRC => (
      :name<Costa Rican Colón>
    ),
    CVE => (
      :name<Cape Verdean Escudo>
    ),
    DKK => (
      :name<Danish Krone>,
    ),
    DOP => (
      :name<Dominican Peso>,
    ),
    DZD => (
      :name<Algerian Dinar>,
    ),
    EEK => (
      :name<Estonian Kroon>,
    ),
    EGP => (
      :name<Egyptian Pound>,
    ),
    EUR => (
      :name<Euro>,
    ),
    FJD => (
      :name<Fijian Dollar>,
    ),
    GBP => (
      :name<British Pound Sterling>,
    ),
    GEL => (
      :name<Georgian Lari>,
    ),
    GHS => (
      :name<Ghanaian Cedi>,
    ),
    HKD => (
      :name<Hong Kong Dollar>,
    ),
    HNL => (
      :name<Honduran Lempira>,
    ),
    HRK => (
      :name<Croatian Kuna>,
    ),
    HUF => (
      :name<Hungarian Forint>,
    ),
    IDR => (
      :name<Indonesian Rupiah>,
    ),
    ILS => (
      :name<Israeli New Sheqel>,
    ),
    INR => (
      :name<Indian Rupee>,
    ),
    IQD => (
      :name<Iraqi Dinar>,
    ),
    ISK => (
      :name<Icelandic Króna>,
    ),
    JMD => (
      :name<Jamaican Dollar>,
    ),
    JOD => (
      :name<Jordanian Dinar>,
    ),
    JPY => (
      :name<Japanese Yen>,
    ),
    KES => (
      :name<Kenyan Shilling>,
    ),
    KGS => (
      :name<Kyrgystani Som>,
    ),
    KRW => (
      :name<South Korean Won>,
    ),
    KWD => (
      :name<Kuwaiti Dinar>,
    ),
    KYD => (
      :name<Cayman Islands Dollar>,
    ),
    KZT => (
      :name<Kazakhstani Tenge>,
    ),
    LAK => (
      :name<Laotian Kip>,
    ),
    LBP => (
      :name<Lebanese Pound>,
    ),
    LKR => (
      :name<Sri Lankan Rupee>,
    ),
    LTL => (
      :name<Lithuanian Litas>,
    ),
    MAD => (
      :name<Moroccan Dirham>,
    ),
    MDL => (
      :name<Moldovan Leu>,
    ),
    MKD => (
      :name<Macedonian Denar>,
    ),
    MMK => (
      :name<Myanma Kyat>,
    ),
    MOP => (
      :name<Macanese Pataca>,
    ),
    MTL => (
      :name<Maltese Lira>,
    ),
    MUR => (
      :name<Mauritian Rupee>,
    ),
    MVR => (
      :name<Maldivian Rufiyaa>,
    ),
    MXN => (
      :name<Mexican Peso>,
    ),
    MYR => (
      :name<Malaysian Ringgit>,
    ),
    NAD => (
      :name<Namibian Dollar>,
    ),
    NGN => (
      :name<Nigerian Naira>,
    ),
    NIO => (
      :name<Nicaraguan Córdoba>,
    ),
    NOK => (
      :name<Norwegian Krone>,
    ),
    NPR => (
      :name<Nepalese Rupee>,
    ),
    NZD => (
      :name<New Zealand Dollar>,
    ),
    OMR => (
      :name<Omani Rial>,
    ),
    PAB => (
      :name<Panamanian Balboa>,
    ),
    PEN => (
      :name<Peruvian Nuevo Sol>,
    ),
    PHP => (
      :name<Philippine Peso>,
    ),
    PKR => (
      :name<Pakistani Rupee>,
    ),
    PLN => (
      :name<Polish Zloty>,
    ),
    PYG => (
      :name<Paraguayan Guarani>,
    ),
    QAR => (
      :name<Qatari Rial>,
    ),
    RON => (
      :name<Romanian Leu>,
    ),
    RSD => (
      :name<Serbian Dinar>,
    ),
    RUB => (
      :name<Russian Ruble>,
    ),
    SAR => (
      :name<Saudi Riyal>,
    ),
    SCR => (
      :name<Seychellois Rupee>,
    ),
    SEK => (
      :name<Swedish Krona>,
    ),
    SGD => (
      :name<Singapore Dollar>,
    ),
    SIT => (
      :name<Slovenian Tolar>,
    ),
    SKK => (
      :name<Slovak Koruna>,
    ),
    SVC => (
      :name<Salvadoran Colón>
    ),
    THB => (
      :name<Thai Baht>
      :symbols['฿'],
      :position<left-no-space>
    ),
    TND => (
      :name<Tunisian Dinar>,
    ),
    TRY => (
      :name<Turkish Lira>, 
      :symbols['₺'],
      :position<left-no-space>
    ),
    TTD => (
      :name<Trinidad and Tobago Dollar>,
    ),
    TWD => (
      :name<New Taiwan Dollar>,
    ),
    TZS => (
      :name<Tanzanian Shilling>,
    ),
    UAH => (
      :name<Ukrainian Hryvnia>,
    ),
    UGX => (
      :name<Ugandan Shilling>,
    ),
    USD => (
      :name<US Dollar>, 
      :symbols['$'],
      :position<left-no-space>
    ),
    UYU => (
      :name<Uruguayan Peso>, 
      :symbols['$'],
      :position<left-no-space>
    ),
    UZS => (
      :name<Uzbekistani Som>
    ),
    VES => (
      :name<Venezuelan Bolívar>
    ),
    VND => (
      :name<Vietnamese Dong>,
      :symbols['₫'],
      :position<right-space>
    ),
    WST => (
      :name<Samoan Tala>
      :symbols['$'],
      :position<left-no-space>
    ),
    XCD => (
      :name<East Caribbean Dollar>,
    ),
    XOF => (
      :name<CFA Franc BCEAO>,
    ),
    XPF => (
      :name<CFP Franc>,
    ),
    YER => (
      :name<Yemeni Rial>,
    ),
    ZAR => (
      :name<South African Rand>,
    ),
  )
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

  multi method new(Int :$amount, Str :$currency) {
    self.bless(:amount($amount / 1.0), $currency)
  }

  multi method new(Int $amount, Str $currency) {
    self.bless(:amount($amount / 1.0), :$currency)
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

multi sub infix:<+>(Money $a, Int $b) is export {
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

my package EXPORT::ALL {
  for %Currencies::currency-info.keys -> $currency-code {
    OUR::{'&postfix:<' ~ $currency-code ~ '>'} := sub (Rat:D $amount) { return Money.new($amount, $currency-code) };
  }
}
