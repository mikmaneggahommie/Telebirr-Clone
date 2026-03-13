.class Lcom/android/systemui/volume/SecVolumeDialog$3;
.super Ljava/lang/Object;
.source "SecVolumeDialog.java"

# interfaces
.implements Lcom/android/systemui/volume/VolumeDialogMotion$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/SecVolumeDialog;-><init>(Landroid/content/Context;ILcom/android/systemui/volume/VolumeDialogController;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/volume/SecVolumeDialog$Callback;)V
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
    .line 419
    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog$3;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimatingChanged(Z)V
    .locals 3
    .param p1, "animating"    # Z

    .prologue
    const/4 v2, 0x0

    .line 422
    if-eqz p1, :cond_1

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 423
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$3;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->access$700(Lcom/android/systemui/volume/SecVolumeDialog;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 424
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$3;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->access$800(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SecVolumeDialog$H;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog$H;->sendEmptyMessage(I)Z

    .line 425
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$3;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0, v2}, Lcom/android/systemui/volume/SecVolumeDialog;->access$702(Lcom/android/systemui/volume/SecVolumeDialog;Z)Z

    .line 427
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$3;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->access$900(Lcom/android/systemui/volume/SecVolumeDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$3;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->access$800(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SecVolumeDialog$H;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog$H;->sendEmptyMessage(I)Z

    .line 429
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$3;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0, v2}, Lcom/android/systemui/volume/SecVolumeDialog;->access$902(Lcom/android/systemui/volume/SecVolumeDialog;Z)Z

    goto :goto_0
.end method
