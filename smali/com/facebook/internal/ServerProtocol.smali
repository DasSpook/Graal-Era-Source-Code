.class public final Lcom/facebook/internal/ServerProtocol;
.super Ljava/lang/Object;
.source "ServerProtocol.java"


# static fields
.field public static final BATCHED_REST_METHOD_URL_BASE:Ljava/lang/String; = "method/"

.field public static final DIALOG_AUTHORITY:Ljava/lang/String; = "m.facebook.com"

.field public static final DIALOG_PARAM_ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field public static final DIALOG_PARAM_APP_ID:Ljava/lang/String; = "app_id"

.field public static final DIALOG_PARAM_CLIENT_ID:Ljava/lang/String; = "client_id"

.field public static final DIALOG_PARAM_DISPLAY:Ljava/lang/String; = "display"

.field public static final DIALOG_PARAM_REDIRECT_URI:Ljava/lang/String; = "redirect_uri"

.field public static final DIALOG_PARAM_SCOPE:Ljava/lang/String; = "scope"

.field public static final DIALOG_PARAM_TYPE:Ljava/lang/String; = "type"

.field public static final DIALOG_PATH:Ljava/lang/String; = "dialog/"

.field static final FACEBOOK_COM:Ljava/lang/String; = "facebook.com"

.field public static final GRAPH_URL:Ljava/lang/String; = "https://graph.facebook.com"

.field public static final GRAPH_URL_BASE:Ljava/lang/String; = "https://graph.facebook.com/"

.field public static final REST_URL_BASE:Ljava/lang/String; = "https://api.facebook.com/method/"

.field public static final errorsProxyAuthDisabled:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final errorsUserCanceled:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "service_disabled"

    aput-object v1, v0, v2

    const-string v1, "AndroidAuthKillSwitchException"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/facebook/internal/Utility;->unmodifiableCollection([Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/ServerProtocol;->errorsProxyAuthDisabled:Ljava/util/Collection;

    .line 48
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "access_denied"

    aput-object v1, v0, v2

    const-string v1, "OAuthAccessDeniedException"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/facebook/internal/Utility;->unmodifiableCollection([Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/ServerProtocol;->errorsUserCanceled:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
