.class public interface abstract Lcom/facebook/model/OpenGraphAction;
.super Ljava/lang/Object;
.source "OpenGraphAction.java"

# interfaces
.implements Lcom/facebook/model/GraphObject;


# virtual methods
.method public abstract getApplication()Lcom/facebook/model/GraphObject;
.end method

.method public abstract getComments()Lorg/json/JSONObject;
.end method

.method public abstract getCreatedTime()Ljava/util/Date;
.end method

.method public abstract getEndTime()Ljava/util/Date;
.end method

.method public abstract getExpiresTime()Ljava/util/Date;
.end method

.method public abstract getFrom()Lcom/facebook/model/GraphUser;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getImage()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLikes()Lorg/json/JSONObject;
.end method

.method public abstract getMessage()Ljava/lang/String;
.end method

.method public abstract getPlace()Lcom/facebook/model/GraphPlace;
.end method

.method public abstract getPublishTime()Ljava/util/Date;
.end method

.method public abstract getRef()Ljava/lang/String;
.end method

.method public abstract getStartTime()Ljava/util/Date;
.end method

.method public abstract getTags()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/model/GraphObject;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setApplication(Lcom/facebook/model/GraphObject;)V
.end method

.method public abstract setComments(Lorg/json/JSONObject;)V
.end method

.method public abstract setCreatedTime(Ljava/util/Date;)V
.end method

.method public abstract setEndTime(Ljava/util/Date;)V
.end method

.method public abstract setExpiresTime(Ljava/util/Date;)V
.end method

.method public abstract setFrom(Lcom/facebook/model/GraphUser;)V
.end method

.method public abstract setId(Ljava/lang/String;)V
.end method

.method public abstract setImage(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setLikes(Lorg/json/JSONObject;)V
.end method

.method public abstract setMessage(Ljava/lang/String;)V
.end method

.method public abstract setPlace(Lcom/facebook/model/GraphPlace;)V
.end method

.method public abstract setPublishTime(Ljava/util/Date;)V
.end method

.method public abstract setRef(Ljava/lang/String;)V
.end method

.method public abstract setStartTime(Ljava/util/Date;)V
.end method

.method public abstract setTags(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/facebook/model/GraphObject;",
            ">;)V"
        }
    .end annotation
.end method
