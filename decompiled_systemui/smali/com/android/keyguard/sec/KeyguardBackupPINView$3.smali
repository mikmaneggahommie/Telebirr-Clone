.class Lcom/android/keyguard/sec/KeyguardBackupPINView$3;
.super Landroid/os/CountDownTimer;
.source "KeyguardBackupPINView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardBackupPINView;->onPasswordChecked(Ljava/lang/String;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardBackupPINView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardBackupPINView;JJ)V
    .locals 0
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 305
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView$3;->this$0:Lcom/android/keyguard/sec/KeyguardBackupPINView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView$3;->this$0:Lcom/android/keyguard/sec/KeyguardBackupPINView;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->access$500(Lcom/android/keyguard/sec/KeyguardBackupPINView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView$3;->this$0:Lcom/android/keyguard/sec/KeyguardBackupPINView;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->access$600(Lcom/android/keyguard/sec/KeyguardBackupPINView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView$3;->this$0:Lcom/android/keyguard/sec/KeyguardBackupPINView;

    const-string v1, ""

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->access$700(Lcom/android/keyguard/sec/KeyguardBackupPINView;Ljava/lang/CharSequence;Z)V

    .line 322
    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 3
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView$3;->this$0:Lcom/android/keyguard/sec/KeyguardBackupPINView;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->access$108(Lcom/android/keyguard/sec/KeyguardBackupPINView;)I

    .line 309
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView$3;->this$0:Lcom/android/keyguard/sec/KeyguardBackupPINView;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->access$100(Lcom/android/keyguard/sec/KeyguardBackupPINView;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView$3;->this$0:Lcom/android/keyguard/sec/KeyguardBackupPINView;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->access$200(Lcom/android/keyguard/sec/KeyguardBackupPINView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView$3;->this$0:Lcom/android/keyguard/sec/KeyguardBackupPINView;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->access$300(Lcom/android/keyguard/sec/KeyguardBackupPINView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView$3;->this$0:Lcom/android/keyguard/sec/KeyguardBackupPINView;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView$3;->this$0:Lcom/android/keyguard/sec/KeyguardBackupPINView;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->getFailedAutoWipeAttemptMessage()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->access$400(Lcom/android/keyguard/sec/KeyguardBackupPINView;Ljava/lang/CharSequence;Z)V

    .line 314
    :cond_0
    return-void
.end method
