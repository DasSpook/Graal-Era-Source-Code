.class final Lcom/tapjoy/mraid/controller/Abstract$Properties$1;
.super Ljava/lang/Object;
.source "Abstract.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/mraid/controller/Abstract$Properties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/tapjoy/mraid/controller/Abstract$Properties;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tapjoy/mraid/controller/Abstract$Properties;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 231
    new-instance v0, Lcom/tapjoy/mraid/controller/Abstract$Properties;

    invoke-direct {v0, p1}, Lcom/tapjoy/mraid/controller/Abstract$Properties;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 229
    invoke-virtual {p0, p1}, Lcom/tapjoy/mraid/controller/Abstract$Properties$1;->createFromParcel(Landroid/os/Parcel;)Lcom/tapjoy/mraid/controller/Abstract$Properties;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/tapjoy/mraid/controller/Abstract$Properties;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 235
    new-array v0, p1, [Lcom/tapjoy/mraid/controller/Abstract$Properties;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 229
    invoke-virtual {p0, p1}, Lcom/tapjoy/mraid/controller/Abstract$Properties$1;->newArray(I)[Lcom/tapjoy/mraid/controller/Abstract$Properties;

    move-result-object v0

    return-object v0
.end method
