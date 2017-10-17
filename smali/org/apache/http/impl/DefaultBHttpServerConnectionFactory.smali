.class public Lorg/apache/http/impl/DefaultBHttpServerConnectionFactory;
.super Ljava/lang/Object;
.source "DefaultBHttpServerConnectionFactory.java"

# interfaces
.implements Lorg/apache/http/HttpConnectionFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/http/HttpConnectionFactory",
        "<",
        "Lorg/apache/http/impl/DefaultBHttpServerConnection;",
        ">;"
    }
.end annotation

.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/http/impl/DefaultBHttpServerConnectionFactory;


# instance fields
.field private final cconfig:Lorg/apache/http/config/ConnectionConfig;

.field private final incomingContentStrategy:Lorg/apache/http/entity/ContentLengthStrategy;

.field private final outgoingContentStrategy:Lorg/apache/http/entity/ContentLengthStrategy;

.field private final requestParserFactory:Lorg/apache/http/io/HttpMessageParserFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/http/io/HttpMessageParserFactory",
            "<",
            "Lorg/apache/http/HttpRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final responseWriterFactory:Lorg/apache/http/io/HttpMessageWriterFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/http/io/HttpMessageWriterFactory",
            "<",
            "Lorg/apache/http/HttpResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lorg/apache/http/impl/DefaultBHttpServerConnectionFactory;

    invoke-direct {v0}, Lorg/apache/http/impl/DefaultBHttpServerConnectionFactory;-><init>()V

    sput-object v0, Lorg/apache/http/impl/DefaultBHttpServerConnectionFactory;->INSTANCE:Lorg/apache/http/impl/DefaultBHttpServerConnectionFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 85
    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lorg/apache/http/impl/DefaultBHttpServerConnectionFactory;-><init>(Lorg/apache/http/config/ConnectionConfig;Lorg/apache/http/entity/ContentLengthStrategy;Lorg/apache/http/entity/ContentLengthStrategy;Lorg/apache/http/io/HttpMessageParserFactory;Lorg/apache/http/io/HttpMessageWriterFactory;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/config/ConnectionConfig;)V
    .locals 6
    .param p1, "cconfig"    # Lorg/apache/http/config/ConnectionConfig;

    .prologue
    const/4 v2, 0x0

    .line 81
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lorg/apache/http/impl/DefaultBHttpServerConnectionFactory;-><init>(Lorg/apache/http/config/ConnectionConfig;Lorg/apache/http/entity/ContentLengthStrategy;Lorg/apache/http/entity/ContentLengthStrategy;Lorg/apache/http/io/HttpMessageParserFactory;Lorg/apache/http/io/HttpMessageWriterFactory;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/config/ConnectionConfig;Lorg/apache/http/entity/ContentLengthStrategy;Lorg/apache/http/entity/ContentLengthStrategy;Lorg/apache/http/io/HttpMessageParserFactory;Lorg/apache/http/io/HttpMessageWriterFactory;)V
    .locals 0
    .param p1, "cconfig"    # Lorg/apache/http/config/ConnectionConfig;
    .param p2, "incomingContentStrategy"    # Lorg/apache/http/entity/ContentLengthStrategy;
    .param p3, "outgoingContentStrategy"    # Lorg/apache/http/entity/ContentLengthStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/config/ConnectionConfig;",
            "Lorg/apache/http/entity/ContentLengthStrategy;",
            "Lorg/apache/http/entity/ContentLengthStrategy;",
            "Lorg/apache/http/io/HttpMessageParserFactory",
            "<",
            "Lorg/apache/http/HttpRequest;",
            ">;",
            "Lorg/apache/http/io/HttpMessageWriterFactory",
            "<",
            "Lorg/apache/http/HttpResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p4, "requestParserFactory":Lorg/apache/http/io/HttpMessageParserFactory;, "Lorg/apache/http/io/HttpMessageParserFactory<Lorg/apache/http/HttpRequest;>;"
    .local p5, "responseWriterFactory":Lorg/apache/http/io/HttpMessageWriterFactory;, "Lorg/apache/http/io/HttpMessageWriterFactory<Lorg/apache/http/HttpResponse;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    if-eqz p1, :cond_0

    .end local p1    # "cconfig":Lorg/apache/http/config/ConnectionConfig;
    :goto_0
    iput-object p1, p0, Lorg/apache/http/impl/DefaultBHttpServerConnectionFactory;->cconfig:Lorg/apache/http/config/ConnectionConfig;

    .line 67
    iput-object p2, p0, Lorg/apache/http/impl/DefaultBHttpServerConnectionFactory;->incomingContentStrategy:Lorg/apache/http/entity/ContentLengthStrategy;

    .line 68
    iput-object p3, p0, Lorg/apache/http/impl/DefaultBHttpServerConnectionFactory;->outgoingContentStrategy:Lorg/apache/http/entity/ContentLengthStrategy;

    .line 69
    iput-object p4, p0, Lorg/apache/http/impl/DefaultBHttpServerConnectionFactory;->requestParserFactory:Lorg/apache/http/io/HttpMessageParserFactory;

    .line 70
    iput-object p5, p0, Lorg/apache/http/impl/DefaultBHttpServerConnectionFactory;->responseWriterFactory:Lorg/apache/http/io/HttpMessageWriterFactory;

    .line 71
    return-void

    .line 66
    .restart local p1    # "cconfig":Lorg/apache/http/config/ConnectionConfig;
    :cond_0
    sget-object p1, Lorg/apache/http/config/ConnectionConfig;->DEFAULT:Lorg/apache/http/config/ConnectionConfig;

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/http/config/ConnectionConfig;Lorg/apache/http/io/HttpMessageParserFactory;Lorg/apache/http/io/HttpMessageWriterFactory;)V
    .locals 6
    .param p1, "cconfig"    # Lorg/apache/http/config/ConnectionConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/config/ConnectionConfig;",
            "Lorg/apache/http/io/HttpMessageParserFactory",
            "<",
            "Lorg/apache/http/HttpRequest;",
            ">;",
            "Lorg/apache/http/io/HttpMessageWriterFactory",
            "<",
            "Lorg/apache/http/HttpResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "requestParserFactory":Lorg/apache/http/io/HttpMessageParserFactory;, "Lorg/apache/http/io/HttpMessageParserFactory<Lorg/apache/http/HttpRequest;>;"
    .local p3, "responseWriterFactory":Lorg/apache/http/io/HttpMessageWriterFactory;, "Lorg/apache/http/io/HttpMessageWriterFactory<Lorg/apache/http/HttpResponse;>;"
    const/4 v2, 0x0

    .line 77
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/http/impl/DefaultBHttpServerConnectionFactory;-><init>(Lorg/apache/http/config/ConnectionConfig;Lorg/apache/http/entity/ContentLengthStrategy;Lorg/apache/http/entity/ContentLengthStrategy;Lorg/apache/http/io/HttpMessageParserFactory;Lorg/apache/http/io/HttpMessageWriterFactory;)V

    .line 78
    return-void
.end method


# virtual methods
.method public bridge synthetic createConnection(Ljava/net/Socket;)Lorg/apache/http/HttpConnection;
    .locals 1
    .param p1, "x0"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lorg/apache/http/impl/DefaultBHttpServerConnectionFactory;->createConnection(Ljava/net/Socket;)Lorg/apache/http/impl/DefaultBHttpServerConnection;

    move-result-object v0

    return-object v0
.end method

.method public createConnection(Ljava/net/Socket;)Lorg/apache/http/impl/DefaultBHttpServerConnection;
    .locals 10
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    new-instance v0, Lorg/apache/http/impl/DefaultBHttpServerConnection;

    iget-object v1, p0, Lorg/apache/http/impl/DefaultBHttpServerConnectionFactory;->cconfig:Lorg/apache/http/config/ConnectionConfig;

    invoke-virtual {v1}, Lorg/apache/http/config/ConnectionConfig;->getBufferSize()I

    move-result v1

    iget-object v2, p0, Lorg/apache/http/impl/DefaultBHttpServerConnectionFactory;->cconfig:Lorg/apache/http/config/ConnectionConfig;

    invoke-virtual {v2}, Lorg/apache/http/config/ConnectionConfig;->getFragmentSizeHint()I

    move-result v2

    iget-object v3, p0, Lorg/apache/http/impl/DefaultBHttpServerConnectionFactory;->cconfig:Lorg/apache/http/config/ConnectionConfig;

    invoke-static {v3}, Lorg/apache/http/impl/ConnSupport;->createDecoder(Lorg/apache/http/config/ConnectionConfig;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/http/impl/DefaultBHttpServerConnectionFactory;->cconfig:Lorg/apache/http/config/ConnectionConfig;

    invoke-static {v4}, Lorg/apache/http/impl/ConnSupport;->createEncoder(Lorg/apache/http/config/ConnectionConfig;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/http/impl/DefaultBHttpServerConnectionFactory;->cconfig:Lorg/apache/http/config/ConnectionConfig;

    invoke-virtual {v5}, Lorg/apache/http/config/ConnectionConfig;->getMessageConstraints()Lorg/apache/http/config/MessageConstraints;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/http/impl/DefaultBHttpServerConnectionFactory;->incomingContentStrategy:Lorg/apache/http/entity/ContentLengthStrategy;

    iget-object v7, p0, Lorg/apache/http/impl/DefaultBHttpServerConnectionFactory;->outgoingContentStrategy:Lorg/apache/http/entity/ContentLengthStrategy;

    iget-object v8, p0, Lorg/apache/http/impl/DefaultBHttpServerConnectionFactory;->requestParserFactory:Lorg/apache/http/io/HttpMessageParserFactory;

    iget-object v9, p0, Lorg/apache/http/impl/DefaultBHttpServerConnectionFactory;->responseWriterFactory:Lorg/apache/http/io/HttpMessageWriterFactory;

    invoke-direct/range {v0 .. v9}, Lorg/apache/http/impl/DefaultBHttpServerConnection;-><init>(IILjava/nio/charset/CharsetDecoder;Ljava/nio/charset/CharsetEncoder;Lorg/apache/http/config/MessageConstraints;Lorg/apache/http/entity/ContentLengthStrategy;Lorg/apache/http/entity/ContentLengthStrategy;Lorg/apache/http/io/HttpMessageParserFactory;Lorg/apache/http/io/HttpMessageWriterFactory;)V

    .line 99
    .local v0, "conn":Lorg/apache/http/impl/DefaultBHttpServerConnection;
    invoke-virtual {v0, p1}, Lorg/apache/http/impl/DefaultBHttpServerConnection;->bind(Ljava/net/Socket;)V

    .line 100
    return-object v0
.end method
