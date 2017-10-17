.class public Lcom/fabzat/shop/model/FZLocaleInfo;
.super Ljava/lang/Object;
.source "FZLocaleInfo.java"


# instance fields
.field private _country:Ljava/lang/String;

.field private _countryShort:Ljava/lang/String;

.field private _currencyCode:Ljava/lang/String;

.field private _currencySymbol:Ljava/lang/String;

.field private _decimalFormat:C

.field private _language:Ljava/lang/String;

.field private _locale:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 22
    .local v1, "defaultLocale":Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/fabzat/shop/model/FZLocaleInfo;->_language:Ljava/lang/String;

    .line 25
    invoke-static {v1}, Ljava/util/Currency;->getInstance(Ljava/util/Locale;)Ljava/util/Currency;

    move-result-object v0

    .line 26
    .local v0, "currency":Ljava/util/Currency;
    invoke-virtual {v0}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/fabzat/shop/model/FZLocaleInfo;->_currencyCode:Ljava/lang/String;

    .line 27
    invoke-virtual {v0}, Ljava/util/Currency;->getSymbol()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/fabzat/shop/model/FZLocaleInfo;->_currencySymbol:Ljava/lang/String;

    .line 30
    invoke-virtual {v1}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/fabzat/shop/model/FZLocaleInfo;->_country:Ljava/lang/String;

    .line 31
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/fabzat/shop/model/FZLocaleInfo;->_countryShort:Ljava/lang/String;

    .line 34
    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/fabzat/shop/model/FZLocaleInfo;->_locale:Ljava/lang/String;

    .line 37
    invoke-static {v1}, Ljava/text/DecimalFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v2

    check-cast v2, Ljava/text/DecimalFormat;

    .line 38
    .local v2, "format":Ljava/text/DecimalFormat;
    invoke-virtual {v2}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v3

    .line 39
    .local v3, "symbols":Ljava/text/DecimalFormatSymbols;
    invoke-virtual {v3}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v4

    iput-char v4, p0, Lcom/fabzat/shop/model/FZLocaleInfo;->_decimalFormat:C

    .line 41
    return-void
.end method


# virtual methods
.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/fabzat/shop/model/FZLocaleInfo;->_country:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryShort()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/fabzat/shop/model/FZLocaleInfo;->_countryShort:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrencyCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/fabzat/shop/model/FZLocaleInfo;->_currencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrencySymbol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fabzat/shop/model/FZLocaleInfo;->_currencySymbol:Ljava/lang/String;

    return-object v0
.end method

.method public getDecimalSeparator()C
    .locals 1

    .prologue
    .line 44
    iget-char v0, p0, Lcom/fabzat/shop/model/FZLocaleInfo;->_decimalFormat:C

    return v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/fabzat/shop/model/FZLocaleInfo;->_language:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/fabzat/shop/model/FZLocaleInfo;->_locale:Ljava/lang/String;

    return-object v0
.end method

.method public setLocale(Ljava/lang/String;)V
    .locals 0
    .param p1, "locale"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/fabzat/shop/model/FZLocaleInfo;->_locale:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public set_country(Ljava/lang/String;)V
    .locals 0
    .param p1, "_country"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/fabzat/shop/model/FZLocaleInfo;->_country:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "locals[lang]="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fabzat/shop/model/FZLocaleInfo;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 82
    const-string v1, "_locale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fabzat/shop/model/FZLocaleInfo;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 83
    const-string v1, "locals[currency]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fabzat/shop/model/FZLocaleInfo;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
