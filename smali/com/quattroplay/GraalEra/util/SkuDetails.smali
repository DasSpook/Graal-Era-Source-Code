.class public Lcom/quattroplay/GraalEra/util/SkuDetails;
.super Ljava/lang/Object;
.source "SkuDetails.java"


# instance fields
.field mDescription:Ljava/lang/String;

.field mItemType:Ljava/lang/String;

.field mJson:Ljava/lang/String;

.field mPrice:Ljava/lang/String;

.field mSku:Ljava/lang/String;

.field mTitle:Ljava/lang/String;

.field mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "jsonSkuDetails"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 36
    const-string v0, "inapp"

    invoke-direct {p0, v0, p1}, Lcom/quattroplay/GraalEra/util/SkuDetails;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "itemType"    # Ljava/lang/String;
    .param p2, "jsonSkuDetails"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/quattroplay/GraalEra/util/SkuDetails;->mItemType:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/quattroplay/GraalEra/util/SkuDetails;->mJson:Ljava/lang/String;

    .line 42
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/quattroplay/GraalEra/util/SkuDetails;->mJson:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 43
    .local v0, "o":Lorg/json/JSONObject;
    const-string v1, "productId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/quattroplay/GraalEra/util/SkuDetails;->mSku:Ljava/lang/String;

    .line 44
    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/quattroplay/GraalEra/util/SkuDetails;->mType:Ljava/lang/String;

    .line 45
    const-string v1, "price"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/quattroplay/GraalEra/util/SkuDetails;->mPrice:Ljava/lang/String;

    .line 46
    const-string v1, "title"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/quattroplay/GraalEra/util/SkuDetails;->mTitle:Ljava/lang/String;

    .line 47
    const-string v1, "description"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/quattroplay/GraalEra/util/SkuDetails;->mDescription:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/quattroplay/GraalEra/util/SkuDetails;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/quattroplay/GraalEra/util/SkuDetails;->mPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getSku()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/quattroplay/GraalEra/util/SkuDetails;->mSku:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/quattroplay/GraalEra/util/SkuDetails;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/quattroplay/GraalEra/util/SkuDetails;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SkuDetails:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/quattroplay/GraalEra/util/SkuDetails;->mJson:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
