.class public Lcom/tapjoy/TJEventRequest;
.super Ljava/lang/Object;
.source "TJEventRequest.java"


# static fields
.field public static final TYPE_CURRENCY:I = 0x3

.field public static final TYPE_IN_APP_PURCHASE:I = 0x1

.field public static final TYPE_NAVIGATION:I = 0x4

.field public static final TYPE_VIRTUAL_GOOD:I = 0x2


# instance fields
.field public callback:Lcom/tapjoy/TJEventRequestCallback;

.field public identifier:Ljava/lang/String;

.field public quantity:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
