.class public Lcom/quattroplay/GraalEra/QPlayActivity;
.super Landroid/app/Activity;
.source "QPlayActivity.java"

# interfaces
.implements Lcom/quattroplay/GraalEra/Natives$EventListener;
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/quattroplay/GraalEra/QPlayActivity$22;,
        Lcom/quattroplay/GraalEra/QPlayActivity$InsideWebViewClient;
    }
.end annotation


# static fields
.field static final RC_REQUEST:I = 0x119bb

.field private static final TAG:Ljava/lang/String; = "QuattroPlay"


# instance fields
.field private fabzatstoreid:Ljava/lang/String;

.field private fabzatstoretoken:Ljava/lang/String;

.field private fabzaturl:Ljava/lang/String;

.field private isinbackground:Z

.field private mAppPath:Ljava/lang/String;

.field private mAudioManager:Lcom/quattroplay/GraalEra/QPlayAudioManager;

.field mBillingHelper:Lcom/quattroplay/GraalEra/util/IabHelper;

.field mConsumeFinishedListener:Lcom/quattroplay/GraalEra/util/IabHelper$OnConsumeFinishedListener;

.field private mCurrentOrientation:I

.field private mDataPath:Ljava/lang/String;

.field private mGLView:Lcom/quattroplay/GraalEra/GLView;

.field mGotInventoryListener:Lcom/quattroplay/GraalEra/util/IabHelper$QueryInventoryFinishedListener;

.field private mOrientationEventListener:Landroid/view/OrientationEventListener;

.field mPurchaseFinishedListener:Lcom/quattroplay/GraalEra/util/IabHelper$OnIabPurchaseFinishedListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mTextInputWidget:Landroid/widget/EditText;

.field private nextwebviewid:I

.field private requestedpermissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private requestedpermissionsstr:Ljava/lang/String;

.field private webviewmap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 108
    iput-object v1, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->mGLView:Lcom/quattroplay/GraalEra/GLView;

    .line 112
    const/4 v0, -0x1

    iput v0, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->mCurrentOrientation:I

    .line 113
    const-string v0, ""

    iput-object v0, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->mAppPath:Ljava/lang/String;

    .line 114
    const-string v0, ""

    iput-object v0, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->mDataPath:Ljava/lang/String;

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->isinbackground:Z

    .line 118
    iput-object v1, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->mTextInputWidget:Landroid/widget/EditText;

    .line 121
    iput-object v1, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->mBillingHelper:Lcom/quattroplay/GraalEra/util/IabHelper;

    .line 567
    new-instance v0, Lcom/quattroplay/GraalEra/QPlayActivity$6;

    invoke-direct {v0, p0}, Lcom/quattroplay/GraalEra/QPlayActivity$6;-><init>(Lcom/quattroplay/GraalEra/QPlayActivity;)V

    iput-object v0, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->mGotInventoryListener:Lcom/quattroplay/GraalEra/util/IabHelper$QueryInventoryFinishedListener;

    .line 608
    new-instance v0, Lcom/quattroplay/GraalEra/QPlayActivity$7;

    invoke-direct {v0, p0}, Lcom/quattroplay/GraalEra/QPlayActivity$7;-><init>(Lcom/quattroplay/GraalEra/QPlayActivity;)V

    iput-object v0, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->mPurchaseFinishedListener:Lcom/quattroplay/GraalEra/util/IabHelper$OnIabPurchaseFinishedListener;

    .line 630
    new-instance v0, Lcom/quattroplay/GraalEra/QPlayActivity$8;

    invoke-direct {v0, p0}, Lcom/quattroplay/GraalEra/QPlayActivity$8;-><init>(Lcom/quattroplay/GraalEra/QPlayActivity;)V

    iput-object v0, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->mConsumeFinishedListener:Lcom/quattroplay/GraalEra/util/IabHelper$OnConsumeFinishedListener;

    .line 670
    const-string v0, ""

    iput-object v0, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->requestedpermissionsstr:Ljava/lang/String;

    .line 671
    iput-object v1, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->requestedpermissions:Ljava/util/ArrayList;

    .line 1042
    iput-object v1, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->fabzatstoreid:Ljava/lang/String;

    .line 1043
    iput-object v1, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->fabzatstoretoken:Ljava/lang/String;

    .line 1044
    iput-object v1, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->fabzaturl:Ljava/lang/String;

    .line 1086
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->webviewmap:Ljava/util/HashMap;

    .line 1087
    const/4 v0, 0x1

    iput v0, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->nextwebviewid:I

    .line 1188
    return-void
.end method

.method static synthetic access$002(Lcom/quattroplay/GraalEra/QPlayActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/quattroplay/GraalEra/QPlayActivity;
    .param p1, "x1"    # I

    .prologue
    .line 105
    iput p1, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->mCurrentOrientation:I

    return p1
.end method

.method static synthetic access$100(Lcom/quattroplay/GraalEra/QPlayActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/quattroplay/GraalEra/QPlayActivity;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->mTextInputWidget:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/quattroplay/GraalEra/QPlayActivity;Ljava/lang/String;Lcom/quattroplay/GraalEra/util/Purchase;)V
    .locals 0
    .param p0, "x0"    # Lcom/quattroplay/GraalEra/QPlayActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/quattroplay/GraalEra/util/Purchase;

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Lcom/quattroplay/GraalEra/QPlayActivity;->onGooglePlayPurchase(Ljava/lang/String;Lcom/quattroplay/GraalEra/util/Purchase;)V

    return-void
.end method

.method static synthetic access$300(Lcom/quattroplay/GraalEra/QPlayActivity;Lcom/facebook/SessionState;)I
    .locals 1
    .param p0, "x0"    # Lcom/quattroplay/GraalEra/QPlayActivity;
    .param p1, "x1"    # Lcom/facebook/SessionState;

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/quattroplay/GraalEra/QPlayActivity;->convertFacebookState(Lcom/facebook/SessionState;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/quattroplay/GraalEra/QPlayActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/quattroplay/GraalEra/QPlayActivity;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->requestedpermissions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$402(Lcom/quattroplay/GraalEra/QPlayActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/quattroplay/GraalEra/QPlayActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->requestedpermissions:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$500(Lcom/quattroplay/GraalEra/QPlayActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/quattroplay/GraalEra/QPlayActivity;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->requestedpermissionsstr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/quattroplay/GraalEra/QPlayActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/quattroplay/GraalEra/QPlayActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->requestedpermissionsstr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/quattroplay/GraalEra/QPlayActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/quattroplay/GraalEra/QPlayActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/quattroplay/GraalEra/QPlayActivity;->escaped34(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/quattroplay/GraalEra/QPlayActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/quattroplay/GraalEra/QPlayActivity;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->webviewmap:Ljava/util/HashMap;

    return-object v0
.end method

.method private convertCommaTextToList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v11, 0x2c

    const/16 v10, 0x22

    .line 960
    const-string v1, "\\\"\'"

    .line 961
    .local v1, "escapechars":Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 963
    .local v6, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 964
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :cond_0
    :goto_0
    if-ge v2, v3, :cond_a

    .line 965
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v10, :cond_7

    .line 967
    add-int/lit8 v2, v2, 0x1

    .line 968
    const-string v4, ""

    .line 969
    .local v4, "line":Ljava/lang/String;
    move v5, v2

    .line 970
    .local v5, "partstart":I
    :goto_1
    if-ge v2, v3, :cond_4

    .line 971
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 972
    .local v0, "c":C
    const/16 v8, 0x5c

    if-ne v0, v8, :cond_1

    add-int/lit8 v8, v3, -0x1

    if-ge v2, v8, :cond_1

    const-string v8, "\\\"\'"

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-gez v8, :cond_2

    :cond_1
    if-ne v0, v10, :cond_3

    add-int/lit8 v8, v3, -0x1

    if-ge v2, v8, :cond_3

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v10, :cond_3

    .line 975
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 976
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 977
    add-int/lit8 v2, v2, 0x2

    .line 978
    move v5, v2

    goto :goto_1

    .line 979
    :cond_3
    if-ne v0, v10, :cond_6

    .line 981
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 982
    add-int/lit8 v2, v2, 0x1

    .line 983
    move v5, v2

    .line 989
    .end local v0    # "c":C
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 990
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 991
    if-ge v2, v3, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v11, :cond_0

    .line 992
    add-int/lit8 v8, v3, -0x1

    if-ne v2, v8, :cond_5

    .line 993
    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 994
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 987
    .restart local v0    # "c":C
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 997
    .end local v0    # "c":C
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "partstart":I
    :cond_7
    move v7, v2

    .line 998
    .local v7, "start":I
    :goto_2
    if-ge v2, v3, :cond_8

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v8, v11, :cond_8

    .line 999
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1000
    :cond_8
    invoke-virtual {p1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1001
    add-int/lit8 v8, v3, -0x1

    if-ne v2, v8, :cond_9

    .line 1002
    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1003
    :cond_9
    add-int/lit8 v2, v2, 0x1

    .line 1004
    goto/16 :goto_0

    .line 1006
    .end local v7    # "start":I
    :cond_a
    return-object v6
.end method

.method private convertFacebookState(Lcom/facebook/SessionState;)I
    .locals 2
    .param p1, "state"    # Lcom/facebook/SessionState;

    .prologue
    .line 923
    sget-object v0, Lcom/quattroplay/GraalEra/QPlayActivity$22;->$SwitchMap$com$facebook$SessionState:[I

    invoke-virtual {p1}, Lcom/facebook/SessionState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 932
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 924
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 925
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 926
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 927
    :pswitch_3
    const/16 v0, 0x201

    goto :goto_0

    .line 928
    :pswitch_4
    const/16 v0, 0x202

    goto :goto_0

    .line 929
    :pswitch_5
    const/16 v0, 0x101

    goto :goto_0

    .line 930
    :pswitch_6
    const/16 v0, 0x102

    goto :goto_0

    .line 923
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private createAudioManager()V
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->mAudioManager:Lcom/quattroplay/GraalEra/QPlayAudioManager;

    if-nez v0, :cond_0

    .line 351
    new-instance v0, Lcom/quattroplay/GraalEra/QPlayAudioManager;

    invoke-direct {v0, p0}, Lcom/quattroplay/GraalEra/QPlayAudioManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->mAudioManager:Lcom/quattroplay/GraalEra/QPlayAudioManager;

    .line 352
    :cond_0
    return-void
.end method

.method private createGLView()V
    .locals 8

    .prologue
    .line 171
    const v0, 0x7f050073

    invoke-virtual {p0, v0}, Lcom/quattroplay/GraalEra/QPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/quattroplay/GraalEra/GLView;

    iput-object v0, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->mGLView:Lcom/quattroplay/GraalEra/GLView;

    .line 173
    invoke-virtual {p0}, Lcom/quattroplay/GraalEra/QPlayActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    .line 175
    .local v6, "display":Landroid/view/Display;
    iget-object v7, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->mGLView:Lcom/quattroplay/GraalEra/GLView;

    new-instance v0, Lcom/quattroplay/GraalEra/QPlayRenderer;

    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->mAppPath:Ljava/lang/String;

    iget-object v5, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->mDataPath:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/quattroplay/GraalEra/QPlayRenderer;-><init>(Lcom/quattroplay/GraalEra/QPlayActivity;IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/quattroplay/GraalEra/GLView;->setRenderer(Lcom/quattroplay/GraalEra/GLView$Renderer;)V

    .line 176
    iget-object v0, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->mGLView:Lcom/quattroplay/GraalEra/GLView;

    invoke-virtual {v0}, Lcom/quattroplay/GraalEra/GLView;->requestFocus()Z

    .line 177
    return-void
.end method

.method private createInputControls()V
    .locals 2

    .prologue
    .line 425
    const v0, 0x7f050074

    invoke-virtual {p0, v0}, Lcom/quattroplay/GraalEra/QPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->mTextInputWidget:Landroid/widget/EditText;

    .line 426
    iget-object v0, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->mTextInputWidget:Landroid/widget/EditText;

    new-instance v1, Lcom/quattroplay/GraalEra/QPlayActivity$2;

    invoke-direct {v1, p0}, Lcom/quattroplay/GraalEra/QPlayActivity$2;-><init>(Lcom/quattroplay/GraalEra/QPlayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 445
    iget-object v0, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->mTextInputWidget:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 446
    return-void
.end method

.method private escaped34(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 936
    const-string v4, ""

    .line 937
    .local v4, "res":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 938
    .local v3, "len":I
    const/4 v1, 0x0

    .line 939
    .local v1, "hasspecialchar":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_4

    .line 940
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 941
    .local v0, "c":C
    const/16 v5, 0x5c

    if-ne v0, v5, :cond_1

    .line 942
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\\\\"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 943
    const/4 v1, 0x1

    .line 939
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 944
    :cond_1
    const/16 v5, 0x22

    if-ne v0, v5, :cond_2

    .line 945
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\"\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 946
    const/4 v1, 0x1

    goto :goto_1

    .line 947
    :cond_2
    const/16 v5, 0x1e

    if-lt v0, v5, :cond_0

    .line 948
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 949
    const/16 v5, 0x20

    if-eq v0, v5, :cond_3

    const/16 v5, 0x2c

    if-ne v0, v5, :cond_0

    .line 950
    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    .line 953
    .end local v0    # "c":C
    :cond_4
    if-nez v1, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_6

    .line 954
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 956
    .end local v4    # "res":Ljava/lang/String;
    :cond_6
    return-object v4
.end method

.method private getIntentForURL(Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 392
    const-string v1, "graalclassic://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "graalclassicplus://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 393
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.RUN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 394
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.quattroplay.GraalClassic"

    const-string v3, "com.quattroplay.GraalClassic.QPlayActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 403
    :goto_0
    return-object v0

    .line 395
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    const-string v1, "graalera://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "graaleraplus://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 396
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.RUN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 397
    .restart local v0    # "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.quattroplay.GraalEra"

    const-string v3, "com.quattroplay.GraalEra.QPlayActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 398
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    const-string v1, "graalzone://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "graalzoneplus://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 399
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.RUN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 400
    .restart local v0    # "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.quattroplay.GraalZone"

    const-string v3, "com.quattroplay.GraalZone.QPlayActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 402
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0
.end method

.method private installOrientationListener()V
    .locals 2

    .prologue
    .line 268
    new-instance v0, Lcom/quattroplay/GraalEra/QPlayActivity$1;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p0, v1}, Lcom/quattroplay/GraalEra/QPlayActivity$1;-><init>(Lcom/quattroplay/GraalEra/QPlayActivity;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    .line 275
    iget-object v0, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 277
    :cond_0
    return-void
.end method

.method private onGooglePlayPurchase(Ljava/lang/String;Lcom/quattroplay/GraalEra/util/Purchase;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;
    .param p2, "purchase"    # Lcom/quattroplay/GraalEra/util/Purchase;

    .prologue
    .line 645
    sget-boolean v0, Lcom/quattroplay/GraalEra/Natives;->loaded:Z

    if-eqz v0, :cond_0

    .line 646
    if-eqz p2, :cond_1

    .line 647
    invoke-virtual {p2}, Lcom/quattroplay/GraalEra/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/quattroplay/GraalEra/util/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/quattroplay/GraalEra/util/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/quattroplay/GraalEra/Natives;->onGooglePlayPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    :cond_0
    :goto_0
    return-void

    .line 649
    :cond_1
    const-string v0, ""

    const-string v1, ""

    const-string v2, ""

    invoke-static {p1, v0, v1, v2}, Lcom/quattroplay/GraalEra/Natives;->onGooglePlayPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static openActiveSession(Landroid/app/Activity;ZLcom/facebook/Session$StatusCallback;Ljava/util/List;)Lcom/facebook/Session;
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "allowLoginUI"    # Z
    .param p2, "callback"    # Lcom/facebook/Session$StatusCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Z",
            "Lcom/facebook/Session$StatusCallback;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/Session;"
        }
    .end annotation

    .prologue
    .line 716
    .local p3, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Lcom/facebook/Session$OpenRequest;

    invoke-direct {v2, p0}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, p3}, Lcom/facebook/Session$OpenRequest;->setPermissions(Ljava/util/List;)Lcom/facebook/Session$OpenRequest;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/facebook/Session$OpenRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$OpenRequest;

    move-result-object v0

    .line 717
    .local v0, "openRequest":Lcom/facebook/Session$OpenRequest;
    new-instance v2, Lcom/facebook/Session$Builder;

    invoke-direct {v2, p0}, Lcom/facebook/Session$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/facebook/Session$Builder;->build()Lcom/facebook/Session;

    move-result-object v1

    .line 718
    .local v1, "session":Lcom/facebook/Session;
    sget-object v2, Lcom/facebook/SessionState;->CREATED_TOKEN_LOADED:Lcom/facebook/SessionState;

    invoke-virtual {v1}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/SessionState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p1, :cond_1

    .line 719
    :cond_0
    invoke-static {v1}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V

    .line 720
    invoke-virtual {v1, v0}, Lcom/facebook/Session;->openForRead(Lcom/facebook/Session$OpenRequest;)V

    .line 723
    .end local v1    # "session":Lcom/facebook/Session;
    :goto_0
    return-object v1

    .restart local v1    # "session":Lcom/facebook/Session;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private requestNewFacebookGraphWithParams(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "params"    # Landroid/os/Bundle;

    .prologue
    .line 810
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v2

    .line 811
    .local v2, "session":Lcom/facebook/Session;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/facebook/Session;->isOpened()Z

    move-result v0

    if-nez v0, :cond_1

    .line 833
    :cond_0
    :goto_0
    return-void

    .line 814
    :cond_1
    move-object v3, p1

    .line 815
    .local v3, "furl":Ljava/lang/String;
    move-object v4, p3

    .line 816
    .local v4, "fparams":Landroid/os/Bundle;
    const-string v0, "POST"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v5, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    .line 817
    .local v5, "fmethod":Lcom/facebook/HttpMethod;
    :goto_1
    new-instance v0, Lcom/quattroplay/GraalEra/QPlayActivity$10;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/quattroplay/GraalEra/QPlayActivity$10;-><init>(Lcom/quattroplay/GraalEra/QPlayActivity;Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)V

    invoke-virtual {p0, v0}, Lcom/quattroplay/GraalEra/QPlayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 816
    .end local v5    # "fmethod":Lcom/facebook/HttpMethod;
    :cond_2
    const-string v0, "DELETE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v5, Lcom/facebook/HttpMethod;->DELETE:Lcom/facebook/HttpMethod;

    goto :goto_1

    :cond_3
    sget-object v5, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    goto :goto_1
.end method

.method private showFacebookWebDialogWithParams(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 875
    if-nez p2, :cond_1

    .line 920
    :cond_0
    :goto_0
    return-void

    .line 877
    :cond_1
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v3

    .line 878
    .local v3, "session":Lcom/facebook/Session;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/facebook/Session;->isOpened()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 881
    const-string v4, "display"

    const-string v5, "touch"

    invoke-virtual {p2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    const-string v4, "type"

    const-string v5, "user_agent"

    invoke-virtual {p2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    const-string v4, "app_id"

    invoke-virtual {v3}, Lcom/facebook/Session;->getApplicationId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    const-string v4, "access_token"

    invoke-virtual {v3}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    const-string v4, "redirect_uri"

    const-string v5, "fbconnect://success"

    invoke-virtual {p2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    move-object v1, p0

    .line 888
    .local v1, "fcontext":Landroid/content/Context;
    move-object v0, p1

    .line 889
    .local v0, "faction":Ljava/lang/String;
    move-object v2, p2

    .line 893
    .local v2, "fparams":Landroid/os/Bundle;
    new-instance v4, Lcom/quattroplay/GraalEra/QPlayActivity$11;

    invoke-direct {v4, p0, v1, v0, v2}, Lcom/quattroplay/GraalEra/QPlayActivity$11;-><init>(Lcom/quattroplay/GraalEra/QPlayActivity;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0, v4}, Lcom/quattroplay/GraalEra/QPlayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public buyGooglePlayItem(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "itemid"    # Ljava/lang/String;
    .param p2, "payload"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 595
    iget-object v0, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->mBillingHelper:Lcom/quattroplay/GraalEra/util/IabHelper;

    if-nez v0, :cond_0

    move v0, v7

    .line 605
    :goto_0
    return v0

    .line 599
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->mBillingHelper:Lcom/quattroplay/GraalEra/util/IabHelper;

    const v3, 0x119bb

    iget-object v4, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->mPurchaseFinishedListener:Lcom/quattroplay/GraalEra/util/IabHelper$OnIabPurchaseFinishedListener;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/quattroplay/GraalEra/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/quattroplay/GraalEra/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 605
    const/4 v0, 0x1

    goto :goto_0

    .line 601
    :catch_0
    move-exception v6

    .line 602
    .local v6, "e":Ljava/lang/Exception;
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Google Play error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v7

    .line 603
    goto :goto_0
.end method

.method public canOpenURL(Ljava/lang/String;)Z
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 407
    invoke-direct {p0, p1}, Lcom/quattroplay/GraalEra/QPlayActivity;->getIntentForURL(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 408
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/quattroplay/GraalEra/QPlayActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 409
    .local v1, "packMgmr":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public canShowFacebookShareDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "link"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "caption"    # Ljava/lang/String;
    .param p4, "description"    # Ljava/lang/String;
    .param p5, "pictureurl"    # Ljava/lang/String;
    .param p6, "reference"    # Ljava/lang/String;

    .prologue
    .line 837
    invoke-virtual {p0}, Lcom/quattroplay/GraalEra/QPlayActivity;->canShowFacebookWebDialog()Z

    move-result v0

    return v0
.end method

.method public canShowFacebookWebDialog()Z
    .locals 2

    .prologue
    .line 859
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 860
    .local v0, "session":Lcom/facebook/Session;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v1

    if-nez v1, :cond_1

    .line 861
    :cond_0
    const/4 v1, 0x0

    .line 862
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public closeVirtualKeyboard(Z)V
    .locals 2
    .param p1, "withtext"    # Z

    .prologue
    .line 474
    iget-object v1, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->mTextInputWidget:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 489
    :goto_0
    return-void

    .line 477
    :cond_0
    move v0, p1

    .line 478
    .local v0, "fwithtext":Z
    new-instance v1, Lcom/quattroplay/GraalEra/QPlayActivity$4;

    invoke-direct {v1, p0, v0}, Lcom/quattroplay/GraalEra/QPlayActivity$4;-><init>(Lcom/quattroplay/GraalEra/QPlayActivity;Z)V

    invoke-virtual {p0, v1}, Lcom/quattroplay/GraalEra/QPlayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public connectToDistimoService(Ljava/lang/String;)V
    .locals 3
    .param p1, "sdkkey"    # Ljava/lang/String;

    .prologue
    .line 1013
    move-object v0, p0

    .line 1014
    .local v0, "fcontext":Landroid/content/Context;
    move-object v1, p1

    .line 1015
    .local v1, "fsdkkey":Ljava/lang/String;
    new-instance v2, Lcom/quattroplay/GraalEra/QPlayActivity$12;

    invoke-direct {v2, p0, v0, v1}, Lcom/quattroplay/GraalEra/QPlayActivity$12;-><init>(Lcom/quattroplay/GraalEra/QPlayActivity;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/quattroplay/GraalEra/QPlayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1020
    return-void
.end method

.method public connectToTapJoyService(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "secret"    # Ljava/lang/String;

    .prologue
    .line 517
    invoke-virtual {p0}, Lcom/quattroplay/GraalEra/QPlayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/tapjoy/TapjoyConnect;->requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    const/4 v0, 0x1

    return v0
.end method

.method public createWebView()I
    .locals 2

    .prologue
    .line 1090
    iget v0, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->nextwebviewid:I

    .line 1091
    .local v0, "viewid":I
    iget v1, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->nextwebviewid:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->nextwebviewid:I

    .line 1092
    new-instance v1, Lcom/quattroplay/GraalEra/QPlayActivity$16;

    invoke-direct {v1, p0, v0}, Lcom/quattroplay/GraalEra/QPlayActivity$16;-><init>(Lcom/quattroplay/GraalEra/QPlayActivity;I)V

    invoke-virtual {p0, v1}, Lcom/quattroplay/GraalEra/QPlayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1108
    return v0
.end method

.method public deleteWebView(I)V
    .locals 2
    .param p1, "viewid"    # I

    .prologue
    .line 1112
    move v0, p1

    .line 1113
    .local v0, "fviewid":I
    new-instance v1, Lcom/quattroplay/GraalEra/QPlayActivity$17;

    invoke-direct {v1, p0, v0}, Lcom/quattroplay/GraalEra/QPlayActivity$17;-><init>(Lcom/quattroplay/GraalEra/QPlayActivity;I)V

    invoke-virtual {p0, v1}, Lcom/quattroplay/GraalEra/QPlayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1125
    return-void
.end method

.method public fabzatSetResourcePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1056
    iput-object p1, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->fabzaturl:Ljava/lang/String;

    .line 1057
    return-void
.end method

.method public getCurrentOrientation()I
    .locals 1

    .prologue
    .line 280
    iget v0, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->mCurrentOrientation:I

    return v0
.end method

.method public getNewFacebookPermissions()Ljava/lang/String;
    .locals 6

    .prologue
    .line 752
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v3

    .line 753
    .local v3, "session":Lcom/facebook/Session;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/facebook/Session;->isOpened()Z

    move-result v4

    if-nez v4, :cond_2

    .line 754
    :cond_0
    const-string v2, ""

    .line 760
    :cond_1
    return-object v2

    .line 756
    :cond_2
    const-string v2, ""

    .line 757
    .local v2, "res":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/facebook/Session;->getPermissions()Ljava/util/List;

    move-result-object v1

    .line 758
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 759
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    const-string v4, ","

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/quattroplay/GraalEra/QPlayActivity;->escaped34(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 758
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 759
    :cond_3
    const-string v4, ""

    goto :goto_1
.end method

.method public getNewFacebookSessionState()I
    .locals 2

    .prologue
    .line 735
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 737
    .local v0, "session":Lcom/facebook/Session;
    if-nez v0, :cond_0

    .line 738
    new-instance v0, Lcom/facebook/Session;

    .end local v0    # "session":Lcom/facebook/Session;
    invoke-direct {v0, p0}, Lcom/facebook/Session;-><init>(Landroid/content/Context;)V

    .line 739
    .restart local v0    # "session":Lcom/facebook/Session;
    invoke-static {v0}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V

    .line 741
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/quattroplay/GraalEra/QPlayActivity;->convertFacebookState(Lcom/facebook/SessionState;)I

    move-result v1

    return v1
.end method

.method public getNewFacebookToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 745
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 746
    .local v0, "session":Lcom/facebook/Session;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v1

    if-nez v1, :cond_1

    .line 747
    :cond_0
    const-string v1, ""

    .line 748
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v0}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public initFabzatStore(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "storeid"    # Ljava/lang/String;
    .param p2, "storetoken"    # Ljava/lang/String;

    .prologue
    .line 1051
    iput-object p1, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->fabzatstoreid:Ljava/lang/String;

    .line 1052
    iput-object p2, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->fabzatstoretoken:Ljava/lang/String;

    .line 1053
    return-void
.end method

.method public initGooglePlay()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 537
    iget-object v1, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->mBillingHelper:Lcom/quattroplay/GraalEra/util/IabHelper;

    if-eqz v1, :cond_0

    .line 564
    :goto_0
    return v3

    .line 541
    :cond_0
    const-string v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAilYmi5KTFbWZ65RLI9G2r2HmJgTQ1y1mjyaV5HOFJgyVbX6d0zjkiQMlagF0MSWFl5nEIP04t2JWCNg2UcBXXrULezbJo2F7YW/qg32+w9WY89tIF3sl/yOkBcB1DOb2wuVUsetSr/vsqvxlUMSwJw9BHxKkYbSY+RD1eODo1sKgW7b/odo/8iF7RiPE3NxsF02uU4H15sOOfbK3ZwMaFXtWtc+AJSjAeR0uy94DJQaQDXs+yvfJgRrRR8TfVPUa5qOT7VToGev6D9uT5L1RIFw9+oLz/nbYfFoDjCioOkjdwgY3EAUtS6RjZbiWyQvrXRkEEBbwZH/268g5Lq6TswIDAQAB"

    .line 545
    .local v0, "base64EncodedPublicKey":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lcom/quattroplay/GraalEra/util/IabHelper;

    invoke-direct {v1, p0, v0}, Lcom/quattroplay/GraalEra/util/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->mBillingHelper:Lcom/quattroplay/GraalEra/util/IabHelper;

    .line 546
    iget-object v1, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->mBillingHelper:Lcom/quattroplay/GraalEra/util/IabHelper;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/quattroplay/GraalEra/util/IabHelper;->enableDebugLogging(Z)V

    .line 547
    iget-object v1, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->mBillingHelper:Lcom/quattroplay/GraalEra/util/IabHelper;

    new-instance v2, Lcom/quattroplay/GraalEra/QPlayActivity$5;

    invoke-direct {v2, p0}, Lcom/quattroplay/GraalEra/QPlayActivity$5;-><init>(Lcom/quattroplay/GraalEra/QPlayActivity;)V

    invoke-virtual {v1, v2}, Lcom/quattroplay/GraalEra/util/IabHelper;->startSetup(Lcom/quattroplay/GraalEra/util/IabHelper$OnIabSetupFinishedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 561
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public isFabzatSupported()Z
    .locals 2

    .prologue
    .line 1047
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMusicPlaying()Z
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->mAudioManager:Lcom/quattroplay/GraalEra/QPlayAudioManager;

    if-nez v0, :cond_0

    .line 380
    const/4 v0, 0x0

    .line 381
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->mAudioManager:Lcom/quattroplay/GraalEra/QPlayAudioManager;

    invoke-virtual {v0}, Lcom/quattroplay/GraalEra/QPlayAudioManager;->isMusicPlaying()Z

    move-result v0

    goto :goto_0
.end method

.method public isSoundPlaying(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 385
    iget-object v0, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->mAudioManager:Lcom/quattroplay/GraalEra/QPlayAudioManager;

    if-nez v0, :cond_0

    .line 386
    const/4 v0, 0x0

    .line 387
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->mAudioManager:Lcom/quattroplay/GraalEra/QPlayAudioManager;

    invoke-virtual {v0, p1}, Lcom/quattroplay/GraalEra/QPlayAudioManager;->isSoundPlaying(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public loginToNewFacebook(ZLjava/lang/String;)V
    .locals 3
    .param p1, "showgui"    # Z
    .param p2, "permissions"    # Ljava/lang/String;

    .prologue
    .line 681
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    .line 682
    .local v1, "session":Lcom/facebook/Session;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/facebook/Session;->isOpened()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 713
    :goto_0
    return-void

    .line 685
    :cond_0
    invoke-direct {p0, p2}, Lcom/quattroplay/GraalEra/QPlayActivity;->convertCommaTextToList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 686
    .local v0, "jpermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 687
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 690
    :cond_1
    new-instance v2, Lcom/quattroplay/GraalEra/QPlayActivity$9;

    invoke-direct {v2, p0}, Lcom/quattroplay/GraalEra/QPlayActivity$9;-><init>(Lcom/quattroplay/GraalEra/QPlayActivity;)V

    invoke-static {p0, p1, v2, v0}, Lcom/quattroplay/GraalEra/QPlayActivity;->openActiveSession(Landroid/app/Activity;ZLcom/facebook/Session$StatusCallback;Ljava/util/List;)Lcom/facebook/Session;

    goto :goto_0
.end method

.method public logoutFromNewFacebook()V
    .locals 2

    .prologue
    .line 727
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 728
    .local v0, "session":Lcom/facebook/Session;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/Session;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 732
    :cond_0
    :goto_0
    return-void

    .line 731
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/Session;->closeAndClearTokenInformation()V

    goto :goto_0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 265
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 658
    iget-object v0, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->mBillingHelper:Lcom/quattroplay/GraalEra/util/IabHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->mBillingHelper:Lcom/quattroplay/GraalEra/util/IabHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/quattroplay/GraalEra/util/IabHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 661
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 663
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 664
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/facebook/Session;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    .line 667
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x400

    const/4 v4, 0x1

    .line 128
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 131
    invoke-virtual {p0}, Lcom/quattroplay/GraalEra/QPlayActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 132
    .local v1, "packMgmr":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lcom/quattroplay/GraalEra/QPlayActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 133
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v3, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->mAppPath:Ljava/lang/String;

    .line 134
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iput-object v3, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->mDataPath:Ljava/lang/String;

    .line 139
    invoke-virtual {p0, v4}, Lcom/quattroplay/GraalEra/QPlayActivity;->requestWindowFeature(I)Z

    .line 140
    invoke-virtual {p0}, Lcom/quattroplay/GraalEra/QPlayActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 143
    invoke-static {p0}, Lcom/quattroplay/GraalEra/Natives;->setListener(Lcom/quattroplay/GraalEra/Natives$EventListener;)V

    .line 145
    const-string v3, "sensor"

    invoke-virtual {p0, v3}, Lcom/quattroplay/GraalEra/QPlayActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    iput-object v3, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->mSensorManager:Landroid/hardware/SensorManager;

    .line 148
    const v3, 0x7f030024

    invoke-virtual {p0, v3}, Lcom/quattroplay/GraalEra/QPlayActivity;->setContentView(I)V

    .line 149
    invoke-direct {p0}, Lcom/quattroplay/GraalEra/QPlayActivity;->createGLView()V

    .line 150
    invoke-direct {p0}, Lcom/quattroplay/GraalEra/QPlayActivity;->createInputControls()V

    .line 151
    invoke-direct {p0}, Lcom/quattroplay/GraalEra/QPlayActivity;->installOrientationListener()V

    .line 154
    sput-boolean v4, Lcom/quattroplay/GraalEra/Natives;->downloaded:Z

    .line 158
    sget-object v3, Lcom/facebook/LoggingBehavior;->INCLUDE_ACCESS_TOKENS:Lcom/facebook/LoggingBehavior;

    invoke-static {v3}, Lcom/facebook/Settings;->addLoggingBehavior(Lcom/facebook/LoggingBehavior;)V

    .line 159
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v2

    .line 160
    .local v2, "session":Lcom/facebook/Session;
    if-nez v2, :cond_0

    if-eqz p1, :cond_0

    .line 161
    invoke-static {p0, v6, v6, p1}, Lcom/facebook/Session;->restoreSession(Landroid/content/Context;Lcom/facebook/TokenCachingStrategy;Lcom/facebook/Session$StatusCallback;Landroid/os/Bundle;)Lcom/facebook/Session;

    move-result-object v2

    .line 162
    if-eqz v2, :cond_0

    .line 163
    invoke-static {v2}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V

    .line 168
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 239
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 242
    iget-object v0, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->mBillingHelper:Lcom/quattroplay/GraalEra/util/IabHelper;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->mBillingHelper:Lcom/quattroplay/GraalEra/util/IabHelper;

    invoke-virtual {v0}, Lcom/quattroplay/GraalEra/util/IabHelper;->dispose()V

    .line 244
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->mBillingHelper:Lcom/quattroplay/GraalEra/util/IabHelper;

    .line 247
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 317
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 318
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 328
    :cond_0
    :goto_0
    return v0

    .line 322
    :cond_1
    const/16 v1, 0x19

    if-eq p1, v1, :cond_2

    const/16 v1, 0x18

    if-eq p1, v1, :cond_2

    const/4 v1, 0x6

    if-ne p1, v1, :cond_3

    .line 324
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 326
    :cond_3
    sget-boolean v1, Lcom/quattroplay/GraalEra/Natives;->loaded:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->mTextInputWidget:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 327
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v3

    invoke-static {v0, p1, v1, v2, v3}, Lcom/quattroplay/GraalEra/Natives;->onKeyEvent(IIIII)V

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 333
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 335
    sget-boolean v1, Lcom/quattroplay/GraalEra/Natives;->loaded:Z

    if-eqz v1, :cond_0

    .line 336
    const-string v1, "onDeviceBackButton"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/quattroplay/GraalEra/Natives;->onInvokeEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    :cond_0
    :goto_0
    return v0

    .line 340
    :cond_1
    const/16 v1, 0x19

    if-eq p1, v1, :cond_2

    const/16 v1, 0x18

    if-eq p1, v1, :cond_2

    const/4 v1, 0x6

    if-ne p1, v1, :cond_3

    .line 342
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 344
    :cond_3
    sget-boolean v1, Lcom/quattroplay/GraalEra/Natives;->loaded:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->mTextInputWidget:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 345
    const/4 v1, 0x2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v4

    invoke-static {v1, p1, v2, v3, v4}, Lcom/quattroplay/GraalEra/Natives;->onKeyEvent(IIIII)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 181
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 182
    iget-object v0, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->mGLView:Lcom/quattroplay/GraalEra/GLView;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->mGLView:Lcom/quattroplay/GraalEra/GLView;

    invoke-virtual {v0}, Lcom/quattroplay/GraalEra/GLView;->onPause()V

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->mAudioManager:Lcom/quattroplay/GraalEra/QPlayAudioManager;

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->mAudioManager:Lcom/quattroplay/GraalEra/QPlayAudioManager;

    invoke-virtual {v0}, Lcom/quattroplay/GraalEra/QPlayAudioManager;->pauseMusic()V

    .line 188
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 192
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 193
    iget-object v0, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->mGLView:Lcom/quattroplay/GraalEra/GLView;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->mGLView:Lcom/quattroplay/GraalEra/GLView;

    invoke-virtual {v0}, Lcom/quattroplay/GraalEra/GLView;->onResume()V

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->mAudioManager:Lcom/quattroplay/GraalEra/QPlayAudioManager;

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->mAudioManager:Lcom/quattroplay/GraalEra/QPlayAudioManager;

    invoke-virtual {v0}, Lcom/quattroplay/GraalEra/QPlayAudioManager;->resumeMusic()V

    .line 203
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 675
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 676
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 677
    .local v0, "session":Lcom/facebook/Session;
    invoke-static {v0, p1}, Lcom/facebook/Session;->saveSession(Lcom/facebook/Session;Landroid/os/Bundle;)V

    .line 678
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 250
    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 252
    :pswitch_0
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v2}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 254
    .local v0, "accels":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 255
    aget v2, v0, v1

    const v3, 0x4112c9fb

    mul-float/2addr v2, v3

    aput v2, v0, v1

    .line 254
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 257
    :cond_1
    sget-boolean v2, Lcom/quattroplay/GraalEra/Natives;->loaded:Z

    if-eqz v2, :cond_0

    .line 258
    const/4 v2, 0x2

    aget v2, v0, v2

    float-to-int v2, v2

    const/4 v3, 0x0

    aget v3, v0, v3

    float-to-int v3, v3

    const/4 v4, 0x1

    aget v4, v0, v4

    float-to-int v4, v4

    invoke-static {v2, v3, v4}, Lcom/quattroplay/GraalEra/Natives;->onAccelerator(III)V

    goto :goto_0

    .line 250
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 210
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 214
    iget-boolean v0, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->isinbackground:Z

    if-eqz v0, :cond_0

    .line 215
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->isinbackground:Z

    .line 216
    sget-boolean v0, Lcom/quattroplay/GraalEra/Natives;->loaded:Z

    if-eqz v0, :cond_0

    .line 217
    invoke-static {}, Lcom/quattroplay/GraalEra/Natives;->onAppLeaveBackground()V

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->mAudioManager:Lcom/quattroplay/GraalEra/QPlayAudioManager;

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->mAudioManager:Lcom/quattroplay/GraalEra/QPlayAudioManager;

    invoke-virtual {v0}, Lcom/quattroplay/GraalEra/QPlayAudioManager;->resumeMusic()V

    .line 221
    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 228
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 230
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->isinbackground:Z

    .line 231
    sget-boolean v0, Lcom/quattroplay/GraalEra/Natives;->loaded:Z

    if-eqz v0, :cond_0

    .line 232
    invoke-static {}, Lcom/quattroplay/GraalEra/Natives;->onAppEnterBackground()V

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->mAudioManager:Lcom/quattroplay/GraalEra/QPlayAudioManager;

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->mAudioManager:Lcom/quattroplay/GraalEra/QPlayAudioManager;

    invoke-virtual {v0}, Lcom/quattroplay/GraalEra/QPlayAudioManager;->pauseMusic()V

    .line 235
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 290
    sget-boolean v7, Lcom/quattroplay/GraalEra/Natives;->loaded:Z

    if-eqz v7, :cond_8

    .line 291
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    and-int/lit16 v0, v7, 0xff

    .line 292
    .local v0, "action":I
    if-eqz v0, :cond_0

    const/4 v7, 0x5

    if-ne v0, v7, :cond_1

    :cond_0
    move v3, v6

    .line 295
    .local v3, "type":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    shr-int/lit8 v2, v7, 0x8

    .line 297
    .local v2, "mousenumber":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    if-lez v7, :cond_6

    .line 298
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    if-ge v1, v5, :cond_7

    .line 299
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    if-ne v1, v2, :cond_5

    move v5, v3

    :goto_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    float-to-int v9, v9

    invoke-static {v7, v5, v8, v9}, Lcom/quattroplay/GraalEra/Natives;->onMouseEvent(IIII)V

    .line 298
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 292
    .end local v1    # "i":I
    .end local v2    # "mousenumber":I
    .end local v3    # "type":I
    :cond_1
    if-ne v0, v4, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    if-eq v0, v6, :cond_3

    const/4 v7, 0x6

    if-ne v0, v7, :cond_4

    :cond_3
    const/4 v3, 0x3

    goto :goto_0

    :cond_4
    move v3, v5

    goto :goto_0

    .restart local v1    # "i":I
    .restart local v2    # "mousenumber":I
    .restart local v3    # "type":I
    :cond_5
    move v5, v4

    .line 299
    goto :goto_2

    .line 303
    .end local v1    # "i":I
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-static {v5, v3, v4, v7}, Lcom/quattroplay/GraalEra/Natives;->onMouseEvent(IIII)V

    .line 306
    .end local v0    # "action":I
    .end local v2    # "mousenumber":I
    .end local v3    # "type":I
    :cond_7
    :goto_3
    return v6

    :cond_8
    move v6, v5

    goto :goto_3
.end method

.method public openURL(Ljava/lang/String;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 413
    invoke-direct {p0, p1}, Lcom/quattroplay/GraalEra/QPlayActivity;->getIntentForURL(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 414
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/quattroplay/GraalEra/QPlayActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 415
    .local v2, "packMgmr":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 416
    .local v1, "list":Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_0

    .line 417
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t open URL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 421
    :goto_0
    return-void

    .line 420
    :cond_0
    invoke-virtual {p0, v0}, Lcom/quattroplay/GraalEra/QPlayActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public openVideoPlayer(Ljava/lang/String;)V
    .locals 0
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 530
    return-void
.end method

.method public openVirtualKeyboard(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "inputtype"    # Ljava/lang/String;

    .prologue
    .line 449
    move-object v1, p1

    .line 450
    .local v1, "ftext":Ljava/lang/String;
    move-object v0, p2

    .line 451
    .local v0, "finputtype":Ljava/lang/String;
    new-instance v2, Lcom/quattroplay/GraalEra/QPlayActivity$3;

    invoke-direct {v2, p0, v0, v1}, Lcom/quattroplay/GraalEra/QPlayActivity$3;-><init>(Lcom/quattroplay/GraalEra/QPlayActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/quattroplay/GraalEra/QPlayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 471
    return-void
.end method

.method public registerPurchaseToDistimo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "itemid"    # Ljava/lang/String;
    .param p2, "orderid"    # Ljava/lang/String;

    .prologue
    .line 1031
    move-object v0, p1

    .line 1032
    .local v0, "fitemid":Ljava/lang/String;
    move-object v1, p2

    .line 1033
    .local v1, "forderid":Ljava/lang/String;
    new-instance v2, Lcom/quattroplay/GraalEra/QPlayActivity$14;

    invoke-direct {v2, p0, v0, v1}, Lcom/quattroplay/GraalEra/QPlayActivity$14;-><init>(Lcom/quattroplay/GraalEra/QPlayActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/quattroplay/GraalEra/QPlayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1038
    return-void
.end method

.method public requestNewFacebookGraph(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 784
    const-string v0, "GET"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/quattroplay/GraalEra/QPlayActivity;->requestNewFacebookGraphWithParams(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 785
    return-void
.end method

.method public requestNewFacebookGraph2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "params"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 789
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 790
    .local v3, "jparams":Landroid/os/Bundle;
    invoke-direct {p0, p3}, Lcom/quattroplay/GraalEra/QPlayActivity;->convertCommaTextToList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 791
    .local v5, "paramlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v2, v7, :cond_2

    .line 792
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 793
    .local v4, "name":Ljava/lang/String;
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 795
    .local v6, "value":Ljava/lang/String;
    const-string v7, "image:"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_0

    .line 797
    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v8}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 798
    .local v1, "data":[B
    array-length v7, v1

    invoke-static {v1, v8, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 799
    .local v0, "bi":Landroid/graphics/Bitmap;
    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 791
    .end local v0    # "bi":Landroid/graphics/Bitmap;
    .end local v1    # "data":[B
    :goto_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 800
    :cond_0
    const-string v7, "file:"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_1

    .line 801
    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v8}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_1

    .line 803
    :cond_1
    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 805
    .end local v4    # "name":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, p1, p2, v3}, Lcom/quattroplay/GraalEra/QPlayActivity;->requestNewFacebookGraphWithParams(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 806
    return-void
.end method

.method public requestNewFacebookRights(ZLjava/lang/String;)V
    .locals 4
    .param p1, "publishrights"    # Z
    .param p2, "permissions"    # Ljava/lang/String;

    .prologue
    .line 764
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v2

    .line 765
    .local v2, "session":Lcom/facebook/Session;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/facebook/Session;->isOpened()Z

    move-result v3

    if-nez v3, :cond_1

    .line 780
    :cond_0
    :goto_0
    return-void

    .line 768
    :cond_1
    iput-object p2, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->requestedpermissionsstr:Ljava/lang/String;

    .line 769
    invoke-direct {p0, p2}, Lcom/quattroplay/GraalEra/QPlayActivity;->convertCommaTextToList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 770
    .local v0, "jpermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_2

    .line 771
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 772
    :cond_2
    iput-object v0, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->requestedpermissions:Ljava/util/ArrayList;

    .line 775
    new-instance v1, Lcom/facebook/Session$NewPermissionsRequest;

    invoke-direct {v1, p0, v0}, Lcom/facebook/Session$NewPermissionsRequest;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    .line 776
    .local v1, "request":Lcom/facebook/Session$NewPermissionsRequest;
    if-eqz p1, :cond_3

    .line 777
    invoke-virtual {v2, v1}, Lcom/facebook/Session;->requestNewPublishPermissions(Lcom/facebook/Session$NewPermissionsRequest;)V

    goto :goto_0

    .line 779
    :cond_3
    invoke-virtual {v2, v1}, Lcom/facebook/Session;->requestNewReadPermissions(Lcom/facebook/Session$NewPermissionsRequest;)V

    goto :goto_0
.end method

.method public setDistimoRegisteredUser()V
    .locals 1

    .prologue
    .line 1023
    new-instance v0, Lcom/quattroplay/GraalEra/QPlayActivity$13;

    invoke-direct {v0, p0}, Lcom/quattroplay/GraalEra/QPlayActivity$13;-><init>(Lcom/quattroplay/GraalEra/QPlayActivity;)V

    invoke-virtual {p0, v0}, Lcom/quattroplay/GraalEra/QPlayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1028
    return-void
.end method

.method public setMusicVolume(FF)V
    .locals 1
    .param p1, "leftvolume"    # F
    .param p2, "rightvolume"    # F

    .prologue
    .line 374
    invoke-direct {p0}, Lcom/quattroplay/GraalEra/QPlayActivity;->createAudioManager()V

    .line 375
    iget-object v0, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->mAudioManager:Lcom/quattroplay/GraalEra/QPlayAudioManager;

    invoke-virtual {v0, p1, p2}, Lcom/quattroplay/GraalEra/QPlayAudioManager;->setMusicVolume(FF)V

    .line 376
    return-void
.end method

.method public setWebViewAllowZoom(IZ)V
    .locals 0
    .param p1, "viewid"    # I
    .param p2, "value"    # Z

    .prologue
    .line 1159
    return-void
.end method

.method public setWebViewSize(IIIII)V
    .locals 7
    .param p1, "viewid"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I

    .prologue
    .line 1128
    move v2, p1

    .local v2, "fviewid":I
    move v5, p2

    .local v5, "fx":I
    move v6, p3

    .local v6, "fy":I
    move v3, p4

    .local v3, "fw":I
    move v4, p5

    .line 1129
    .local v4, "fh":I
    new-instance v0, Lcom/quattroplay/GraalEra/QPlayActivity$18;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/quattroplay/GraalEra/QPlayActivity$18;-><init>(Lcom/quattroplay/GraalEra/QPlayActivity;IIIII)V

    invoke-virtual {p0, v0}, Lcom/quattroplay/GraalEra/QPlayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1141
    return-void
.end method

.method public setWebViewText(ILjava/lang/String;)V
    .locals 3
    .param p1, "viewid"    # I
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 1162
    move v1, p1

    .line 1163
    .local v1, "fviewid":I
    move-object v0, p2

    .line 1164
    .local v0, "ftext":Ljava/lang/String;
    new-instance v2, Lcom/quattroplay/GraalEra/QPlayActivity$20;

    invoke-direct {v2, p0, v1, v0}, Lcom/quattroplay/GraalEra/QPlayActivity$20;-><init>(Lcom/quattroplay/GraalEra/QPlayActivity;ILjava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/quattroplay/GraalEra/QPlayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1172
    return-void
.end method

.method public setWebViewURL(ILjava/lang/String;)V
    .locals 3
    .param p1, "viewid"    # I
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 1175
    move v1, p1

    .line 1176
    .local v1, "fviewid":I
    move-object v0, p2

    .line 1177
    .local v0, "furl":Ljava/lang/String;
    new-instance v2, Lcom/quattroplay/GraalEra/QPlayActivity$21;

    invoke-direct {v2, p0, v1, v0}, Lcom/quattroplay/GraalEra/QPlayActivity$21;-><init>(Lcom/quattroplay/GraalEra/QPlayActivity;ILjava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/quattroplay/GraalEra/QPlayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1185
    return-void
.end method

.method public setWebViewVisible(IZ)V
    .locals 3
    .param p1, "viewid"    # I
    .param p2, "value"    # Z

    .prologue
    .line 1144
    move v1, p1

    .line 1145
    .local v1, "fviewid":I
    move v0, p2

    .line 1146
    .local v0, "fvalue":Z
    new-instance v2, Lcom/quattroplay/GraalEra/QPlayActivity$19;

    invoke-direct {v2, p0, v1, v0}, Lcom/quattroplay/GraalEra/QPlayActivity$19;-><init>(Lcom/quattroplay/GraalEra/QPlayActivity;IZ)V

    invoke-virtual {p0, v2}, Lcom/quattroplay/GraalEra/QPlayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1156
    return-void
.end method

.method public showFabzatStore()V
    .locals 6

    .prologue
    .line 1060
    invoke-virtual {p0}, Lcom/quattroplay/GraalEra/QPlayActivity;->isFabzatSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->fabzatstoreid:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->fabzatstoretoken:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->fabzaturl:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1079
    :cond_0
    :goto_0
    return-void

    .line 1063
    :cond_1
    move-object v2, p0

    .line 1064
    .local v2, "factivity":Landroid/app/Activity;
    iget-object v3, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->fabzatstoreid:Ljava/lang/String;

    .line 1065
    .local v3, "fstoreid":Ljava/lang/String;
    iget-object v4, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->fabzatstoretoken:Ljava/lang/String;

    .line 1066
    .local v4, "fstoretoken":Ljava/lang/String;
    iget-object v5, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->fabzaturl:Ljava/lang/String;

    .line 1067
    .local v5, "furl":Ljava/lang/String;
    new-instance v0, Lcom/quattroplay/GraalEra/QPlayActivity$15;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/quattroplay/GraalEra/QPlayActivity$15;-><init>(Lcom/quattroplay/GraalEra/QPlayActivity;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/quattroplay/GraalEra/QPlayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public showFacebookShareDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "link"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "caption"    # Ljava/lang/String;
    .param p4, "description"    # Ljava/lang/String;
    .param p5, "pictureurl"    # Ljava/lang/String;
    .param p6, "reference"    # Ljava/lang/String;

    .prologue
    .line 843
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 844
    .local v0, "params":Landroid/os/Bundle;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 845
    const-string v1, "link"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 847
    const-string v1, "name"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 849
    const-string v1, "caption"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    :cond_2
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 851
    const-string v1, "description"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    :cond_3
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 853
    const-string v1, "picture"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    :cond_4
    const-string v1, "feed"

    invoke-direct {p0, v1, v0}, Lcom/quattroplay/GraalEra/QPlayActivity;->showFacebookWebDialogWithParams(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 856
    return-void
.end method

.method public showFacebookWebDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;

    .prologue
    .line 867
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 868
    .local v1, "jparams":Landroid/os/Bundle;
    invoke-direct {p0, p2}, Lcom/quattroplay/GraalEra/QPlayActivity;->convertCommaTextToList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 869
    .local v2, "paramlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_0

    .line 870
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 871
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/quattroplay/GraalEra/QPlayActivity;->showFacebookWebDialogWithParams(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 872
    return-void
.end method

.method public showTapJoyOffers(Ljava/lang/String;)V
    .locals 1
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 523
    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyConnect;->setUserID(Ljava/lang/String;)V

    .line 524
    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyConnect;->showOffers()V

    .line 525
    return-void
.end method

.method public startMusic(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "loop"    # Z

    .prologue
    .line 362
    invoke-direct {p0}, Lcom/quattroplay/GraalEra/QPlayActivity;->createAudioManager()V

    .line 363
    iget-object v0, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->mAudioManager:Lcom/quattroplay/GraalEra/QPlayAudioManager;

    invoke-virtual {v0, p1, p2}, Lcom/quattroplay/GraalEra/QPlayAudioManager;->startMusic(Ljava/lang/String;Z)V

    .line 364
    return-void
.end method

.method public startSound(Ljava/lang/String;FF)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "leftvolume"    # F
    .param p3, "rightvolume"    # F

    .prologue
    .line 356
    invoke-direct {p0}, Lcom/quattroplay/GraalEra/QPlayActivity;->createAudioManager()V

    .line 357
    iget-object v0, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->mAudioManager:Lcom/quattroplay/GraalEra/QPlayAudioManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/quattroplay/GraalEra/QPlayAudioManager;->startSound(Ljava/lang/String;FF)V

    .line 358
    return-void
.end method

.method public stopMusic()V
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->mAudioManager:Lcom/quattroplay/GraalEra/QPlayAudioManager;

    if-nez v0, :cond_0

    .line 371
    :goto_0
    return-void

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/quattroplay/GraalEra/QPlayActivity;->mAudioManager:Lcom/quattroplay/GraalEra/QPlayAudioManager;

    invoke-virtual {v0}, Lcom/quattroplay/GraalEra/QPlayAudioManager;->stopMusic()V

    goto :goto_0
.end method

.method public stopVideoPlayer()V
    .locals 0

    .prologue
    .line 533
    return-void
.end method
