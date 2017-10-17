.class public Lcom/fabzat/shop/model/FZException;
.super Ljava/lang/Exception;
.source "FZException.java"


# static fields
.field private static final serialVersionUID:J = -0x1f3d03219268334dL


# instance fields
.field protected _message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/fabzat/shop/model/FZException;->_message:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/fabzat/shop/model/FZException;->_message:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public addMessage(Ljava/lang/String;)Lcom/fabzat/shop/model/FZException;
    .locals 2
    .param p1, "complement"    # Ljava/lang/String;

    .prologue
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fabzat/shop/model/FZException;->_message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fabzat/shop/model/FZException;->_message:Ljava/lang/String;

    .line 26
    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/fabzat/shop/model/FZException;->_message:Ljava/lang/String;

    return-object v0
.end method
