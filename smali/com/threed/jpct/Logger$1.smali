.class Lcom/threed/jpct/Logger$1;
.super Ljava/io/Writer;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/threed/jpct/Logger;->getWriter()Ljava/io/Writer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private sb:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 207
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/Logger$1;->sb:Ljava/lang/StringBuilder;

    .line 1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/threed/jpct/Logger$1;->flush()V

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threed/jpct/Logger$1;->sb:Ljava/lang/StringBuilder;

    .line 215
    return-void
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    iget-object v0, p0, Lcom/threed/jpct/Logger$1;->sb:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    .line 224
    :goto_0
    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/Logger$1;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/threed/jpct/Logger$1;->sb:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0
.end method

.method public write([CII)V
    .locals 8
    .param p1, "arg0"    # [C
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 228
    iget-object v5, p0, Lcom/threed/jpct/Logger$1;->sb:Ljava/lang/StringBuilder;

    if-nez v5, :cond_1

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    if-nez p2, :cond_2

    add-int v5, p3, p2

    array-length v6, p1

    if-eq v5, v6, :cond_3

    .line 233
    :cond_2
    new-array v4, p3, [C

    .line 234
    .local v4, "tmp":[C
    invoke-static {p1, p2, v4, v7, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 237
    .end local v4    # "tmp":[C
    :cond_3
    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v3

    .line 238
    .local v3, "str":Ljava/lang/String;
    const/16 v5, 0xa

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 239
    .local v2, "pos":I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_4

    .line 240
    invoke-virtual {v3, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "p1":Ljava/lang/String;
    iget-object v5, p0, Lcom/threed/jpct/Logger$1;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {p0}, Lcom/threed/jpct/Logger$1;->flush()V

    .line 243
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_0

    .line 244
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, "p2":Ljava/lang/String;
    iget-object v5, p0, Lcom/threed/jpct/Logger$1;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 248
    .end local v0    # "p1":Ljava/lang/String;
    .end local v1    # "p2":Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/threed/jpct/Logger$1;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
