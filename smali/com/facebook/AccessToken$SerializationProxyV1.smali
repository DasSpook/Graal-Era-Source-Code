.class Lcom/facebook/AccessToken$SerializationProxyV1;
.super Ljava/lang/Object;
.source "AccessToken.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/AccessToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializationProxyV1"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2288d511ce8549edL


# instance fields
.field private final expires:Ljava/util/Date;

.field private final lastRefresh:Ljava/util/Date;

.field private final permissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final source:Lcom/facebook/AccessTokenSource;

.field private final token:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Lcom/facebook/AccessTokenSource;Ljava/util/Date;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "expires"    # Ljava/util/Date;
    .param p4, "source"    # Lcom/facebook/AccessTokenSource;
    .param p5, "lastRefresh"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/AccessTokenSource;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .prologue
    .line 310
    .local p3, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    iput-object p2, p0, Lcom/facebook/AccessToken$SerializationProxyV1;->expires:Ljava/util/Date;

    .line 312
    iput-object p3, p0, Lcom/facebook/AccessToken$SerializationProxyV1;->permissions:Ljava/util/List;

    .line 313
    iput-object p1, p0, Lcom/facebook/AccessToken$SerializationProxyV1;->token:Ljava/lang/String;

    .line 314
    iput-object p4, p0, Lcom/facebook/AccessToken$SerializationProxyV1;->source:Lcom/facebook/AccessTokenSource;

    .line 315
    iput-object p5, p0, Lcom/facebook/AccessToken$SerializationProxyV1;->lastRefresh:Ljava/util/Date;

    .line 316
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Lcom/facebook/AccessTokenSource;Ljava/util/Date;Lcom/facebook/AccessToken$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/util/Date;
    .param p3, "x2"    # Ljava/util/List;
    .param p4, "x3"    # Lcom/facebook/AccessTokenSource;
    .param p5, "x4"    # Ljava/util/Date;
    .param p6, "x5"    # Lcom/facebook/AccessToken$1;

    .prologue
    .line 301
    invoke-direct/range {p0 .. p5}, Lcom/facebook/AccessToken$SerializationProxyV1;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Lcom/facebook/AccessTokenSource;Ljava/util/Date;)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 319
    new-instance v0, Lcom/facebook/AccessToken;

    iget-object v1, p0, Lcom/facebook/AccessToken$SerializationProxyV1;->token:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/AccessToken$SerializationProxyV1;->expires:Ljava/util/Date;

    iget-object v3, p0, Lcom/facebook/AccessToken$SerializationProxyV1;->permissions:Ljava/util/List;

    iget-object v4, p0, Lcom/facebook/AccessToken$SerializationProxyV1;->source:Lcom/facebook/AccessTokenSource;

    iget-object v5, p0, Lcom/facebook/AccessToken$SerializationProxyV1;->lastRefresh:Ljava/util/Date;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Lcom/facebook/AccessTokenSource;Ljava/util/Date;)V

    return-object v0
.end method
