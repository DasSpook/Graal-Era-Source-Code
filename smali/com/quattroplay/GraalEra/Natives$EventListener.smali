.class public interface abstract Lcom/quattroplay/GraalEra/Natives$EventListener;
.super Ljava/lang/Object;
.source "Natives.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quattroplay/GraalEra/Natives;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EventListener"
.end annotation


# virtual methods
.method public abstract buyGooglePlayItem(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract canOpenURL(Ljava/lang/String;)Z
.end method

.method public abstract canShowFacebookShareDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract canShowFacebookWebDialog()Z
.end method

.method public abstract closeVirtualKeyboard(Z)V
.end method

.method public abstract connectToDistimoService(Ljava/lang/String;)V
.end method

.method public abstract connectToTapJoyService(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract createWebView()I
.end method

.method public abstract deleteWebView(I)V
.end method

.method public abstract fabzatSetResourcePath(Ljava/lang/String;)V
.end method

.method public abstract getCurrentOrientation()I
.end method

.method public abstract getNewFacebookPermissions()Ljava/lang/String;
.end method

.method public abstract getNewFacebookSessionState()I
.end method

.method public abstract getNewFacebookToken()Ljava/lang/String;
.end method

.method public abstract initFabzatStore(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract initGooglePlay()Z
.end method

.method public abstract isFabzatSupported()Z
.end method

.method public abstract isMusicPlaying()Z
.end method

.method public abstract isSoundPlaying(Ljava/lang/String;)Z
.end method

.method public abstract loginToNewFacebook(ZLjava/lang/String;)V
.end method

.method public abstract logoutFromNewFacebook()V
.end method

.method public abstract openURL(Ljava/lang/String;)V
.end method

.method public abstract openVideoPlayer(Ljava/lang/String;)V
.end method

.method public abstract openVirtualKeyboard(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract registerPurchaseToDistimo(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract requestNewFacebookGraph(Ljava/lang/String;)V
.end method

.method public abstract requestNewFacebookGraph2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract requestNewFacebookRights(ZLjava/lang/String;)V
.end method

.method public abstract setDistimoRegisteredUser()V
.end method

.method public abstract setMusicVolume(FF)V
.end method

.method public abstract setWebViewAllowZoom(IZ)V
.end method

.method public abstract setWebViewSize(IIIII)V
.end method

.method public abstract setWebViewText(ILjava/lang/String;)V
.end method

.method public abstract setWebViewURL(ILjava/lang/String;)V
.end method

.method public abstract setWebViewVisible(IZ)V
.end method

.method public abstract showFabzatStore()V
.end method

.method public abstract showFacebookShareDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract showFacebookWebDialog(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract showTapJoyOffers(Ljava/lang/String;)V
.end method

.method public abstract startMusic(Ljava/lang/String;Z)V
.end method

.method public abstract startSound(Ljava/lang/String;FF)V
.end method

.method public abstract stopMusic()V
.end method

.method public abstract stopVideoPlayer()V
.end method
