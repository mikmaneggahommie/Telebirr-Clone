.class Lcom/android/systemui/volume/VolumeDialog$4;
.super Ljava/lang/Object;
.source "VolumeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumeDialog;->initRow(IIIZ)Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialog;

.field final synthetic val$row:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

.field final synthetic val$stream:I


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeDialog;Lcom/android/systemui/volume/VolumeDialog$VolumeRow;I)V
    .locals 0

    .prologue
    .line 392
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialog$4;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    iput-object p2, p0, Lcom/android/systemui/volume/VolumeDialog$4;->val$row:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    iput p3, p0, Lcom/android/systemui/volume/VolumeDialog$4;->val$stream:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 395
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog$4;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialog;->access$2000(Lcom/android/systemui/volume/VolumeDialog;)Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x7

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/systemui/volume/VolumeDialog$4;->val$row:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    invoke-static {v7}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1000(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    iget-object v7, p0, Lcom/android/systemui/volume/VolumeDialog$4;->val$row:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    invoke-static {v7}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2100(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v4, v5, v6}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 396
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog$4;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialog;->access$2200(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialog$4;->val$row:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    invoke-static {v5}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1000(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/volume/VolumeDialogController;->setActiveStream(I)V

    .line 397
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog$4;->val$row:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1000(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v4

    if-ne v4, v8, :cond_5

    .line 398
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog$4;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialog;->access$2200(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/volume/VolumeDialogController;->hasVibrator()Z

    move-result v0

    .line 399
    .local v0, "hasVibrator":Z
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog$4;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialog;->access$2300(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController$State;

    move-result-object v4

    iget v4, v4, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeInternal:I

    if-ne v4, v8, :cond_4

    .line 400
    if-eqz v0, :cond_1

    .line 401
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog$4;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialog;->access$2200(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/android/systemui/volume/VolumeDialogController;->setRingerMode(IZ)V

    .line 416
    .end local v0    # "hasVibrator":Z
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog$4;->val$row:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2602(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;J)J

    .line 417
    return-void

    .line 403
    .restart local v0    # "hasVibrator":Z
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog$4;->val$row:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2400(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v4

    iget v4, v4, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    if-nez v4, :cond_3

    .line 404
    .local v2, "wasZero":Z
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog$4;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialog;->access$2200(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/volume/VolumeDialog$4;->val$stream:I

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog$4;->val$row:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2500(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v3

    :cond_2
    invoke-virtual {v4, v5, v3}, Lcom/android/systemui/volume/VolumeDialogController;->setStreamVolume(II)V

    goto :goto_0

    .end local v2    # "wasZero":Z
    :cond_3
    move v2, v3

    .line 403
    goto :goto_1

    .line 407
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog$4;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialog;->access$2200(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;

    move-result-object v4

    invoke-virtual {v4, v8, v3}, Lcom/android/systemui/volume/VolumeDialogController;->setRingerMode(IZ)V

    .line 408
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog$4;->val$row:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2400(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v3

    iget v3, v3, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    if-nez v3, :cond_0

    .line 409
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog$4;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialog;->access$2200(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/volume/VolumeDialog$4;->val$stream:I

    invoke-virtual {v3, v4, v2}, Lcom/android/systemui/volume/VolumeDialogController;->setStreamVolume(II)V

    goto :goto_0

    .line 413
    .end local v0    # "hasVibrator":Z
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog$4;->val$row:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2400(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v4

    iget v4, v4, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    if-nez v4, :cond_7

    move v1, v2

    .line 414
    .local v1, "vmute":Z
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog$4;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialog;->access$2200(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/volume/VolumeDialog$4;->val$stream:I

    if-eqz v1, :cond_6

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog$4;->val$row:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2500(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v3

    :cond_6
    invoke-virtual {v4, v5, v3}, Lcom/android/systemui/volume/VolumeDialogController;->setStreamVolume(II)V

    goto :goto_0

    .end local v1    # "vmute":Z
    :cond_7
    move v1, v3

    .line 413
    goto :goto_2
.end method
