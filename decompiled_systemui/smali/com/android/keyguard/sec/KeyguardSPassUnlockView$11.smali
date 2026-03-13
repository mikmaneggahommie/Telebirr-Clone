.class Lcom/android/keyguard/sec/KeyguardSPassUnlockView$11;
.super Landroid/os/CountDownTimer;
.source "KeyguardSPassUnlockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;JJ)V
    .locals 0
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 920
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$11;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 936
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$11;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1400(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V

    .line 937
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$11;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$2102(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    .line 938
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$11;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1000(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$11;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1000(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 939
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$11;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1100(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$11;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1100(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->reset()V

    .line 940
    :cond_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1200()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$11;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1300(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1200()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 941
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$11;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$300(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;I)V

    .line 942
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$11;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->updateSPassButtonArea()V

    .line 944
    :cond_2
    return-void
.end method

.method public onTick(J)V
    .locals 7
    .param p1, "millisUntilFinished"    # J

    .prologue
    const/4 v4, 0x1

    .line 924
    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v0, v2

    .line 925
    .local v0, "secondsRemaining":I
    if-le v0, v4, :cond_1

    .line 926
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$11;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$2000(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 927
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$11;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$2000(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$11;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$000(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->kg_too_many_failed_attempts_countdown:I

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 932
    :cond_0
    :goto_0
    return-void

    .line 929
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$11;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$2000(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 930
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$11;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$2000(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$11;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$000(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->kg_too_many_failed_attempt_countdown:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
