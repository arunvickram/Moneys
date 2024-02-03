use v6.d;

unit module Moneys;

# TODO: Finish up expanding the currency info to contain currency information
class Currency is export does Enumeration {
  my %currency-info = (
    AED => (
      :name<United Arab Emirates Dirham>
    ),
    AFN => (
      :name<Afghan Afghani>
      :symbols(:default(:text<Afs. >, :position<before>)),
    ),
    ALL => (
      :name<Albanian Lek>
    ),
    AMD => (
      :name<Armenian Dram>
      :symbols(:default(:text<֏>, :position<before>)),
    ),
    ANG => (
      :name<Netherlands Antillean Guilder>
      :symbols(:default(:text<ƒ>, :position<before>)),
    ),
    ARS => (
      :name<Argentine Peso>
      :symbols(:default(:text<$>, :position<before>)),
    ),
    AUD => (
      :name<Australian Dollar>
      :symbols(:default(:text<$>, :position<before>)),
    ),
    AWG => (
      :name<Aruban Florin>
      :symbols(:default(:text<Afl. >, :position<before>)),
    ),
    AZN => (
      :name<Azerbaijani Manat>
      :symbols(:default(:text<₼>, :position<before>)),
    ),
    BAM => (
      :name<Bosnia-Herzegovina Convertible Mark>
      :symbols(:default(:text<KM >, :position<before>)),
    ),
    BDT => (
      :name<Bangladeshi Taka>
      :symbols(:default(:text<৳>, :position<before>)),
    ),
    BGN => (
      :name<Bulgarian Lev>
    ),
    BHD => (
      :name<Bahraini Dinar>
    ),
    BND => (
      :name<Brunei Dollar>
      :symbols(:default(:text<$>, :position<before>)),
    ),
    BOB => (
      :name<Bolivian Boliviano>
      :symbols(:default(:text<Bs>, :position<before>)),
    ),
    BRL => (
      :name<Brazilian Real>
      :symbols(:default(:text<R$>, :position<before>)),
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
      :symbols(:default(:text<$>, :position<before>)),
    ),
    CAD => (
      :name<Canadian Dollar>
      :symbols(:default(:text<$>, :position<before>)),
    ),
    CHF => (
      :name<Swiss Franc>
    ),
    CLP => (
      :name<Chilean Peso>
      :symbols(:default(:text<$>, :position<before>)),
    ),
    CNY => (
      :name<Chinese Yuan>
      :symbols(:default(:text<¥>, :position<before>))
    ),
    COP => (
      :name<Colombian Peso>
      :symbols(:default(:text<$>, :position<before>)),
    ),
    CRC => (
      :name<Costa Rican Colón>,
      :symbols(:default(:text<₡>, :position<before>)),
    ),
    CVE => (
      :name<Cape Verdean Escudo>
    ),
    DKK => (
      :name<Danish Krone>,
    ),
    DOP => (
      :name<Dominican Peso>,
      :symbols(:default(:text<$>, :position<before>)),
    ),
    DZD => (
      :name<Algerian Dinar>,
    ),
    EGP => (
      :name<Egyptian Pound>,
    ),
    EUR => (
      :name<Euro>,
      :symbols(:default(:text<€>, :position<before>)),
    ),
    FJD => (
      :name<Fijian Dollar>,
      :symbols(:default(:text<$>, :position<before>)),
    ),
    GBP => (
      :name<British Pound Sterling>,
      :symbols(:default(:text<£>, :position<before>)),
    ),
    GEL => (
      :name<Georgian Lari>,
      :symbols(:default(:text<₾>, :position<before>)),
    ),
    GHS => (
      :name<Ghanaian Cedi>,
      :symbols(:default(:text<GH₵>, :position<before>))
    ),
    HKD => (
      :name<Hong Kong Dollar>,
      :symbols(:default(:text<$>, :position<before>)),
    ),
    HNL => (
      :name<Honduran Lempira>,
      :symbols(:default(:text<L>, :position<before>)),
    ),
    HRK => (
      :name<Croatian Kuna>,
      :symbols(:default(:text< kn>, :position<after>))
    ),
    HUF => (
      :name<Hungarian Forint>,
      :symbols(:default(:text< Ft>, :position<after>))
    ),
    IDR => (
      :name<Indonesian Rupiah>,
      :symbols(:default(:text<Rp>, :position<before>))
    ),
    ILS => (
      :name<Israeli New Sheqel>,
      :symbols(:default(:text<₪>, :position<before>)),
    ),
    INR => (
      :name<Indian Rupee>,
      :symbols(
        :default(:text<₹>, :position<before>),
        :bengali(:text<৳>, :position<before>),
        :tamil(:text<௹. >, :position<before>),
      )
    ),
    IQD => (
      :name<Iraqi Dinar>,
    ),
    ISK => (
      :name<Icelandic Króna>,
      :symbols(:default(:text< kr>, :position<after>)),
    ),
    JMD => (
      :name<Jamaican Dollar>,
      :symbols(:default(:text<$>, :position<before>)),
    ),
    JOD => (
      :name<Jordanian Dinar>,
    ),
    JPY => (
      :name<Japanese Yen>,
      :symbols(
        :default(:text<¥>, :position<before>),
        :native(:text<円>, :position<before>)
      )
    ),
    KES => (
      :name<Kenyan Shilling>,
    ),
    KGS => (
      :name<Kyrgystani Som>,
    ),
    KHR => (
      :name<Cambodian Riel>,
      :symbols(:default(:text<៛>, :position<after>))
    ),
    KRW => (
      :name<South Korean Won>,
      :symbols(:default(:text<₩>, :position<before>))
    ),
    KWD => (
      :name<Kuwaiti Dinar>,
    ),
    KYD => (
      :name<Cayman Islands Dollar>,
    ),
    KZT => (
      :name<Kazakhstani Tenge>,
      :symbols(:default(:text< ₸>, :position<after>)) # don't delete before symbol
    ),
    LAK => (
      :name<Laotian Kip>,
      :symbols(:default(:text<₭>, :position<before>)),
    ),
    LBP => (
      :name<Lebanese Pound>,
    ),
    LKR => (
      :name<Sri Lankan Rupee>,
      :symbols(:default(:text<Rs. >, :position<before>)),
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
    MNT => (
      :name<Mongolian Togrog>,
      :symbols(:default(:text<₮>, :position<before>))
    ),
    MOP => (
      :name<Macanese Pataca>,
      :symbols(:default(:text<$>, :position<before>)),
    ),
    MUR => (
      :name<Mauritian Rupee>,
      :symbols(:default(:text<Rs. >, :position<before>, :single<Re. >)),
    ),
    MVR => (
      :name<Maldivian Rufiyaa>,
      :symbols(:default(:text<Rf. >, :position<before>)),
    ),
    MXN => (
      :name<Mexican Peso>,
      :symbols(:default(:text<$>, :position<before>)),
    ),
    MYR => (
      :name<Malaysian Ringgit>,
      :symbols(:default(:text<RM>, :position<before>)),
    ),
    NAD => (
      :name<Namibian Dollar>,
      :symbols(:default(:text<$>, :position<before>)),
    ),
    NGN => (
      :name<Nigerian Naira>,
      :symbols(:default(:text<₦>, :position<before>)),
    ),
    NIO => (
      :name<Nicaraguan Córdoba>,
      :symbols(:default(:text<C$>, :position<before>)),
    ),
    NOK => (
      :name<Norwegian Krone>,
      :symbols(:default(:text< kr>, :position<after>)),
    ),
    NPR => (
      :name<Nepalese Rupee>,
      :symbols(:default(:text<Rs. >, :position<before>)),
    ),
    NZD => (
      :name<New Zealand Dollar>,
      :symbols(:default(:text<$>, :position<before>)),
    ),
    OMR => (
      :name<Omani Rial>,
    ),
    PAB => (
      :name<Panamanian Balboa>,
      :symbols(:default(:text<B/. >, :position<before>)),
    ),
    PEN => (
      :name<Peruvian Nuevo Sol>,
      :symbols(:default(:text<S/>, :position<before>)),
    ),
    PHP => (
      :name<Philippine Peso>,
      :symbols(:default(:text<₱>, :position<before>)),
    ),
    PKR => (
      :name<Pakistani Rupee>,
      :symbols(:default(:text<Rs. >, :position<before>)),
    ),
    PLN => (
      :name<Polish Zloty>,
    ),
    PYG => (
      :name<Paraguayan Guarani>,
      :symbols(:default(:text<₲>, :position<before>)),
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
      :symbols(:default(:text< ₽>, :position<after>)),
    ),
    SAR => (
      :name<Saudi Riyal>,
    ),
    SCR => (
      :name<Seychellois Rupee>,
    ),
    SEK => (
      :name<Swedish Krona>,
      :symbols(:default(:text< kr>, :position<after>)),
    ),
    SGD => (
      :name<Singapore Dollar>,
      :symbols(
        :default(:text<$>, :position<before>),
        :acronym(:text<S$>, :position<before>)
      ),
    ),
    SVC => (
      :name<Salvadoran Colón>,
      :symbols(:default(:text<₡>, :position<before>)),
    ),
    THB => (
      :name<Thai Baht>
      :symbols(:default(:text<฿>, :position<before>)),
    ),
    TND => (
      :name<Tunisian Dinar>,
    ),
    TRY => (
      :name<Turkish Lira>, 
      :symbols(:default(:text<₺>, :position<before>)),
    ),
    TTD => (
      :name<Trinidad and Tobago Dollar>,
      :symbols(:default(:text<$>, :position<before>)),
    ),
    TWD => (
      :name<New Taiwan Dollar>,
      :symbols(
        :default(:text<$>, :position<before>),
        :chinese(:text<元>, :position<before>),
        :acronym(:text<NT$>, :position<before>)
      ),
    ),
    TZS => (
      :name<Tanzanian Shilling>,
    ),
    UAH => (
      :name<Ukrainian Hryvnia>,
      :symbols(:default(:text<₴>, :position<before>))
    ),
    UGX => (
      :name<Ugandan Shilling>,
    ),
    USD => (
      :name<US Dollar>, 
      :symbols(:default(:text<$>, :position<before>)),
    ),
    UYU => (
      :name<Uruguayan Peso>, 
      :symbols(:default(:text<$>, :position<before>)),
    ),
    UZS => (
      :name<Uzbekistani Som>
    ),
    VES => (
      :name<Venezuelan Bolívar>
      :symbols(:default(:text<Bs.F >, :position<before>)),
    ),
    VND => (
      :name<Vietnamese Dong>,
      :symbols(:default(:text< ₫>, :position<after>)) # do not remove the space before dong symbol
    ),
    WST => (
      :name<Samoan Tala>
      :symbols(:default(:text<$>, :position<before>)),
    ),
    XCD => (
      :name<East Caribbean Dollar>,
      :symbols(:default(:text<$>, :position<before>)),
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
      :symbols(:default(:text<R>, :position<before>))
    ),
  );

  method new($code where any(%currency-info.keys)) {
    self.bless(key => $code, value => %currency-info{$code});
  }

  multi method gist(::?CLASS:D:) { "$!key" }
  multi method Str { "$!key" }
}

my token decimal { <[\d+]> }
my regex money-amount { <decimal>* '.' <decimal>+ }
my token currency-code { <:Lu> ** 3 }
my regex money-regex {
  <money-amount>
  \h*
  <currency-code>
}


class Money is export {
  has Rat $.amount is required;
  has Currency $.currency is required;

  multi method new(Str $input) {
    if $input ~~ /<money-regex>/ {
      self.bless(amount => $<money-regex><money-amount>.Rat, currency => $<money-regex><currency-code>.Str);
    } else {
      fail { "Not a valid money string input" };
    }
  }

  # multi method new(Rat :$amount, Currency :$currency) {
  #   self.bless(:$amount, :$currency)
  # }

  multi method new(Rat $amount, Currency $currency) {
    self.bless(:$amount, :$currency)
  }

  # multi method new(Rat :$amount, Str :$currency) {
  #   self.bless(:$amount, :currency(Currency.new($currency)))
  # }
  #
  # multi method new(Rat :$amount, Str :$currency) {
  #   self.bless(:$amount, :currency(Currency.new($currency)))
  # }

  multi method new(Int :$amount, Currency :$currency) {
    self.bless(:amount($amount / 1.0), :$currency)
  }

  multi method new(Int $amount, Currency $currency) {
    self.bless(:amount($amount / 1.0), :$currency)
  }

  multi method abs { Money.new($!amount.abs, $!currency) }

  method gist { sprintf("%.2f %s", $!amount, $!currency.Str); }

  method Str { sprintf("%.2f %s", $!amount, $!currency.Str); }

  method casual(Str :$symbol --> Str) {
    my $amount-str = sprintf("%.2f", $!amount);
    my $config = $symbol || 'default';
    
    with $!currency<symbols>{$config} -> %symbol {
      given %symbol<position> {
        when 'before' { %symbol<text> ~ $amount-str }
        when 'after'  { $amount-str ~ %symbol<text> }
      }
    } else {
      $amount-str ~ " " ~ $!currency.Str; # we did our best to format it
    }

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
    OUR::{'&postfix:<' ~ $currency-code ~ '>'} := sub (Rat:D $amount) { return Money.new($amount, Currency.new($currency-code)) };
  }
}
