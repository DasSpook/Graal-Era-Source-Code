.class public Lcom/tapjoy/TJCOffers;
.super Ljava/lang/Object;
.source "TJCOffers.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TapjoyOffers"


# instance fields
.field context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/tapjoy/TJCOffers;->context:Landroid/content/Context;

    .line 29
    return-void
.end method


# virtual methods
.method public showOffers()V
    .locals 2

    .prologue
    .line 36
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/TJCOffers;->showOffersWithCurrencyID(Ljava/lang/String;Z)V

    .line 37
    return-void
.end method

.method public showOffersWithCurrencyID(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "currencyID"    # Ljava/lang/String;
    .param p2, "enableCurrencySelector"    # Z

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/tapjoy/TJCOffers;->showOffersWithCurrencyID(Ljava/lang/String;ZLcom/tapjoy/TJEventData;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public showOffersWithCurrencyID(Ljava/lang/String;ZLcom/tapjoy/TJEventData;Ljava/lang/String;)V
    .locals 7
    .param p1, "currencyID"    # Ljava/lang/String;
    .param p2, "enableCurrencySelector"    # Z
    .param p3, "eventData"    # Lcom/tapjoy/TJEventData;
    .param p4, "callbackID"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 61
    if-eqz p2, :cond_2

    const-string v1, "1"

    .line 64
    .local v1, "multipleCurrencySelector":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/util/HashMap;

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getURLParams()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 66
    .local v2, "offersURLParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "currency_id"

    invoke-static {v2, v3, p1, v6}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 67
    const-string v3, "currency_selector"

    invoke-static {v2, v3, v1, v6}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 70
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getVideoParams()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 72
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/tapjoy/TJCOffers;->context:Landroid/content/Context;

    const-class v4, Lcom/tapjoy/TJCOffersWebView;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p3, :cond_0

    .line 76
    const-string v3, "TapjoyOffers"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showOffers for eventName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p3, Lcom/tapjoy/TJEventData;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 80
    const-string v3, "callback_id"

    invoke-virtual {v0, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    :cond_1
    const-string v3, "view_type"

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 83
    const-string v3, "tjevent"

    invoke-virtual {v0, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 84
    const-string v3, "legacy_view"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 85
    const-string v3, "URL_PARAMS"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 88
    iget-object v3, p0, Lcom/tapjoy/TJCOffers;->context:Landroid/content/Context;

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_3

    .line 90
    iget-object v3, p0, Lcom/tapjoy/TJCOffers;->context:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 97
    :goto_1
    return-void

    .line 61
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "multipleCurrencySelector":Ljava/lang/String;
    .end local v2    # "offersURLParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    const-string v1, "0"

    goto :goto_0

    .line 94
    .restart local v0    # "intent":Landroid/content/Intent;
    .restart local v1    # "multipleCurrencySelector":Ljava/lang/String;
    .restart local v2    # "offersURLParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 95
    iget-object v3, p0, Lcom/tapjoy/TJCOffers;->context:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method
