.class public final enum Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;
.super Ljava/lang/Enum;
.source "MraidView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/mraid/view/MraidView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VIEW_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

.field public static final enum DEFAULT:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

.field public static final enum EXPANDED:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

.field public static final enum HIDDEN:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

.field public static final enum LEFT_BEHIND:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

.field public static final enum OPENED:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

.field public static final enum RESIZED:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 87
    new-instance v0, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v3}, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;->DEFAULT:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    new-instance v0, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    const-string v1, "RESIZED"

    invoke-direct {v0, v1, v4}, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;->RESIZED:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    new-instance v0, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    const-string v1, "EXPANDED"

    invoke-direct {v0, v1, v5}, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;->EXPANDED:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    new-instance v0, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    const-string v1, "HIDDEN"

    invoke-direct {v0, v1, v6}, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;->HIDDEN:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    new-instance v0, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    const-string v1, "LEFT_BEHIND"

    invoke-direct {v0, v1, v7}, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;->LEFT_BEHIND:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    new-instance v0, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    const-string v1, "OPENED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;->OPENED:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    .line 85
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    sget-object v1, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;->DEFAULT:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;->RESIZED:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;->EXPANDED:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;->HIDDEN:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;->LEFT_BEHIND:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;->OPENED:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    aput-object v2, v0, v1

    sput-object v0, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;->$VALUES:[Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 85
    const-class v0, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    return-object v0
.end method

.method public static values()[Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;->$VALUES:[Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    invoke-virtual {v0}, [Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    return-object v0
.end method
