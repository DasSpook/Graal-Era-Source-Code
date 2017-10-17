.class public Lcom/threed/jpct/FrameBuffer;
.super Ljava/lang/Object;
.source "FrameBuffer.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final OPAQUE_BLITTING:Z = false

.field public static final TRANSPARENT_BLITTING:Z = true

.field private static final serialVersionUID:J = 0x1L

.field private static sid:J

.field static versionHint:I


# instance fields
.field transient displayCycle:J

.field transient glRend:Lcom/threed/jpct/GLRenderer;

.field transient hasRenderTarget:Z

.field height:I

.field private id:Ljava/lang/Long;

.field initialized:Z

.field length:I

.field middleX:F

.field middleY:F

.field private openGlVersion:I

.field private transient postProcessors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/threed/jpct/IPostProcessor;",
            ">;"
        }
    .end annotation
.end field

.field transient renderTarget:Lcom/threed/jpct/Texture;

.field private tmpColor:Lcom/threed/jpct/RGBColor;

.field private transient usedBy:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/threed/jpct/VisListManager;",
            ">;"
        }
    .end annotation
.end field

.field virtualHeight:I

.field virtualWidth:I

.field width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    const/4 v0, 0x0

    sput v0, Lcom/threed/jpct/FrameBuffer;->versionHint:I

    .line 32
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/threed/jpct/FrameBuffer;->sid:J

    .line 13
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/threed/jpct/FrameBuffer;-><init>(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 120
    return-void
.end method

.method public constructor <init>(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 9
    .param p1, "glContext"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/4 v3, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v3, p0, Lcom/threed/jpct/FrameBuffer;->glRend:Lcom/threed/jpct/GLRenderer;

    .line 40
    iput-boolean v5, p0, Lcom/threed/jpct/FrameBuffer;->hasRenderTarget:Z

    .line 42
    iput-object v3, p0, Lcom/threed/jpct/FrameBuffer;->renderTarget:Lcom/threed/jpct/Texture;

    .line 44
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/threed/jpct/FrameBuffer;->displayCycle:J

    .line 46
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/threed/jpct/FrameBuffer;->usedBy:Ljava/util/ArrayList;

    .line 48
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/threed/jpct/FrameBuffer;->postProcessors:Ljava/util/ArrayList;

    .line 50
    iput-object v3, p0, Lcom/threed/jpct/FrameBuffer;->id:Ljava/lang/Long;

    .line 52
    iput v5, p0, Lcom/threed/jpct/FrameBuffer;->openGlVersion:I

    .line 54
    iput-boolean v5, p0, Lcom/threed/jpct/FrameBuffer;->initialized:Z

    .line 56
    const/4 v1, -0x1

    iput v1, p0, Lcom/threed/jpct/FrameBuffer;->virtualHeight:I

    .line 58
    const/4 v1, -0x1

    iput v1, p0, Lcom/threed/jpct/FrameBuffer;->virtualWidth:I

    .line 62
    new-instance v1, Lcom/threed/jpct/RGBColor;

    invoke-direct {v1}, Lcom/threed/jpct/RGBColor;-><init>()V

    iput-object v1, p0, Lcom/threed/jpct/FrameBuffer;->tmpColor:Lcom/threed/jpct/RGBColor;

    .line 78
    sget-wide v1, Lcom/threed/jpct/FrameBuffer;->sid:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/threed/jpct/FrameBuffer;->id:Ljava/lang/Long;

    .line 79
    sget-wide v1, Lcom/threed/jpct/FrameBuffer;->sid:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    sput-wide v1, Lcom/threed/jpct/FrameBuffer;->sid:J

    .line 81
    iput-boolean v6, p0, Lcom/threed/jpct/FrameBuffer;->initialized:Z

    .line 83
    mul-int v1, p2, p3

    iput v1, p0, Lcom/threed/jpct/FrameBuffer;->length:I

    .line 84
    iput p2, p0, Lcom/threed/jpct/FrameBuffer;->width:I

    .line 85
    iput p3, p0, Lcom/threed/jpct/FrameBuffer;->height:I

    .line 87
    iget v1, p0, Lcom/threed/jpct/FrameBuffer;->width:I

    int-to-float v1, v1

    div-float/2addr v1, v8

    iput v1, p0, Lcom/threed/jpct/FrameBuffer;->middleX:F

    .line 88
    iget v1, p0, Lcom/threed/jpct/FrameBuffer;->height:I

    int-to-float v1, v1

    div-float/2addr v1, v8

    iput v1, p0, Lcom/threed/jpct/FrameBuffer;->middleY:F

    .line 91
    const/4 v1, 0x0

    :try_start_0
    sput v1, Lcom/threed/jpct/FrameBuffer;->versionHint:I

    .line 92
    const/4 v1, 0x0

    iput v1, p0, Lcom/threed/jpct/FrameBuffer;->openGlVersion:I

    .line 93
    new-instance v1, Lcom/threed/jpct/GLRenderer;

    invoke-direct {v1}, Lcom/threed/jpct/GLRenderer;-><init>()V

    iput-object v1, p0, Lcom/threed/jpct/FrameBuffer;->glRend:Lcom/threed/jpct/GLRenderer;

    .line 94
    iget-object v1, p0, Lcom/threed/jpct/FrameBuffer;->glRend:Lcom/threed/jpct/GLRenderer;

    iget v2, p0, Lcom/threed/jpct/FrameBuffer;->width:I

    iget v3, p0, Lcom/threed/jpct/FrameBuffer;->height:I

    invoke-virtual {v1, p1, v2, v3}, Lcom/threed/jpct/GLRenderer;->init(Ljavax/microedition/khronos/opengles/GL10;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    if-eqz p1, :cond_0

    .line 100
    iput v6, p0, Lcom/threed/jpct/FrameBuffer;->openGlVersion:I

    .line 101
    sput v6, Lcom/threed/jpct/FrameBuffer;->versionHint:I

    .line 106
    :goto_1
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0, v5}, Lcom/threed/jpct/Logger;->log(Ljava/lang/Throwable;I)V

    goto :goto_0

    .line 103
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iput v7, p0, Lcom/threed/jpct/FrameBuffer;->openGlVersion:I

    .line 104
    sput v7, Lcom/threed/jpct/FrameBuffer;->versionHint:I

    goto :goto_1
.end method

.method private checkListeners()V
    .locals 5

    .prologue
    .line 796
    iget-object v3, p0, Lcom/threed/jpct/FrameBuffer;->usedBy:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 797
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/threed/jpct/FrameBuffer;->usedBy:Ljava/util/ArrayList;

    .line 800
    :cond_0
    const/4 v1, 0x0

    .line 802
    .local v1, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/threed/jpct/VisListManager;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/threed/jpct/FrameBuffer;->usedBy:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_2

    .line 812
    if-eqz v1, :cond_1

    .line 813
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_5

    .line 817
    :cond_1
    return-void

    .line 803
    :cond_2
    iget-object v3, p0, Lcom/threed/jpct/FrameBuffer;->usedBy:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/threed/jpct/VisListManager;

    .line 804
    .local v2, "vlm":Lcom/threed/jpct/VisListManager;
    iget-boolean v3, v2, Lcom/threed/jpct/VisListManager;->isDisposed:Z

    if-eqz v3, :cond_4

    .line 805
    if-nez v1, :cond_3

    .line 806
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/threed/jpct/VisListManager;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 808
    .restart local v1    # "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/threed/jpct/VisListManager;>;"
    :cond_3
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 802
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 814
    .end local v2    # "vlm":Lcom/threed/jpct/VisListManager;
    :cond_5
    iget-object v3, p0, Lcom/threed/jpct/FrameBuffer;->usedBy:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 813
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private incCounter()V
    .locals 4

    .prologue
    .line 782
    iget-boolean v0, p0, Lcom/threed/jpct/FrameBuffer;->hasRenderTarget:Z

    if-nez v0, :cond_0

    .line 783
    iget-wide v0, p0, Lcom/threed/jpct/FrameBuffer;->displayCycle:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/threed/jpct/FrameBuffer;->displayCycle:J

    .line 786
    :cond_0
    return-void
.end method

.method private removeListeners()V
    .locals 5

    .prologue
    .line 821
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/threed/jpct/FrameBuffer;->usedBy:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 828
    :goto_1
    return-void

    .line 822
    :cond_0
    iget-object v3, p0, Lcom/threed/jpct/FrameBuffer;->usedBy:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/threed/jpct/VisListManager;

    .line 823
    .local v2, "vlm":Lcom/threed/jpct/VisListManager;
    invoke-virtual {v2, p0}, Lcom/threed/jpct/VisListManager;->remove(Lcom/threed/jpct/FrameBuffer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 821
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 825
    .end local v2    # "vlm":Lcom/threed/jpct/VisListManager;
    :catch_0
    move-exception v0

    .line 826
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Couldn\'t unregister visibility list!"

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_1
.end method


# virtual methods
.method public addPostProcessor(Lcom/threed/jpct/IPostProcessor;)V
    .locals 2
    .param p1, "proc"    # Lcom/threed/jpct/IPostProcessor;

    .prologue
    .line 307
    invoke-interface {p1}, Lcom/threed/jpct/IPostProcessor;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    const-string v0, "Post processor has already been initialized!"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 312
    :goto_0
    return-void

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/FrameBuffer;->postProcessors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public blit(Lcom/threed/jpct/Texture;IIIIIIIIIZ)V
    .locals 13
    .param p1, "src"    # Lcom/threed/jpct/Texture;
    .param p2, "srcX"    # I
    .param p3, "srcY"    # I
    .param p4, "destX"    # I
    .param p5, "destY"    # I
    .param p6, "sourceWidth"    # I
    .param p7, "sourceHeight"    # I
    .param p8, "destWidth"    # I
    .param p9, "destHeight"    # I
    .param p10, "transValue"    # I
    .param p11, "additive"    # Z

    .prologue
    .line 702
    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-virtual/range {v0 .. v12}, Lcom/threed/jpct/FrameBuffer;->blit(Lcom/threed/jpct/Texture;IIIIIIIIIZLcom/threed/jpct/RGBColor;)V

    .line 703
    return-void
.end method

.method public blit(Lcom/threed/jpct/Texture;IIIIIIIIIZLcom/threed/jpct/RGBColor;)V
    .locals 18
    .param p1, "src"    # Lcom/threed/jpct/Texture;
    .param p2, "srcX"    # I
    .param p3, "srcY"    # I
    .param p4, "destX"    # I
    .param p5, "destY"    # I
    .param p6, "sourceWidth"    # I
    .param p7, "sourceHeight"    # I
    .param p8, "destWidth"    # I
    .param p9, "destHeight"    # I
    .param p10, "transValue"    # I
    .param p11, "additive"    # Z
    .param p12, "addColor"    # Lcom/threed/jpct/RGBColor;

    .prologue
    .line 650
    const/16 v15, 0xff

    .local v15, "red":I
    const/16 v16, 0xff

    .local v16, "green":I
    const/16 v17, 0xff

    .line 652
    .local v17, "blue":I
    if-eqz p12, :cond_0

    .line 653
    invoke-virtual/range {p12 .. p12}, Lcom/threed/jpct/RGBColor;->getRed()I

    move-result v15

    .line 654
    invoke-virtual/range {p12 .. p12}, Lcom/threed/jpct/RGBColor;->getGreen()I

    move-result v16

    .line 655
    invoke-virtual/range {p12 .. p12}, Lcom/threed/jpct/RGBColor;->getBlue()I

    move-result v17

    .line 657
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threed/jpct/FrameBuffer;->glRend:Lcom/threed/jpct/GLRenderer;

    if-eqz p12, :cond_1

    const/4 v11, 0x1

    :goto_0
    move-object/from16 v2, p1

    move-object/from16 v3, p0

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p11

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    invoke-virtual/range {v1 .. v17}, Lcom/threed/jpct/GLRenderer;->blitTexture(Lcom/threed/jpct/Texture;Lcom/threed/jpct/FrameBuffer;IIIIIIZZIIIIII)V

    .line 658
    return-void

    .line 657
    :cond_1
    const/4 v11, 0x0

    goto :goto_0
.end method

.method public blit(Lcom/threed/jpct/Texture;IIIIIIZ)V
    .locals 10
    .param p1, "src"    # Lcom/threed/jpct/Texture;
    .param p2, "srcX"    # I
    .param p3, "srcY"    # I
    .param p4, "destX"    # I
    .param p5, "destY"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "transparent"    # Z

    .prologue
    .line 602
    iget-object v0, p0, Lcom/threed/jpct/FrameBuffer;->glRend:Lcom/threed/jpct/GLRenderer;

    move-object v1, p1

    move-object v2, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lcom/threed/jpct/GLRenderer;->blitTexture(Lcom/threed/jpct/Texture;Lcom/threed/jpct/FrameBuffer;IIIIIIZ)V

    .line 603
    return-void
.end method

.method public blit([IIIIIIIIIZ)V
    .locals 14
    .param p1, "src"    # [I
    .param p2, "srcWidth"    # I
    .param p3, "srcHeight"    # I
    .param p4, "srcX"    # I
    .param p5, "srcY"    # I
    .param p6, "destX"    # I
    .param p7, "destY"    # I
    .param p8, "width"    # I
    .param p9, "height"    # I
    .param p10, "transparent"    # Z

    .prologue
    .line 750
    if-ltz p4, :cond_0

    move/from16 v0, p4

    move/from16 v1, p2

    if-ge v0, v1, :cond_0

    if-ltz p5, :cond_0

    move/from16 v0, p5

    move/from16 v1, p3

    if-ge v0, v1, :cond_0

    add-int v2, p4, p8

    move/from16 v0, p2

    if-gt v2, v0, :cond_0

    add-int v2, p5, p9

    move/from16 v0, p3

    if-gt v2, v0, :cond_0

    .line 751
    iget-object v2, p0, Lcom/threed/jpct/FrameBuffer;->glRend:Lcom/threed/jpct/GLRenderer;

    move-object v3, p1

    move-object v4, p0

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p2

    move/from16 v13, p3

    invoke-virtual/range {v2 .. v13}, Lcom/threed/jpct/GLRenderer;->blitIntArray([ILcom/threed/jpct/FrameBuffer;IIIIIIZII)V

    .line 755
    :goto_0
    return-void

    .line 753
    :cond_0
    const-string v2, "Blitting region out of bounds"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 468
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/threed/jpct/FrameBuffer;->clear(Lcom/threed/jpct/RGBColor;)V

    .line 469
    return-void
.end method

.method public clear(I)V
    .locals 5
    .param p1, "rgb"    # I

    .prologue
    .line 510
    iget-object v0, p0, Lcom/threed/jpct/FrameBuffer;->tmpColor:Lcom/threed/jpct/RGBColor;

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v3, p1, 0xff

    shr-int/lit8 v4, p1, 0x18

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/threed/jpct/RGBColor;->setTo(IIII)V

    .line 511
    iget-object v0, p0, Lcom/threed/jpct/FrameBuffer;->tmpColor:Lcom/threed/jpct/RGBColor;

    invoke-virtual {p0, v0}, Lcom/threed/jpct/FrameBuffer;->clear(Lcom/threed/jpct/RGBColor;)V

    .line 512
    return-void
.end method

.method public clear(Lcom/threed/jpct/RGBColor;)V
    .locals 1
    .param p1, "col"    # Lcom/threed/jpct/RGBColor;

    .prologue
    .line 499
    iget-object v0, p0, Lcom/threed/jpct/FrameBuffer;->glRend:Lcom/threed/jpct/GLRenderer;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/GLRenderer;->clear(Lcom/threed/jpct/RGBColor;)V

    .line 500
    return-void
.end method

.method public clearColorBufferOnly(Lcom/threed/jpct/RGBColor;)V
    .locals 1
    .param p1, "col"    # Lcom/threed/jpct/RGBColor;

    .prologue
    .line 488
    iget-object v0, p0, Lcom/threed/jpct/FrameBuffer;->glRend:Lcom/threed/jpct/GLRenderer;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/GLRenderer;->clearColorBufferOnly(Lcom/threed/jpct/RGBColor;)V

    .line 489
    return-void
.end method

.method public clearZBufferOnly()V
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/threed/jpct/FrameBuffer;->glRend:Lcom/threed/jpct/GLRenderer;

    invoke-virtual {v0}, Lcom/threed/jpct/GLRenderer;->clearZBufferOnly()V

    .line 479
    return-void
.end method

.method public display()V
    .locals 1

    .prologue
    .line 761
    invoke-direct {p0}, Lcom/threed/jpct/FrameBuffer;->incCounter()V

    .line 762
    iget-object v0, p0, Lcom/threed/jpct/FrameBuffer;->glRend:Lcom/threed/jpct/GLRenderer;

    invoke-virtual {v0}, Lcom/threed/jpct/GLRenderer;->swapBuffers()V

    .line 763
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 380
    invoke-direct {p0}, Lcom/threed/jpct/FrameBuffer;->checkListeners()V

    .line 381
    invoke-direct {p0}, Lcom/threed/jpct/FrameBuffer;->removeListeners()V

    .line 382
    invoke-virtual {p0}, Lcom/threed/jpct/FrameBuffer;->removeAllPostProcessors()V

    .line 383
    iget-object v0, p0, Lcom/threed/jpct/FrameBuffer;->glRend:Lcom/threed/jpct/GLRenderer;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/threed/jpct/FrameBuffer;->glRend:Lcom/threed/jpct/GLRenderer;

    invoke-virtual {v0}, Lcom/threed/jpct/GLRenderer;->dispose()V

    .line 385
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threed/jpct/FrameBuffer;->glRend:Lcom/threed/jpct/GLRenderer;

    .line 387
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 831
    invoke-direct {p0}, Lcom/threed/jpct/FrameBuffer;->checkListeners()V

    .line 832
    invoke-direct {p0}, Lcom/threed/jpct/FrameBuffer;->removeListeners()V

    .line 833
    return-void
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 778
    iget-object v0, p0, Lcom/threed/jpct/FrameBuffer;->glRend:Lcom/threed/jpct/GLRenderer;

    invoke-virtual {v0}, Lcom/threed/jpct/GLRenderer;->flush()V

    .line 779
    return-void
.end method

.method public freeMemory()V
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/threed/jpct/FrameBuffer;->glRend:Lcom/threed/jpct/GLRenderer;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/threed/jpct/FrameBuffer;->glRend:Lcom/threed/jpct/GLRenderer;

    invoke-virtual {v0}, Lcom/threed/jpct/GLRenderer;->unloadKnownTextures()V

    .line 398
    :cond_0
    return-void
.end method

.method public getCenterX()F
    .locals 1

    .prologue
    .line 425
    iget v0, p0, Lcom/threed/jpct/FrameBuffer;->middleX:F

    return v0
.end method

.method public getCenterY()F
    .locals 1

    .prologue
    .line 435
    iget v0, p0, Lcom/threed/jpct/FrameBuffer;->middleY:F

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 415
    iget v0, p0, Lcom/threed/jpct/FrameBuffer;->height:I

    return v0
.end method

.method public getID()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/threed/jpct/FrameBuffer;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getOpenGLMajorVersion()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/threed/jpct/FrameBuffer;->openGlVersion:I

    return v0
.end method

.method public getPixels()[I
    .locals 2

    .prologue
    .line 532
    iget v0, p0, Lcom/threed/jpct/FrameBuffer;->width:I

    iget v1, p0, Lcom/threed/jpct/FrameBuffer;->height:I

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Lcom/threed/jpct/FrameBuffer;->getPixels([I)[I

    move-result-object v0

    return-object v0
.end method

.method public getPixels([I)[I
    .locals 3
    .param p1, "toFill"    # [I

    .prologue
    .line 557
    if-eqz p1, :cond_0

    array-length v0, p1

    iget v1, p0, Lcom/threed/jpct/FrameBuffer;->width:I

    iget v2, p0, Lcom/threed/jpct/FrameBuffer;->height:I

    mul-int/2addr v1, v2

    if-eq v0, v1, :cond_1

    .line 558
    :cond_0
    const-string v0, "The int[]-array has to have a size of width*height!"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 559
    const/4 p1, 0x0

    .line 562
    .end local p1    # "toFill":[I
    :goto_0
    return-object p1

    .line 561
    .restart local p1    # "toFill":[I
    :cond_1
    iget-object v0, p0, Lcom/threed/jpct/FrameBuffer;->glRend:Lcom/threed/jpct/GLRenderer;

    invoke-virtual {v0, p0, p1}, Lcom/threed/jpct/GLRenderer;->grabScreen(Lcom/threed/jpct/FrameBuffer;[I)V

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 406
    iget v0, p0, Lcom/threed/jpct/FrameBuffer;->width:I

    return v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/threed/jpct/FrameBuffer;->glRend:Lcom/threed/jpct/GLRenderer;

    invoke-virtual {v0}, Lcom/threed/jpct/GLRenderer;->isInitialized()Z

    move-result v0

    return v0
.end method

.method final register(Lcom/threed/jpct/VisListManager;)V
    .locals 1
    .param p1, "vlm"    # Lcom/threed/jpct/VisListManager;

    .prologue
    .line 789
    invoke-direct {p0}, Lcom/threed/jpct/FrameBuffer;->checkListeners()V

    .line 790
    iget-object v0, p0, Lcom/threed/jpct/FrameBuffer;->usedBy:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/threed/jpct/FrameBuffer;->usedBy:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 793
    :cond_0
    return-void
.end method

.method public removeAllPostProcessors()V
    .locals 2

    .prologue
    .line 334
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/threed/jpct/FrameBuffer;->postProcessors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 337
    return-void

    .line 335
    :cond_0
    iget-object v1, p0, Lcom/threed/jpct/FrameBuffer;->postProcessors:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/threed/jpct/IPostProcessor;

    invoke-virtual {p0, v1}, Lcom/threed/jpct/FrameBuffer;->removePostProcessor(Lcom/threed/jpct/IPostProcessor;)V

    .line 334
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public removePostProcessor(Lcom/threed/jpct/IPostProcessor;)V
    .locals 1
    .param p1, "proc"    # Lcom/threed/jpct/IPostProcessor;

    .prologue
    .line 323
    iget-object v0, p0, Lcom/threed/jpct/FrameBuffer;->postProcessors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 324
    iget-object v0, p0, Lcom/threed/jpct/FrameBuffer;->glRend:Lcom/threed/jpct/GLRenderer;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/GLRenderer;->disposeProcessor(Lcom/threed/jpct/IPostProcessor;)V

    .line 325
    return-void
.end method

.method public removeRenderTarget()V
    .locals 1

    .prologue
    .line 274
    iget-boolean v0, p0, Lcom/threed/jpct/FrameBuffer;->hasRenderTarget:Z

    if-eqz v0, :cond_0

    .line 275
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/threed/jpct/FrameBuffer;->setRenderTarget(Lcom/threed/jpct/Texture;)V

    .line 277
    :cond_0
    return-void
.end method

.method public resize(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 449
    iget v0, p0, Lcom/threed/jpct/FrameBuffer;->height:I

    if-ne p2, v0, :cond_1

    iget v0, p0, Lcom/threed/jpct/FrameBuffer;->width:I

    if-ne p1, v0, :cond_1

    .line 461
    :cond_0
    :goto_0
    return-void

    .line 453
    :cond_1
    iget-object v0, p0, Lcom/threed/jpct/FrameBuffer;->glRend:Lcom/threed/jpct/GLRenderer;

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/threed/jpct/FrameBuffer;->glRend:Lcom/threed/jpct/GLRenderer;

    invoke-virtual {v0, p1, p2}, Lcom/threed/jpct/GLRenderer;->revalidate(II)V

    .line 455
    iput p1, p0, Lcom/threed/jpct/FrameBuffer;->width:I

    .line 456
    iput p2, p0, Lcom/threed/jpct/FrameBuffer;->height:I

    .line 457
    int-to-float v0, p1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/threed/jpct/FrameBuffer;->middleX:F

    .line 458
    int-to-float v0, p2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/threed/jpct/FrameBuffer;->middleY:F

    .line 459
    mul-int v0, p1, p2

    iput v0, p0, Lcom/threed/jpct/FrameBuffer;->length:I

    goto :goto_0
.end method

.method public runPostProcessors()V
    .locals 4

    .prologue
    .line 349
    iget-object v2, p0, Lcom/threed/jpct/FrameBuffer;->postProcessors:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 350
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/threed/jpct/FrameBuffer;->postProcessors:Ljava/util/ArrayList;

    .line 352
    :cond_0
    iget-object v2, p0, Lcom/threed/jpct/FrameBuffer;->postProcessors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 353
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/threed/jpct/FrameBuffer;->postProcessors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_2

    .line 358
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 354
    .restart local v0    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/threed/jpct/FrameBuffer;->postProcessors:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/threed/jpct/IPostProcessor;

    .line 355
    .local v1, "pp":Lcom/threed/jpct/IPostProcessor;
    iget-object v2, p0, Lcom/threed/jpct/FrameBuffer;->glRend:Lcom/threed/jpct/GLRenderer;

    invoke-virtual {v2, p0, v1}, Lcom/threed/jpct/GLRenderer;->postProcess(Lcom/threed/jpct/FrameBuffer;Lcom/threed/jpct/IPostProcessor;)V

    .line 353
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setPaintListener(Lcom/threed/jpct/IPaintListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/threed/jpct/IPaintListener;

    .prologue
    .line 368
    iget-object v0, p0, Lcom/threed/jpct/FrameBuffer;->glRend:Lcom/threed/jpct/GLRenderer;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/GLRenderer;->setPaintListener(Lcom/threed/jpct/IPaintListener;)V

    .line 369
    return-void
.end method

.method public setRenderTarget(I)V
    .locals 1
    .param p1, "texID"    # I

    .prologue
    .line 166
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 167
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/threed/jpct/FrameBuffer;->setRenderTarget(Lcom/threed/jpct/Texture;)V

    .line 171
    :goto_0
    return-void

    .line 169
    :cond_0
    invoke-static {}, Lcom/threed/jpct/TextureManager;->getInstance()Lcom/threed/jpct/TextureManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/threed/jpct/TextureManager;->getTextureByID(I)Lcom/threed/jpct/Texture;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/threed/jpct/FrameBuffer;->setRenderTarget(Lcom/threed/jpct/Texture;)V

    goto :goto_0
.end method

.method public setRenderTarget(IIIIIZ)V
    .locals 7
    .param p1, "texID"    # I
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "clearAll"    # Z

    .prologue
    .line 199
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 200
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/threed/jpct/FrameBuffer;->setRenderTarget(Lcom/threed/jpct/Texture;)V

    .line 204
    :goto_0
    return-void

    .line 202
    :cond_0
    invoke-static {}, Lcom/threed/jpct/TextureManager;->getInstance()Lcom/threed/jpct/TextureManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/threed/jpct/TextureManager;->getTextureByID(I)Lcom/threed/jpct/Texture;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/threed/jpct/FrameBuffer;->setRenderTarget(Lcom/threed/jpct/Texture;IIIIZ)V

    goto :goto_0
.end method

.method public setRenderTarget(Lcom/threed/jpct/Texture;)V
    .locals 7
    .param p1, "tex"    # Lcom/threed/jpct/Texture;

    .prologue
    const/4 v2, -0x1

    .line 219
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/threed/jpct/FrameBuffer;->setRenderTarget(Lcom/threed/jpct/Texture;IIIIZ)V

    .line 220
    return-void
.end method

.method public setRenderTarget(Lcom/threed/jpct/Texture;IIIIZ)V
    .locals 9
    .param p1, "tex"    # Lcom/threed/jpct/Texture;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "clearAll"    # Z

    .prologue
    const/4 v8, 0x0

    .line 248
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/threed/jpct/Texture;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/threed/jpct/FrameBuffer;->getWidth()I

    move-result v1

    if-gt v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/threed/jpct/Texture;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/threed/jpct/FrameBuffer;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_2

    :cond_0
    sget-boolean v0, Lcom/threed/jpct/Config;->useFBO:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/threed/jpct/FrameBuffer;->glRend:Lcom/threed/jpct/GLRenderer;

    iget-boolean v0, v0, Lcom/threed/jpct/GLRenderer;->gl20:Z

    if-nez v0, :cond_2

    .line 249
    :cond_1
    const-string v0, "Can\'t render into a texture larger than the current framebuffer!"

    invoke-static {v0, v8}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 266
    :goto_0
    return-void

    .line 253
    :cond_2
    iget-object v0, p0, Lcom/threed/jpct/FrameBuffer;->glRend:Lcom/threed/jpct/GLRenderer;

    if-eqz v0, :cond_4

    .line 254
    if-eqz p1, :cond_3

    iget-boolean v0, p1, Lcom/threed/jpct/Texture;->mipmap:Z

    if-eqz v0, :cond_3

    .line 255
    invoke-virtual {p1, v8}, Lcom/threed/jpct/Texture;->setMipmap(Z)V

    .line 257
    :cond_3
    iget-object v0, p0, Lcom/threed/jpct/FrameBuffer;->glRend:Lcom/threed/jpct/GLRenderer;

    move-object v1, p1

    move-object v2, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/threed/jpct/GLRenderer;->setRenderTarget(Lcom/threed/jpct/Texture;Lcom/threed/jpct/FrameBuffer;IIIIZ)V

    .line 260
    :cond_4
    if-nez p1, :cond_5

    .line 261
    iput-boolean v8, p0, Lcom/threed/jpct/FrameBuffer;->hasRenderTarget:Z

    .line 265
    :goto_1
    iput-object p1, p0, Lcom/threed/jpct/FrameBuffer;->renderTarget:Lcom/threed/jpct/Texture;

    goto :goto_0

    .line 263
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/threed/jpct/FrameBuffer;->hasRenderTarget:Z

    goto :goto_1
.end method

.method public setVirtualDimensions(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 290
    iput p2, p0, Lcom/threed/jpct/FrameBuffer;->virtualHeight:I

    .line 291
    iput p1, p0, Lcom/threed/jpct/FrameBuffer;->virtualWidth:I

    .line 292
    return-void
.end method

.method public sync()V
    .locals 1

    .prologue
    .line 770
    iget-object v0, p0, Lcom/threed/jpct/FrameBuffer;->glRend:Lcom/threed/jpct/GLRenderer;

    invoke-virtual {v0}, Lcom/threed/jpct/GLRenderer;->sync()V

    .line 771
    return-void
.end method
