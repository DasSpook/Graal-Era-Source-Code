.class public Lcom/tapjoy/TapjoyFeaturedAppObject;
.super Ljava/lang/Object;
.source "TapjoyFeaturedAppObject.java"


# instance fields
.field public amount:I

.field public cost:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public fullScreenAdURL:Ljava/lang/String;

.field public iconURL:Ljava/lang/String;

.field public maxTimesToDisplayThisApp:I

.field public name:Ljava/lang/String;

.field public redirectURL:Ljava/lang/String;

.field public storeID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/TapjoyFeaturedAppObject;->cost:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/TapjoyFeaturedAppObject;->storeID:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/TapjoyFeaturedAppObject;->name:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/TapjoyFeaturedAppObject;->description:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/TapjoyFeaturedAppObject;->iconURL:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/TapjoyFeaturedAppObject;->redirectURL:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/TapjoyFeaturedAppObject;->fullScreenAdURL:Ljava/lang/String;

    .line 52
    return-void
.end method
