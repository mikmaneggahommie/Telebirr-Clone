.class public Lcom/android/keyguard/KeyguardSecurityContainer;
.super Landroid/widget/FrameLayout;
.source "KeyguardSecurityContainer.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardSecurityContainer$3;,
        Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field public static final FAILED_ATTEMPTS_BEFORE_WIPE_GRACE:I = 0x5

.field public static final FAILED_ATTEMPTS_BEFORE_WIPE_VZW:I = 0xa

.field public static final FAILED_ATTEMPT_TIMEOUT_MS:J = 0x7530L

.field private static final TAG:Ljava/lang/String; = "KeyguardSecurityView"

.field private static final USER_TYPE_PRIMARY:I = 0x1

.field private static final USER_TYPE_SECONDARY_USER:I = 0x3

.field private static final USER_TYPE_WORK_PROFILE:I = 0x2

.field public static mEnableFallback:Z

.field public static mIsAutoWipe:Z


# instance fields
.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field private mDialogTheme:I

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field protected mFailedAttempts:I

.field private mIsVerifyUnlockOnly:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNullCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mPm:Landroid/os/PersonaManager;

.field private mSecAttributionInfoView:Lcom/android/keyguard/sec/SecAttributionInfoView;

.field private mSecMontblancLogoView:Lcom/android/keyguard/sec/SecMontblancLogoView;

.field private mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

.field private mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

.field private mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

.field private final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 86
    sput-boolean v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    .line 87
    sput-boolean v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mEnableFallback:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 121
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Invalid:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 83
    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecAttributionInfoView:Lcom/android/keyguard/sec/SecAttributionInfoView;

    .line 97
    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mPm:Landroid/os/PersonaManager;

    .line 873
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityContainer$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSecurityContainer$1;-><init>(Lcom/android/keyguard/KeyguardSecurityContainer;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 938
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityContainer$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSecurityContainer$2;-><init>(Lcom/android/keyguard/KeyguardSecurityContainer;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mNullCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 122
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-direct {v0, p1}, Lcom/android/keyguard/KeyguardSecurityModel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    .line 123
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 124
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 125
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mDialogTheme:I

    .line 126
    new-instance v0, Lcom/android/keyguard/sec/SecMontblancLogoView;

    invoke-direct {v0, p1}, Lcom/android/keyguard/sec/SecMontblancLogoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecMontblancLogoView:Lcom/android/keyguard/sec/SecMontblancLogoView;

    .line 128
    const-string v0, "persona"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mPm:Landroid/os/PersonaManager;

    .line 130
    const-string v0, "enterprise_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 131
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSecurityContainer;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardSecurityContainer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSecurityContainer;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsVerifyUnlockOnly:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardSecurityContainer;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSecurityContainer;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSecurityContainer;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSecurityContainer;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardSecurityContainer;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSecurityContainer;
    .param p1, "x1"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->reportFailedUnlockAttempt(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardSecurityContainer;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSecurityContainer;
    .param p1, "x1"    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showBackupSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/keyguard/KeyguardSecurityContainer;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSecurityContainer;
    .param p1, "x1"    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    return-void
.end method

.method private addMontblancLogoViewIfNecessary()V
    .locals 4

    .prologue
    .line 247
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecMontblancLogoView:Lcom/android/keyguard/sec/SecMontblancLogoView;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/keyguard/sec/SecMontblancLogoView;->isMontblancCoverAndWallpaper(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 252
    :goto_0
    return-void

    .line 248
    :cond_0
    const-string v2, "KeyguardSecurityView"

    const-string v3, "addMontblancLogoViewIfNecessary"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 250
    .local v0, "inflator":Landroid/view/LayoutInflater;
    sget v2, Lcom/android/keyguard/R$layout;->sec_montblanc_logo_view:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 251
    .local v1, "montblancLogoView":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private checkSecurityPolicy()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1190
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v10, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1191
    const-string v7, "KeyguardSecurityView"

    const-string v8, "checkSecurityPolicy : not Secure lockscreen or SIM Lockscreen!!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    :goto_0
    return-void

    .line 1197
    :cond_0
    const/4 v0, 0x0

    .line 1198
    .local v0, "failedAttempts":I
    const/4 v2, 0x0

    .line 1199
    .local v2, "isITPolicyEnabled":Z
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v9}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v5

    .line 1200
    .local v5, "securityMode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    .line 1201
    .local v3, "monitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v6

    .line 1202
    .local v6, "userId":I
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v6}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v1

    .line 1210
    .local v1, "failedAttemptsBeforeWipe":I
    if-lez v1, :cond_5

    sget-object v9, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v5, v9, :cond_1

    sget-object v9, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v5, v9, :cond_1

    sget-object v9, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->UniversalLock:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v5, v9, :cond_1

    sget-object v9, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v5, v9, :cond_1

    sget-object v9, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SmartcardPIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v5, v9, :cond_1

    sget-object v9, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SPassPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v5, v9, :cond_5

    .line 1217
    :cond_1
    const/4 v2, 0x1

    .line 1218
    sput-boolean v8, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    .line 1230
    :goto_1
    const-string v7, "KeyguardSecurityView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkSecurityPolicy : AUTO_WIPE = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , IT Policy = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    if-nez v2, :cond_2

    sget-boolean v7, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v7, :cond_9

    .line 1234
    :cond_2
    invoke-virtual {v3, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttemptswithITPolicy(I)I

    move-result v0

    .line 1236
    const-string v7, "KeyguardSecurityView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkSecurityPolicy( failedAttempts : #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    sget-boolean v7, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v7, :cond_3

    if-gtz v1, :cond_3

    .line 1239
    const/16 v1, 0xa

    .line 1242
    :cond_3
    if-lez v1, :cond_8

    sub-int v4, v1, v0

    .line 1247
    .local v4, "remainingBeforeWipe":I
    :goto_2
    if-gtz v4, :cond_4

    .line 1249
    const-string v7, "KeyguardSecurityView"

    const-string v8, "Too many unlock attempts; device will be wiped!"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/keyguard/sec/KeyguardReset;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardReset;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/android/keyguard/sec/KeyguardReset;->wipeOut(I)V

    .line 1255
    .end local v4    # "remainingBeforeWipe":I
    :cond_4
    :goto_3
    iput v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mFailedAttempts:I

    goto/16 :goto_0

    .line 1220
    :cond_5
    const/4 v2, 0x0

    .line 1221
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isAutoWipeFeature()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1222
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "auto_swipe_main_user"

    invoke-static {v9, v10, v8, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    if-ne v9, v7, :cond_6

    :goto_4
    sput-boolean v7, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    goto/16 :goto_1

    :cond_6
    move v7, v8

    goto :goto_4

    .line 1225
    :cond_7
    sput-boolean v8, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    goto/16 :goto_1

    .line 1242
    :cond_8
    const v4, 0x7fffffff

    goto :goto_2

    .line 1253
    :cond_9
    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v0

    goto :goto_3
.end method

.method private getFlipper()Lcom/android/keyguard/KeyguardSecurityViewFlipper;
    .locals 3

    .prologue
    .line 864
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 865
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 866
    .local v0, "child":Landroid/view/View;
    instance-of v2, v0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    if-eqz v2, :cond_0

    .line 867
    check-cast v0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    .line 870
    .end local v0    # "child":Landroid/view/View;
    :goto_1
    return-object v0

    .line 864
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 870
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getLayoutIdFor(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)I
    .locals 3
    .param p1, "securityMode"    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .prologue
    const/4 v2, 0x1

    .line 999
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityContainer$3;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1039
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1001
    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isDcmLauncher(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1002
    sget v0, Lcom/android/keyguard/R$layout;->dcm_keyguard_unlock_view:I

    goto :goto_0

    .line 1004
    :cond_0
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_unlock_view:I

    goto :goto_0

    .line 1008
    :pswitch_2
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_universal_lock_view:I

    goto :goto_0

    .line 1011
    :pswitch_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isOneHandOperationEnabled(Landroid/content/Context;)Z

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1012
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_pattern_view_onehand:I

    goto :goto_0

    .line 1014
    :cond_1
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_pattern_view:I

    goto :goto_0

    .line 1016
    :pswitch_4
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isOneHandOperationEnabled(Landroid/content/Context;)Z

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1017
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_pin_view_onehand:I

    goto :goto_0

    .line 1019
    :cond_2
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_pin_view:I

    goto :goto_0

    .line 1020
    :pswitch_5
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_password_view:I

    goto :goto_0

    .line 1022
    :pswitch_6
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_spass_unlock_view:I

    goto :goto_0

    .line 1023
    :pswitch_7
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_spass_password_view:I

    goto :goto_0

    .line 1024
    :pswitch_8
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_sim_pin_view:I

    goto :goto_0

    .line 1025
    :pswitch_9
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_sim_puk_view:I

    goto :goto_0

    .line 1026
    :pswitch_a
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_sim_perso_view:I

    goto :goto_0

    .line 1028
    :pswitch_b
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isOneHandOperationEnabled(Landroid/content/Context;)Z

    move-result v0

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1029
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_backup_pin_view_onehand:I

    goto :goto_0

    .line 1031
    :cond_3
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_backup_pin_view:I

    goto :goto_0

    .line 1032
    :pswitch_c
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_account_view:I

    goto :goto_0

    .line 1033
    :pswitch_d
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_recovery_view:I

    goto :goto_0

    .line 1034
    :pswitch_e
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_fmm_unlock_view:I

    goto :goto_0

    .line 1035
    :pswitch_f
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_smartcardpin_view:I

    goto :goto_0

    .line 1036
    :pswitch_10
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_carrierlockplus_unlock_view:I

    goto :goto_0

    .line 1037
    :pswitch_11
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_carrierlock_password_view:I

    goto/16 :goto_0

    .line 999
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_b
        :pswitch_5
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_c
        :pswitch_8
        :pswitch_9
        :pswitch_10
        :pswitch_11
        :pswitch_d
        :pswitch_a
    .end packed-switch
.end method

.method private getSecurityModeInSignature()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 4

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1050
    const-string v0, "KeyguardSecurityView"

    const-string v1, "Signature lock mode, but failed to unlock within fallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityModel;->getSignatureBackupSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 1054
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Signature:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_0
.end method

.method private getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;
    .locals 10
    .param p1, "securityMode"    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityViewIdForMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)I

    move-result v4

    .line 186
    .local v4, "securityViewIdForMode":I
    const/4 v6, 0x0

    .line 187
    .local v6, "view":Lcom/android/keyguard/KeyguardSecurityView;
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildCount()I

    move-result v1

    .line 188
    .local v1, "children":I
    const/4 v0, 0x0

    .local v0, "child":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 189
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v7, v0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v7

    if-ne v7, v4, :cond_2

    .line 190
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v7, v0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .end local v6    # "view":Lcom/android/keyguard/KeyguardSecurityView;
    check-cast v6, Lcom/android/keyguard/KeyguardSecurityView;

    .line 194
    .restart local v6    # "view":Lcom/android/keyguard/KeyguardSecurityView;
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->getLayoutIdFor(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)I

    move-result v3

    .line 195
    .local v3, "layoutId":I
    if-nez v6, :cond_1

    if-eqz v3, :cond_1

    .line 196
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 197
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const-string v7, "KeyguardSecurityView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "inflating id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    const/4 v8, 0x0

    invoke-virtual {v2, v3, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 199
    .local v5, "v":Landroid/view/View;
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v7, v5}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->addView(Landroid/view/View;)V

    .line 200
    invoke-direct {p0, v5}, Lcom/android/keyguard/KeyguardSecurityContainer;->updateSecurityView(Landroid/view/View;)V

    move-object v6, v5

    .line 201
    check-cast v6, Lcom/android/keyguard/KeyguardSecurityView;

    .line 204
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    .end local v5    # "v":Landroid/view/View;
    :cond_1
    return-object v6

    .line 188
    .end local v3    # "layoutId":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getSecurityViewIdForMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)I
    .locals 3
    .param p1, "securityMode"    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .prologue
    const/4 v2, 0x1

    .line 963
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityContainer$3;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 995
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 964
    :pswitch_1
    sget v0, Lcom/android/keyguard/R$id;->keyguard_unlock_view:I

    goto :goto_0

    .line 965
    :pswitch_2
    sget v0, Lcom/android/keyguard/R$id;->keyguard_direction_view:I

    goto :goto_0

    .line 967
    :pswitch_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isOneHandOperationEnabled(Landroid/content/Context;)Z

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 968
    sget v0, Lcom/android/keyguard/R$id;->keyguard_pattern_view_onehand:I

    goto :goto_0

    .line 970
    :cond_0
    sget v0, Lcom/android/keyguard/R$id;->keyguard_pattern_view:I

    goto :goto_0

    .line 972
    :pswitch_4
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isOneHandOperationEnabled(Landroid/content/Context;)Z

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 973
    sget v0, Lcom/android/keyguard/R$id;->keyguard_pin_view_onehand:I

    goto :goto_0

    .line 975
    :cond_1
    sget v0, Lcom/android/keyguard/R$id;->keyguard_pin_view:I

    goto :goto_0

    .line 976
    :pswitch_5
    sget v0, Lcom/android/keyguard/R$id;->keyguard_password_view:I

    goto :goto_0

    .line 978
    :pswitch_6
    sget v0, Lcom/android/keyguard/R$id;->keyguard_spass_unlock_view:I

    goto :goto_0

    .line 979
    :pswitch_7
    sget v0, Lcom/android/keyguard/R$id;->keyguard_spass_password_view:I

    goto :goto_0

    .line 980
    :pswitch_8
    sget v0, Lcom/android/keyguard/R$id;->keyguard_sim_pin_view:I

    goto :goto_0

    .line 981
    :pswitch_9
    sget v0, Lcom/android/keyguard/R$id;->keyguard_sim_puk_view:I

    goto :goto_0

    .line 982
    :pswitch_a
    sget v0, Lcom/android/keyguard/R$id;->keyguard_sim_perso_view:I

    goto :goto_0

    .line 984
    :pswitch_b
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isOneHandOperationEnabled(Landroid/content/Context;)Z

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 985
    sget v0, Lcom/android/keyguard/R$id;->keyguard_backup_pin_view_onehand:I

    goto :goto_0

    .line 987
    :cond_2
    sget v0, Lcom/android/keyguard/R$id;->keyguard_backup_pin_view:I

    goto :goto_0

    .line 988
    :pswitch_c
    sget v0, Lcom/android/keyguard/R$id;->keyguard_account_view:I

    goto :goto_0

    .line 989
    :pswitch_d
    sget v0, Lcom/android/keyguard/R$id;->keyguard_recovery_view:I

    goto :goto_0

    .line 990
    :pswitch_e
    sget v0, Lcom/android/keyguard/R$id;->keyguard_fmm_unlock_view:I

    goto :goto_0

    .line 991
    :pswitch_f
    sget v0, Lcom/android/keyguard/R$id;->keyguard_smartcardpin_view:I

    goto :goto_0

    .line 992
    :pswitch_10
    sget v0, Lcom/android/keyguard/R$id;->keyguard_carrierlockplus_unlock_view:I

    goto :goto_0

    .line 993
    :pswitch_11
    sget v0, Lcom/android/keyguard/R$id;->keyguard_carrierlock_password_view:I

    goto :goto_0

    .line 963
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_b
        :pswitch_5
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_c
        :pswitch_8
        :pswitch_9
        :pswitch_10
        :pswitch_11
        :pswitch_d
        :pswitch_a
    .end packed-switch
.end method

.method private isDeviceDisabledForMaxFailedAttempt()Z
    .locals 4

    .prologue
    .line 693
    const/4 v1, 0x0

    .line 694
    .local v1, "isDeviceDisableForMaxFailedAttempt":Z
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v3, :cond_0

    .line 695
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/enterprise/PasswordPolicy;->getMaximumFailedPasswordsForDeviceDisable()I

    move-result v2

    .line 696
    .local v2, "maxNumFailedAttemptForDisable":I
    if-lez v2, :cond_0

    .line 697
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getCurrentFailedPasswordAttempts()I

    move-result v0

    .line 698
    .local v0, "curNumFailedAttempts":I
    if-lt v0, v2, :cond_1

    const/4 v1, 0x1

    .line 701
    .end local v0    # "curNumFailedAttempts":I
    .end local v2    # "maxNumFailedAttemptForDisable":I
    :cond_0
    :goto_0
    return v1

    .line 698
    .restart local v0    # "curNumFailedAttempts":I
    .restart local v2    # "maxNumFailedAttemptForDisable":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private reportFailedUnlockAttempt(I)V
    .locals 22
    .param p1, "timeoutMs"    # I

    .prologue
    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v12

    .line 494
    .local v12, "monitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    const/4 v7, 0x0

    .line 496
    .local v7, "failedAttempts":I
    const-string v19, "KeyguardSecurityView"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "reportFailedPatternAttempt: #"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v11

    .line 499
    .local v11, "mode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    .line 500
    .local v2, "currentUser":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v3

    .line 501
    .local v3, "dpm":Landroid/app/admin/DevicePolicyManager;
    sget-object v19, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-object/from16 v0, v19

    if-eq v11, v0, :cond_0

    sget-object v19, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->UniversalLock:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-object/from16 v0, v19

    if-ne v11, v0, :cond_e

    :cond_0
    const/16 v17, 0x1

    .line 502
    .local v17, "usingPattern":Z
    :goto_0
    sget-object v19, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SPass:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-object/from16 v0, v19

    if-eq v11, v0, :cond_1

    sget-object v19, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SPassPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-object/from16 v0, v19

    if-ne v11, v0, :cond_f

    :cond_1
    const/16 v18, 0x1

    .line 504
    .local v18, "usingSPass":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SPass:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_10

    const/4 v10, 0x1

    .line 505
    .local v10, "isSelectedSPass":Z
    :goto_2
    if-nez v10, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->UniversalLock:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_11

    :cond_2
    const/4 v4, 0x1

    .line 507
    .local v4, "exceptAutowipe":Z
    :goto_3
    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v3, v0, v2}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v8

    .line 508
    .local v8, "failedAttemptsBeforeWipe":I
    if-lez v8, :cond_12

    const/4 v9, 0x1

    .line 509
    .local v9, "isITPolicyEnabled":Z
    :goto_4
    if-eqz v9, :cond_14

    .line 510
    const/16 v19, 0x0

    sput-boolean v19, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    .line 511
    if-eqz v10, :cond_13

    .line 514
    invoke-virtual {v12}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v19

    add-int/lit8 v7, v19, 0x1

    .line 515
    const/4 v8, 0x0

    .line 529
    :goto_5
    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mFailedAttempts:I

    .line 530
    sget-boolean v19, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v19, :cond_3

    if-nez v4, :cond_3

    if-gtz v8, :cond_3

    .line 531
    const/16 v8, 0xa

    .line 534
    :cond_3
    const/16 v6, 0xf

    .line 537
    .local v6, "failedAttemptWarning":I
    if-lez v8, :cond_17

    sub-int v13, v8, v7

    .line 541
    .local v13, "remainingBeforeWipe":I
    :goto_6
    const-string v19, "KeyguardSecurityView"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "reportFailedUnlockAttempt( mIsAutoWipe = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-boolean v21, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " , IT Policy = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " )"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    const-string v19, "KeyguardSecurityView"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "reportFailedUnlockAttempt( failedAttempts: # "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " , failedAttemptsBeforeWipe: #"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", remainingBeforeWipe = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " mode = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    const/4 v15, 0x0

    .line 549
    .local v15, "showTimeout":Z
    sget-boolean v14, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    .line 550
    .local v14, "showAutowipeDialog":Z
    const/16 v19, 0x5

    move/from16 v0, v19

    if-lt v13, v0, :cond_4

    sget-boolean v19, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v19, :cond_1d

    if-nez v4, :cond_1d

    .line 556
    :cond_4
    invoke-virtual {v3, v2}, Landroid/app/admin/DevicePolicyManager;->getProfileWithMinimumFailedPasswordsForWipe(I)I

    move-result v5

    .line 557
    .local v5, "expiringUser":I
    const/16 v16, 0x1

    .line 558
    .local v16, "userType":I
    if-ne v5, v2, :cond_18

    .line 559
    if-eqz v5, :cond_5

    .line 560
    const/16 v16, 0x3

    .line 565
    :cond_5
    :goto_7
    if-lez v13, :cond_1b

    .line 566
    sget-boolean v19, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v19, :cond_1a

    .line 567
    rem-int/lit8 v19, v7, 0x5

    if-nez v19, :cond_19

    const/4 v15, 0x1

    .line 569
    :goto_8
    const-string v19, "KeyguardSecurityView"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "reportFailedUnlockAttempt(showTimeout= "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    .end local v5    # "expiringUser":I
    .end local v16    # "userType":I
    :cond_6
    :goto_9
    if-eqz v9, :cond_7

    if-nez v10, :cond_8

    :cond_7
    sget-boolean v19, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v19, :cond_30

    if-eqz v4, :cond_30

    .line 665
    :cond_8
    invoke-virtual {v12}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportFailedUnlockAttempt()V

    .line 666
    const/16 v19, 0x14

    move/from16 v0, v19

    if-lt v7, v0, :cond_9

    .line 667
    invoke-virtual {v12}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearFailedUnlockAttempts()V

    .line 675
    :cond_9
    :goto_a
    const-string v19, "KeyguardSecurityView"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "mIsAutoWipe - "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-boolean v21, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " showAutowipeDialog - "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    sget-boolean v19, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v19, :cond_a

    if-eqz v14, :cond_a

    .line 678
    if-nez v10, :cond_31

    const/16 v19, 0x1

    :goto_b
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v7, v13, v4, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showWarningAtAutoWipeDialog(IIZZ)V

    .line 681
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v19

    if-eqz v19, :cond_b

    .line 682
    const/4 v15, 0x0

    .line 685
    :cond_b
    const-string v19, "KeyguardSecurityView"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "KeyguardProperties.isLegacyUX()  "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyUX()Z

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " mIsAutoWipe - "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-boolean v21, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " showTimeout - "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyUX()Z

    move-result v19

    if-nez v19, :cond_c

    sget-boolean v19, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v19, :cond_d

    :cond_c
    if-eqz v15, :cond_d

    .line 688
    invoke-direct/range {p0 .. p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showTimeoutDialog(I)V

    .line 690
    :cond_d
    return-void

    .line 501
    .end local v4    # "exceptAutowipe":Z
    .end local v6    # "failedAttemptWarning":I
    .end local v8    # "failedAttemptsBeforeWipe":I
    .end local v9    # "isITPolicyEnabled":Z
    .end local v10    # "isSelectedSPass":Z
    .end local v13    # "remainingBeforeWipe":I
    .end local v14    # "showAutowipeDialog":Z
    .end local v15    # "showTimeout":Z
    .end local v17    # "usingPattern":Z
    .end local v18    # "usingSPass":Z
    :cond_e
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 502
    .restart local v17    # "usingPattern":Z
    :cond_f
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 504
    .restart local v18    # "usingSPass":Z
    :cond_10
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 505
    .restart local v10    # "isSelectedSPass":Z
    :cond_11
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 508
    .restart local v4    # "exceptAutowipe":Z
    .restart local v8    # "failedAttemptsBeforeWipe":I
    :cond_12
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 517
    .restart local v9    # "isITPolicyEnabled":Z
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttemptswithITPolicy(I)I

    move-result v19

    add-int/lit8 v7, v19, 0x1

    goto/16 :goto_5

    .line 519
    :cond_14
    sget-boolean v19, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v19, :cond_16

    .line 520
    if-eqz v4, :cond_15

    .line 521
    invoke-virtual {v12}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v19

    add-int/lit8 v7, v19, 0x1

    .line 522
    const/4 v8, 0x0

    goto/16 :goto_5

    .line 524
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttemptswithITPolicy(I)I

    move-result v19

    add-int/lit8 v7, v19, 0x1

    goto/16 :goto_5

    .line 527
    :cond_16
    invoke-virtual {v12}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v19

    add-int/lit8 v7, v19, 0x1

    goto/16 :goto_5

    .line 537
    .restart local v6    # "failedAttemptWarning":I
    :cond_17
    const v13, 0x7fffffff

    goto/16 :goto_6

    .line 562
    .restart local v5    # "expiringUser":I
    .restart local v13    # "remainingBeforeWipe":I
    .restart local v14    # "showAutowipeDialog":Z
    .restart local v15    # "showTimeout":Z
    .restart local v16    # "userType":I
    :cond_18
    const/16 v19, -0x2710

    move/from16 v0, v19

    if-eq v5, v0, :cond_5

    .line 563
    const/16 v16, 0x2

    goto/16 :goto_7

    .line 567
    :cond_19
    const/4 v15, 0x0

    goto/16 :goto_8

    .line 571
    :cond_1a
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v7, v13, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showAlmostAtWipeDialog(III)V

    goto/16 :goto_9

    .line 575
    :cond_1b
    const-string v19, "KeyguardSecurityView"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Too many unlock attempts; user "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " will be wiped!"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    const/4 v14, 0x0

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/widget/LockPatternUtils;->getPasswordRecoverable(I)Z

    move-result v19

    if-eqz v19, :cond_1c

    const/16 v19, 0x2

    move/from16 v0, v16

    move/from16 v1, v19

    if-eq v0, v1, :cond_1c

    .line 579
    const-string v19, "KeyguardSecurityView"

    const-string v20, "Too many unlock attempts; device will be display recovery screen!"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/widget/LockPatternUtils;->recoverPassword(I)V

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/widget/LockPatternUtils;->setRecoveryScreenLocked(Z)V

    .line 582
    sget-object v19, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Recovery:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto/16 :goto_9

    .line 586
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardReset;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardReset;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v7, v1}, Lcom/android/keyguard/sec/KeyguardReset;->wipeOut(II)V

    goto/16 :goto_9

    .line 590
    .end local v5    # "expiringUser":I
    .end local v16    # "userType":I
    :cond_1d
    rem-int/lit8 v19, v7, 0x5

    if-nez v19, :cond_20

    const/4 v15, 0x1

    .line 592
    :goto_c
    if-eqz v17, :cond_1e

    .line 593
    sget-boolean v19, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v19, :cond_21

    .line 594
    if-eqz v7, :cond_1e

    rem-int/lit8 v19, v7, 0x5

    if-nez v19, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/widget/LockPatternUtils;->savedBackupPinExists()Z

    move-result v19

    if-eqz v19, :cond_1e

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    .line 597
    sget-object v19, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->BackupPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 598
    const/4 v15, 0x0

    .line 628
    :cond_1e
    :goto_d
    if-eqz v18, :cond_6

    .line 629
    sget-boolean v19, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-nez v19, :cond_1f

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isGENIFeature()Z

    move-result v19

    if-eqz v19, :cond_2a

    .line 630
    :cond_1f
    if-eqz v7, :cond_6

    rem-int/lit8 v19, v7, 0x5

    if-nez v19, :cond_6

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    .line 633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyAlternativePasswordBegin()V

    .line 634
    sget-object v19, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SPassPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 635
    const/4 v15, 0x0

    goto/16 :goto_9

    .line 590
    :cond_20
    const/4 v15, 0x0

    goto :goto_c

    .line 601
    :cond_21
    sget-boolean v19, Lcom/android/keyguard/KeyguardSecurityContainer;->mEnableFallback:Z

    if-eqz v19, :cond_24

    .line 602
    const/16 v19, 0xf

    move/from16 v0, v19

    if-ne v7, v0, :cond_28

    .line 603
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyUX()Z

    move-result v19

    if-nez v19, :cond_22

    sget-boolean v19, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v19, :cond_23

    :cond_22
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showAlmostAtAccountLoginDialog()V

    .line 604
    :cond_23
    const/4 v15, 0x0

    .line 612
    :cond_24
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/widget/LockPatternUtils;->savedBackupPinExists()Z

    move-result v19

    if-eqz v19, :cond_1e

    .line 613
    if-eqz v7, :cond_25

    rem-int/lit8 v19, v7, 0x5

    if-nez v19, :cond_25

    .line 615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(I)J

    .line 617
    :cond_25
    const/16 v19, 0xf

    move/from16 v0, v19

    if-ne v7, v0, :cond_29

    .line 618
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyUX()Z

    move-result v19

    if-nez v19, :cond_26

    sget-boolean v19, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v19, :cond_27

    :cond_26
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showAlmostAtBackupPininDialog()V

    .line 619
    :cond_27
    const/4 v15, 0x0

    goto/16 :goto_d

    .line 605
    :cond_28
    const/16 v19, 0x14

    move/from16 v0, v19

    if-lt v7, v0, :cond_24

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    .line 607
    sget-object v19, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Account:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 609
    const/4 v15, 0x0

    goto :goto_e

    .line 620
    :cond_29
    const/16 v19, 0x14

    move/from16 v0, v19

    if-lt v7, v0, :cond_1e

    .line 621
    sget-object v19, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->BackupPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 623
    const/4 v15, 0x0

    goto/16 :goto_d

    .line 637
    :cond_2a
    if-eqz v9, :cond_2b

    .line 638
    const/16 v19, 0x5

    move/from16 v0, v19

    if-ne v7, v0, :cond_6

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyAlternativePasswordBegin()V

    .line 641
    sget-object v19, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SPassPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 643
    const/4 v15, 0x0

    goto/16 :goto_9

    .line 646
    :cond_2b
    if-eqz v7, :cond_2c

    rem-int/lit8 v19, v7, 0x5

    if-nez v19, :cond_2c

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(I)J

    .line 650
    :cond_2c
    const/16 v19, 0xf

    move/from16 v0, v19

    if-ne v7, v0, :cond_2f

    .line 651
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyUX()Z

    move-result v19

    if-nez v19, :cond_2d

    sget-boolean v19, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v19, :cond_2e

    :cond_2d
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showAlmostAtAlternativePasswordinDialog()V

    .line 652
    :cond_2e
    const/4 v15, 0x0

    goto/16 :goto_9

    .line 653
    :cond_2f
    const/16 v19, 0x14

    move/from16 v0, v19

    if-lt v7, v0, :cond_6

    .line 654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyAlternativePasswordBegin()V

    .line 656
    sget-object v19, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SPassPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 658
    const/4 v15, 0x0

    goto/16 :goto_9

    .line 670
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/widget/LockPatternUtils;->reportFailedPasswordAttempt(I)V

    .line 671
    invoke-virtual {v12}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportFailedUnlockAttempt()V

    goto/16 :goto_a

    .line 678
    :cond_31
    const/16 v19, 0x0

    goto/16 :goto_b
.end method

.method private showAlmostAtAccountLoginDialog()V
    .locals 8

    .prologue
    .line 412
    const/16 v2, 0x1e

    .line 413
    .local v2, "timeoutInSeconds":I
    const/16 v0, 0xf

    .line 415
    .local v0, "count":I
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/keyguard/R$string;->kg_failed_attempts_almost_at_login:I

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/16 v7, 0xf

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/16 v7, 0x1e

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 417
    .local v1, "message":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-direct {p0, v3, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    return-void
.end method

.method private showAlmostAtAlternativePasswordinDialog()V
    .locals 9

    .prologue
    .line 421
    const/16 v2, 0x1e

    .line 422
    .local v2, "timeoutInSeconds":I
    const/16 v0, 0xf

    .line 424
    .local v0, "count":I
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/keyguard/R$string;->fail_attempt_unlock_popup_title:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 425
    .local v3, "title":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/keyguard/R$string;->kg_failed_attempts_almost_at_spass:I

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/16 v8, 0xf

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const/16 v8, 0x1e

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 427
    .local v1, "message":Ljava/lang/String;
    invoke-direct {p0, v3, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    return-void
.end method

.method private showAlmostAtBackupPininDialog()V
    .locals 9

    .prologue
    .line 402
    const/16 v2, 0x1e

    .line 403
    .local v2, "timeoutInSeconds":I
    const/16 v0, 0xf

    .line 405
    .local v0, "count":I
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/keyguard/R$string;->fail_attempt_unlock_popup_title:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 406
    .local v3, "title":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/keyguard/R$string;->kg_failed_attempts_almost_at_pattern:I

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/16 v8, 0xf

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const/16 v8, 0x1e

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 408
    .local v1, "message":Ljava/lang/String;
    invoke-direct {p0, v3, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    return-void
.end method

.method private showAlmostAtWipeDialog(III)V
    .locals 7
    .param p1, "attempts"    # I
    .param p2, "remaining"    # I
    .param p3, "userType"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 431
    const/4 v0, 0x0

    .line 432
    .local v0, "message":Ljava/lang/String;
    packed-switch p3, :pswitch_data_0

    .line 470
    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    return-void

    .line 434
    :pswitch_0
    if-ne p1, v5, :cond_0

    .line 435
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_sec_1_failed_attempt_almost_at_wipe:I

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 437
    :cond_0
    if-ne p2, v5, :cond_1

    .line 438
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_sec_1_remaing_count_almost_at_wipe:I

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 441
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_sec_failed_attempts_almost_at_wipe:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 444
    goto :goto_0

    .line 446
    :pswitch_1
    if-ne p1, v5, :cond_2

    .line 447
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_sec_1_failed_attempt_almost_at_erase_user:I

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 449
    :cond_2
    if-ne p2, v5, :cond_3

    .line 450
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_sec_1_remaing_count_almost_at_erase_user:I

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 453
    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_sec_failed_attempts_almost_at_erase_user:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 456
    goto :goto_0

    .line 458
    :pswitch_2
    if-ne p1, v5, :cond_4

    .line 459
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_sec_1_failed_attempt_almost_at_erase_profile:I

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 461
    :cond_4
    if-ne p2, v5, :cond_5

    .line 462
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_sec_1_remaing_count_almost_at_erase_profile:I

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 465
    :cond_5
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_sec_failed_attempts_almost_at_erase_profile:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 432
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private showBackupSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 3
    .param p1, "mode"    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .prologue
    .line 727
    const-string v1, "KeyguardSecurityView"

    const-string v2, "showBackupSecurity()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardSecurityModel;->getBackupSecurityMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 729
    .local v0, "backup":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->BackupPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v1, :cond_1

    .line 730
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->BackupPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 736
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 737
    return-void

    .line 731
    :cond_1
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->CarrierPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v1, :cond_2

    .line 732
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->CarrierPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_0

    .line 733
    :cond_2
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Account:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v1, :cond_0

    .line 734
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Account:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_0
.end method

.method private showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 261
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mDialogTheme:I

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->ok:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 266
    .local v0, "dialog":Landroid/app/AlertDialog;
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 267
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 269
    :cond_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 270
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 274
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 275
    return-void

    .line 272
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0
.end method

.method private showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 8
    .param p1, "securityMode"    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .prologue
    .line 816
    const-string v5, "KeyguardSecurityView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showSecurityScreen("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v5, :cond_1

    .line 861
    :cond_0
    :goto_0
    return-void

    .line 826
    :cond_1
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v5}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v3

    .line 827
    .local v3, "oldView":Lcom/android/keyguard/KeyguardSecurityView;
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v2

    .line 829
    .local v2, "newView":Lcom/android/keyguard/KeyguardSecurityView;
    if-eqz v3, :cond_2

    .line 830
    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecurityView;->onPause()V

    .line 831
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mNullCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v3, v5}, Lcom/android/keyguard/KeyguardSecurityView;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 833
    :cond_2
    sget-object v5, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v5, :cond_3

    if-eqz v2, :cond_3

    .line 834
    const/4 v5, 0x2

    invoke-interface {v2, v5}, Lcom/android/keyguard/KeyguardSecurityView;->onResume(I)V

    .line 835
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v2, v5}, Lcom/android/keyguard/KeyguardSecurityView;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 839
    :cond_3
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildCount()I

    move-result v0

    .line 841
    .local v0, "childCount":I
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityViewIdForMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)I

    move-result v4

    .line 842
    .local v4, "securityViewIdForMode":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 843
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v5, v1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v5, v4, :cond_5

    .line 844
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v5, v1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->setDisplayedChild(I)V

    .line 849
    :cond_4
    if-eqz v2, :cond_0

    .line 850
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 851
    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    sget-object v5, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v5, :cond_6

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecurityView;->needsInput()Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x1

    :goto_2
    invoke-interface {v6, p1, v5}, Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;->onSecurityModeChanged(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Z)V

    .line 853
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecurityView;->needsShowClockandNotifications()Z

    move-result v6

    invoke-interface {v5, v6}, Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;->onKeyguardClockandNotificationsChanged(Z)V

    .line 854
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecAttributionInfoView:Lcom/android/keyguard/sec/SecAttributionInfoView;

    if-eqz v5, :cond_0

    .line 855
    instance-of v5, v2, Lcom/android/keyguard/sec/KeyguardUnlockView;

    if-eqz v5, :cond_0

    .line 856
    check-cast v2, Lcom/android/keyguard/sec/KeyguardUnlockView;

    .end local v2    # "newView":Lcom/android/keyguard/KeyguardSecurityView;
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecAttributionInfoView:Lcom/android/keyguard/sec/SecAttributionInfoView;

    invoke-virtual {v2, v5}, Lcom/android/keyguard/sec/KeyguardUnlockView;->setAttributionInfoView(Landroid/view/View;)V

    goto :goto_0

    .line 842
    .restart local v2    # "newView":Lcom/android/keyguard/KeyguardSecurityView;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 851
    :cond_6
    const/4 v5, 0x0

    goto :goto_2
.end method

.method private showTimeoutDialog(I)V
    .locals 14
    .param p1, "timeoutMs"    # I

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 278
    const/16 v5, 0x1e

    .line 279
    .local v5, "timeoutInSeconds":I
    const/4 v3, 0x0

    .line 280
    .local v3, "messageId":I
    const/4 v6, 0x0

    .line 282
    .local v6, "useAutowipeMessage":Z
    sget-object v9, Lcom/android/keyguard/KeyguardSecurityContainer$3;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    iget-object v10, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v10}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 343
    :goto_0
    if-eqz v3, :cond_0

    .line 345
    if-eqz v6, :cond_7

    .line 346
    const/4 v4, 0x0

    .line 347
    .local v4, "remaining":I
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v10

    invoke-virtual {v9, v13, v10}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v0

    .line 349
    .local v0, "failedAttemptsBeforeWipe":I
    if-lez v0, :cond_5

    move v1, v7

    .line 350
    .local v1, "isITPolicyEnabled":Z
    :goto_1
    if-eqz v1, :cond_6

    .line 351
    iget v9, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mFailedAttempts:I

    sub-int v4, v0, v9

    .line 355
    :goto_2
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    iget v11, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mFailedAttempts:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v10, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v10, v12

    invoke-virtual {v9, v3, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 364
    .end local v0    # "failedAttemptsBeforeWipe":I
    .end local v1    # "isITPolicyEnabled":Z
    .end local v4    # "remaining":I
    .local v2, "message":Ljava/lang/String;
    :goto_3
    invoke-direct {p0, v13, v2}, Lcom/android/keyguard/KeyguardSecurityContainer;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    .end local v2    # "message":Ljava/lang/String;
    :cond_0
    return-void

    .line 284
    :pswitch_0
    sget v3, Lcom/android/keyguard/R$string;->kg_too_many_failed_universal_lock_attempts_dialog_message:I

    .line 285
    goto :goto_0

    .line 287
    :pswitch_1
    sget v3, Lcom/android/keyguard/R$string;->kg_too_many_failed_pattern_attempts_dialog_message:I

    .line 288
    goto :goto_0

    .line 290
    :pswitch_2
    sget-boolean v9, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v9, :cond_1

    .line 291
    sget v3, Lcom/android/keyguard/R$string;->kg_too_many_failed_pin_attempts_dialog_message_with_auto_wipe:I

    .line 292
    const/4 v6, 0x1

    goto :goto_0

    .line 294
    :cond_1
    sget v3, Lcom/android/keyguard/R$string;->kg_too_many_failed_pin_attempts_dialog_message:I

    .line 296
    goto :goto_0

    .line 298
    :pswitch_3
    sget v3, Lcom/android/keyguard/R$string;->kg_too_many_failed_spass_attempts_dialog_message:I

    .line 299
    goto :goto_0

    .line 301
    :pswitch_4
    sget-boolean v9, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v9, :cond_2

    .line 302
    sget v3, Lcom/android/keyguard/R$string;->kg_too_many_failed_backup_password_attempts_dialog_message_with_auto_wipe:I

    .line 303
    const/4 v6, 0x1

    goto :goto_0

    .line 305
    :cond_2
    sget v3, Lcom/android/keyguard/R$string;->kg_too_many_failed_spass_attempts_dialog_message:I

    .line 307
    goto :goto_0

    .line 309
    :pswitch_5
    sget-boolean v9, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v9, :cond_3

    .line 310
    sget v3, Lcom/android/keyguard/R$string;->kg_too_many_failed_backup_pin_attempts_dialog_message_with_auto_wipe:I

    .line 311
    const/4 v6, 0x1

    goto :goto_0

    .line 313
    :cond_3
    sget v3, Lcom/android/keyguard/R$string;->kg_too_many_failed_pattern_attempts_dialog_message:I

    .line 315
    goto :goto_0

    .line 317
    :pswitch_6
    sget-boolean v9, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v9, :cond_4

    .line 318
    sget v3, Lcom/android/keyguard/R$string;->kg_too_many_failed_password_attempts_dialog_message_with_auto_wipe:I

    .line 319
    const/4 v6, 0x1

    goto :goto_0

    .line 321
    :cond_4
    sget v3, Lcom/android/keyguard/R$string;->kg_too_many_failed_password_attempts_dialog_message:I

    .line 323
    goto :goto_0

    .line 327
    :pswitch_7
    sget v3, Lcom/android/keyguard/R$string;->kg_too_many_failed_pin_attempts_dialog_message:I

    .line 328
    goto :goto_0

    .line 331
    :pswitch_8
    sget v3, Lcom/android/keyguard/R$string;->kg_too_many_failed_signature_attempts_dialog_message:I

    .line 332
    goto :goto_0

    .restart local v0    # "failedAttemptsBeforeWipe":I
    .restart local v4    # "remaining":I
    :cond_5
    move v1, v8

    .line 349
    goto :goto_1

    .line 353
    .restart local v1    # "isITPolicyEnabled":Z
    :cond_6
    iget v9, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mFailedAttempts:I

    rsub-int/lit8 v4, v9, 0xa

    goto :goto_2

    .line 360
    .end local v0    # "failedAttemptsBeforeWipe":I
    .end local v1    # "isITPolicyEnabled":Z
    .end local v4    # "remaining":I
    :cond_7
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    new-array v10, v12, [Ljava/lang/Object;

    iget v11, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mFailedAttempts:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v10, v7

    invoke-virtual {v9, v3, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "message":Ljava/lang/String;
    goto :goto_3

    .line 282
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private showWarningAtAutoWipeDialog(IIZZ)V
    .locals 6
    .param p1, "attempts"    # I
    .param p2, "remaining"    # I
    .param p3, "needbackup"    # Z
    .param p4, "usebackuppin"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 371
    const/4 v0, 0x0

    .line 372
    .local v0, "message":Ljava/lang/String;
    if-eqz p3, :cond_3

    .line 373
    const/4 v1, 0x5

    if-ne v1, p1, :cond_0

    .line 374
    if-eqz p4, :cond_2

    .line 375
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_failed_5_attempts_to_show_backup_pin_with_auto_wipe:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 397
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 398
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    :cond_1
    return-void

    .line 380
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_failed_5_attempts_to_show_backup_password_with_auto_wipe:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 388
    :cond_3
    if-ne p2, v3, :cond_0

    .line 389
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v1

    if-nez v1, :cond_4

    .line 390
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_remained_1_attempts_with_auto_wipe:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 392
    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_remained_1_attempts_with_auto_wipe_subuser:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private showWipeDialog(II)V
    .locals 6
    .param p1, "attempts"    # I
    .param p2, "userType"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 474
    const/4 v0, 0x0

    .line 475
    .local v0, "message":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 489
    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    return-void

    .line 477
    :pswitch_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_failed_attempts_now_wiping:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 479
    goto :goto_0

    .line 481
    :pswitch_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_failed_attempts_now_erasing_user:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 483
    goto :goto_0

    .line 485
    :pswitch_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_failed_attempts_now_erasing_profile:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 475
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private updateSecurityView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 208
    instance-of v2, p1, Lcom/android/keyguard/KeyguardSecurityView;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 209
    check-cast v0, Lcom/android/keyguard/KeyguardSecurityView;

    .line 210
    .local v0, "ksv":Lcom/android/keyguard/KeyguardSecurityView;
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, v2}, Lcom/android/keyguard/KeyguardSecurityView;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 211
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-interface {v0, v2}, Lcom/android/keyguard/KeyguardSecurityView;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 212
    sget v2, Lcom/android/keyguard/R$id;->sec_keyguard_bottom_area:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardSecurityContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;

    .line 213
    .local v1, "secview":Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;
    if-eqz v1, :cond_0

    .line 214
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 219
    .end local v0    # "ksv":Lcom/android/keyguard/KeyguardSecurityView;
    .end local v1    # "secview":Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    const-string v2, "KeyguardSecurityView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "View "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not a KeyguardSecurityView"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public addAttributionInfoViewIfNecessary()V
    .locals 3

    .prologue
    .line 231
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardProperties;->isRichLockEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 244
    :goto_0
    return-void

    .line 235
    :cond_0
    const-string v1, "KeyguardSecurityView"

    const-string v2, "addAttributionInfoViewIfNecessary"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 238
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x50

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 240
    new-instance v1, Lcom/android/keyguard/sec/SecAttributionInfoView;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/keyguard/sec/SecAttributionInfoView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecAttributionInfoView:Lcom/android/keyguard/sec/SecAttributionInfoView;

    .line 241
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecAttributionInfoView:Lcom/android/keyguard/sec/SecAttributionInfoView;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-virtual {v1, p0, v2}, Lcom/android/keyguard/sec/SecAttributionInfoView;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityContainer;Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 242
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecAttributionInfoView:Lcom/android/keyguard/sec/SecAttributionInfoView;

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public announceCurrentSecurityMethod()V
    .locals 2

    .prologue
    .line 170
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 171
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 174
    :cond_0
    return-void
.end method

.method public dismiss(Z)V
    .locals 1
    .param p1, "authenticated"    # Z

    .prologue
    .line 1071
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 1072
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v9, -0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1127
    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v7, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v6, v7, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    const/16 v7, 0x1a

    if-eq v6, v7, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    const/16 v7, 0x7f

    if-eq v6, v7, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    const/16 v7, 0x7e

    if-eq v6, v7, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    const/16 v7, 0x57

    if-eq v6, v7, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    const/16 v7, 0x58

    if-eq v6, v7, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    const/16 v7, 0x59

    if-eq v6, v7, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    const/16 v7, 0x5a

    if-eq v6, v7, :cond_4

    .line 1137
    const/4 v0, 0x0

    .line 1138
    .local v0, "callDismiss":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/InputDevice;->isExternal()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1139
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "input_method"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 1140
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    const-string v6, "KeyguardSecurityView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dispatchKeyEvent : getDevice is null!! or isExternal ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/InputDevice;->isExternal()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v6

    if-eqz v6, :cond_0

    .line 1142
    const-string v6, "KeyguardSecurityView"

    const-string v7, "dispatchKeyEvent : blueTooth"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    const/4 v0, 0x1

    .line 1147
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "sidesync_source_connect"

    invoke-static {v6, v7, v4, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-nez v6, :cond_5

    move v3, v4

    .line 1148
    .local v3, "isSideSync":Z
    :goto_0
    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "KMS_SERVICE_CONNECTED"

    invoke-static {v6, v7, v4, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v5, :cond_6

    move v2, v5

    .line 1149
    .local v2, "isKms":Z
    :goto_1
    if-nez v3, :cond_1

    if-eqz v2, :cond_2

    .line 1150
    :cond_1
    const-string v5, "KeyguardSecurityView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dispatchKeyEvent : isSideSync ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isKms = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    const/4 v0, 0x1

    .line 1154
    :cond_2
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/sec/KeyguardProperties;->isFolderDevice(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1155
    const/4 v0, 0x1

    .line 1157
    :cond_3
    if-eqz v0, :cond_4

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v5, :cond_4

    .line 1158
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v5, v4}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 1162
    .end local v0    # "callDismiss":Z
    .end local v2    # "isKms":Z
    .end local v3    # "isSideSync":Z
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    return v4

    .restart local v0    # "callDismiss":Z
    :cond_5
    move v3, v5

    .line 1147
    goto :goto_0

    .restart local v3    # "isSideSync":Z
    :cond_6
    move v2, v4

    .line 1148
    goto :goto_1
.end method

.method public getCallback()Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 1

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object v0
.end method

.method public getCurrentSecurityModeContentDescription()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 177
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 178
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    .line 181
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getCurrentSecuritySelection()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 1

    .prologue
    .line 1067
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object v0
.end method

.method public getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 1

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    return-object v0
.end method

.method public hideBouncer(I)V
    .locals 1
    .param p1, "duration"    # I

    .prologue
    .line 1118
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getFlipper()Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    move-result-object v0

    .line 1119
    .local v0, "flipper":Lcom/android/keyguard/KeyguardSecurityViewFlipper;
    if-eqz v0, :cond_0

    .line 1120
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->hideBouncer(I)V

    .line 1122
    :cond_0
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->needsInput()Z

    move-result v0

    return v0
.end method

.method public needsShowClockandNotifications()Z
    .locals 1

    .prologue
    .line 1080
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->needsShowClockandNotifications()Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 222
    sget v0, Lcom/android/keyguard/R$id;->view_flipper:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    .line 223
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 224
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardReset;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardReset;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardReset;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 225
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->checkSecurityPolicy()V

    .line 226
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->addAttributionInfoViewIfNecessary()V

    .line 227
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->addMontblancLogoViewIfNecessary()V

    .line 228
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1167
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecAttributionInfoView:Lcom/android/keyguard/sec/SecAttributionInfoView;

    if-eqz v2, :cond_0

    .line 1168
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1169
    .local v1, "measuredHeight":I
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getHeight()I

    move-result v0

    .line 1171
    .local v0, "layoutHeight":I
    if-le v0, v1, :cond_1

    .line 1172
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecAttributionInfoView:Lcom/android/keyguard/sec/SecAttributionInfoView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/keyguard/sec/SecAttributionInfoView;->setVisibility(I)V

    .line 1177
    .end local v0    # "layoutHeight":I
    .end local v1    # "measuredHeight":I
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 1178
    return-void

    .line 1173
    .restart local v0    # "layoutHeight":I
    .restart local v1    # "measuredHeight":I
    :cond_1
    if-ge v0, v1, :cond_0

    .line 1174
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecAttributionInfoView:Lcom/android/keyguard/sec/SecAttributionInfoView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/keyguard/sec/SecAttributionInfoView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityView;->onPause()V

    .line 151
    return-void
.end method

.method public onResume(I)V
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecurityView;->onResume(I)V

    .line 143
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 1090
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->reset()V

    .line 1091
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 1086
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 2
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 256
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardSecurityModel;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 257
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 258
    return-void
.end method

.method public setSecurityCallback(Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    .line 135
    return-void
.end method

.method public showBouncer(I)V
    .locals 1
    .param p1, "duration"    # I

    .prologue
    .line 1111
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getFlipper()Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    move-result-object v0

    .line 1112
    .local v0, "flipper":Lcom/android/keyguard/KeyguardSecurityViewFlipper;
    if-eqz v0, :cond_0

    .line 1113
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->showBouncer(I)V

    .line 1115
    :cond_0
    return-void
.end method

.method showNextSecurityScreenOrFinish(Z)Z
    .locals 5
    .param p1, "authenticated"    # Z

    .prologue
    .line 745
    const-string v2, "KeyguardSecurityView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showNextSecurityScreenOrFinish("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    const/4 v0, 0x0

    .line 747
    .local v0, "finish":Z
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 748
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v1

    .line 749
    .local v1, "securityMode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->FMM:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v2, v1, :cond_0

    .line 750
    const/4 v0, 0x1

    .line 803
    .end local v1    # "securityMode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 804
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;->finish()V

    .line 806
    :cond_1
    return v0

    .line 752
    :cond_2
    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v2, v3, :cond_4

    .line 753
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v1

    .line 754
    .restart local v1    # "securityMode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v2, v1}, Lcom/android/keyguard/KeyguardSecurityModel;->getAlternateFor(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v1

    .line 755
    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v2, v1, :cond_3

    .line 756
    const/4 v0, 0x1

    goto :goto_0

    .line 758
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto :goto_0

    .line 760
    .end local v1    # "securityMode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    :cond_4
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mPm:Landroid/os/PersonaManager;

    invoke-virtual {v2}, Landroid/os/PersonaManager;->isKioskContainerExistOnDevice()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 761
    const/4 v0, 0x1

    goto :goto_0

    .line 762
    :cond_5
    if-eqz p1, :cond_0

    .line 763
    sget-object v2, Lcom/android/keyguard/KeyguardSecurityContainer$3;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 798
    :pswitch_0
    const-string v2, "KeyguardSecurityView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad security screen "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", fail safe"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardSecurityContainer;->showPrimarySecurityScreen(Z)V

    goto :goto_0

    .line 781
    :pswitch_1
    const/4 v0, 0x1

    .line 782
    goto :goto_0

    .line 788
    :pswitch_2
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v1

    .line 789
    .restart local v1    # "securityMode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v1, v2, :cond_6

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 791
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto :goto_0

    .line 793
    :cond_6
    const/4 v0, 0x1

    .line 795
    goto :goto_0

    .line 763
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method showPrimarySecurityScreen(Z)V
    .locals 4
    .param p1, "turningOff"    # Z

    .prologue
    .line 710
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 711
    .local v0, "securityMode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    const-string v1, "KeyguardSecurityView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showPrimarySecurityScreen(turningOff="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAlternateUnlockEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 716
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardSecurityModel;->getAlternateFor(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 718
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 719
    return-void
.end method

.method public showPromptReason(I)V
    .locals 2
    .param p1, "reason"    # I

    .prologue
    .line 1100
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_0

    .line 1101
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecurityView;->showPromptReason(I)V

    .line 1103
    :cond_0
    return-void
.end method

.method public showUnlockAffordance()V
    .locals 2

    .prologue
    .line 1181
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1182
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1183
    instance-of v1, v0, Lcom/android/keyguard/sec/KeyguardUnlockView;

    if-eqz v1, :cond_0

    .line 1184
    check-cast v0, Lcom/android/keyguard/sec/KeyguardUnlockView;

    .end local v0    # "v":Landroid/view/View;
    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardUnlockView;->showUnlockAffordance()V

    .line 1187
    :cond_0
    return-void
.end method

.method public showUsabilityHint()V
    .locals 1

    .prologue
    .line 1107
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->showUsabilityHint()V

    .line 1108
    return-void
.end method

.method public startAppearAnimation()V
    .locals 0

    .prologue
    .line 158
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "onFinishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public verifyUnlock()V
    .locals 1

    .prologue
    .line 1062
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsVerifyUnlockOnly:Z

    .line 1063
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 1064
    return-void
.end method
