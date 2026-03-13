.class Lcom/android/keyguard/sec/KeyguardSPassUnlockView$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardSPassUnlockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/KeyguardSPassUnlockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$1;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onEmergencyCallAction()V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$1;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEMAPress:Z

    .line 193
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 3
    .param p1, "phoneState"    # I

    .prologue
    .line 159
    const-string v0, "KeyguardSPassUnlockView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPhoneStateChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return-void
.end method

.method public onStartedWakingUp()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 176
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTProject()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 177
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$1;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$000(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v0

    .line 178
    .local v0, "phoneState":I
    if-nez v0, :cond_1

    .line 179
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$1;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$000(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$layout;->sec_spass_guide_popup:I

    const-string v3, "KeyguardSPassPopupGuideInt"

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$1;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$100(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Lcom/android/keyguard/sec/SecPopupManager$PopupDismissCallback;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/keyguard/sec/SecPopupManager;->showPopupDialog(Landroid/content/Context;ILjava/lang/String;Lcom/android/keyguard/sec/SecPopupManager$PopupDismissCallback;)Z

    move-result v1

    if-ne v1, v5, :cond_1

    .line 181
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$1;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$200(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 182
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$1;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$200(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 184
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$1;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    invoke-static {v1, v5}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$300(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;I)V

    .line 188
    .end local v0    # "phoneState":I
    :cond_1
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 171
    const-string v0, "KeyguardSPassUnlockView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUserSwitchComplete("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return-void
.end method

.method public onUserSwitching(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 164
    const-string v0, "KeyguardSPassUnlockView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUserSwitched("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return-void
.end method
