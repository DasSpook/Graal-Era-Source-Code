.class public Lcom/fabzat/shop/model/FZError;
.super Ljava/lang/Object;
.source "FZError.java"


# instance fields
.field private error:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "err"    # Ljava/lang/String;

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/fabzat/shop/model/FZError;->error:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method public getError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/fabzat/shop/model/FZError;->error:Ljava/lang/String;

    return-object v0
.end method

.method public hasError()Z
    .locals 2

    .prologue
    .line 15
    iget-object v0, p0, Lcom/fabzat/shop/model/FZError;->error:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fabzat/shop/model/FZError;->error:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
