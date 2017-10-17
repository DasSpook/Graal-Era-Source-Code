.class public Lcom/quattroplay/GraalEra/Natives;
.super Ljava/lang/Object;
.source "Natives.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/quattroplay/GraalEra/Natives$EventListener;
    }
.end annotation


# static fields
.field static downloaded:Z

.field private static listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

.field static loaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    sput-boolean v0, Lcom/quattroplay/GraalEra/Natives;->downloaded:Z

    .line 22
    sput-boolean v0, Lcom/quattroplay/GraalEra/Natives;->loaded:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static native QPlayLoop()I
.end method

.method public static native QPlayMain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIFFFLjava/lang/String;)I
.end method

.method private static buyAmazonInAppPurchase([B)V
    .locals 0
    .param p0, "itemid"    # [B

    .prologue
    .line 253
    return-void
.end method

.method private static buyGooglePlayItem([B[B)Z
    .locals 3
    .param p0, "itemid"    # [B
    .param p1, "payload"    # [B

    .prologue
    .line 244
    sget-object v0, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    if-eqz v0, :cond_0

    .line 245
    sget-object v0, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, v1, v2}, Lcom/quattroplay/GraalEra/Natives$EventListener;->buyGooglePlayItem(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 247
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static canOpenURL([B)Z
    .locals 2
    .param p0, "name"    # [B

    .prologue
    .line 151
    sget-object v0, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    if-eqz v0, :cond_0

    .line 152
    sget-object v0, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, v1}, Lcom/quattroplay/GraalEra/Natives$EventListener;->canOpenURL(Ljava/lang/String;)Z

    move-result v0

    .line 153
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static canShowFacebookShareDialog([B[B[B[B[B[B)Z
    .locals 7
    .param p0, "link"    # [B
    .param p1, "name"    # [B
    .param p2, "caption"    # [B
    .param p3, "description"    # [B
    .param p4, "pictureurl"    # [B
    .param p5, "reference"    # [B

    .prologue
    .line 352
    sget-object v0, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    if-eqz v0, :cond_0

    .line 353
    sget-object v0, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p2}, Ljava/lang/String;-><init>([B)V

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p3}, Ljava/lang/String;-><init>([B)V

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p4}, Ljava/lang/String;-><init>([B)V

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p5}, Ljava/lang/String;-><init>([B)V

    invoke-interface/range {v0 .. v6}, Lcom/quattroplay/GraalEra/Natives$EventListener;->canShowFacebookShareDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 356
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static canShowFacebookWebDialog()Z
    .locals 1

    .prologue
    .line 372
    sget-object v0, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    if-eqz v0, :cond_0

    .line 373
    sget-object v0, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    invoke-interface {v0}, Lcom/quattroplay/GraalEra/Natives$EventListener;->canShowFacebookWebDialog()Z

    move-result v0

    .line 375
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static closeVirtualKeyboard(I)V
    .locals 2
    .param p0, "withtext"    # I

    .prologue
    .line 170
    sget-object v0, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    if-eqz v0, :cond_0

    .line 171
    sget-object v1, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/quattroplay/GraalEra/Natives$EventListener;->closeVirtualKeyboard(Z)V

    .line 172
    :cond_0
    return-void

    .line 171
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static connectToDistimoService([B)V
    .locals 2
    .param p0, "sdkkey"    # [B

    .prologue
    .line 389
    sget-object v0, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    if-eqz v0, :cond_0

    .line 390
    sget-object v0, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, v1}, Lcom/quattroplay/GraalEra/Natives$EventListener;->connectToDistimoService(Ljava/lang/String;)V

    .line 392
    :cond_0
    return-void
.end method

.method private static connectToTapJoyService([B[B)Z
    .locals 3
    .param p0, "id"    # [B
    .param p1, "secret"    # [B

    .prologue
    .line 205
    sget-object v0, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    if-eqz v0, :cond_0

    .line 206
    sget-object v0, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, v1, v2}, Lcom/quattroplay/GraalEra/Natives$EventListener;->connectToTapJoyService(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 208
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static createWebView()I
    .locals 1

    .prologue
    .line 456
    sget-object v0, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    if-eqz v0, :cond_0

    .line 457
    sget-object v0, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    invoke-interface {v0}, Lcom/quattroplay/GraalEra/Natives$EventListener;->createWebView()I

    move-result v0

    .line 458
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static deleteWebView(I)V
    .locals 1
    .param p0, "view"    # I

    .prologue
    .line 463
    sget-object v0, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    if-eqz v0, :cond_0

    .line 464
    sget-object v0, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    invoke-interface {v0, p0}, Lcom/quattroplay/GraalEra/Natives$EventListener;->deleteWebView(I)V

    .line 465
    :cond_0
    return-void
.end method

.method private static fabzatSetResourcePath([B)V
    .locals 2
    .param p0, "url"    # [B

    .prologue
    .line 441
    sget-object v0, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    if-eqz v0, :cond_0

    .line 442
    sget-object v0, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, v1}, Lcom/quattroplay/GraalEra/Natives$EventListener;->fabzatSetResourcePath(Ljava/lang/String;)V

    .line 444
    :cond_0
    return-void
.end method

.method private static getAndroidDeviceModel()[B
    .locals 3

    .prologue
    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    return-object v1
.end method

.method private static getAndroidOSVersion()[B
    .locals 2

    .prologue
    .line 262
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 263
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    return-object v1
.end method

.method private static getCurrentOrientation()I
    .locals 1

    .prologue
    .line 221
    sget-object v0, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    if-eqz v0, :cond_0

    .line 222
    sget-object v0, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    invoke-interface {v0}, Lcom/quattroplay/GraalEra/Natives$EventListener;->getCurrentOrientation()I

    move-result v0

    .line 223
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static getNewFacebookPermissions()[B
    .locals 2

    .prologue
    .line 316
    const-string v0, ""

    .line 318
    .local v0, "str":Ljava/lang/String;
    sget-object v1, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    if-eqz v1, :cond_0

    .line 319
    sget-object v1, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    invoke-interface {v1}, Lcom/quattroplay/GraalEra/Natives$EventListener;->getNewFacebookPermissions()Ljava/lang/String;

    move-result-object v0

    .line 321
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    return-object v1
.end method

.method private static getNewFacebookSessionState()I
    .locals 1

    .prologue
    .line 298
    sget-object v0, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    if-eqz v0, :cond_0

    .line 299
    sget-object v0, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    invoke-interface {v0}, Lcom/quattroplay/GraalEra/Natives$EventListener;->getNewFacebookSessionState()I

    move-result v0

    .line 301
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static getNewFacebookToken()[B
    .locals 2

    .prologue
    .line 306
    const-string v0, ""

    .line 308
    .local v0, "str":Ljava/lang/String;
    sget-object v1, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    if-eqz v1, :cond_0

    .line 309
    sget-object v1, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    invoke-interface {v1}, Lcom/quattroplay/GraalEra/Natives$EventListener;->getNewFacebookToken()Ljava/lang/String;

    move-result-object v0

    .line 311
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    return-object v1
.end method

.method private static getRandomUUID()[B
    .locals 2

    .prologue
    .line 228
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "uuid":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    return-object v1
.end method

.method private static initFabzatStore([B[B)V
    .locals 3
    .param p0, "storeid"    # [B
    .param p1, "storetoken"    # [B

    .prologue
    .line 422
    sget-object v0, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    if-eqz v0, :cond_0

    .line 423
    sget-object v0, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, v1, v2}, Lcom/quattroplay/GraalEra/Natives$EventListener;->initFabzatStore(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    :cond_0
    return-void
.end method

.method private static initGooglePlay()Z
    .locals 1

    .prologue
    .line 235
    sget-object v0, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    if-eqz v0, :cond_0

    .line 236
    sget-object v0, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    invoke-interface {v0}, Lcom/quattroplay/GraalEra/Natives$EventListener;->initGooglePlay()Z

    move-result v0

    .line 238
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isFabzatSupported()Z
    .locals 1

    .prologue
    .line 413
    sget-object v0, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    if-eqz v0, :cond_0

    .line 414
    sget-object v0, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    invoke-interface {v0}, Lcom/quattroplay/GraalEra/Natives$EventListener;->isFabzatSupported()Z

    move-result v0

    .line 416
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isMusicPlaying()Z
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    if-eqz v0, :cond_0

    .line 138
    sget-object v0, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    invoke-interface {v0}, Lcom/quattroplay/GraalEra/Natives$EventListener;->isMusicPlaying()Z

    move-result v0

    .line 139
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isNewFacebookAvailable()Z
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x1

    return v0
.end method

.method private static isSoundPlaying([B)Z
    .locals 2
    .param p0, "name"    # [B

    .prologue
    .line 144
    sget-object v0, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    if-eqz v0, :cond_0

    .line 145
    sget-object v0, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, v1}, Lcom/quattroplay/GraalEra/Natives$EventListener;->isSoundPlaying(Ljava/lang/String;)Z

    move-result v0

    .line 146
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isTapJoyEnabled()Z
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x1

    return v0
.end method

.method private static loginToNewFacebook(I[B)V
    .locals 3
    .param p0, "showgui"    # I
    .param p1, "permissions"    # [B

    .prologue
    .line 282
    sget-object v0, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    if-eqz v0, :cond_0

    .line 283
    sget-object v1, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :goto_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v1, v0, v2}, Lcom/quattroplay/GraalEra/Natives$EventListener;->loginToNewFacebook(ZLjava/lang/String;)V

    .line 285
    :cond_0
    return-void

    .line 283
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static logoutFromNewFacebook()V
    .locals 1

    .prologue
    .line 290
    sget-object v0, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    if-eqz v0, :cond_0

    .line 291
    sget-object v0, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    invoke-interface {v0}, Lcom/quattroplay/GraalEra/Natives$EventListener;->logoutFromNewFacebook()V

    .line 293
    :cond_0
    return-void
.end method

.method public static native onAccelerator(III)V
.end method

.method public static native onAppEnterBackground()V
.end method

.method public static native onAppLeaveBackground()V
.end method

.method public static native onGooglePlayInitialized(Z)V
.end method

.method public static native onGooglePlayPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native onInvokeEvent(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native onKeyEvent(IIIII)V
.end method

.method public static native onMouseEvent(IIII)V
.end method

.method public static native onReloadTextures()V
.end method

.method public static native onTextEntered(ZLjava/lang/String;)V
.end method

.method public static native onVideoFinished()V
.end method

.method public static native onVideoLoaded()V
.end method

.method private static openURL([B)V
    .locals 2
    .param p0, "url"    # [B

    .prologue
    .line 158
    sget-object v0, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    if-eqz v0, :cond_0

    .line 159
    sget-object v0, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, v1}, Lcom/quattroplay/GraalEra/Natives$EventListener;->openURL(Ljava/lang/String;)V

    .line 160
    :cond_0
    return-void
.end method

.method private static openVideoPlayer([B)V
    .locals 2
    .param p0, "filename"    # [B

    .prologue
    .line 176
    sget-object v0, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    if-eqz v0, :cond_0

    .line 177
    sget-object v0, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, v1}, Lcom/quattroplay/GraalEra/Natives$EventListener;->openVideoPlayer(Ljava/lang/String;)V

    .line 178
    :cond_0
    return-void
.end method

.method private static openVirtualKeyboard([B[B)V
    .locals 3
    .param p0, "text"    # [B
    .param p1, "inputtype"    # [B

    .prologue
    .line 164
    sget-object v0, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    if-eqz v0, :cond_0

    .line 165
    sget-object v0, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, v1, v2}, Lcom/quattroplay/GraalEra/Natives$EventListener;->openVirtualKeyboard(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_0
    return-void
.end method

.method private static registerPurchaseToDistimo([B[B)V
    .locals 3
    .param p0, "itemid"    # [B
    .param p1, "orderid"    # [B

    .prologue
    .line 405
    sget-object v0, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    if-eqz v0, :cond_0

    .line 406
    sget-object v0, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, v1, v2}, Lcom/quattroplay/GraalEra/Natives$EventListener;->registerPurchaseToDistimo(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    :cond_0
    return-void
.end method

.method private static requestAmazonPurchaseHistory([B)V
    .locals 0
    .param p0, "offset"    # [B

    .prologue
    .line 258
    return-void
.end method

.method private static requestNewFacebookGraph([B)V
    .locals 2
    .param p0, "url"    # [B

    .prologue
    .line 335
    sget-object v0, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    if-eqz v0, :cond_0

    .line 336
    sget-object v0, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, v1}, Lcom/quattroplay/GraalEra/Natives$EventListener;->requestNewFacebookGraph(Ljava/lang/String;)V

    .line 338
    :cond_0
    return-void
.end method

.method private static requestNewFacebookGraph2([B[B[B)V
    .locals 4
    .param p0, "url"    # [B
    .param p1, "method"    # [B
    .param p2, "params"    # [B

    .prologue
    .line 343
    sget-object v0, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    if-eqz v0, :cond_0

    .line 344
    sget-object v0, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p2}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, v1, v2, v3}, Lcom/quattroplay/GraalEra/Natives$EventListener;->requestNewFacebookGraph2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    :cond_0
    return-void
.end method

.method private static requestNewFacebookRights(I[B)V
    .locals 3
    .param p0, "publishrights"    # I
    .param p1, "permissions"    # [B

    .prologue
    .line 327
    sget-object v0, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    if-eqz v0, :cond_0

    .line 328
    sget-object v1, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :goto_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v1, v0, v2}, Lcom/quattroplay/GraalEra/Natives$EventListener;->requestNewFacebookRights(ZLjava/lang/String;)V

    .line 330
    :cond_0
    return-void

    .line 328
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static setDistimoRegisteredUser()V
    .locals 1

    .prologue
    .line 397
    sget-object v0, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    if-eqz v0, :cond_0

    .line 398
    sget-object v0, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    invoke-interface {v0}, Lcom/quattroplay/GraalEra/Natives$EventListener;->setDistimoRegisteredUser()V

    .line 400
    :cond_0
    return-void
.end method

.method public static setListener(Lcom/quattroplay/GraalEra/Natives$EventListener;)V
    .locals 0
    .param p0, "val"    # Lcom/quattroplay/GraalEra/Natives$EventListener;

    .prologue
    .line 108
    sput-object p0, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    .line 109
    return-void
.end method

.method private static setMusicVolume(II)V
    .locals 4
    .param p0, "leftvolume"    # I
    .param p1, "rightvolume"    # I

    .prologue
    const/high16 v3, 0x42c80000    # 100.0f

    .line 131
    sget-object v0, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    if-eqz v0, :cond_0

    .line 132
    sget-object v0, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    int-to-float v1, p0

    div-float/2addr v1, v3

    int-to-float v2, p1

    div-float/2addr v2, v3

    invoke-interface {v0, v1, v2}, Lcom/quattroplay/GraalEra/Natives$EventListener;->setMusicVolume(FF)V

    .line 133
    :cond_0
    return-void
.end method

.method private static setWebViewAllowZoom(II)V
    .locals 2
    .param p0, "view"    # I
    .param p1, "value"    # I

    .prologue
    .line 481
    sget-object v0, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    if-eqz v0, :cond_0

    .line 482
    sget-object v1, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, p0, v0}, Lcom/quattroplay/GraalEra/Natives$EventListener;->setWebViewAllowZoom(IZ)V

    .line 483
    :cond_0
    return-void

    .line 482
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static setWebViewSize(IIIII)V
    .locals 6
    .param p0, "view"    # I
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 469
    sget-object v0, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    if-eqz v0, :cond_0

    .line 470
    sget-object v0, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/quattroplay/GraalEra/Natives$EventListener;->setWebViewSize(IIIII)V

    .line 471
    :cond_0
    return-void
.end method

.method private static setWebViewText(I[B)V
    .locals 2
    .param p0, "view"    # I
    .param p1, "text"    # [B

    .prologue
    .line 487
    sget-object v0, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    if-eqz v0, :cond_0

    .line 488
    sget-object v0, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, p0, v1}, Lcom/quattroplay/GraalEra/Natives$EventListener;->setWebViewText(ILjava/lang/String;)V

    .line 489
    :cond_0
    return-void
.end method

.method private static setWebViewURL(I[B)V
    .locals 2
    .param p0, "view"    # I
    .param p1, "url"    # [B

    .prologue
    .line 493
    sget-object v0, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    if-eqz v0, :cond_0

    .line 494
    sget-object v0, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, p0, v1}, Lcom/quattroplay/GraalEra/Natives$EventListener;->setWebViewURL(ILjava/lang/String;)V

    .line 495
    :cond_0
    return-void
.end method

.method private static setWebViewVisible(II)V
    .locals 2
    .param p0, "view"    # I
    .param p1, "value"    # I

    .prologue
    .line 475
    sget-object v0, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    if-eqz v0, :cond_0

    .line 476
    sget-object v1, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, p0, v0}, Lcom/quattroplay/GraalEra/Natives$EventListener;->setWebViewVisible(IZ)V

    .line 477
    :cond_0
    return-void

    .line 476
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static showFabzatStore()V
    .locals 1

    .prologue
    .line 449
    sget-object v0, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    if-eqz v0, :cond_0

    .line 450
    sget-object v0, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    invoke-interface {v0}, Lcom/quattroplay/GraalEra/Natives$EventListener;->showFabzatStore()V

    .line 452
    :cond_0
    return-void
.end method

.method private static showFacebookShareDialog([B[B[B[B[B[B)V
    .locals 7
    .param p0, "link"    # [B
    .param p1, "name"    # [B
    .param p2, "caption"    # [B
    .param p3, "description"    # [B
    .param p4, "pictureurl"    # [B
    .param p5, "reference"    # [B

    .prologue
    .line 363
    sget-object v0, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    if-eqz v0, :cond_0

    .line 364
    sget-object v0, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p2}, Ljava/lang/String;-><init>([B)V

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p3}, Ljava/lang/String;-><init>([B)V

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p4}, Ljava/lang/String;-><init>([B)V

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p5}, Ljava/lang/String;-><init>([B)V

    invoke-interface/range {v0 .. v6}, Lcom/quattroplay/GraalEra/Natives$EventListener;->showFacebookShareDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    :cond_0
    return-void
.end method

.method private static showFacebookWebDialog([B[B)V
    .locals 3
    .param p0, "action"    # [B
    .param p1, "params"    # [B

    .prologue
    .line 381
    sget-object v0, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    if-eqz v0, :cond_0

    .line 382
    sget-object v0, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, v1, v2}, Lcom/quattroplay/GraalEra/Natives$EventListener;->showFacebookWebDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    :cond_0
    return-void
.end method

.method private static showTapJoyOffers([B)V
    .locals 2
    .param p0, "account"    # [B

    .prologue
    .line 214
    sget-object v0, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    if-eqz v0, :cond_0

    .line 215
    sget-object v0, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, v1}, Lcom/quattroplay/GraalEra/Natives$EventListener;->showTapJoyOffers(Ljava/lang/String;)V

    .line 217
    :cond_0
    return-void
.end method

.method private static startMusic([BI)V
    .locals 3
    .param p0, "name"    # [B
    .param p1, "loop"    # I

    .prologue
    .line 119
    sget-object v0, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    if-eqz v0, :cond_0

    .line 120
    sget-object v1, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0}, Ljava/lang/String;-><init>([B)V

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v2, v0}, Lcom/quattroplay/GraalEra/Natives$EventListener;->startMusic(Ljava/lang/String;Z)V

    .line 121
    :cond_0
    return-void

    .line 120
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static startSound([BII)V
    .locals 5
    .param p0, "name"    # [B
    .param p1, "leftvolume"    # I
    .param p2, "rightvolume"    # I

    .prologue
    const/high16 v4, 0x42c80000    # 100.0f

    .line 113
    sget-object v0, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    if-eqz v0, :cond_0

    .line 114
    sget-object v0, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    int-to-float v2, p1

    div-float/2addr v2, v4

    int-to-float v3, p2

    div-float/2addr v3, v4

    invoke-interface {v0, v1, v2, v3}, Lcom/quattroplay/GraalEra/Natives$EventListener;->startSound(Ljava/lang/String;FF)V

    .line 115
    :cond_0
    return-void
.end method

.method private static stopMusic()V
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    if-eqz v0, :cond_0

    .line 126
    sget-object v0, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    invoke-interface {v0}, Lcom/quattroplay/GraalEra/Natives$EventListener;->stopMusic()V

    .line 127
    :cond_0
    return-void
.end method

.method private static stopVideoPlayer()V
    .locals 1

    .prologue
    .line 182
    sget-object v0, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    if-eqz v0, :cond_0

    .line 183
    sget-object v0, Lcom/quattroplay/GraalEra/Natives;->listener:Lcom/quattroplay/GraalEra/Natives$EventListener;

    invoke-interface {v0}, Lcom/quattroplay/GraalEra/Natives$EventListener;->stopVideoPlayer()V

    .line 184
    :cond_0
    return-void
.end method
