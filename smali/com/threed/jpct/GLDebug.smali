.class Lcom/threed/jpct/GLDebug;
.super Ljava/lang/Object;
.source "GLDebug.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field private gl:Ljavax/microedition/khronos/opengles/GL;

.field private sb:Ljava/lang/StringBuilder;


# direct methods
.method private constructor <init>(Ljavax/microedition/khronos/opengles/GL;)V
    .locals 1
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threed/jpct/GLDebug;->gl:Ljavax/microedition/khronos/opengles/GL;

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/GLDebug;->sb:Ljava/lang/StringBuilder;

    .line 27
    iput-object p1, p0, Lcom/threed/jpct/GLDebug;->gl:Ljavax/microedition/khronos/opengles/GL;

    .line 28
    return-void
.end method

.method public static create(Ljavax/microedition/khronos/opengles/GL;)Ljavax/microedition/khronos/opengles/GL;
    .locals 3
    .param p0, "gl"    # Ljavax/microedition/khronos/opengles/GL;

    .prologue
    .line 19
    if-nez p0, :cond_0

    .line 20
    const/4 v0, 0x0

    .line 23
    :goto_0
    return-object v0

    .line 22
    :cond_0
    const-string v0, "Creating dynamic proxy for gl!"

    invoke-static {v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Lcom/threed/jpct/GLDebug;

    invoke-direct {v2, p0}, Lcom/threed/jpct/GLDebug;-><init>(Ljavax/microedition/khronos/opengles/GL;)V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/opengles/GL;

    goto :goto_0
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 32
    iget-object v7, p0, Lcom/threed/jpct/GLDebug;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 33
    iget-object v7, p0, Lcom/threed/jpct/GLDebug;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x28

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    const/4 v1, 0x1

    .line 35
    .local v1, "first":Z
    array-length v7, p3

    :goto_0
    if-lt v6, v7, :cond_2

    .line 42
    iget-object v6, p0, Lcom/threed/jpct/GLDebug;->sb:Ljava/lang/StringBuilder;

    const/16 v7, 0x29

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 44
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 45
    .local v4, "time":J
    iget-object v6, p0, Lcom/threed/jpct/GLDebug;->gl:Ljavax/microedition/khronos/opengles/GL;

    invoke-virtual {p2, v6, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 46
    .local v3, "obj":Ljava/lang/Object;
    iget-object v6, p0, Lcom/threed/jpct/GLDebug;->sb:Ljava/lang/StringBuilder;

    const-string v7, " took "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    sub-long/2addr v7, v4

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ns"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget-object v6, p0, Lcom/threed/jpct/GLDebug;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    .line 48
    if-eqz v3, :cond_0

    .line 49
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "return value: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    .line 51
    :cond_0
    iget-object v6, p0, Lcom/threed/jpct/GLDebug;->gl:Ljavax/microedition/khronos/opengles/GL;

    check-cast v6, Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v6}, Ljavax/microedition/khronos/opengles/GL10;->glGetError()I

    move-result v0

    .line 52
    .local v0, "error":I
    if-eqz v0, :cond_1

    .line 53
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "!! ERROR !! - "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 55
    :cond_1
    return-object v3

    .line 35
    .end local v0    # "error":I
    .end local v3    # "obj":Ljava/lang/Object;
    .end local v4    # "time":J
    :cond_2
    aget-object v2, p3, v6

    .line 36
    .local v2, "o":Ljava/lang/Object;
    if-nez v1, :cond_3

    .line 37
    iget-object v8, p0, Lcom/threed/jpct/GLDebug;->sb:Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    :cond_3
    const/4 v1, 0x0

    .line 40
    iget-object v8, p0, Lcom/threed/jpct/GLDebug;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method
