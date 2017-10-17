.class public Lcom/fabzat/shop/utils/FZConstants;
.super Ljava/lang/Object;
.source "FZConstants.java"


# static fields
.field public static final FONT_Handsean:Ljava/lang/String; = "fonts/handsean.ttf"

.field public static final FONT_HelveticaNeue:Ljava/lang/String; = "fonts/helveticaneue_condensedbold.otf"

.field public static final RENDERER_TEST:Z

.field public static SCREEN_SIZE:I

.field public static SSL_ACCEPT_ALL:Z

.field public static VERBOSE_DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9
    sput-boolean v0, Lcom/fabzat/shop/utils/FZConstants;->SSL_ACCEPT_ALL:Z

    .line 12
    sput-boolean v0, Lcom/fabzat/shop/utils/FZConstants;->VERBOSE_DEBUG:Z

    .line 18
    sput v0, Lcom/fabzat/shop/utils/FZConstants;->SCREEN_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
