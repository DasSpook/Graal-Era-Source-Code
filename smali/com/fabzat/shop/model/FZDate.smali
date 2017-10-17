.class public Lcom/fabzat/shop/model/FZDate;
.super Ljava/lang/Object;
.source "FZDate.java"


# instance fields
.field private date:Ljava/lang/String;

.field private timezone:Ljava/lang/String;

.field private timezone_type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/fabzat/shop/model/FZDate;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getTimezone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/fabzat/shop/model/FZDate;->timezone:Ljava/lang/String;

    return-object v0
.end method

.method public getTimezone_type()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/fabzat/shop/model/FZDate;->timezone_type:I

    return v0
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/fabzat/shop/model/FZDate;->date:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public setTimezone(Ljava/lang/String;)V
    .locals 0
    .param p1, "timezone"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/fabzat/shop/model/FZDate;->timezone:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setTimezone_type(I)V
    .locals 0
    .param p1, "timezone_type"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/fabzat/shop/model/FZDate;->timezone_type:I

    .line 26
    return-void
.end method
