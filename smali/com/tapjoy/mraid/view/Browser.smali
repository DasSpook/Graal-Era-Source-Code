.class public Lcom/tapjoy/mraid/view/Browser;
.super Landroid/app/Activity;
.source "Browser.java"


# static fields
.field private static final BACKGROUND_PNG:Ljava/lang/String; = "iVBORw0KGgoAAAANSUhEUgAAAAEAAAAsCAIAAAArRUU2AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJ\nbWFnZVJlYWR5ccllPAAAAEFJREFUeNpicPP0Zvr3/z/T/3//gDQQg+i//5j+gum/QBqIQXwg+x+Y\njckH6fkL0/f3NwMPHz8jKxsbAw0AQIABAGYHPKslk98oAAAAAElFTkSuQmCC"

.field private static final BackwardId:I = 0x67

.field private static final ButtonId:I = 0x64

.field private static final ForwardId:I = 0x66

.field private static final LEFT_ARROW_PNG:Ljava/lang/String; = "iVBORw0KGgoAAAANSUhEUgAAABIAAAAUCAYAAACAl21KAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJ\nbWFnZVJlYWR5ccllPAAAApVJREFUeNqUVEuLkmEYfT6/9/MejjjeRhvvOo7XomLIzRTChEQU0Sa6\nLdoEA21azN6NzG9oIGE2bdwERYggrdqI2SLb5G5o0VwYRZGZ0a/zig5WNo4PHF4+5DnvOed9Htnq\n6irNUuVymeHQARbA5XA4vDirbAYCBQ4NYAIuarXacDQafbK0tJRqNBr32TkIBBxKwAgsKBQKTzgc\nfgCCO36/XxOPx6lYLBKbQsB/vwDYuI3FxcWby8vLDwOBwEIkEiFO4vV6qVarTSYCiYhDC5g5gdFo\nTMLGs2AwGIeSAUEoFCKLxUJqtZpEUfyTaJiDapiDU6lUBmKx2CM03YAKiRNAESFg0ul0BJunvWzM\nhgTMAXauAs13gXsgmOMEUEQul4sMBgMx9q8RNnxOPWDlBHa7/TpufQobbn47J0GoZDKZCApJEISJ\nmbKhEpter78GGy+gYgUklEgkiOdhs9lIo9H8l+CUCDcJaHjsdDpf+nw+3cgGvgnkgyDPU2xvb6+L\n5D96PJ4MpjwJVTQ/Pz8xh7NKgea+SqX6lMvlruzs7DxvtVq/jo6OSJblmYhEt9tNvV6PoETe3Nz8\ncnx8/BoKJazAZVzAuLVp+ZRKpbeDQej3+9RsNimdTsu7u7sHmUzmVT6fT1YqlQ/7+/t0cnIy3dr4\nB29AZrS2tibX6/XvqVTqdqFQuPUNBcuDC8+09ndxq7wR+yRD6Q+o28IDHMDuCmyr+UOM2+XWJhKN\nCnnR4eEhYdd62Wz2MxRtYaYMWI9LyE8YjcZUIl789brdLmFVuLXOxsbGe6vV+g7CglDokSSJqtXq\nm6lEo+L5dDodPu1yu93+ub6+vo3/pa8gu4px2RZm/asdvBC2nm8/9pLMZrMK1sXfAgwAtiLartJw\n+UAAAAAASUVORK5CYII="

.field private static final REFRESH_PNG:Ljava/lang/String; = "iVBORw0KGgoAAAANSUhEUgAAABMAAAAUCAYAAABvVQZ0AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJ\nbWFnZVJlYWR5ccllPAAAA2NJREFUeNqMVF1Ik1EYPm7TpsIca84pGs6VrboYaeRPpFgXKUzBH4S8\nsLoIMVCpRERCAgfSZXpR2ZVJCEIgaIQm+MdCIkXRTTTnQG0qorCFm21zp+f9+IQ5NHvh4eP7vnOe\n877Ped5Xyv4dEYAMSK2rq/tkt9tlXq83Cu9BwC8+zyQ4B5wHLgAG4M7IyAgfHR31FhcXv8F7EXAZ\nUADSo43SMCLKQimS0GKDTqfLys7OvlldXZ2Vnp4uy8nJuZGWlmacnp52ejyeANZ4AB/AQ4kigSQg\nT6/XPzebzd8pk4WFBb6+vs6xkVP4/X6+s7PDx8bGPJWVlWasTxGTOJZRInC3oaHh88zMjLDh4OCA\n+3w+4RkIBPhRHB4e8u3tbd7f38+rqqpM2CcJ1YhKu4Vsvq2urnKIzN1uN3c4HHxqaso1Pj7+Y3d3\nVyAicqfTyaHhenNzc1Eo0VF5F2traz+srKwIRFtbW3xoaMjW1tZ2X9Q12WazcZfLxefn53lXV9fb\niooKjZjIsVAkJSXdIw1IFyqvt7d3pLy8PCFksXJgYIAPDg5aGxsbs8OzCY2E+vr692tra4LIFovl\nd15eXmrYqbKmpiZzuNAnRXJ3d7eVStjc3OQo7ZXos7OC5ImjZAA1EE0nSbRarUYulzNoxeCfb/gW\n+A+yGEAvuoC8ZieyoFKpVEulUgYPMVy3Qyzn8IwuiYWNXl5FQB4/9r0gIf+gxG34iEVFRbH8/HwS\nOPakmwovMTMz81JZWZm+oKDAkJiYGENk3o2NjSVYgsXFxbHc3NxCMXX5KYRkFRU2XzEajQZUxSQS\nCdvb2/tJZAfLy8uDyI4pFApmMpkKNRpNJr7rxEaWiaS0NhrQAuk1NTVPoDWDiRmS2RweHrYK9aO0\nFPjMvb+/z3EC7+vr+6VWqx/j321xauhEsa8DJjR9NxIQDI6xxFtbW58emx4tLS0PFhcXhT4kwomJ\nCS/67qNKparH/4fAo4yMDHNHR8c8EdDB1J8w+NRJVors7Ox8t7S0JCwkIH1utVr57Owsn5ub49Ru\ndBAdSC2HG7SVlJRoT7ssaXt7e+3k5KSLiIiQJgRFMBgUmpzIqE97enq+lJaWhrbciYwRKE+NW32G\nIVgcHx9/TSaTMfAxkLsx2ywge40J8zV8bP8VYACAQuluULZPjQAAAABJRU5ErkJggg=="

.field private static final RIGHT_ARROW_PNG:Ljava/lang/String; = "iVBORw0KGgoAAAANSUhEUgAAABEAAAAUCAYAAABroNZJAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJ\nbWFnZVJlYWR5ccllPAAAAq5JREFUeNqUlN9LmmEUx4++/ihKy6yZGEMjlExdEjgqQmm78ioGu41g\nu7Ftt+5mBF0Go8sIBvsTtggqGgODboK66aIwNi0lJ7p+2TT89b7Pvo/LaKucHTj4+LzP+bzne855\nXpnVan0ZiUSSoiimiCgBP4UXfD4fozpsbW2NhP7+/vdDQ0MvFLBkMnmBfQEuHhwclOHMbDbXhOAM\nCQ6HY8Lr9Tr8fv9ji8Xy6PDw8CKTyUh4LoNzUBkg9l/I4OCg2ePxkNPpfOB2u0cbGhoeQuJZsVjk\nWbHLrMTbYBVIb2/vhMvlMttsNurs7CSj0Si32+0W7D0BRMthOKuAS5cw6brEvyCQQk1NTdTY2Eht\nbW3U1dWlxr6rp6dnJJVKldLpdBEx8kuJYrVeNyAcwE0QBGpubqb29nbq7u7WDgwMjABs39/fz+Ry\nOV4rVoXx9a0QbjKZjJRKJWm1WjIYDIRRMKJeT/ECQzQazZTLZZ4Vb0D5Tsh1mFqtJp1ORyaTSejr\n67MixouMFLFY7AeOnCuoTsMYkV6vJ41GwxugR1cnNzY2POvr66/qhlzPChlRS0tLHuuv6F74XpCq\nYRg/7e7uvh0eHo7wwsrvE5zP53cQPIr6PMcV+T41NVUZvrog6MTPeDz+BoXn1yI0MzMjLS8v09bW\n1p961QpmjJWOj48/rKysvBsfHz+bm5tji4uLBBBls1nCzaeamUD3F1Tf3dHR8RoFPQ0GgywUCtHe\n3h5/dgWoQtg/ur+Fw+Fnra2tfoz7zvT0NFtdXaXt7W06Ojri0m68UI7+5/lCkqRfiUQiGAgEnPj9\nPDs7K3Ldm5ubhP9UKBS4vFuzlqtUqnPo+7i0tGTFpeMfqALXjSEijHdF+13BV/MzNjamWVhYyM7P\nzzOMcSXw5OSESqUS1ft5/C3AAL39YeI2ufApAAAAAElFTkSuQmCC"

.field public static final SHOW_BACK_EXTRA:Ljava/lang/String; = "open_show_back"

.field public static final SHOW_FORWARD_EXTRA:Ljava/lang/String; = "open_show_forward"

.field public static final SHOW_REFRESH_EXTRA:Ljava/lang/String; = "open_show_refresh"

.field private static final TAG:Ljava/lang/String; = "Mraid Browser"

.field private static final UN_RIGHT_ARROW_PNG:Ljava/lang/String; = "iVBORw0KGgoAAAANSUhEUgAAABEAAAAUCAYAAABroNZJAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJ\nbWFnZVJlYWR5ccllPAAAAqNJREFUeNqUlEtrE1EUx8+8EjNT27zTaMw0k6RJGpu+VqIi4k7rQtyK\nIn6FrEraRhTET+AnENxUXLpWcFfRhaCbCpY0Lc3DpE07c+dxPTckojTG5sAfhnvP/fE/99wz3IV4\n/Fl1Z+eDZVlVAKigmihjwuejcIpoNZsg+AOBlz6//2E4EonWazUGElC2oesWip7xeIZCMAeEUDhc\npBw3LkqubDqdvs1xQNqt1iHucygGshBEh0LQQREBY2fHx8F2HLfkcl1OJKaut1vtCiEGy6M9V/Yg\nWBcSDIWKHM+PyYoMLpcbJEkCYpoT/mDg1rloNF+tVrcwV0Q5PZjzZ4l/QdiGIAjAoxiI43jOtKyY\nOqXeVRRFrmPgGb5Xot2/rxMQnhe6dA4vRhDFLsymjkApzGta8iYhpNnpdAgrsQ9j3wMh/cB1EAUR\ny3QBsSyPMqbcUFX1UrPRqJimyUAOgw2F9GzhOsLQFXNHiBmMRCeXg8FgfG939wtmtLnszMwuJ4gR\nr98Hoij993E5jgPoAvSjI1A8ngPT0B+JMGIwV263G2RZhulU8lNle/vdyBAWc4XCdijgv7deKr1n\nFzsSJB6L6ZnMdHFtZeVFbrbgxBMa/Pi+BaeCeL1eZ3529tWT8vr9iwsLdiKVhka9BqZBuvtDIRJ2\nY3Fh/jM4dBkBlVQmSxv7NTAMHWzbBkrpcEg+l9ufjIQflFdX32byeRpTVfiJY29Z5u/D/TgBOR+N\nkmw287xcKj2eKczZqqZBs97AthKg2N5B48zjvLOnCzJO6LWrV95g330bG6/XtPS0zeo+aLeBoH3n\nH4CuE5wTktS0r1pSu/O0XP6WzuZop3OIg2Vg3dYJ64OCW1xamvy4ubmXwsOGfgz68TFY+CIdeqq/\nY/f3+EuAAQARwzy3ZhCNHQAAAABJRU5ErkJggg=="

.field public static final URL_EXTRA:Ljava/lang/String; = "extra_url"

.field private static final WebViewId:I = 0x65


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/tapjoy/mraid/view/Browser;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/mraid/view/Browser;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/tapjoy/mraid/view/Browser;->getDensityScaledBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private bitmapFromBase64(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 346
    invoke-static {p1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 347
    .local v0, "decodedByte":[B
    array-length v1, v0

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private getDensityScaledBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 352
    const/4 v0, 0x0

    .line 353
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    .line 354
    .local v7, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/Browser;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 357
    invoke-direct {p0, p1}, Lcom/tapjoy/mraid/view/Browser;->bitmapFromBase64(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 359
    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 362
    .local v3, "width":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 363
    .local v4, "height":I
    iget v9, v7, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 364
    .local v9, "scaleWidth":F
    iget v8, v7, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 366
    .local v8, "scaleHeight":F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 367
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, v9, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 369
    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 372
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    .end local v8    # "scaleHeight":F
    .end local v9    # "scaleWidth":F
    :cond_0
    return-object v0
.end method


# virtual methods
.method public bitmapFromJar(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 312
    const/4 v4, 0x0

    .line 314
    .local v4, "in":Ljava/io/InputStream;
    :try_start_0
    const-class v8, Lcom/tapjoy/mraid/controller/Assets;

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v7

    .line 316
    .local v7, "url":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v3

    .line 317
    .local v3, "file":Ljava/lang/String;
    const-string v8, "file:"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 318
    const/4 v8, 0x5

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 320
    :cond_0
    const-string v8, "!"

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 321
    .local v6, "pos":I
    if-lez v6, :cond_1

    .line 322
    const/4 v8, 0x0

    invoke-virtual {v3, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 323
    :cond_1
    new-instance v5, Ljava/util/jar/JarFile;

    invoke-direct {v5, v3}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    .line 324
    .local v5, "jf":Ljava/util/jar/JarFile;
    invoke-virtual {v5, p1}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v2

    .line 325
    .local v2, "entry":Ljava/util/jar/JarEntry;
    invoke-virtual {v5, v2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    .line 326
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 332
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_2

    .line 334
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 338
    :goto_0
    const/4 v4, 0x0

    .line 341
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v2    # "entry":Ljava/util/jar/JarEntry;
    .end local v3    # "file":Ljava/lang/String;
    .end local v5    # "jf":Ljava/util/jar/JarFile;
    .end local v6    # "pos":I
    .end local v7    # "url":Ljava/net/URL;
    :cond_2
    :goto_1
    return-object v0

    .line 329
    :catch_0
    move-exception v1

    .line 330
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 332
    if-eqz v4, :cond_3

    .line 334
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 338
    :goto_2
    const/4 v4, 0x0

    .line 341
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 332
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    if-eqz v4, :cond_4

    .line 334
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 338
    :goto_3
    const/4 v4, 0x0

    :cond_4
    throw v8

    .line 335
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    .restart local v2    # "entry":Ljava/util/jar/JarEntry;
    .restart local v3    # "file":Ljava/lang/String;
    .restart local v5    # "jf":Ljava/util/jar/JarFile;
    .restart local v6    # "pos":I
    .restart local v7    # "url":Ljava/net/URL;
    :catch_1
    move-exception v8

    goto :goto_0

    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v2    # "entry":Ljava/util/jar/JarEntry;
    .end local v3    # "file":Ljava/lang/String;
    .end local v5    # "jf":Ljava/util/jar/JarFile;
    .end local v6    # "pos":I
    .end local v7    # "url":Ljava/net/URL;
    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v8

    goto :goto_2

    .end local v1    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v9

    goto :goto_3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    new-instance v9, Landroid/widget/RelativeLayout;

    invoke-direct {v9, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 78
    .local v9, "rl":Landroid/widget/RelativeLayout;
    new-instance v10, Landroid/webkit/WebView;

    invoke-direct {v10, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 80
    .local v10, "webview":Landroid/webkit/WebView;
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/Browser;->getWindow()Landroid/view/Window;

    move-result-object v11

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Landroid/view/Window;->requestFeature(I)Z

    .line 81
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/Browser;->getWindow()Landroid/view/Window;

    move-result-object v11

    const/4 v12, 0x2

    const/4 v13, -0x1

    invoke-virtual {v11, v12, v13}, Landroid/view/Window;->setFeatureInt(II)V

    .line 84
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/Browser;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 87
    .local v5, "i":Landroid/content/Intent;
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 88
    .local v2, "bll":Landroid/widget/LinearLayout;
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 89
    const/16 v11, 0x64

    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setId(I)V

    .line 90
    const/high16 v11, 0x42c80000    # 100.0f

    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 91
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-direct {v6, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 94
    .local v6, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v11, 0x2

    const/16 v12, 0x64

    invoke-virtual {v6, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 95
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    const-string v11, "iVBORw0KGgoAAAANSUhEUgAAAAEAAAAsCAIAAAArRUU2AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJ\nbWFnZVJlYWR5ccllPAAAAEFJREFUeNpicPP0Zvr3/z/T/3//gDQQg+i//5j+gum/QBqIQXwg+x+Y\njckH6fkL0/f3NwMPHz8jKxsbAw0AQIABAGYHPKslk98oAAAAAElFTkSuQmCC"

    invoke-direct {p0, v11}, Lcom/tapjoy/mraid/view/Browser;->getDensityScaledBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-direct {v1, v11}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 97
    .local v1, "bkgDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    invoke-virtual {v9, v10, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v6    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v11, -0x1

    const/4 v12, -0x2

    invoke-direct {v6, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 103
    .restart local v6    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v11, 0xc

    invoke-virtual {v6, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 104
    invoke-virtual {v9, v2, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x1

    invoke-direct {v7, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 109
    .local v7, "lp2":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v11, 0x41c80000    # 25.0f

    iput v11, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 110
    const/16 v11, 0x10

    iput v11, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 112
    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 113
    .local v0, "backButton":Landroid/widget/ImageButton;
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/Browser;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x106000d

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v0, v11}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 114
    const/16 v11, 0x67

    invoke-virtual {v0, v11}, Landroid/widget/ImageButton;->setId(I)V

    .line 116
    invoke-virtual {v2, v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    const-string v11, "open_show_back"

    const/4 v12, 0x1

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_0

    .line 119
    const/16 v11, 0x8

    invoke-virtual {v0, v11}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 120
    :cond_0
    const-string v11, "iVBORw0KGgoAAAANSUhEUgAAABIAAAAUCAYAAACAl21KAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJ\nbWFnZVJlYWR5ccllPAAAApVJREFUeNqUVEuLkmEYfT6/9/MejjjeRhvvOo7XomLIzRTChEQU0Sa6\nLdoEA21azN6NzG9oIGE2bdwERYggrdqI2SLb5G5o0VwYRZGZ0a/zig5WNo4PHF4+5DnvOed9Htnq\n6irNUuVymeHQARbA5XA4vDirbAYCBQ4NYAIuarXacDQafbK0tJRqNBr32TkIBBxKwAgsKBQKTzgc\nfgCCO36/XxOPx6lYLBKbQsB/vwDYuI3FxcWby8vLDwOBwEIkEiFO4vV6qVarTSYCiYhDC5g5gdFo\nTMLGs2AwGIeSAUEoFCKLxUJqtZpEUfyTaJiDapiDU6lUBmKx2CM03YAKiRNAESFg0ul0BJunvWzM\nhgTMAXauAs13gXsgmOMEUEQul4sMBgMx9q8RNnxOPWDlBHa7/TpufQobbn47J0GoZDKZCApJEISJ\nmbKhEpter78GGy+gYgUklEgkiOdhs9lIo9H8l+CUCDcJaHjsdDpf+nw+3cgGvgnkgyDPU2xvb6+L\n5D96PJ4MpjwJVTQ/Pz8xh7NKgea+SqX6lMvlruzs7DxvtVq/jo6OSJblmYhEt9tNvV6PoETe3Nz8\ncnx8/BoKJazAZVzAuLVp+ZRKpbeDQej3+9RsNimdTsu7u7sHmUzmVT6fT1YqlQ/7+/t0cnIy3dr4\nB29AZrS2tibX6/XvqVTqdqFQuPUNBcuDC8+09ndxq7wR+yRD6Q+o28IDHMDuCmyr+UOM2+XWJhKN\nCnnR4eEhYdd62Wz2MxRtYaYMWI9LyE8YjcZUIl789brdLmFVuLXOxsbGe6vV+g7CglDokSSJqtXq\nm6lEo+L5dDodPu1yu93+ub6+vo3/pa8gu4px2RZm/asdvBC2nm8/9pLMZrMK1sXfAgwAtiLartJw\n+UAAAAAASUVORK5CYII="

    invoke-direct {p0, v11}, Lcom/tapjoy/mraid/view/Browser;->getDensityScaledBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 122
    new-instance v11, Lcom/tapjoy/mraid/view/Browser$1;

    invoke-direct {v11, p0}, Lcom/tapjoy/mraid/view/Browser$1;-><init>(Lcom/tapjoy/mraid/view/Browser;)V

    invoke-virtual {v0, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    new-instance v4, Landroid/widget/ImageButton;

    invoke-direct {v4, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 135
    .local v4, "forwardButton":Landroid/widget/ImageButton;
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/Browser;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x106000d

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v4, v11}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 136
    const/16 v11, 0x66

    invoke-virtual {v4, v11}, Landroid/widget/ImageButton;->setId(I)V

    .line 137
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .end local v7    # "lp2":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v11, -0x2

    const/4 v12, -0x1

    invoke-direct {v7, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 140
    .restart local v7    # "lp2":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v11, 0x41c80000    # 25.0f

    iput v11, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 141
    const/16 v11, 0x10

    iput v11, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 143
    invoke-virtual {v2, v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    const-string v11, "open_show_forward"

    const/4 v12, 0x1

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_1

    .line 145
    const/16 v11, 0x8

    invoke-virtual {v4, v11}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 146
    :cond_1
    new-instance v11, Lcom/tapjoy/mraid/view/Browser$2;

    invoke-direct {v11, p0}, Lcom/tapjoy/mraid/view/Browser$2;-><init>(Lcom/tapjoy/mraid/view/Browser;)V

    invoke-virtual {v4, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    new-instance v8, Landroid/widget/ImageButton;

    invoke-direct {v8, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 156
    .local v8, "refreshButton":Landroid/widget/ImageButton;
    const-string v11, "iVBORw0KGgoAAAANSUhEUgAAABMAAAAUCAYAAABvVQZ0AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJ\nbWFnZVJlYWR5ccllPAAAA2NJREFUeNqMVF1Ik1EYPm7TpsIca84pGs6VrboYaeRPpFgXKUzBH4S8\nsLoIMVCpRERCAgfSZXpR2ZVJCEIgaIQm+MdCIkXRTTTnQG0qorCFm21zp+f9+IQ5NHvh4eP7vnOe\n877Ped5Xyv4dEYAMSK2rq/tkt9tlXq83Cu9BwC8+zyQ4B5wHLgAG4M7IyAgfHR31FhcXv8F7EXAZ\nUADSo43SMCLKQimS0GKDTqfLys7OvlldXZ2Vnp4uy8nJuZGWlmacnp52ejyeANZ4AB/AQ4kigSQg\nT6/XPzebzd8pk4WFBb6+vs6xkVP4/X6+s7PDx8bGPJWVlWasTxGTOJZRInC3oaHh88zMjLDh4OCA\n+3w+4RkIBPhRHB4e8u3tbd7f38+rqqpM2CcJ1YhKu4Vsvq2urnKIzN1uN3c4HHxqaso1Pj7+Y3d3\nVyAicqfTyaHhenNzc1Eo0VF5F2traz+srKwIRFtbW3xoaMjW1tZ2X9Q12WazcZfLxefn53lXV9fb\niooKjZjIsVAkJSXdIw1IFyqvt7d3pLy8PCFksXJgYIAPDg5aGxsbs8OzCY2E+vr692tra4LIFovl\nd15eXmrYqbKmpiZzuNAnRXJ3d7eVStjc3OQo7ZXos7OC5ImjZAA1EE0nSbRarUYulzNoxeCfb/gW\n+A+yGEAvuoC8ZieyoFKpVEulUgYPMVy3Qyzn8IwuiYWNXl5FQB4/9r0gIf+gxG34iEVFRbH8/HwS\nOPakmwovMTMz81JZWZm+oKDAkJiYGENk3o2NjSVYgsXFxbHc3NxCMXX5KYRkFRU2XzEajQZUxSQS\nCdvb2/tJZAfLy8uDyI4pFApmMpkKNRpNJr7rxEaWiaS0NhrQAuk1NTVPoDWDiRmS2RweHrYK9aO0\nFPjMvb+/z3EC7+vr+6VWqx/j321xauhEsa8DJjR9NxIQDI6xxFtbW58emx4tLS0PFhcXhT4kwomJ\nCS/67qNKparH/4fAo4yMDHNHR8c8EdDB1J8w+NRJVors7Ox8t7S0JCwkIH1utVr57Owsn5ub49Ru\ndBAdSC2HG7SVlJRoT7ssaXt7e+3k5KSLiIiQJgRFMBgUmpzIqE97enq+lJaWhrbciYwRKE+NW32G\nIVgcHx9/TSaTMfAxkLsx2ywge40J8zV8bP8VYACAQuluULZPjQAAAABJRU5ErkJggg=="

    invoke-direct {p0, v11}, Lcom/tapjoy/mraid/view/Browser;->getDensityScaledBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 157
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/Browser;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x106000d

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v8, v11}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 158
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .end local v7    # "lp2":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v11, -0x2

    const/4 v12, -0x2

    invoke-direct {v7, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 161
    .restart local v7    # "lp2":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v11, 0x41c80000    # 25.0f

    iput v11, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 162
    const/16 v11, 0x10

    iput v11, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 164
    invoke-virtual {v2, v8, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    const-string v11, "open_show_refresh"

    const/4 v12, 0x1

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_2

    .line 167
    const/16 v11, 0x8

    invoke-virtual {v8, v11}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 168
    :cond_2
    new-instance v11, Lcom/tapjoy/mraid/view/Browser$3;

    invoke-direct {v11, p0}, Lcom/tapjoy/mraid/view/Browser$3;-><init>(Lcom/tapjoy/mraid/view/Browser;)V

    invoke-virtual {v8, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    new-instance v3, Landroid/widget/ImageButton;

    invoke-direct {v3, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 180
    .local v3, "closeButton":Landroid/widget/ImageButton;
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/Browser;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x106000d

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v3, v11}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 181
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .end local v7    # "lp2":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v11, -0x2

    const/4 v12, -0x2

    invoke-direct {v7, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 184
    .restart local v7    # "lp2":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v11, 0x41c80000    # 25.0f

    iput v11, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 185
    const/16 v11, 0x10

    iput v11, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 187
    invoke-virtual {v2, v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    new-instance v11, Lcom/tapjoy/mraid/view/Browser$4;

    invoke-direct {v11, p0}, Lcom/tapjoy/mraid/view/Browser$4;-><init>(Lcom/tapjoy/mraid/view/Browser;)V

    invoke-virtual {v3, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/Browser;->getWindow()Landroid/view/Window;

    move-result-object v11

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Landroid/view/Window;->requestFeature(I)Z

    .line 200
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 201
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 202
    invoke-virtual {v10}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 203
    const-string v11, "extra_url"

    invoke-virtual {v5, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 204
    const/16 v11, 0x65

    invoke-virtual {v10, v11}, Landroid/webkit/WebView;->setId(I)V

    .line 206
    new-instance v11, Lcom/tapjoy/mraid/view/Browser$5;

    invoke-direct {v11, p0}, Lcom/tapjoy/mraid/view/Browser$5;-><init>(Lcom/tapjoy/mraid/view/Browser;)V

    invoke-virtual {v10, v11}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 245
    invoke-virtual {p0, v9}, Lcom/tapjoy/mraid/view/Browser;->setContentView(Landroid/view/View;)V

    .line 247
    new-instance v11, Lcom/tapjoy/mraid/view/Browser$6;

    invoke-direct {v11, p0}, Lcom/tapjoy/mraid/view/Browser$6;-><init>(Lcom/tapjoy/mraid/view/Browser;)V

    invoke-virtual {v10, v11}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 258
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 288
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 289
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->stopSync()V

    .line 290
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 299
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 300
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 301
    return-void
.end method
