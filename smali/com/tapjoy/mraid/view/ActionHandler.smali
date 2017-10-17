.class public Lcom/tapjoy/mraid/view/ActionHandler;
.super Landroid/app/Activity;
.source "ActionHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/mraid/view/ActionHandler$2;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MRAID Action Handler"


# instance fields
.field private actionData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/tapjoy/mraid/view/MraidView$Action;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private layout:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/mraid/view/ActionHandler;->actionData:Ljava/util/HashMap;

    return-void
.end method

.method private doAction(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 52
    const-string v3, "action"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "actionData":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 73
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-static {v0}, Lcom/tapjoy/mraid/view/MraidView$Action;->valueOf(Ljava/lang/String;)Lcom/tapjoy/mraid/view/MraidView$Action;

    move-result-object v1

    .line 59
    .local v1, "actionType":Lcom/tapjoy/mraid/view/MraidView$Action;
    sget-object v3, Lcom/tapjoy/mraid/view/ActionHandler$2;->$SwitchMap$com$tapjoy$mraid$view$MraidView$Action:[I

    invoke-virtual {v1}, Lcom/tapjoy/mraid/view/MraidView$Action;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 61
    :pswitch_0
    invoke-virtual {p0, p1, v1}, Lcom/tapjoy/mraid/view/ActionHandler;->initPlayer(Landroid/os/Bundle;Lcom/tapjoy/mraid/view/MraidView$Action;)Lcom/tapjoy/mraid/util/MraidPlayer;

    move-result-object v2

    .line 62
    .local v2, "player":Lcom/tapjoy/mraid/util/MraidPlayer;
    invoke-virtual {v2}, Lcom/tapjoy/mraid/util/MraidPlayer;->playAudio()V

    goto :goto_0

    .line 66
    .end local v2    # "player":Lcom/tapjoy/mraid/util/MraidPlayer;
    :pswitch_1
    invoke-virtual {p0, p1, v1}, Lcom/tapjoy/mraid/view/ActionHandler;->initPlayer(Landroid/os/Bundle;Lcom/tapjoy/mraid/view/MraidView$Action;)Lcom/tapjoy/mraid/util/MraidPlayer;

    move-result-object v2

    .line 67
    .restart local v2    # "player":Lcom/tapjoy/mraid/util/MraidPlayer;
    invoke-virtual {v2}, Lcom/tapjoy/mraid/util/MraidPlayer;->playVideo()V

    goto :goto_0

    .line 59
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setPlayerListener(Lcom/tapjoy/mraid/util/MraidPlayer;)V
    .locals 1
    .param p1, "player"    # Lcom/tapjoy/mraid/util/MraidPlayer;

    .prologue
    .line 123
    new-instance v0, Lcom/tapjoy/mraid/view/ActionHandler$1;

    invoke-direct {v0, p0}, Lcom/tapjoy/mraid/view/ActionHandler$1;-><init>(Lcom/tapjoy/mraid/view/ActionHandler;)V

    invoke-virtual {p1, v0}, Lcom/tapjoy/mraid/util/MraidPlayer;->setListener(Lcom/tapjoy/mraid/listener/Player;)V

    .line 140
    return-void
.end method


# virtual methods
.method initPlayer(Landroid/os/Bundle;Lcom/tapjoy/mraid/view/MraidView$Action;)Lcom/tapjoy/mraid/util/MraidPlayer;
    .locals 9
    .param p1, "playData"    # Landroid/os/Bundle;
    .param p2, "actionType"    # Lcom/tapjoy/mraid/view/MraidView$Action;

    .prologue
    const/high16 v8, 0x1000000

    const/16 v7, 0x400

    const/4 v6, -0x1

    .line 85
    const-string v4, "player_properties"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;

    .line 86
    .local v3, "properties":Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;
    const-string v4, "expand_dimensions"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;

    .line 87
    .local v1, "playDimensions":Lcom/tapjoy/mraid/controller/Abstract$Dimensions;
    new-instance v2, Lcom/tapjoy/mraid/util/MraidPlayer;

    invoke-direct {v2, p0}, Lcom/tapjoy/mraid/util/MraidPlayer;-><init>(Landroid/content/Context;)V

    .line 88
    .local v2, "player":Lcom/tapjoy/mraid/util/MraidPlayer;
    const-string v4, "expand_url"

    invoke-static {v4, p1}, Lcom/tapjoy/mraid/util/Utils;->getData(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/tapjoy/mraid/util/MraidPlayer;->setPlayData(Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;Ljava/lang/String;)V

    .line 91
    iget-boolean v4, v3, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;->inline:Z

    if-nez v4, :cond_0

    iget-object v4, v3, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;->startStyle:Ljava/lang/String;

    const-string v5, "fullscreen"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/ActionHandler;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v7, v7}, Landroid/view/Window;->setFlags(II)V

    .line 95
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/ActionHandler;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v8, v8}, Landroid/view/Window;->setFlags(II)V

    .line 98
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 99
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xd

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 109
    :goto_0
    invoke-virtual {v2, v0}, Lcom/tapjoy/mraid/util/MraidPlayer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    iget-object v4, p0, Lcom/tapjoy/mraid/view/ActionHandler;->layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 111
    iget-object v4, p0, Lcom/tapjoy/mraid/view/ActionHandler;->actionData:Ljava/util/HashMap;

    invoke-virtual {v4, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-direct {p0, v2}, Lcom/tapjoy/mraid/view/ActionHandler;->setPlayerListener(Lcom/tapjoy/mraid/util/MraidPlayer;)V

    .line 113
    return-object v2

    .line 104
    .end local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, v1, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->width:I

    iget v5, v1, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->height:I

    invoke-direct {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 105
    .restart local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget v4, v1, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->y:I

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 106
    iget v4, v1, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->x:I

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, -0x1

    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/tapjoy/mraid/view/ActionHandler;->requestWindowFeature(I)Z

    .line 38
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/ActionHandler;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 39
    .local v0, "data":Landroid/os/Bundle;
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tapjoy/mraid/view/ActionHandler;->layout:Landroid/widget/RelativeLayout;

    .line 40
    iget-object v1, p0, Lcom/tapjoy/mraid/view/ActionHandler;->layout:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    iget-object v1, p0, Lcom/tapjoy/mraid/view/ActionHandler;->layout:Landroid/widget/RelativeLayout;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 42
    iget-object v1, p0, Lcom/tapjoy/mraid/view/ActionHandler;->layout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Lcom/tapjoy/mraid/view/ActionHandler;->setContentView(Landroid/view/View;)V

    .line 43
    invoke-direct {p0, v0}, Lcom/tapjoy/mraid/view/ActionHandler;->doAction(Landroid/os/Bundle;)V

    .line 44
    return-void
.end method

.method protected onStop()V
    .locals 5

    .prologue
    .line 145
    iget-object v3, p0, Lcom/tapjoy/mraid/view/ActionHandler;->actionData:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 146
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/tapjoy/mraid/view/MraidView$Action;Ljava/lang/Object;>;"
    sget-object v4, Lcom/tapjoy/mraid/view/ActionHandler$2;->$SwitchMap$com$tapjoy$mraid$view$MraidView$Action:[I

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tapjoy/mraid/view/MraidView$Action;

    invoke-virtual {v3}, Lcom/tapjoy/mraid/view/MraidView$Action;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 149
    :pswitch_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tapjoy/mraid/util/MraidPlayer;

    .line 150
    .local v2, "player":Lcom/tapjoy/mraid/util/MraidPlayer;
    invoke-virtual {v2}, Lcom/tapjoy/mraid/util/MraidPlayer;->releasePlayer()V

    goto :goto_0

    .line 156
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/tapjoy/mraid/view/MraidView$Action;Ljava/lang/Object;>;"
    .end local v2    # "player":Lcom/tapjoy/mraid/util/MraidPlayer;
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 157
    return-void

    .line 146
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
