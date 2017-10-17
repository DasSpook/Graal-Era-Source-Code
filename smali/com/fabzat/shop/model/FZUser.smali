.class public Lcom/fabzat/shop/model/FZUser;
.super Ljava/lang/Object;
.source "FZUser.java"


# static fields
.field private static final FZ_PASSWORD:Ljava/lang/String; = "PASSWORD"

.field private static final FZ_USER_INFO:Ljava/lang/String; = "FZ_USER_INFO"


# instance fields
.field private addresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fabzat/shop/model/FZAddress;",
            ">;"
        }
    .end annotation
.end field

.field bQ:Lcom/fabzat/shop/model/FZCart;

.field private error:Ljava/lang/String;

.field private id:I

.field private isLogged:Z

.field private password:Ljava/lang/String;

.field private role:Ljava/lang/String;

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/fabzat/shop/model/FZUser;->userName:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fabzat/shop/model/FZUser;->isLogged:Z

    .line 33
    new-instance v0, Lcom/fabzat/shop/model/FZCart;

    invoke-direct {v0}, Lcom/fabzat/shop/model/FZCart;-><init>()V

    iput-object v0, p0, Lcom/fabzat/shop/model/FZUser;->bQ:Lcom/fabzat/shop/model/FZCart;

    .line 34
    return-void
.end method

.method private d(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 116
    const-string v2, "FZ_USER_INFO"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 117
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 118
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "PASSWORD"

    iget-object v3, p0, Lcom/fabzat/shop/model/FZUser;->password:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 120
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 121
    return-void
.end method

.method public static getUser(Landroid/content/Context;)Lcom/fabzat/shop/model/FZUser;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    const-string v5, "FZ_USER_INFO"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 78
    .local v3, "settings":Landroid/content/SharedPreferences;
    const-string v5, "FZ_USER_INFO"

    const-string v6, ""

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "json":Ljava/lang/String;
    const-string v5, "PASSWORD"

    const-string v6, ""

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, "pwd":Ljava/lang/String;
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 83
    .local v0, "gson":Lcom/google/gson/Gson;
    const-class v5, Lcom/fabzat/shop/model/FZUser;

    invoke-virtual {v0, v1, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fabzat/shop/model/FZUser;

    .line 85
    .local v4, "user":Lcom/fabzat/shop/model/FZUser;
    if-eqz v2, :cond_0

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 86
    invoke-virtual {v4, v2}, Lcom/fabzat/shop/model/FZUser;->setPassword(Ljava/lang/String;)Lcom/fabzat/shop/model/FZUser;

    .line 88
    :cond_0
    if-nez v4, :cond_1

    .line 89
    new-instance v4, Lcom/fabzat/shop/model/FZUser;

    .end local v4    # "user":Lcom/fabzat/shop/model/FZUser;
    const-string v5, ""

    invoke-direct {v4, v5}, Lcom/fabzat/shop/model/FZUser;-><init>(Ljava/lang/String;)V

    .line 92
    .restart local v4    # "user":Lcom/fabzat/shop/model/FZUser;
    :cond_1
    return-object v4
.end method


# virtual methods
.method public addParamPassword(Lcom/fabzat/shop/dao/FZWebServicePost;)Lcom/fabzat/shop/dao/FZWebServicePost;
    .locals 2
    .param p1, "post"    # Lcom/fabzat/shop/dao/FZWebServicePost;

    .prologue
    .line 139
    const-string v0, "consumer[password]"

    iget-object v1, p0, Lcom/fabzat/shop/model/FZUser;->password:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fabzat/shop/dao/FZWebServicePost;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v0

    return-object v0
.end method

.method public comparePassword(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pwd"    # Ljava/lang/String;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/fabzat/shop/model/FZUser;->password:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 45
    :cond_0
    const/4 v0, 0x0

    .line 46
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public destroy(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 124
    const-string v0, ""

    iput-object v0, p0, Lcom/fabzat/shop/model/FZUser;->userName:Ljava/lang/String;

    .line 125
    const-string v0, ""

    iput-object v0, p0, Lcom/fabzat/shop/model/FZUser;->password:Ljava/lang/String;

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fabzat/shop/model/FZUser;->isLogged:Z

    .line 127
    const-string v0, ""

    iput-object v0, p0, Lcom/fabzat/shop/model/FZUser;->role:Ljava/lang/String;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fabzat/shop/model/FZUser;->addresses:Ljava/util/List;

    .line 129
    invoke-virtual {p0, p1}, Lcom/fabzat/shop/model/FZUser;->storeUser(Landroid/content/Context;)V

    .line 130
    invoke-direct {p0, p1}, Lcom/fabzat/shop/model/FZUser;->d(Landroid/content/Context;)V

    .line 131
    return-void
.end method

.method public getAddresses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fabzat/shop/model/FZAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lcom/fabzat/shop/model/FZUser;->addresses:Ljava/util/List;

    return-object v0
.end method

.method public getError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/fabzat/shop/model/FZUser;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/fabzat/shop/model/FZUser;->id:I

    return v0
.end method

.method public getRole()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/fabzat/shop/model/FZUser;->role:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fabzat/shop/model/FZUser;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public hasAddresses()Z
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/fabzat/shop/model/FZUser;->addresses:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fabzat/shop/model/FZUser;->addresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initAddresses()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/fabzat/shop/model/FZUser;->addresses:Ljava/util/List;

    if-nez v0, :cond_0

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fabzat/shop/model/FZUser;->addresses:Ljava/util/List;

    .line 165
    :cond_0
    return-void
.end method

.method public isDefined()Z
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/fabzat/shop/model/FZUser;->userName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fabzat/shop/model/FZUser;->password:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/fabzat/shop/model/FZUser;->userName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fabzat/shop/model/FZUser;->userName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isLogged()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/fabzat/shop/model/FZUser;->isLogged:Z

    return v0
.end method

.method public logged()Z
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/fabzat/shop/model/FZUser;->error:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fabzat/shop/model/FZUser;->error:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/fabzat/shop/model/FZUser;->userName:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 181
    :goto_0
    iput-boolean v0, p0, Lcom/fabzat/shop/model/FZUser;->isLogged:Z

    .line 184
    iget-boolean v0, p0, Lcom/fabzat/shop/model/FZUser;->isLogged:Z

    return v0

    .line 182
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public login()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fabzat/shop/model/FZUser;->isLogged:Z

    .line 67
    return-void
.end method

.method public logout()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fabzat/shop/model/FZUser;->isLogged:Z

    .line 63
    return-void
.end method

.method public setAddresses(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fabzat/shop/model/FZAddress;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 172
    .local p1, "addresses":Ljava/util/List;, "Ljava/util/List<Lcom/fabzat/shop/model/FZAddress;>;"
    iput-object p1, p0, Lcom/fabzat/shop/model/FZUser;->addresses:Ljava/util/List;

    .line 173
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 147
    iput p1, p0, Lcom/fabzat/shop/model/FZUser;->id:I

    .line 148
    return-void
.end method

.method public setPassword(Ljava/lang/String;)Lcom/fabzat/shop/model/FZUser;
    .locals 0
    .param p1, "_password"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/fabzat/shop/model/FZUser;->password:Ljava/lang/String;

    .line 50
    return-object p0
.end method

.method public setRole(Ljava/lang/String;)V
    .locals 0
    .param p1, "role"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/fabzat/shop/model/FZUser;->role:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setUsername(Ljava/lang/String;)Lcom/fabzat/shop/model/FZUser;
    .locals 0
    .param p1, "_username"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/fabzat/shop/model/FZUser;->userName:Ljava/lang/String;

    .line 41
    return-object p0
.end method

.method public storeUser(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 102
    .local v1, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, "json":Ljava/lang/String;
    const-string v4, "FZ_USER_INFO"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 105
    .local v3, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 106
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "FZ_USER_INFO"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 108
    iget-object v4, p0, Lcom/fabzat/shop/model/FZUser;->password:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/fabzat/shop/model/FZUser;->password:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 109
    const-string v4, "PASSWORD"

    iget-object v5, p0, Lcom/fabzat/shop/model/FZUser;->password:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 111
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 113
    return-void
.end method
