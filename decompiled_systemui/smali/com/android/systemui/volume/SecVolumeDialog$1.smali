.class Lcom/android/systemui/volume/SecVolumeDialog$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
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
    .line 236
    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog$1;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishedGoingToSleep(I)V
    .locals 2
    .param p1, "why"    # I

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$1;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->access$100(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SafetyWarningDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$1;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->access$100(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SafetyWarningDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/volume/SafetyWarningDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialog;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialog;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mCoverBroadcastReceiver :  call mSafetyWarning.dismiss()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$1;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->access$100(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SafetyWarningDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/volume/SafetyWarningDialog;->dismiss()V

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$1;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->access$400(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$1;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->access$400(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 245
    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialog;->access$200()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialog;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mCoverBroadcastReceiver :  call mDialog.dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$1;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->access$400(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->dismiss()V

    .line 248
    :cond_3
    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialog;->access$200()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialog;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mCoverBroadcastReceiver : call onDismissSafeVolumeWarning()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$1;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->onDismissSafeVolumeWarning()V

    .line 250
    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialog;->access$200()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialog;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mCoverBroadcastReceiver: Screen OFF end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_5
    return-void
.end method
