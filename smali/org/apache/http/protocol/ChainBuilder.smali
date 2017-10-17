.class final Lorg/apache/http/protocol/ChainBuilder;
.super Ljava/lang/Object;
.source "ChainBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private final list:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final uniqueClasses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    .local p0, "this":Lorg/apache/http/protocol/ChainBuilder;, "Lorg/apache/http/protocol/ChainBuilder<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/http/protocol/ChainBuilder;->list:Ljava/util/LinkedList;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/http/protocol/ChainBuilder;->uniqueClasses:Ljava/util/Map;

    .line 54
    return-void
.end method

.method private ensureUnique(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lorg/apache/http/protocol/ChainBuilder;, "Lorg/apache/http/protocol/ChainBuilder<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lorg/apache/http/protocol/ChainBuilder;->uniqueClasses:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 58
    .local v0, "previous":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_0

    .line 59
    iget-object v1, p0, Lorg/apache/http/protocol/ChainBuilder;->list:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 61
    :cond_0
    iget-object v1, p0, Lorg/apache/http/protocol/ChainBuilder;->uniqueClasses:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    return-void
.end method


# virtual methods
.method public addAllFirst(Ljava/util/Collection;)Lorg/apache/http/protocol/ChainBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TE;>;)",
            "Lorg/apache/http/protocol/ChainBuilder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "this":Lorg/apache/http/protocol/ChainBuilder;, "Lorg/apache/http/protocol/ChainBuilder<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    if-nez p1, :cond_1

    .line 89
    :cond_0
    return-object p0

    .line 86
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 87
    .local v0, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v0}, Lorg/apache/http/protocol/ChainBuilder;->addFirst(Ljava/lang/Object;)Lorg/apache/http/protocol/ChainBuilder;

    goto :goto_0
.end method

.method public varargs addAllFirst([Ljava/lang/Object;)Lorg/apache/http/protocol/ChainBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Lorg/apache/http/protocol/ChainBuilder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Lorg/apache/http/protocol/ChainBuilder;, "Lorg/apache/http/protocol/ChainBuilder<TE;>;"
    .local p1, "c":[Ljava/lang/Object;, "[TE;"
    if-nez p1, :cond_1

    .line 99
    :cond_0
    return-object p0

    .line 96
    :cond_1
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 97
    .local v1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v1}, Lorg/apache/http/protocol/ChainBuilder;->addFirst(Ljava/lang/Object;)Lorg/apache/http/protocol/ChainBuilder;

    .line 96
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public addAllLast(Ljava/util/Collection;)Lorg/apache/http/protocol/ChainBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TE;>;)",
            "Lorg/apache/http/protocol/ChainBuilder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "this":Lorg/apache/http/protocol/ChainBuilder;, "Lorg/apache/http/protocol/ChainBuilder<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    if-nez p1, :cond_1

    .line 109
    :cond_0
    return-object p0

    .line 106
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 107
    .local v0, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v0}, Lorg/apache/http/protocol/ChainBuilder;->addLast(Ljava/lang/Object;)Lorg/apache/http/protocol/ChainBuilder;

    goto :goto_0
.end method

.method public varargs addAllLast([Ljava/lang/Object;)Lorg/apache/http/protocol/ChainBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Lorg/apache/http/protocol/ChainBuilder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, "this":Lorg/apache/http/protocol/ChainBuilder;, "Lorg/apache/http/protocol/ChainBuilder<TE;>;"
    .local p1, "c":[Ljava/lang/Object;, "[TE;"
    if-nez p1, :cond_1

    .line 119
    :cond_0
    return-object p0

    .line 116
    :cond_1
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 117
    .local v1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v1}, Lorg/apache/http/protocol/ChainBuilder;->addLast(Ljava/lang/Object;)Lorg/apache/http/protocol/ChainBuilder;

    .line 116
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public addFirst(Ljava/lang/Object;)Lorg/apache/http/protocol/ChainBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lorg/apache/http/protocol/ChainBuilder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lorg/apache/http/protocol/ChainBuilder;, "Lorg/apache/http/protocol/ChainBuilder<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    .line 70
    :goto_0
    return-object p0

    .line 68
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/http/protocol/ChainBuilder;->ensureUnique(Ljava/lang/Object;)V

    .line 69
    iget-object v0, p0, Lorg/apache/http/protocol/ChainBuilder;->list:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public addLast(Ljava/lang/Object;)Lorg/apache/http/protocol/ChainBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lorg/apache/http/protocol/ChainBuilder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lorg/apache/http/protocol/ChainBuilder;, "Lorg/apache/http/protocol/ChainBuilder<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    .line 79
    :goto_0
    return-object p0

    .line 77
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/http/protocol/ChainBuilder;->ensureUnique(Ljava/lang/Object;)V

    .line 78
    iget-object v0, p0, Lorg/apache/http/protocol/ChainBuilder;->list:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public build()Ljava/util/LinkedList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "this":Lorg/apache/http/protocol/ChainBuilder;, "Lorg/apache/http/protocol/ChainBuilder<TE;>;"
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lorg/apache/http/protocol/ChainBuilder;->list:Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
