.class Lcom/fabzat/shop/activities/FZNewAddressDialog$1;
.super Ljava/lang/Object;
.source "FZNewAddressDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fabzat/shop/activities/FZNewAddressDialog;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic an:Lcom/fabzat/shop/activities/FZNewAddressDialog;


# direct methods
.method constructor <init>(Lcom/fabzat/shop/activities/FZNewAddressDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fabzat/shop/activities/FZNewAddressDialog$1;->an:Lcom/fabzat/shop/activities/FZNewAddressDialog;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 136
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 137
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1    # "dialog":Landroid/content/DialogInterface;
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    .line 138
    .local v0, "selectedPosition":I
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZNewAddressDialog$1;->an:Lcom/fabzat/shop/activities/FZNewAddressDialog;

    iget-object v2, p0, Lcom/fabzat/shop/activities/FZNewAddressDialog$1;->an:Lcom/fabzat/shop/activities/FZNewAddressDialog;

    iget-object v3, p0, Lcom/fabzat/shop/activities/FZNewAddressDialog$1;->an:Lcom/fabzat/shop/activities/FZNewAddressDialog;

    invoke-static {v3}, Lcom/fabzat/shop/activities/FZNewAddressDialog;->a(Lcom/fabzat/shop/activities/FZNewAddressDialog;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-static {v2, v3}, Lcom/fabzat/shop/activities/FZNewAddressDialog;->a(Lcom/fabzat/shop/activities/FZNewAddressDialog;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/fabzat/shop/activities/FZNewAddressDialog;->a(Lcom/fabzat/shop/activities/FZNewAddressDialog;I)V

    .line 139
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZNewAddressDialog$1;->an:Lcom/fabzat/shop/activities/FZNewAddressDialog;

    invoke-static {v1}, Lcom/fabzat/shop/activities/FZNewAddressDialog;->b(Lcom/fabzat/shop/activities/FZNewAddressDialog;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/fabzat/shop/activities/FZNewAddressDialog$1;->an:Lcom/fabzat/shop/activities/FZNewAddressDialog;

    invoke-static {v2}, Lcom/fabzat/shop/activities/FZNewAddressDialog;->a(Lcom/fabzat/shop/activities/FZNewAddressDialog;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 140
    return-void
.end method
