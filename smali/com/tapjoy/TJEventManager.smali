.class public Lcom/tapjoy/TJEventManager;
.super Ljava/lang/Object;
.source "TJEventManager.java"


# static fields
.field private static eventsTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/tapjoy/TJEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Lcom/tapjoy/TJEventManager$1;

    invoke-direct {v0}, Lcom/tapjoy/TJEventManager$1;-><init>()V

    sput-object v0, Lcom/tapjoy/TJEventManager;->eventsTable:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;)Lcom/tapjoy/TJEvent;
    .locals 1
    .param p0, "guid"    # Ljava/lang/String;

    .prologue
    .line 22
    sget-object v0, Lcom/tapjoy/TJEventManager;->eventsTable:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/TJEvent;

    return-object v0
.end method

.method public static put(Ljava/lang/String;Lcom/tapjoy/TJEvent;)V
    .locals 1
    .param p0, "guid"    # Ljava/lang/String;
    .param p1, "event"    # Lcom/tapjoy/TJEvent;

    .prologue
    .line 27
    sget-object v0, Lcom/tapjoy/TJEventManager;->eventsTable:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    return-void
.end method

.method public static remove(Ljava/lang/String;)V
    .locals 1
    .param p0, "guid"    # Ljava/lang/String;

    .prologue
    .line 32
    sget-object v0, Lcom/tapjoy/TJEventManager;->eventsTable:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    return-void
.end method
