.class Lcom/android/systemui/volume/SecVolumeDialog$4;
.super Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;
.source "SecVolumeDialog.java"


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
    .line 509
    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog$4;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/sdk/cover/ScoverState;)V
    .locals 3
    .param p1, "state"    # Lcom/samsung/android/sdk/cover/ScoverState;

    .prologue
    const/4 v2, 0x4

    .line 511
    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 513
    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialog;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialog;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCoverStateChanged : isCoverOpen = true, cover is opened"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$4;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-virtual {v0, v2}, Lcom/android/systemui/volume/SecVolumeDialog;->dismissH(I)V

    .line 516
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$4;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->access$500(Lcom/android/systemui/volume/SecVolumeDialog;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 517
    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialog;->access$200()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialog;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCoverStateChanged: remove warning popup on the s view cover"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$4;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog;->access$1000(Lcom/android/systemui/volume/SecVolumeDialog;Z)V

    .line 524
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$4;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->access$1100(Lcom/android/systemui/volume/SecVolumeDialog;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 525
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$4;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->access$1200(Lcom/android/systemui/volume/SecVolumeDialog;)V

    .line 543
    :cond_3
    :goto_0
    return-void

    .line 529
    :cond_4
    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialog;->access$200()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialog;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCoverOpenStateChanged : isCoverOpen = false, cover is closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$4;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-virtual {v0, v2}, Lcom/android/systemui/volume/SecVolumeDialog;->dismissH(I)V

    .line 536
    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialog;->access$200()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialog;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCoverStateChanged : call onDismissSafeVolumeWarning()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$4;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->onDismissSafeVolumeWarning()V

    goto :goto_0
.end method
