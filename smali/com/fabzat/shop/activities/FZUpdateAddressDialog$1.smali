.class Lcom/fabzat/shop/activities/FZUpdateAddressDialog$1;
.super Ljava/lang/Object;
.source "FZUpdateAddressDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bz:Lcom/fabzat/shop/activities/FZUpdateAddressDialog;


# direct methods
.method constructor <init>(Lcom/fabzat/shop/activities/FZUpdateAddressDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog$1;->bz:Lcom/fabzat/shop/activities/FZUpdateAddressDialog;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 159
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 160
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1    # "dialog":Landroid/content/DialogInterface;
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    .line 161
    .local v0, "selectedPosition":I
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog$1;->bz:Lcom/fabzat/shop/activities/FZUpdateAddressDialog;

    iget-object v2, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog$1;->bz:Lcom/fabzat/shop/activities/FZUpdateAddressDialog;

    iget-object v3, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog$1;->bz:Lcom/fabzat/shop/activities/FZUpdateAddressDialog;

    invoke-static {v3}, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->a(Lcom/fabzat/shop/activities/FZUpdateAddressDialog;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-static {v2, v3}, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->a(Lcom/fabzat/shop/activities/FZUpdateAddressDialog;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->a(Lcom/fabzat/shop/activities/FZUpdateAddressDialog;I)V

    .line 162
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog$1;->bz:Lcom/fabzat/shop/activities/FZUpdateAddressDialog;

    invoke-static {v1}, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->b(Lcom/fabzat/shop/activities/FZUpdateAddressDialog;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog$1;->bz:Lcom/fabzat/shop/activities/FZUpdateAddressDialog;

    invoke-static {v2}, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->a(Lcom/fabzat/shop/activities/FZUpdateAddressDialog;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 163
    return-void
.end method
