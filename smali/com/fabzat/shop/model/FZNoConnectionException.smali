.class public Lcom/fabzat/shop/model/FZNoConnectionException;
.super Lcom/fabzat/shop/model/FZException;
.source "FZNoConnectionException.java"


# static fields
.field private static final serialVersionUID:J = 0x255ce410e40124ddL


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/fabzat/shop/model/FZException;-><init>()V

    .line 24
    const-string v0, "fz_alert_title_errorConnect"

    invoke-static {v0}, Lcom/fabzat/shop/utils/FZTools;->getStringId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fabzat/shop/model/FZNoConnectionException;->_message:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # I

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/fabzat/shop/model/FZException;-><init>()V

    .line 16
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fabzat/shop/model/FZNoConnectionException;->_message:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/fabzat/shop/model/FZException;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/fabzat/shop/model/FZNoConnectionException;->_message:Ljava/lang/String;

    .line 21
    return-void
.end method
