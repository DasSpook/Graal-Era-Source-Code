.class public final Lorg/apache/http/protocol/ImmutableHttpProcessor;
.super Ljava/lang/Object;
.source "ImmutableHttpProcessor.java"

# interfaces
.implements Lorg/apache/http/protocol/HttpProcessor;


# annotations
.annotation build Lorg/apache/http/annotation/ThreadSafe;
.end annotation


# instance fields
.field private final requestInterceptors:[Lorg/apache/http/HttpRequestInterceptor;

.field private final responseInterceptors:[Lorg/apache/http/HttpResponseInterceptor;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/HttpRequestInterceptor;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/HttpResponseInterceptor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "requestInterceptors":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/HttpRequestInterceptor;>;"
    .local p2, "responseInterceptors":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/HttpResponseInterceptor;>;"
    const/4 v2, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    if-eqz p1, :cond_0

    .line 78
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 79
    .local v0, "l":I
    new-array v1, v0, [Lorg/apache/http/HttpRequestInterceptor;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/http/HttpRequestInterceptor;

    iput-object v1, p0, Lorg/apache/http/protocol/ImmutableHttpProcessor;->requestInterceptors:[Lorg/apache/http/HttpRequestInterceptor;

    .line 83
    .end local v0    # "l":I
    :goto_0
    if-eqz p2, :cond_1

    .line 84
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 85
    .restart local v0    # "l":I
    new-array v1, v0, [Lorg/apache/http/HttpResponseInterceptor;

    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/http/HttpResponseInterceptor;

    iput-object v1, p0, Lorg/apache/http/protocol/ImmutableHttpProcessor;->responseInterceptors:[Lorg/apache/http/HttpResponseInterceptor;

    .line 89
    .end local v0    # "l":I
    :goto_1
    return-void

    .line 81
    :cond_0
    new-array v1, v2, [Lorg/apache/http/HttpRequestInterceptor;

    iput-object v1, p0, Lorg/apache/http/protocol/ImmutableHttpProcessor;->requestInterceptors:[Lorg/apache/http/HttpRequestInterceptor;

    goto :goto_0

    .line 87
    :cond_1
    new-array v1, v2, [Lorg/apache/http/HttpResponseInterceptor;

    iput-object v1, p0, Lorg/apache/http/protocol/ImmutableHttpProcessor;->responseInterceptors:[Lorg/apache/http/HttpResponseInterceptor;

    goto :goto_1
.end method

.method public constructor <init>(Lorg/apache/http/protocol/HttpRequestInterceptorList;Lorg/apache/http/protocol/HttpResponseInterceptorList;)V
    .locals 5
    .param p1, "requestInterceptors"    # Lorg/apache/http/protocol/HttpRequestInterceptorList;
    .param p2, "responseInterceptors"    # Lorg/apache/http/protocol/HttpResponseInterceptorList;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    if-eqz p1, :cond_0

    .line 100
    invoke-interface {p1}, Lorg/apache/http/protocol/HttpRequestInterceptorList;->getRequestInterceptorCount()I

    move-result v0

    .line 101
    .local v0, "count":I
    new-array v2, v0, [Lorg/apache/http/HttpRequestInterceptor;

    iput-object v2, p0, Lorg/apache/http/protocol/ImmutableHttpProcessor;->requestInterceptors:[Lorg/apache/http/HttpRequestInterceptor;

    .line 102
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 103
    iget-object v2, p0, Lorg/apache/http/protocol/ImmutableHttpProcessor;->requestInterceptors:[Lorg/apache/http/HttpRequestInterceptor;

    invoke-interface {p1, v1}, Lorg/apache/http/protocol/HttpRequestInterceptorList;->getRequestInterceptor(I)Lorg/apache/http/HttpRequestInterceptor;

    move-result-object v3

    aput-object v3, v2, v1

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    new-array v2, v4, [Lorg/apache/http/HttpRequestInterceptor;

    iput-object v2, p0, Lorg/apache/http/protocol/ImmutableHttpProcessor;->requestInterceptors:[Lorg/apache/http/HttpRequestInterceptor;

    .line 108
    :cond_1
    if-eqz p2, :cond_2

    .line 109
    invoke-interface {p2}, Lorg/apache/http/protocol/HttpResponseInterceptorList;->getResponseInterceptorCount()I

    move-result v0

    .line 110
    .restart local v0    # "count":I
    new-array v2, v0, [Lorg/apache/http/HttpResponseInterceptor;

    iput-object v2, p0, Lorg/apache/http/protocol/ImmutableHttpProcessor;->responseInterceptors:[Lorg/apache/http/HttpResponseInterceptor;

    .line 111
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 112
    iget-object v2, p0, Lorg/apache/http/protocol/ImmutableHttpProcessor;->responseInterceptors:[Lorg/apache/http/HttpResponseInterceptor;

    invoke-interface {p2, v1}, Lorg/apache/http/protocol/HttpResponseInterceptorList;->getResponseInterceptor(I)Lorg/apache/http/HttpResponseInterceptor;

    move-result-object v3

    aput-object v3, v2, v1

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 115
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_2
    new-array v2, v4, [Lorg/apache/http/HttpResponseInterceptor;

    iput-object v2, p0, Lorg/apache/http/protocol/ImmutableHttpProcessor;->responseInterceptors:[Lorg/apache/http/HttpResponseInterceptor;

    .line 117
    :cond_3
    return-void
.end method

.method public varargs constructor <init>([Lorg/apache/http/HttpRequestInterceptor;)V
    .locals 1
    .param p1, "requestInterceptors"    # [Lorg/apache/http/HttpRequestInterceptor;

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/http/protocol/ImmutableHttpProcessor;-><init>([Lorg/apache/http/HttpRequestInterceptor;[Lorg/apache/http/HttpResponseInterceptor;)V

    .line 121
    return-void
.end method

.method public constructor <init>([Lorg/apache/http/HttpRequestInterceptor;[Lorg/apache/http/HttpResponseInterceptor;)V
    .locals 3
    .param p1, "requestInterceptors"    # [Lorg/apache/http/HttpRequestInterceptor;
    .param p2, "responseInterceptors"    # [Lorg/apache/http/HttpResponseInterceptor;

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    if-eqz p1, :cond_0

    .line 55
    array-length v0, p1

    .line 56
    .local v0, "l":I
    new-array v1, v0, [Lorg/apache/http/HttpRequestInterceptor;

    iput-object v1, p0, Lorg/apache/http/protocol/ImmutableHttpProcessor;->requestInterceptors:[Lorg/apache/http/HttpRequestInterceptor;

    .line 57
    iget-object v1, p0, Lorg/apache/http/protocol/ImmutableHttpProcessor;->requestInterceptors:[Lorg/apache/http/HttpRequestInterceptor;

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    .end local v0    # "l":I
    :goto_0
    if-eqz p2, :cond_1

    .line 62
    array-length v0, p2

    .line 63
    .restart local v0    # "l":I
    new-array v1, v0, [Lorg/apache/http/HttpResponseInterceptor;

    iput-object v1, p0, Lorg/apache/http/protocol/ImmutableHttpProcessor;->responseInterceptors:[Lorg/apache/http/HttpResponseInterceptor;

    .line 64
    iget-object v1, p0, Lorg/apache/http/protocol/ImmutableHttpProcessor;->responseInterceptors:[Lorg/apache/http/HttpResponseInterceptor;

    invoke-static {p2, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    .end local v0    # "l":I
    :goto_1
    return-void

    .line 59
    :cond_0
    new-array v1, v2, [Lorg/apache/http/HttpRequestInterceptor;

    iput-object v1, p0, Lorg/apache/http/protocol/ImmutableHttpProcessor;->requestInterceptors:[Lorg/apache/http/HttpRequestInterceptor;

    goto :goto_0

    .line 66
    :cond_1
    new-array v1, v2, [Lorg/apache/http/HttpResponseInterceptor;

    iput-object v1, p0, Lorg/apache/http/protocol/ImmutableHttpProcessor;->responseInterceptors:[Lorg/apache/http/HttpResponseInterceptor;

    goto :goto_1
.end method

.method public varargs constructor <init>([Lorg/apache/http/HttpResponseInterceptor;)V
    .locals 1
    .param p1, "responseInterceptors"    # [Lorg/apache/http/HttpResponseInterceptor;

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/http/protocol/ImmutableHttpProcessor;-><init>([Lorg/apache/http/HttpRequestInterceptor;[Lorg/apache/http/HttpResponseInterceptor;)V

    .line 125
    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 4
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lorg/apache/http/protocol/ImmutableHttpProcessor;->requestInterceptors:[Lorg/apache/http/HttpRequestInterceptor;

    .local v0, "arr$":[Lorg/apache/http/HttpRequestInterceptor;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 131
    .local v3, "requestInterceptor":Lorg/apache/http/HttpRequestInterceptor;
    invoke-interface {v3, p1, p2}, Lorg/apache/http/HttpRequestInterceptor;->process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V

    .line 130
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 133
    .end local v3    # "requestInterceptor":Lorg/apache/http/HttpRequestInterceptor;
    :cond_0
    return-void
.end method

.method public process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 4
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lorg/apache/http/protocol/ImmutableHttpProcessor;->responseInterceptors:[Lorg/apache/http/HttpResponseInterceptor;

    .local v0, "arr$":[Lorg/apache/http/HttpResponseInterceptor;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 139
    .local v3, "responseInterceptor":Lorg/apache/http/HttpResponseInterceptor;
    invoke-interface {v3, p1, p2}, Lorg/apache/http/HttpResponseInterceptor;->process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 141
    .end local v3    # "responseInterceptor":Lorg/apache/http/HttpResponseInterceptor;
    :cond_0
    return-void
.end method
