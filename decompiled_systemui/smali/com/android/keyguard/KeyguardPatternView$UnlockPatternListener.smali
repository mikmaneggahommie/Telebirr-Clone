.class Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;
.super Ljava/lang/Object;
.source "KeyguardPatternView.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternView$OnPatternListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnlockPatternListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardPatternView;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/KeyguardPatternView;)V
    .locals 0

    .prologue
    .line 506
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/KeyguardPatternView;Lcom/android/keyguard/KeyguardPatternView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/keyguard/KeyguardPatternView;
    .param p2, "x1"    # Lcom/android/keyguard/KeyguardPatternView$1;

    .prologue
    .line 506
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;-><init>(Lcom/android/keyguard/KeyguardPatternView;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;Ljava/util/List;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I

    .prologue
    .line 506
    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->onPatternChecked(Ljava/util/List;ZI)V

    return-void
.end method

.method private onPatternChecked(Ljava/util/List;ZI)V
    .locals 12
    .param p2, "matched"    # Z
    .param p3, "timeoutMs"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;ZI)V"
        }
    .end annotation

    .prologue
    .line 549
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    if-eqz p2, :cond_1

    .line 550
    iget-object v7, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardPatternView;->access$500(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(ZI)V

    .line 551
    iget-object v7, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardPatternView;->access$000(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/sec/SecLockPatternView;

    move-result-object v7

    sget-object v8, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v7, v8}, Lcom/android/keyguard/sec/SecLockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 552
    iget-object v7, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardPatternView;->access$500(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 554
    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    if-eqz p2, :cond_0

    .line 555
    new-instance v1, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardPatternView;->access$1100(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 556
    .local v1, "dem":Landroid/dirEncryption/DirEncryptionManager;
    invoke-virtual {v1}, Landroid/dirEncryption/DirEncryptionManager;->getCurrentUserID()I

    move-result v7

    if-nez v7, :cond_0

    .line 557
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    .line 558
    .local v6, "stringPattern":Ljava/lang/String;
    invoke-virtual {v1, v6}, Landroid/dirEncryption/DirEncryptionManager;->setPassword(Ljava/lang/String;)I

    .line 594
    .end local v1    # "dem":Landroid/dirEncryption/DirEncryptionManager;
    .end local v6    # "stringPattern":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 563
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x2

    if-le v7, v8, :cond_2

    .line 564
    iget-object v7, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardPatternView;->access$500(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 566
    :cond_2
    iget-object v7, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardPatternView;->access$000(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/sec/SecLockPatternView;

    move-result-object v7

    sget-object v8, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v7, v8}, Lcom/android/keyguard/sec/SecLockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 567
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x4

    if-lt v7, v8, :cond_6

    const/4 v4, 0x1

    .line 569
    .local v4, "registeredAttempt":Z
    :goto_1
    if-eqz v4, :cond_3

    .line 570
    iget-object v7, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardPatternView;->access$500(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v8, p3}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(ZI)V

    .line 572
    :cond_3
    iget-object v7, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardPatternView;->access$1200(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v0

    .line 573
    .local v0, "attempts":I
    rsub-int/lit8 v5, v0, 0x5

    .line 574
    .local v5, "remaining":I
    iget-object v7, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardPatternView;->access$1300(Lcom/android/keyguard/KeyguardPatternView;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 575
    iget-object v7, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardPatternView;->access$1400(Lcom/android/keyguard/KeyguardPatternView;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 576
    iget-object v7, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardPatternView;->access$1500(Lcom/android/keyguard/KeyguardPatternView;)Landroid/os/Vibrator;

    move-result-object v7

    const v8, 0xc36b

    const/4 v9, -0x1

    const/4 v10, 0x0

    sget-object v11, Landroid/os/Vibrator$MagnitudeTypes;->TouchMagnitude:Landroid/os/Vibrator$MagnitudeTypes;

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/os/Vibrator;->vibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$MagnitudeTypes;)V

    .line 579
    :cond_4
    sget-boolean v7, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v7, :cond_5

    if-eqz v5, :cond_7

    :cond_5
    if-eqz v4, :cond_7

    rem-int/lit8 v7, v0, 0x5

    if-nez v7, :cond_7

    .line 582
    iget-object v7, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardPatternView;->access$900(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v7

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(I)J

    move-result-wide v2

    .line 584
    .local v2, "deadline":J
    iget-object v7, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v7, v2, v3}, Lcom/android/keyguard/KeyguardPatternView;->access$1600(Lcom/android/keyguard/KeyguardPatternView;J)V

    .line 585
    iget-object v7, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardPatternView;->reset()V

    goto :goto_0

    .line 567
    .end local v0    # "attempts":I
    .end local v2    # "deadline":J
    .end local v4    # "registeredAttempt":Z
    .end local v5    # "remaining":I
    :cond_6
    const/4 v4, 0x0

    goto :goto_1

    .line 587
    .restart local v0    # "attempts":I
    .restart local v4    # "registeredAttempt":Z
    .restart local v5    # "remaining":I
    :cond_7
    iget-object v7, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    iget-object v8, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-virtual {v8, v0}, Lcom/android/keyguard/KeyguardPatternView;->getFailedAttemptMessage(I)Ljava/lang/CharSequence;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/android/keyguard/KeyguardPatternView;->setHintOrMessageText(Ljava/lang/CharSequence;Z)V

    .line 588
    iget-object v7, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardPatternView;->access$000(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/sec/SecLockPatternView;

    move-result-object v7

    iget-object v8, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v8}, Lcom/android/keyguard/KeyguardPatternView;->access$600(Lcom/android/keyguard/KeyguardPatternView;)Ljava/lang/Runnable;

    move-result-object v8

    const-wide/16 v10, 0x7d0

    invoke-virtual {v7, v8, v10, v11}, Lcom/android/keyguard/sec/SecLockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 591
    :cond_8
    iget-object v7, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardPatternView;->access$1700(Lcom/android/keyguard/KeyguardPatternView;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onPatternCellAdded(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 518
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$500(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 519
    return-void
.end method

.method public onPatternCleared()V
    .locals 0

    .prologue
    .line 515
    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v2, 0x0

    .line 522
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$000(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/sec/SecLockPatternView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/SecLockPatternView;->disableInput()V

    .line 523
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$800(Lcom/android/keyguard/KeyguardPatternView;)Landroid/os/AsyncTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$800(Lcom/android/keyguard/KeyguardPatternView;)Landroid/os/AsyncTask;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 527
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 528
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$000(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/sec/SecLockPatternView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/SecLockPatternView;->enableInput()V

    .line 529
    invoke-direct {p0, p1, v2, v2}, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->onPatternChecked(Ljava/util/List;ZI)V

    .line 545
    :goto_0
    return-void

    .line 533
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardPatternView;->access$900(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    new-instance v3, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener$1;

    invoke-direct {v3, p0, p1}, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener$1;-><init>(Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;Ljava/util/List;)V

    invoke-static {v1, p1, v2, v3}, Lcom/android/internal/widget/LockPatternChecker;->checkPattern(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardPatternView;->access$802(Lcom/android/keyguard/KeyguardPatternView;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onPatternStart()V
    .locals 2

    .prologue
    .line 509
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$000(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/sec/SecLockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardPatternView;->access$600(Lcom/android/keyguard/KeyguardPatternView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecLockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 510
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardPatternView;->access$700(Lcom/android/keyguard/KeyguardPatternView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardPatternView;->access$700(Lcom/android/keyguard/KeyguardPatternView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 512
    :cond_0
    return-void
.end method
