.class Lcom/android/systemui/volume/SecVolumeDialog$10;
.super Ljava/lang/Object;
.source "SecVolumeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/SecVolumeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/SecVolumeDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/SecVolumeDialog;)V
    .locals 0

    .prologue
    .line 1646
    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog$10;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1649
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog$10;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog;->access$5700(Lcom/android/systemui/volume/SecVolumeDialog;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1655
    :goto_0
    return-void

    .line 1650
    :cond_0
    sget-boolean v3, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog$10;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog;->access$5800(Lcom/android/systemui/volume/SecVolumeDialog;)Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 1651
    .local v0, "newExpand":Z
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog$10;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog;->access$2900(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v3, v4, v1}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1652
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog$10;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog;->access$1400(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/widget/ImageButton;

    move-result-object v2

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog$10;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog;->access$2900(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/content/Context;

    move-result-object v3

    if-eqz v0, :cond_3

    const v1, 0x7f0b063f

    :goto_2
    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1654
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog$10;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v1, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->access$3700(Lcom/android/systemui/volume/SecVolumeDialog;Z)V

    goto :goto_0

    .end local v0    # "newExpand":Z
    :cond_1
    move v0, v2

    .line 1650
    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog$10;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog;->access$5800(Lcom/android/systemui/volume/SecVolumeDialog;)Z

    move-result v0

    goto :goto_1

    .line 1652
    .restart local v0    # "newExpand":Z
    :cond_3
    const v1, 0x7f0b063e

    goto :goto_2
.end method
