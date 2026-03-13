.class public Lcom/android/keyguard/sec/KeyguardBackupPINView;
.super Lcom/android/keyguard/KeyguardPinBasedInputView;
.source "KeyguardBackupPINView.java"


# static fields
.field private static final LOCK_PATTERN_CLASS:Ljava/lang/String; = "com.android.settings.ChooseLockGeneric"

.field private static final LOCK_PATTERN_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field private static final MAX_LENGTH_ENTRY:I = 0x8

.field private static final TAG:Ljava/lang/String; = "KeyguardBackupPINView"


# instance fields
.field private final mAppearAnimationUtils:Lcom/android/keyguard/AppearAnimationUtils;

.field private mDivider:Landroid/view/View;

.field private mFailedTextTimer:Landroid/os/CountDownTimer;

.field private mIsUnlockSuccess:Z

.field private mKeyguardBouncerFrame:Landroid/view/ViewGroup;

.field private mPasswordTimeTick:I

.field protected mPendingLockCheck:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<***>;"
        }
    .end annotation
.end field

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRow0:Landroid/view/ViewGroup;

.field private mRow1:Landroid/view/ViewGroup;

.field private mRow2:Landroid/view/ViewGroup;

.field private mRow3:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/KeyguardBackupPINView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardPinBasedInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mPasswordTimeTick:I

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    .line 92
    new-instance v0, Lcom/android/keyguard/AppearAnimationUtils;

    invoke-direct {v0, p1}, Lcom/android/keyguard/AppearAnimationUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mAppearAnimationUtils:Lcom/android/keyguard/AppearAnimationUtils;

    .line 93
    const/16 v0, 0x8

    invoke-super {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->setMaxLength(I)V

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/KeyguardBackupPINView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardBackupPINView;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->enableClipping(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/KeyguardBackupPINView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardBackupPINView;

    .prologue
    .line 59
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mPasswordTimeTick:I

    return v0
.end method

.method static synthetic access$108(Lcom/android/keyguard/sec/KeyguardBackupPINView;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardBackupPINView;

    .prologue
    .line 59
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mPasswordTimeTick:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mPasswordTimeTick:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/KeyguardBackupPINView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardBackupPINView;

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->getPasswordText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/KeyguardBackupPINView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardBackupPINView;

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->isCountDownTimerRunning()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/KeyguardBackupPINView;Ljava/lang/CharSequence;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardBackupPINView;
    .param p1, "x1"    # Ljava/lang/CharSequence;
    .param p2, "x2"    # Z

    .prologue
    .line 59
    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->setHintOrMessageText(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/KeyguardBackupPINView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardBackupPINView;

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->getPasswordText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/KeyguardBackupPINView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardBackupPINView;

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->isCountDownTimerRunning()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/KeyguardBackupPINView;Ljava/lang/CharSequence;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardBackupPINView;
    .param p1, "x1"    # Ljava/lang/CharSequence;
    .param p2, "x2"    # Z

    .prologue
    .line 59
    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->setHintOrMessageText(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method private enableClipping(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mKeyguardBouncerFrame:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 199
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mKeyguardBouncerFrame:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 200
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mRow1:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mRow1:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mRow2:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mRow2:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mRow3:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 205
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mRow3:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 206
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->setClipChildren(Z)V

    .line 207
    return-void
.end method

.method private isCenteredMessageArea()Z
    .locals 1

    .prologue
    .line 349
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUSAFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isAmericanoLook()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getPasswordTextViewId()I
    .locals 1

    .prologue
    .line 112
    sget v0, Lcom/android/keyguard/R$id;->pinEntry:I

    return v0
.end method

.method public getWrongPasswordStringId()I
    .locals 1

    .prologue
    .line 154
    sget v0, Lcom/android/keyguard/R$string;->kg_wrong_pin:I

    return v0
.end method

.method protected handleAttemptLockout(J)V
    .locals 1
    .param p1, "elapsedRealtimeDeadline"    # J

    .prologue
    .line 106
    invoke-super {p0, p1, p2}, Lcom/android/keyguard/KeyguardPinBasedInputView;->handleAttemptLockout(J)V

    .line 107
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->setEnableKeyPad(Z)V

    .line 108
    return-void
.end method

.method public needsShowClockandNotifications()Z
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 335
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onDetachedFromWindow()V

    .line 336
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-nez v0, :cond_0

    .line 337
    const-string v0, "KeyguardBackupPINView"

    const-string v1, "mCallback is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mIsUnlockSuccess:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_1

    .line 340
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const/4 v1, 0x1

    const/4 v2, 0x5

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(ZI)V

    .line 342
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_2

    .line 343
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 344
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    .line 346
    :cond_2
    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 117
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onFinishInflate()V

    .line 119
    sget v2, Lcom/android/keyguard/R$id;->keyguard_bouncer_frame:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mKeyguardBouncerFrame:Landroid/view/ViewGroup;

    .line 120
    sget v2, Lcom/android/keyguard/R$id;->row0:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mRow0:Landroid/view/ViewGroup;

    .line 121
    sget v2, Lcom/android/keyguard/R$id;->row1:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mRow1:Landroid/view/ViewGroup;

    .line 122
    sget v2, Lcom/android/keyguard/R$id;->row2:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mRow2:Landroid/view/ViewGroup;

    .line 123
    sget v2, Lcom/android/keyguard/R$id;->row3:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mRow3:Landroid/view/ViewGroup;

    .line 124
    sget v2, Lcom/android/keyguard/R$id;->divider:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mDivider:Landroid/view/View;

    .line 127
    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mIsUnlockSuccess:Z

    .line 130
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->isHintMessageArea()Z

    move-result v2

    if-nez v2, :cond_0

    .line 131
    sget v2, Lcom/android/keyguard/R$id;->keyguard_message_area_backup_pin_usa:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 132
    .local v1, "messageAreaUSA":Landroid/view/View;
    sget v2, Lcom/android/keyguard/R$id;->keyguard_message_area_backup:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 133
    .local v0, "messageAreaECA":Landroid/view/View;
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->isCenteredMessageArea()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 134
    new-instance v2, Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {v2, v1}, Lcom/android/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 135
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 136
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 144
    .end local v0    # "messageAreaECA":Landroid/view/View;
    .end local v1    # "messageAreaUSA":Landroid/view/View;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mPowerManager:Landroid/os/PowerManager;

    .line 145
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v3, 0x1

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 146
    return-void

    .line 138
    .restart local v0    # "messageAreaECA":Landroid/view/View;
    .restart local v1    # "messageAreaUSA":Landroid/view/View;
    :cond_1
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 139
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onPasswordChecked(Ljava/lang/String;ZI)V
    .locals 13
    .param p1, "entry"    # Ljava/lang/String;
    .param p2, "matched"    # Z
    .param p3, "timeoutMs"    # I

    .prologue
    .line 231
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_3

    if-eqz p2, :cond_3

    .line 232
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->clearLockUniversal(Z)V

    .line 233
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    .line 234
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    .line 235
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setSmartUnlockEnabled(Z)V

    .line 237
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 238
    .local v11, "intent":Landroid/content/Intent;
    if-eqz v11, :cond_0

    .line 239
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.ChooseLockGeneric"

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    const/high16 v0, 0x10000000

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v11, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mIsUnlockSuccess:Z

    .line 251
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(ZI)V

    .line 252
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 255
    new-instance v7, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mContext:Landroid/content/Context;

    invoke-direct {v7, v0}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 257
    .local v7, "dem":Landroid/dirEncryption/DirEncryptionManager;
    invoke-virtual {v7}, Landroid/dirEncryption/DirEncryptionManager;->getCurrentUserID()I

    move-result v0

    if-nez v0, :cond_1

    .line 258
    invoke-virtual {v7, p1}, Landroid/dirEncryption/DirEncryptionManager;->setPassword(Ljava/lang/String;)I

    .line 260
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->isHintMessageArea()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 261
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->setNullHintMessage()V

    .line 330
    .end local v7    # "dem":Landroid/dirEncryption/DirEncryptionManager;
    .end local v11    # "intent":Landroid/content/Intent;
    :cond_2
    :goto_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->resetPasswordText(Z)V

    .line 331
    return-void

    .line 244
    .restart local v11    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v10

    .line 245
    .local v10, "e":Landroid/content/ActivityNotFoundException;
    const-string v0, "KeyguardBackupPINView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find the component "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 263
    .end local v10    # "e":Landroid/content/ActivityNotFoundException;
    .end local v11    # "intent":Landroid/content/Intent;
    :cond_3
    const/4 v6, 0x0

    .line 264
    .local v6, "attempts":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_9

    .line 265
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mEnableHaptics:Z

    if-eqz v0, :cond_4

    .line 266
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mVibraterService:Landroid/os/Vibrator;

    const v1, 0xc36b

    const/4 v2, -0x1

    const/4 v3, 0x0

    sget-object v4, Landroid/os/Vibrator$MagnitudeTypes;->TouchMagnitude:Landroid/os/Vibrator$MagnitudeTypes;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Vibrator;->vibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$MagnitudeTypes;)V

    .line 272
    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(ZI)V

    .line 273
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(IZ)I

    move-result v6

    .line 275
    rsub-int/lit8 v12, v6, 0xa

    .line 278
    .local v12, "remaining":I
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v0

    if-nez v0, :cond_8

    .line 279
    rem-int/lit8 v0, v6, 0x5

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v0, :cond_5

    if-eqz v12, :cond_6

    .line 281
    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(I)J

    move-result-wide v8

    .line 282
    .local v8, "deadline":J
    invoke-virtual {p0, v8, v9}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->handleAttemptLockout(J)V

    .line 284
    new-instance v11, Landroid/content/Intent;

    const-string v0, "android.intent.action.PATTERN_LOCK_FAIL"

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 285
    .restart local v11    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 296
    .end local v8    # "deadline":J
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v12    # "remaining":I
    :cond_6
    :goto_2
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-boolean v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->isCountDownTimerRunning()Z

    move-result v0

    if-nez v0, :cond_a

    .line 299
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->getWrongPasswordStringId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->setHintOrMessageText(IZ)V

    .line 300
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_7

    .line 301
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 302
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    .line 304
    :cond_7
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mPasswordTimeTick:I

    .line 305
    new-instance v0, Lcom/android/keyguard/sec/KeyguardBackupPINView$3;

    const-wide/16 v2, 0x1f40

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/sec/KeyguardBackupPINView$3;-><init>(Lcom/android/keyguard/sec/KeyguardBackupPINView;JJ)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    .line 324
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto/16 :goto_1

    .line 288
    .restart local v12    # "remaining":I
    :cond_8
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->disableDevicePermanently()V

    goto :goto_2

    .line 292
    .end local v12    # "remaining":I
    :cond_9
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(IZ)I

    move-result v6

    goto :goto_2

    .line 326
    :cond_a
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->getWrongPasswordStringId()I

    move-result v0

    invoke-virtual {p0, v0, v6}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->getFailedAttemptMessage(II)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->setHintOrMessageText(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_1
.end method

.method protected resetState()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 97
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetState()V

    .line 98
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSimpleHelpText()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$string;->kg_spass_backup_pin_introductions:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->setHintOrMessageText(Ljava/lang/CharSequence;ZI)V

    .line 101
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->setEnableKeyPad(Z)V

    .line 102
    return-void
.end method

.method public showUsabilityHint()V
    .locals 0

    .prologue
    .line 150
    return-void
.end method

.method public startAppearAnimation()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 159
    invoke-direct {p0, v5}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->enableClipping(Z)V

    .line 160
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mAppearAnimationUtils:Lcom/android/keyguard/AppearAnimationUtils;

    invoke-virtual {v0}, Lcom/android/keyguard/AppearAnimationUtils;->getStartTranslation()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->setTranslationY(F)V

    .line 161
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mAppearAnimationUtils:Lcom/android/keyguard/AppearAnimationUtils;

    invoke-virtual {v1}, Lcom/android/keyguard/AppearAnimationUtils;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 165
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mAppearAnimationUtils:Lcom/android/keyguard/AppearAnimationUtils;

    const/4 v1, 0x6

    new-array v1, v1, [[Landroid/view/View;

    new-array v2, v8, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mRow0:Landroid/view/ViewGroup;

    aput-object v3, v2, v5

    aput-object v9, v2, v6

    aput-object v9, v2, v7

    aput-object v2, v1, v5

    new-array v2, v8, [Landroid/view/View;

    sget v3, Lcom/android/keyguard/R$id;->key1:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v5

    sget v3, Lcom/android/keyguard/R$id;->key2:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v6

    sget v3, Lcom/android/keyguard/R$id;->key3:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object v2, v1, v6

    new-array v2, v8, [Landroid/view/View;

    sget v3, Lcom/android/keyguard/R$id;->key4:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v5

    sget v3, Lcom/android/keyguard/R$id;->key5:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v6

    sget v3, Lcom/android/keyguard/R$id;->key6:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object v2, v1, v7

    new-array v2, v8, [Landroid/view/View;

    sget v3, Lcom/android/keyguard/R$id;->key7:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v5

    sget v3, Lcom/android/keyguard/R$id;->key8:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v6

    sget v3, Lcom/android/keyguard/R$id;->key9:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object v2, v1, v8

    const/4 v2, 0x4

    new-array v3, v8, [Landroid/view/View;

    aput-object v9, v3, v5

    sget v4, Lcom/android/keyguard/R$id;->key0:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v3, v6

    sget v4, Lcom/android/keyguard/R$id;->key_enter:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v3, v7

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-array v3, v8, [Landroid/view/View;

    aput-object v9, v3, v5

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mEcaView:Landroid/view/View;

    aput-object v4, v3, v6

    aput-object v9, v3, v7

    aput-object v3, v1, v2

    new-instance v2, Lcom/android/keyguard/sec/KeyguardBackupPINView$1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/sec/KeyguardBackupPINView$1;-><init>(Lcom/android/keyguard/sec/KeyguardBackupPINView;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/AppearAnimationUtils;->startAnimation([[Landroid/view/View;Ljava/lang/Runnable;)V

    .line 190
    return-void
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 4

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->getPasswordText()Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "entry":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mPendingLockCheck:Landroid/os/AsyncTask;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 215
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    new-instance v3, Lcom/android/keyguard/sec/KeyguardBackupPINView$2;

    invoke-direct {v3, p0, v0}, Lcom/android/keyguard/sec/KeyguardBackupPINView$2;-><init>(Lcom/android/keyguard/sec/KeyguardBackupPINView;Ljava/lang/String;)V

    invoke-static {v1, v0, v2, v3}, Lcom/android/internal/widget/LockPatternChecker;->checkBackupPin(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 226
    return-void
.end method
