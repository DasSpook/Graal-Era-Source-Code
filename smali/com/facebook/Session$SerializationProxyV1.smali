.class Lcom/facebook/Session$SerializationProxyV1;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializationProxyV1"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6a59fe98cd935affL


# instance fields
.field private final applicationId:Ljava/lang/String;

.field private final lastAttemptedTokenExtendDate:Ljava/util/Date;

.field private final pendingRequest:Lcom/facebook/Session$AuthorizationRequest;

.field private final shouldAutoPublish:Z

.field private final state:Lcom/facebook/SessionState;

.field private final tokenInfo:Lcom/facebook/AccessToken;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/facebook/SessionState;Lcom/facebook/AccessToken;Ljava/util/Date;ZLcom/facebook/Session$AuthorizationRequest;)V
    .locals 0
    .param p1, "applicationId"    # Ljava/lang/String;
    .param p2, "state"    # Lcom/facebook/SessionState;
    .param p3, "tokenInfo"    # Lcom/facebook/AccessToken;
    .param p4, "lastAttemptedTokenExtendDate"    # Ljava/util/Date;
    .param p5, "shouldAutoPublish"    # Z
    .param p6, "pendingRequest"    # Lcom/facebook/Session$AuthorizationRequest;

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object p1, p0, Lcom/facebook/Session$SerializationProxyV1;->applicationId:Ljava/lang/String;

    .line 173
    iput-object p2, p0, Lcom/facebook/Session$SerializationProxyV1;->state:Lcom/facebook/SessionState;

    .line 174
    iput-object p3, p0, Lcom/facebook/Session$SerializationProxyV1;->tokenInfo:Lcom/facebook/AccessToken;

    .line 175
    iput-object p4, p0, Lcom/facebook/Session$SerializationProxyV1;->lastAttemptedTokenExtendDate:Ljava/util/Date;

    .line 176
    iput-boolean p5, p0, Lcom/facebook/Session$SerializationProxyV1;->shouldAutoPublish:Z

    .line 177
    iput-object p6, p0, Lcom/facebook/Session$SerializationProxyV1;->pendingRequest:Lcom/facebook/Session$AuthorizationRequest;

    .line 178
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 8

    .prologue
    .line 181
    new-instance v0, Lcom/facebook/Session;

    iget-object v1, p0, Lcom/facebook/Session$SerializationProxyV1;->applicationId:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/Session$SerializationProxyV1;->state:Lcom/facebook/SessionState;

    iget-object v3, p0, Lcom/facebook/Session$SerializationProxyV1;->tokenInfo:Lcom/facebook/AccessToken;

    iget-object v4, p0, Lcom/facebook/Session$SerializationProxyV1;->lastAttemptedTokenExtendDate:Ljava/util/Date;

    iget-boolean v5, p0, Lcom/facebook/Session$SerializationProxyV1;->shouldAutoPublish:Z

    iget-object v6, p0, Lcom/facebook/Session$SerializationProxyV1;->pendingRequest:Lcom/facebook/Session$AuthorizationRequest;

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/facebook/Session;-><init>(Ljava/lang/String;Lcom/facebook/SessionState;Lcom/facebook/AccessToken;Ljava/util/Date;ZLcom/facebook/Session$AuthorizationRequest;Lcom/facebook/Session$1;)V

    return-object v0
.end method
