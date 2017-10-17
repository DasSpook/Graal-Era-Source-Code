.class public Lcom/tapjoy/TapjoyVideoObject;
.super Ljava/lang/Object;
.source "TapjoyVideoObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final BUTTON_MAX:I = 0xa

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public buttonCount:I

.field public buttonData:[[Ljava/lang/String;

.field public clickURL:Ljava/lang/String;

.field public currencyAmount:Ljava/lang/String;

.field public currencyName:Ljava/lang/String;

.field public dataLocation:Ljava/lang/String;

.field public iconURL:Ljava/lang/String;

.field public offerID:Ljava/lang/String;

.field public videoAdName:Ljava/lang/String;

.field public videoURL:Ljava/lang/String;

.field public webviewURL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/16 v0, 0xa

    const/4 v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoObject;->buttonData:[[Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public addButton(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoObject;->buttonData:[[Ljava/lang/String;

    iget v1, p0, Lcom/tapjoy/TapjoyVideoObject;->buttonCount:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 40
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoObject;->buttonData:[[Ljava/lang/String;

    iget v1, p0, Lcom/tapjoy/TapjoyVideoObject;->buttonCount:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 41
    iget v0, p0, Lcom/tapjoy/TapjoyVideoObject;->buttonCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tapjoy/TapjoyVideoObject;->buttonCount:I

    .line 42
    return-void
.end method
