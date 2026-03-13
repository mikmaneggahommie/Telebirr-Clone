.class public Lcom/android/keyguard/KeyguardPatternView;
.super Landroid/widget/LinearLayout;
.source "KeyguardPatternView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;
.implements Lcom/android/settingslib/animation/AppearAnimationCreator;
.implements Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardPatternView$15;,
        Lcom/android/keyguard/KeyguardPatternView$AccountAnalyzer;,
        Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;,
        Lcom/android/keyguard/KeyguardPatternView$OneHandMode;,
        Lcom/android/keyguard/KeyguardPatternView$FooterMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/LinearLayout;",
        "Lcom/android/keyguard/KeyguardSecurityView;",
        "Lcom/android/settingslib/animation/AppearAnimationCreator",
        "<",
        "Lcom/android/internal/widget/LockPatternView$CellState;",
        ">;",
        "Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;"
    }
.end annotation


# static fields
.field private static final BOUNCER_FRAME_BACKGROUND_COLOR:I

.field private static final DEBUG:Z = true

.field protected static final HINT_MESSAGE_A_SEC:I = 0x3e8

.field protected static final HINT_MESSAGE_DURATION:I = 0x1388

.field private static final INSTRUCTION_MESSAGE_WAIT_TIME:I = 0x7d0

.field private static final MIN_PATTERN_BEFORE_POKE_WAKELOCK:I = 0x2

.field private static final PATTERN_CLEAR_TIMEOUT_MS:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "SecurityPatternView"

.field private static final UNLOCK_PATTERN_WAKE_INTERVAL_MS:I = 0x1b58

.field private static final VIBRATE_DURATION:I = 0x64


# instance fields
.field private isBouncerShowing:Z

.field private final mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

.field private mBackUpButtonView:Landroid/view/View;

.field private mBackupPINButton:Landroid/widget/Button;

.field private mBottomAreaNormal:Landroid/view/View;

.field private mBouncerEMA:Landroid/view/View;

.field private mBouncerFrame:Landroid/graphics/drawable/Drawable;

.field private mBouncerKMA:Landroid/view/View;

.field private mCMASTextViewPattern:Landroid/widget/TextView;

.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mCancelPatternRunnable:Ljava/lang/Runnable;

.field mClearMessageRunnable:Ljava/lang/Runnable;

.field private mContainer:Landroid/view/ViewGroup;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private final mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

.field private mDisappearYTranslation:I

.field private mEMAPress:Z

.field private mEcaBottomView:Landroid/view/View;

.field private mEcaView:Landroid/view/View;

.field private mEnableFallback:Z

.field private mFailedTextTimer:Landroid/os/CountDownTimer;

.field private mForgotPatternButton:Landroid/widget/Button;

.field protected mHandler:Landroid/os/Handler;

.field private mHelpMessage:Lcom/android/keyguard/KeyguardMessageArea;

.field mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mInstructionsMessageRunnable:Ljava/lang/Runnable;

.field private mIsTactileFeedbackEnabled:Z

.field private mKeyguardBouncerFrameView:Landroid/view/View;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mLastFooterMode:Lcom/android/keyguard/KeyguardPatternView$FooterMode;

.field private mLastPokeTime:J

.field private mLeftArrowImage:Landroid/widget/ImageButton;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockPatternView:Lcom/android/keyguard/sec/SecLockPatternView;

.field private mOnehandAnyScreenObserver:Landroid/database/ContentObserver;

.field private mOnehandClickLitener:Landroid/view/View$OnClickListener;

.field private mOnehandLockPattern:Landroid/view/View;

.field private mPasswordTimeTick:I

.field private mPatternUpdatorCallbacks:Lcom/android/keyguard/sec/SecLockPatternView$PatternUpdatorCallback;

.field private mPendingLockCheck:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<***>;"
        }
    .end annotation
.end field

.field private mRightArrowImage:Landroid/widget/ImageButton;

.field private mRightPressed:Z

.field private mSecPatternArea:Landroid/view/View;

.field private mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

.field private mSecurityTextViewDisplay:Landroid/widget/TextView;

.field private mTempRect:Landroid/graphics/Rect;

.field private mTotalFailedPatternAttempts:I

.field private mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field protected mUseBlackTextOnWhiteWallpaper:Z

.field private mVibraterService:Landroid/os/Vibrator;

.field private mWhiteWallpaperObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 116
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyUX()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x66ffffff

    :goto_0
    sput v0, Lcom/android/keyguard/KeyguardPatternView;->BOUNCER_FRAME_BACKGROUND_COLOR:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 219
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 220
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 223
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 118
    iput v8, p0, Lcom/android/keyguard/KeyguardPatternView;->mTotalFailedPatternAttempts:I

    .line 123
    iput-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 124
    iput-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    .line 135
    iput-boolean v8, p0, Lcom/android/keyguard/KeyguardPatternView;->isBouncerShowing:Z

    .line 142
    const-wide/16 v0, -0x1b58

    iput-wide v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLastPokeTime:J

    .line 147
    new-instance v0, Lcom/android/keyguard/KeyguardPatternView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardPatternView$1;-><init>(Lcom/android/keyguard/KeyguardPatternView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCancelPatternRunnable:Ljava/lang/Runnable;

    .line 152
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    .line 164
    iput-boolean v8, p0, Lcom/android/keyguard/KeyguardPatternView;->mEMAPress:Z

    .line 165
    iput v8, p0, Lcom/android/keyguard/KeyguardPatternView;->mPasswordTimeTick:I

    .line 173
    sget-object v0, Lcom/android/keyguard/KeyguardPatternView$FooterMode;->Normal:Lcom/android/keyguard/KeyguardPatternView$FooterMode;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLastFooterMode:Lcom/android/keyguard/KeyguardPatternView$FooterMode;

    .line 176
    iput-boolean v8, p0, Lcom/android/keyguard/KeyguardPatternView;->mUseBlackTextOnWhiteWallpaper:Z

    .line 190
    new-instance v0, Lcom/android/keyguard/KeyguardPatternView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardPatternView$2;-><init>(Lcom/android/keyguard/KeyguardPatternView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 198
    new-instance v0, Lcom/android/keyguard/KeyguardPatternView$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardPatternView$3;-><init>(Lcom/android/keyguard/KeyguardPatternView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mPatternUpdatorCallbacks:Lcom/android/keyguard/sec/SecLockPatternView$PatternUpdatorCallback;

    .line 209
    new-instance v0, Lcom/android/keyguard/KeyguardPatternView$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardPatternView$4;-><init>(Lcom/android/keyguard/KeyguardPatternView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mInstructionsMessageRunnable:Ljava/lang/Runnable;

    .line 875
    new-instance v0, Lcom/android/keyguard/KeyguardPatternView$9;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardPatternView$9;-><init>(Lcom/android/keyguard/KeyguardPatternView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mOnehandClickLitener:Landroid/view/View$OnClickListener;

    .line 1090
    new-instance v0, Lcom/android/keyguard/KeyguardPatternView$12;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/KeyguardPatternView$12;-><init>(Lcom/android/keyguard/KeyguardPatternView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mOnehandAnyScreenObserver:Landroid/database/ContentObserver;

    .line 1188
    iput-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mHandler:Landroid/os/Handler;

    .line 1189
    new-instance v0, Lcom/android/keyguard/KeyguardPatternView$13;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardPatternView$13;-><init>(Lcom/android/keyguard/KeyguardPatternView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mClearMessageRunnable:Ljava/lang/Runnable;

    .line 225
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 226
    new-instance v0, Lcom/android/settingslib/animation/AppearAnimationUtils;

    const-wide/16 v2, 0xdc

    const/high16 v4, 0x3fc00000    # 1.5f

    const/high16 v5, 0x40000000    # 2.0f

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    const v6, 0x10c000e

    invoke-static {v1, v6}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/settingslib/animation/AppearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    .line 230
    new-instance v0, Lcom/android/settingslib/animation/DisappearAnimationUtils;

    const-wide/16 v2, 0x7d

    const v4, 0x3f99999a    # 1.2f

    const v5, 0x3f19999a    # 0.6f

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    const v6, 0x10c000f

    invoke-static {v1, v6}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/settingslib/animation/DisappearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    .line 234
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$dimen;->disappear_y_translation:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearYTranslation:I

    .line 236
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 237
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mHandler:Landroid/os/Handler;

    .line 239
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "white_lockscreen_wallpaper"

    invoke-static {v0, v1, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v7, :cond_0

    move v0, v7

    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mUseBlackTextOnWhiteWallpaper:Z

    .line 240
    return-void

    :cond_0
    move v0, v8

    .line 239
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/sec/SecLockPatternView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/sec/SecLockPatternView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/keyguard/KeyguardPatternView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;
    .param p1, "x1"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mEMAPress:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/keyguard/KeyguardPatternView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/keyguard/KeyguardPatternView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mIsTactileFeedbackEnabled:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/keyguard/KeyguardPatternView;)Landroid/os/Vibrator;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mVibraterService:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/keyguard/KeyguardPatternView;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;
    .param p1, "x1"    # J

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardPatternView;->handleAttemptLockout(J)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/keyguard/KeyguardPatternView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->disableDevicePermanently()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/keyguard/KeyguardPatternView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mEnableFallback:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/keyguard/KeyguardPatternView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;
    .param p1, "x1"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mEnableFallback:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardPatternView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardBouncerFrameView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/keyguard/KeyguardPatternView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->displayDefaultSecurityMessage()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/keyguard/KeyguardPatternView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 98
    iget v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mTotalFailedPatternAttempts:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/keyguard/KeyguardPatternView;Lcom/android/keyguard/KeyguardPatternView$FooterMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;
    .param p1, "x1"    # Lcom/android/keyguard/KeyguardPatternView$FooterMode;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPatternView;->updateFooter(Lcom/android/keyguard/KeyguardPatternView$FooterMode;)V

    return-void
.end method

.method static synthetic access$2502(Lcom/android/keyguard/KeyguardPatternView;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;
    .param p1, "x1"    # Landroid/os/CountDownTimer;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/keyguard/KeyguardPatternView;Lcom/android/keyguard/KeyguardPatternView$OneHandMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;
    .param p1, "x1"    # Lcom/android/keyguard/KeyguardPatternView$OneHandMode;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPatternView;->movePatternLock(Lcom/android/keyguard/KeyguardPatternView$OneHandMode;)V

    return-void
.end method

.method static synthetic access$2802(Lcom/android/keyguard/KeyguardPatternView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;
    .param p1, "x1"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mRightPressed:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardPatternView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/keyguard/KeyguardPatternView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;
    .param p1, "x1"    # Z

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPatternView;->enableClipping(Z)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/keyguard/KeyguardPatternView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->setOnehandPatternView()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardPatternView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCancelPatternRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/KeyguardPatternView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mInstructionsMessageRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/KeyguardPatternView;)Landroid/os/AsyncTask;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/keyguard/KeyguardPatternView;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;
    .param p1, "x1"    # Landroid/os/AsyncTask;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method private disableDevicePermanently()V
    .locals 3

    .prologue
    .line 1043
    const-string v0, "SecurityPatternView"

    const-string v1, "disableDevicePermanently start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/sec/SecLockPatternView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/SecLockPatternView;->clearPattern()V

    .line 1047
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/sec/SecLockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecLockPatternView;->setEnabled(Z)V

    .line 1048
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackUpButtonView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1049
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    const v2, 0x1040be4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 1050
    return-void
.end method

.method private displayDefaultSecurityMessage()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 468
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSimpleHelpText()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 469
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const/16 v1, 0x64

    invoke-interface {v0, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setTimeout(I)V

    .line 470
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const-string v1, " "

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 471
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const/16 v1, 0x1388

    invoke-interface {v0, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setTimeout(I)V

    .line 472
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyTabletUX()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    sget v0, Lcom/android/keyguard/R$string;->kg_pattern_instructions:I

    invoke-virtual {p0, v0, v2}, Lcom/android/keyguard/KeyguardPatternView;->setHintOrMessageText(IZ)V

    .line 483
    :goto_0
    return-void

    .line 475
    :cond_0
    const-string v0, ""

    invoke-virtual {p0, v0, v2}, Lcom/android/keyguard/KeyguardPatternView;->setHintOrMessageText(Ljava/lang/CharSequence;Z)V

    .line 476
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mInstructionsMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 477
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mInstructionsMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 478
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mInstructionsMessageRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 481
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$string;->kg_pattern_instructions:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/keyguard/KeyguardPatternView;->setHintOrMessageText(Ljava/lang/CharSequence;ZI)V

    goto :goto_0
.end method

.method private enableClipping(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 984
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardPatternView;->setClipChildren(Z)V

    .line 985
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 986
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 987
    return-void
.end method

.method private handleAttemptLockout(J)V
    .locals 9
    .param p1, "elapsedRealtimeDeadline"    # J

    .prologue
    .line 693
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/sec/SecLockPatternView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/SecLockPatternView;->clearPattern()V

    .line 694
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/sec/SecLockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecLockPatternView;->setEnabled(Z)V

    .line 695
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 697
    .local v6, "elapsedRealtime":J
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 699
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 701
    :cond_0
    new-instance v0, Lcom/android/keyguard/KeyguardPatternView$7;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/KeyguardPatternView$7;-><init>(Lcom/android/keyguard/KeyguardPatternView;JJ)V

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardPatternView$7;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 728
    return-void
.end method

.method private initCMASText()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1251
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCMASTextViewPattern:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1268
    :cond_0
    :goto_0
    return-void

    .line 1254
    :cond_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUSAFeature()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1255
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPresidentialCMASFeature()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1256
    const-string v0, "SecurityPatternView"

    const-string v1, "[SPR] Presidential Alert!! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCMASTextViewPattern:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->lockscreen_cmas_text_spr:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1262
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCMASTextViewPattern:Landroid/widget/TextView;

    sget v1, Lcom/android/keyguard/R$drawable;->ic_lockscreen_cmas:I

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1263
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->updateCMASText()V

    goto :goto_0

    .line 1259
    :cond_2
    const-string v0, "SecurityPatternView"

    const-string v1, "[No SPR] Emergency Alert!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCMASTextViewPattern:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->lockscreen_cmas_text_vzw:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1265
    :cond_3
    const-string v0, "SecurityPatternView"

    const-string v1, "[No USA model] disable CMAS Text!! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCMASTextViewPattern:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private isCenteredMessageArea()Z
    .locals 1

    .prologue
    .line 1066
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

.method private isDeviceDisabledForMaxFailedAttempt()Z
    .locals 7

    .prologue
    .line 1024
    const/4 v2, 0x0

    .line 1025
    .local v2, "isDeviceDisableForMaxFailedAttempt":Z
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "enterprise_policy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1027
    .local v1, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v1, :cond_0

    .line 1028
    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/enterprise/PasswordPolicy;->getMaximumFailedPasswordsForDeviceDisable()I

    move-result v3

    .line 1029
    .local v3, "maxNumFailedAttemptForDisable":I
    const-string v4, "SecurityPatternView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "max failed attempt for device disable :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    if-lez v3, :cond_0

    .line 1032
    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getCurrentFailedPasswordAttempts()I

    move-result v0

    .line 1033
    .local v0, "curNumFailedAttempts":I
    const-string v4, "SecurityPatternView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "current failed attempt for device  :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    if-lt v0, v3, :cond_1

    const/4 v2, 0x1

    .line 1038
    .end local v0    # "curNumFailedAttempts":I
    .end local v3    # "maxNumFailedAttemptForDisable":I
    :cond_0
    :goto_0
    const-string v4, "SecurityPatternView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isDeviceDisabledForMaxFailedAttempt return :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    return v2

    .line 1034
    .restart local v0    # "curNumFailedAttempts":I
    .restart local v3    # "maxNumFailedAttemptForDisable":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isHintMessageArea()Z
    .locals 1

    .prologue
    .line 1183
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestPhoneUX()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOnehandMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 991
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 997
    :cond_0
    :goto_0
    return v0

    .line 994
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardProperties;->isOneHandOperationEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 995
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isTactileFeedbackEnabled()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v4, -0x2

    const/4 v1, 0x0

    .line 1054
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyUX()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1055
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_screen_vibration_feedback"

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_1

    .line 1058
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1055
    goto :goto_0

    .line 1058
    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "VIB_FEEDBACK_MAGNITUDE"

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private maybeEnableFallback(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 640
    new-instance v0, Lcom/android/keyguard/KeyguardPatternView$AccountAnalyzer;

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/keyguard/KeyguardPatternView$AccountAnalyzer;-><init>(Lcom/android/keyguard/KeyguardPatternView;Landroid/accounts/AccountManager;Lcom/android/keyguard/KeyguardPatternView$1;)V

    .line 641
    .local v0, "accountAnalyzer":Lcom/android/keyguard/KeyguardPatternView$AccountAnalyzer;
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardPatternView$AccountAnalyzer;->start()V

    .line 642
    return-void
.end method

.method private movePatternLock(Lcom/android/keyguard/KeyguardPatternView$OneHandMode;)V
    .locals 4
    .param p1, "mode"    # Lcom/android/keyguard/KeyguardPatternView$OneHandMode;

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 895
    sget-object v1, Lcom/android/keyguard/KeyguardPatternView$OneHandMode;->Left:Lcom/android/keyguard/KeyguardPatternView$OneHandMode;

    if-ne p1, v1, :cond_3

    .line 896
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLeftArrowImage:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    .line 897
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLeftArrowImage:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 899
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mRightArrowImage:Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    .line 900
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mRightArrowImage:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 902
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecPatternArea:Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestPhoneUX()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecPatternArea:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_2

    .line 904
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecPatternArea:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 905
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    const v1, 0x800003

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 906
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->keyguard_one_hand_pattern_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 907
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 908
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecPatternArea:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 926
    .end local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    :goto_0
    return-void

    .line 910
    :cond_3
    sget-object v1, Lcom/android/keyguard/KeyguardPatternView$OneHandMode;->Right:Lcom/android/keyguard/KeyguardPatternView$OneHandMode;

    if-ne p1, v1, :cond_2

    .line 911
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLeftArrowImage:Landroid/widget/ImageButton;

    if-eqz v1, :cond_4

    .line 912
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLeftArrowImage:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 914
    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mRightArrowImage:Landroid/widget/ImageButton;

    if-eqz v1, :cond_5

    .line 915
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mRightArrowImage:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 917
    :cond_5
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecPatternArea:Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestPhoneUX()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecPatternArea:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_2

    .line 919
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecPatternArea:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 920
    .restart local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    const v1, 0x800005

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 921
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 922
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->keyguard_one_hand_pattern_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 923
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecPatternArea:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private registerOnehandAnyScreenObserver()V
    .locals 4

    .prologue
    .line 1072
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->isOnehandMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1076
    :goto_0
    return-void

    .line 1074
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "any_screen_running"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mOnehandAnyScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method private resizeKeyboardScreen()V
    .locals 7

    .prologue
    .line 1141
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportMobileKeyboard()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->isOnehandMode()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1180
    :cond_0
    :goto_0
    return-void

    .line 1144
    :cond_1
    sget v5, Lcom/android/keyguard/R$id;->lockPatternView:I

    invoke-virtual {p0, v5}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1145
    .local v4, "patternview":Landroid/view/View;
    sget v5, Lcom/android/keyguard/R$id;->textview_keyguard_message_area:I

    invoke-virtual {p0, v5}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1146
    .local v0, "massagearea":Landroid/view/View;
    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    .line 1149
    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isMobileKeygboardConnected(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1150
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$dimen;->keyguard_pattern_view_min_height:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v3, v5

    .line 1152
    .local v3, "patternViewHeight":I
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$dimen;->keyguard_pattern_message_area_min_margin_bottom:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v1, v5

    .line 1154
    .local v1, "messageAreaMaginBottom":I
    if-eqz v4, :cond_2

    .line 1155
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1156
    .local v2, "params":Landroid/widget/FrameLayout$LayoutParams;
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1157
    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1159
    .end local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    if-eqz v0, :cond_0

    .line 1160
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1161
    .restart local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1162
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1165
    .end local v1    # "messageAreaMaginBottom":I
    .end local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "patternViewHeight":I
    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$dimen;->keyguard_pattern_view_max_height:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v3, v5

    .line 1167
    .restart local v3    # "patternViewHeight":I
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$dimen;->keyguard_pattern_message_area_max_margin_bottom:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v1, v5

    .line 1169
    .restart local v1    # "messageAreaMaginBottom":I
    if-eqz v4, :cond_4

    .line 1170
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1171
    .restart local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1172
    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1174
    .end local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_4
    if-eqz v0, :cond_0

    .line 1175
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1176
    .restart local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1177
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private setOnehandPatternView()V
    .locals 6

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1098
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->isOnehandMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1099
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isEasyOneHandRunning(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1100
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mLeftArrowImage:Landroid/widget/ImageButton;

    if-eqz v3, :cond_0

    .line 1101
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mLeftArrowImage:Landroid/widget/ImageButton;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1103
    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mRightArrowImage:Landroid/widget/ImageButton;

    if-eqz v3, :cond_1

    .line 1104
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mRightArrowImage:Landroid/widget/ImageButton;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1106
    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mOnehandLockPattern:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 1107
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isAmericanoLook()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1109
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mOnehandLockPattern:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1110
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1111
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mOnehandLockPattern:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1138
    .end local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    :goto_0
    return-void

    .line 1112
    :cond_3
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestPhoneUX()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1114
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mOnehandLockPattern:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1115
    .restart local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v3, 0x51

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1116
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mOnehandLockPattern:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1118
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecPatternArea:Landroid/view/View;

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestPhoneUX()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecPatternArea:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_2

    .line 1120
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecPatternArea:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1121
    .restart local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1122
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 1123
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 1124
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecPatternArea:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1129
    .end local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_4
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "onehand_direction"

    const/4 v5, -0x2

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_5

    :goto_1
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mRightPressed:Z

    .line 1131
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mRightPressed:Z

    if-eqz v1, :cond_6

    .line 1132
    sget-object v1, Lcom/android/keyguard/KeyguardPatternView$OneHandMode;->Right:Lcom/android/keyguard/KeyguardPatternView$OneHandMode;

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardPatternView;->movePatternLock(Lcom/android/keyguard/KeyguardPatternView$OneHandMode;)V

    goto :goto_0

    :cond_5
    move v1, v2

    .line 1129
    goto :goto_1

    .line 1134
    :cond_6
    sget-object v1, Lcom/android/keyguard/KeyguardPatternView$OneHandMode;->Left:Lcom/android/keyguard/KeyguardPatternView$OneHandMode;

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardPatternView;->movePatternLock(Lcom/android/keyguard/KeyguardPatternView$OneHandMode;)V

    goto :goto_0
.end method

.method private unregisterOnehandAnyScreenObserver()V
    .locals 4

    .prologue
    .line 1081
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->isOnehandMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1088
    :goto_0
    return-void

    .line 1084
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mOnehandAnyScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1085
    :catch_0
    move-exception v0

    .line 1086
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "SecurityPatternView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Observer not registered : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateFooter(Lcom/android/keyguard/KeyguardPatternView$FooterMode;)V
    .locals 4
    .param p1, "mode"    # Lcom/android/keyguard/KeyguardPatternView$FooterMode;

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 356
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLastFooterMode:Lcom/android/keyguard/KeyguardPatternView$FooterMode;

    .line 357
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackupPINButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    if-nez v0, :cond_1

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    sget-object v0, Lcom/android/keyguard/KeyguardPatternView$15;->$SwitchMap$com$android$keyguard$KeyguardPatternView$FooterMode:[I

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardPatternView$FooterMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 362
    :pswitch_0
    const-string v0, "SecurityPatternView"

    const-string v1, "mode normal"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackupPINButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 364
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackUpButtonView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 365
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPatternView;->isBouncerShowing:Z

    if-nez v0, :cond_2

    .line 366
    new-instance v0, Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 368
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mBottomAreaNormal:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 369
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCMASTextViewPattern:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCMASTextViewPattern:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 373
    :pswitch_1
    const-string v0, "SecurityPatternView"

    const-string v1, "mode ForgotLockPattern"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 375
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->savedBackupPinExists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 376
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackupPINButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 379
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackUpButtonView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 380
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPatternView;->isBouncerShowing:Z

    if-nez v0, :cond_3

    .line 381
    new-instance v1, Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->isCenteredMessageArea()Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, p0

    :goto_2
    invoke-direct {v1, v0}, Lcom/android/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 384
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mBottomAreaNormal:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 385
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->updateCMASText()V

    goto :goto_0

    .line 378
    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackupPINButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 381
    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackUpButtonView:Landroid/view/View;

    goto :goto_2

    .line 388
    :pswitch_2
    const-string v0, "SecurityPatternView"

    const-string v1, "mode BackupPIN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackupPINButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 390
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackUpButtonView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 391
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPatternView;->isBouncerShowing:Z

    if-nez v0, :cond_6

    .line 392
    new-instance v1, Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->isCenteredMessageArea()Z

    move-result v0

    if-eqz v0, :cond_7

    move-object v0, p0

    :goto_3
    invoke-direct {v1, v0}, Lcom/android/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 395
    :cond_6
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mBottomAreaNormal:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 396
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->updateCMASText()V

    goto/16 :goto_0

    .line 392
    :cond_7
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackUpButtonView:Landroid/view/View;

    goto :goto_3

    .line 399
    :pswitch_3
    const-string v0, "SecurityPatternView"

    const-string v1, "mode VerifyUnlocked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackupPINButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 401
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackUpButtonView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 402
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mBottomAreaNormal:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 403
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCMASTextViewPattern:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCMASTextViewPattern:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 360
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public cleanUp()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 491
    const-string v0, "SecurityPatternView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cleanup() called on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iput-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 493
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/sec/SecLockPatternView;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/sec/SecLockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 494
    return-void
.end method

.method public createAnimation(Lcom/android/internal/widget/LockPatternView$CellState;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 10
    .param p1, "animatedCell"    # Lcom/android/internal/widget/LockPatternView$CellState;
    .param p2, "delay"    # J
    .param p4, "duration"    # J
    .param p6, "translationY"    # F
    .param p7, "appearing"    # Z
    .param p8, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p9, "finishListener"    # Ljava/lang/Runnable;

    .prologue
    .line 1010
    if-eqz p9, :cond_0

    .line 1012
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mEcaView:Landroid/view/View;

    const/4 v9, 0x0

    move-wide v2, p2

    move-wide v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lcom/android/settingslib/animation/AppearAnimationUtils;->createAnimation(Landroid/view/View;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 1015
    :cond_0
    return-void
.end method

.method public bridge synthetic createAnimation(Ljava/lang/Object;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 10
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # J
    .param p4, "x2"    # J
    .param p6, "x3"    # F
    .param p7, "x4"    # Z
    .param p8, "x5"    # Landroid/view/animation/Interpolator;
    .param p9, "x6"    # Ljava/lang/Runnable;

    .prologue
    .line 98
    move-object v1, p1

    check-cast v1, Lcom/android/internal/widget/LockPatternView$CellState;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/android/keyguard/KeyguardPatternView;->createAnimation(Lcom/android/internal/widget/LockPatternView$CellState;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    return-void
.end method

.method public getCallback()Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1

    .prologue
    .line 769
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method public getFailedAttemptMessage(I)Ljava/lang/CharSequence;
    .locals 10
    .param p1, "attempts"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 599
    sget-boolean v6, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v6, :cond_4

    .line 600
    const/4 v3, 0x0

    .line 601
    .local v3, "remaining":I
    iget-object v6, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v0

    .line 603
    .local v0, "failedAttemptsBeforeWipe":I
    if-lez v0, :cond_0

    move v1, v4

    .line 604
    .local v1, "isITPolicyEnabled":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 605
    sub-int v3, v0, p1

    .line 608
    :goto_1
    if-ne v3, v4, :cond_2

    .line 609
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/keyguard/R$string;->kg_wrong_pattern:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/keyguard/R$string;->kg_1_attempt_remaining:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 621
    .end local v0    # "failedAttemptsBeforeWipe":I
    .end local v1    # "isITPolicyEnabled":Z
    .end local v3    # "remaining":I
    .local v2, "message":Ljava/lang/CharSequence;
    :goto_2
    return-object v2

    .end local v2    # "message":Ljava/lang/CharSequence;
    .restart local v0    # "failedAttemptsBeforeWipe":I
    .restart local v3    # "remaining":I
    :cond_0
    move v1, v5

    .line 603
    goto :goto_0

    .line 607
    .restart local v1    # "isITPolicyEnabled":Z
    :cond_1
    rsub-int/lit8 v3, p1, 0x5

    goto :goto_1

    .line 611
    :cond_2
    const/16 v6, 0xa

    if-gt v3, v6, :cond_3

    if-le v3, v4, :cond_3

    .line 613
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/keyguard/R$string;->kg_wrong_pattern:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/keyguard/R$string;->kg_n_attempts_remaining:I

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v5

    invoke-virtual {v7, v8, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "message":Ljava/lang/CharSequence;
    goto :goto_2

    .line 616
    .end local v2    # "message":Ljava/lang/CharSequence;
    :cond_3
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/keyguard/R$string;->kg_wrong_pattern:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "message":Ljava/lang/CharSequence;
    goto :goto_2

    .line 619
    .end local v0    # "failedAttemptsBeforeWipe":I
    .end local v1    # "isITPolicyEnabled":Z
    .end local v2    # "message":Ljava/lang/CharSequence;
    .end local v3    # "remaining":I
    :cond_4
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/keyguard/R$string;->kg_wrong_pattern:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "message":Ljava/lang/CharSequence;
    goto :goto_2
.end method

.method public getFailedAutoWipeAttemptMessage()Ljava/lang/CharSequence;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 625
    const-string v1, ""

    .line 626
    .local v1, "message":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    invoke-virtual {v3, v4, v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(IZ)I

    move-result v0

    .line 627
    .local v0, "attempts":I
    rsub-int/lit8 v2, v0, 0x5

    .line 628
    .local v2, "remaining":I
    if-ne v2, v5, :cond_1

    .line 629
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/keyguard/R$string;->kg_1_attempt_remaining:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 634
    :cond_0
    :goto_0
    return-object v1

    .line 630
    :cond_1
    const/16 v3, 0xa

    if-gt v2, v3, :cond_0

    if-le v2, v5, :cond_0

    .line 632
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/keyguard/R$string;->kg_n_attempts_remaining:I

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 1019
    const/4 v0, 0x0

    return v0
.end method

.method public hideBouncer(I)V
    .locals 3
    .param p1, "duration"    # I

    .prologue
    const/4 v2, 0x0

    .line 852
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardPatternView;->isBouncerShowing:Z

    .line 853
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->isHintMessageArea()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mEcaBottomView:Landroid/view/View;

    .line 854
    .local v0, "appearedView":Landroid/view/View;
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardPatternView;->showHideBouncerKeyguardMessageArea(Z)V

    .line 855
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0, v2, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->hideBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 856
    return-void

    .line 853
    .end local v0    # "appearedView":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mEcaView:Landroid/view/View;

    goto :goto_0
.end method

.method protected isCountDownTimerRunning()Z
    .locals 1

    .prologue
    .line 731
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 736
    const/4 v0, 0x0

    return v0
.end method

.method public needsShowClockandNotifications()Z
    .locals 1

    .prologue
    .line 741
    const/4 v0, 0x1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 785
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 786
    new-instance v0, Lcom/android/keyguard/KeyguardPatternView$8;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/KeyguardPatternView$8;-><init>(Lcom/android/keyguard/KeyguardPatternView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mWhiteWallpaperObserver:Landroid/database/ContentObserver;

    .line 799
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "white_lockscreen_wallpaper"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mWhiteWallpaperObserver:Landroid/database/ContentObserver;

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 802
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->registerOnehandAnyScreenObserver()V

    .line 803
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 832
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 833
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->resizeKeyboardScreen()V

    .line 834
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 821
    const-string v0, "SecurityPatternView"

    const-string v1, "onDetachedFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->unregisterOnehandAnyScreenObserver()V

    .line 825
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mWhiteWallpaperObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 826
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mWhiteWallpaperObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 828
    :cond_0
    return-void
.end method

.method public onEmergencyButtonClickedWhenInCall()V
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->reset()V

    .line 411
    return-void
.end method

.method protected onFinishInflate()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v3, 0x0

    .line 252
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 253
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "input_method"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 254
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v2, :cond_b

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    :goto_0
    iput-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 257
    sget v2, Lcom/android/keyguard/R$id;->lockPatternView:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/sec/SecLockPatternView;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/sec/SecLockPatternView;

    .line 258
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/sec/SecLockPatternView;

    invoke-virtual {v2, v3}, Lcom/android/keyguard/sec/SecLockPatternView;->setSaveEnabled(Z)V

    .line 259
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/sec/SecLockPatternView;

    invoke-virtual {v2, v3}, Lcom/android/keyguard/sec/SecLockPatternView;->setFocusable(Z)V

    .line 260
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/sec/SecLockPatternView;

    new-instance v4, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;-><init>(Lcom/android/keyguard/KeyguardPatternView;Lcom/android/keyguard/KeyguardPatternView$1;)V

    invoke-virtual {v2, v4}, Lcom/android/keyguard/sec/SecLockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 261
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/sec/SecLockPatternView;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mPatternUpdatorCallbacks:Lcom/android/keyguard/sec/SecLockPatternView$PatternUpdatorCallback;

    invoke-virtual {v2, v4}, Lcom/android/keyguard/sec/SecLockPatternView;->setPatternCallback(Lcom/android/keyguard/sec/SecLockPatternView$PatternUpdatorCallback;)V

    .line 265
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/sec/SecLockPatternView;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v2

    if-nez v2, :cond_c

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v4, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->setInStealthMode(Z)V

    .line 269
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/sec/SecLockPatternView;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/keyguard/sec/SecLockPatternView;->setTactileFeedbackEnabled(Z)V

    .line 271
    sget v2, Lcom/android/keyguard/R$id;->keyguard_emergency_carrier_area:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackUpButtonView:Landroid/view/View;

    .line 272
    sget v2, Lcom/android/keyguard/R$id;->sec_keyguard_bottom_area_normal:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mBottomAreaNormal:Landroid/view/View;

    .line 273
    sget v2, Lcom/android/keyguard/R$id;->sec_keyguard_cmas_text_view:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mCMASTextViewPattern:Landroid/widget/TextView;

    .line 275
    new-instance v2, Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 276
    sget v2, Lcom/android/keyguard/R$id;->keyguard_selector_fade_container:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mEcaView:Landroid/view/View;

    .line 277
    sget v2, Lcom/android/keyguard/R$id;->keyguard_bouncer_frame:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mContainer:Landroid/view/ViewGroup;

    .line 278
    sget v2, Lcom/android/keyguard/R$id;->backup_pin_button:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackupPINButton:Landroid/widget/Button;

    .line 279
    sget v2, Lcom/android/keyguard/R$id;->forgot_password_button:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    .line 281
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackupPINButton:Landroid/widget/Button;

    if-eqz v2, :cond_0

    .line 282
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackupPINButton:Landroid/widget/Button;

    sget v4, Lcom/android/keyguard/R$string;->kg_lockscreen_backup_pin_button_text:I

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(I)V

    .line 283
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackupPINButton:Landroid/widget/Button;

    new-instance v4, Lcom/android/keyguard/KeyguardPatternView$5;

    invoke-direct {v4, p0}, Lcom/android/keyguard/KeyguardPatternView$5;-><init>(Lcom/android/keyguard/KeyguardPatternView;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    if-eqz v2, :cond_1

    .line 291
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 292
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    sget v4, Lcom/android/keyguard/R$string;->kg_forgot_spass_button_text:I

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(I)V

    .line 293
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    new-instance v4, Lcom/android/keyguard/KeyguardPatternView$6;

    invoke-direct {v4, p0}, Lcom/android/keyguard/KeyguardPatternView$6;-><init>(Lcom/android/keyguard/KeyguardPatternView;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    :cond_1
    sget v2, Lcom/android/keyguard/R$id;->emergency_call_button:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/EmergencyButton;

    .line 301
    .local v1, "button":Lcom/android/keyguard/EmergencyButton;
    if-eqz v1, :cond_2

    .line 302
    invoke-virtual {v1, p0}, Lcom/android/keyguard/EmergencyButton;->setCallback(Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;)V

    .line 304
    :cond_2
    sget v2, Lcom/android/keyguard/R$id;->sec_keyguard_bottom_area:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mEcaView:Landroid/view/View;

    .line 305
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->isHintMessageArea()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 306
    sget v2, Lcom/android/keyguard/R$id;->sec_keyguard_bottom_area_eca:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mEcaBottomView:Landroid/view/View;

    .line 307
    sget v2, Lcom/android/keyguard/R$id;->textview_keyguard_message_area:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    .line 309
    :cond_3
    sget v2, Lcom/android/keyguard/R$id;->keyguard_bouncer_frame:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardBouncerFrameView:Landroid/view/View;

    .line 310
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardBouncerFrameView:Landroid/view/View;

    if-eqz v2, :cond_4

    .line 311
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardBouncerFrameView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 312
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardBouncerFrameView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    .line 315
    :cond_4
    sget v2, Lcom/android/keyguard/R$id;->keyguard_message_area:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardMessageArea;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mHelpMessage:Lcom/android/keyguard/KeyguardMessageArea;

    .line 316
    sget v2, Lcom/android/keyguard/R$id;->keyguard_message_area_bouncer:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mBouncerKMA:Landroid/view/View;

    .line 317
    sget v2, Lcom/android/keyguard/R$id;->sec_emergency_button_area:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mBouncerEMA:Landroid/view/View;

    .line 319
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->isCenteredMessageArea()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->isHintMessageArea()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 320
    :cond_5
    sget v2, Lcom/android/keyguard/R$id;->keyguard_message_area_backup:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardMessageArea;

    .line 321
    .local v0, "backupHelpMessage":Landroid/view/View;
    if-eqz v0, :cond_6

    .line 322
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 326
    .end local v0    # "backupHelpMessage":Landroid/view/View;
    :cond_6
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->isOnehandMode()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 327
    sget v2, Lcom/android/keyguard/R$id;->onehand_lockpattern:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mOnehandLockPattern:Landroid/view/View;

    .line 328
    sget v2, Lcom/android/keyguard/R$id;->lockPatternView:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecPatternArea:Landroid/view/View;

    .line 329
    sget v2, Lcom/android/keyguard/R$id;->onehand_left_arrow_pattern:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mLeftArrowImage:Landroid/widget/ImageButton;

    .line 330
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mLeftArrowImage:Landroid/widget/ImageButton;

    if-eqz v2, :cond_7

    .line 331
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mLeftArrowImage:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mOnehandClickLitener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mLeftArrowImage:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$string;->keyguard_accessibility_one_hand_operation_left_handed:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 335
    :cond_7
    sget v2, Lcom/android/keyguard/R$id;->onehand_right_arrow_pattern:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mRightArrowImage:Landroid/widget/ImageButton;

    .line 336
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mRightArrowImage:Landroid/widget/ImageButton;

    if-eqz v2, :cond_8

    .line 337
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mRightArrowImage:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mOnehandClickLitener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mRightArrowImage:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$string;->keyguard_accessibility_one_hand_operation_right_handed:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 342
    :cond_8
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->setOnehandPatternView()V

    .line 346
    :cond_9
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 347
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->disableDevicePermanently()V

    .line 349
    :cond_a
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->isTactileFeedbackEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mIsTactileFeedbackEnabled:Z

    .line 350
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mVibraterService:Landroid/os/Vibrator;

    .line 352
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->initCMASText()V

    .line 353
    return-void

    .line 254
    .end local v1    # "button":Lcom/android/keyguard/EmergencyButton;
    :cond_b
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    goto/16 :goto_0

    :cond_c
    move v2, v3

    .line 265
    goto/16 :goto_1
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 746
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 747
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 748
    iput-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 750
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    .line 751
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mPendingLockCheck:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 752
    iput-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 754
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_2

    .line 755
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 756
    iput-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    .line 758
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mInstructionsMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 759
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mInstructionsMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 760
    :cond_3
    return-void
.end method

.method public onResume(I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    .line 764
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->reset()V

    .line 765
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 415
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 419
    .local v2, "result":Z
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/keyguard/KeyguardPatternView;->mLastPokeTime:J

    sub-long v0, v4, v6

    .line 420
    .local v0, "elapsed":J
    if-eqz v2, :cond_0

    const-wide/16 v4, 0x1af4

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    .line 421
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mLastPokeTime:J

    .line 423
    :cond_0
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 424
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/sec/SecLockPatternView;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v5}, Lcom/android/keyguard/KeyguardPatternView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 425
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 426
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/sec/SecLockPatternView;

    invoke-virtual {v4, p1}, Lcom/android/keyguard/sec/SecLockPatternView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    .line 427
    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 428
    return v2

    :cond_2
    move v2, v3

    .line 426
    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 498
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 499
    const-string v0, "SecurityPatternView"

    const-string v1, "onWindowFocusChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    if-eqz p1, :cond_0

    .line 502
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->reset()V

    .line 504
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 432
    const-string v2, "SecurityPatternView"

    const-string v3, "reset"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/sec/SecLockPatternView;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/SecLockPatternView;->enableInput()V

    .line 438
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/sec/SecLockPatternView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/keyguard/sec/SecLockPatternView;->setEnabled(Z)V

    .line 439
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/sec/SecLockPatternView;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/SecLockPatternView;->clearPattern()V

    .line 442
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->resizeKeyboardScreen()V

    .line 443
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v2

    if-nez v2, :cond_3

    .line 445
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    .line 447
    .local v0, "deadline":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 448
    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/KeyguardPatternView;->handleAttemptLockout(J)V

    .line 452
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mTotalFailedPatternAttempts:I

    .line 453
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->isVerifyUnlockOnly()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 454
    sget-object v2, Lcom/android/keyguard/KeyguardPatternView$FooterMode;->VerifyUnlocked:Lcom/android/keyguard/KeyguardPatternView$FooterMode;

    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardPatternView;->updateFooter(Lcom/android/keyguard/KeyguardPatternView$FooterMode;)V

    .line 464
    .end local v0    # "deadline":J
    :goto_1
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->setOnehandPatternView()V

    .line 465
    return-void

    .line 450
    .restart local v0    # "deadline":J
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->displayDefaultSecurityMessage()V

    goto :goto_0

    .line 455
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->savedBackupPinExists()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mTotalFailedPatternAttempts:I

    const/4 v3, 0x5

    if-lt v2, v3, :cond_2

    .line 457
    sget-object v2, Lcom/android/keyguard/KeyguardPatternView$FooterMode;->BackupPIN:Lcom/android/keyguard/KeyguardPatternView$FooterMode;

    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardPatternView;->updateFooter(Lcom/android/keyguard/KeyguardPatternView$FooterMode;)V

    goto :goto_1

    .line 459
    :cond_2
    sget-object v2, Lcom/android/keyguard/KeyguardPatternView$FooterMode;->Normal:Lcom/android/keyguard/KeyguardPatternView$FooterMode;

    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardPatternView;->updateFooter(Lcom/android/keyguard/KeyguardPatternView$FooterMode;)V

    goto :goto_1

    .line 462
    .end local v0    # "deadline":J
    :cond_3
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->disableDevicePermanently()V

    goto :goto_1
.end method

.method protected setHintOrMessageText(IZ)V
    .locals 2
    .param p1, "resId"    # I
    .param p2, "important"    # Z

    .prologue
    .line 1207
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1388

    invoke-virtual {p0, v0, p2, v1}, Lcom/android/keyguard/KeyguardPatternView;->setHintOrMessageText(Ljava/lang/CharSequence;ZI)V

    .line 1208
    return-void
.end method

.method protected setHintOrMessageText(Ljava/lang/CharSequence;Z)V
    .locals 1
    .param p1, "hint"    # Ljava/lang/CharSequence;
    .param p2, "important"    # Z

    .prologue
    .line 1211
    const/16 v0, 0x1388

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardPatternView;->setHintOrMessageText(Ljava/lang/CharSequence;ZI)V

    .line 1212
    return-void
.end method

.method protected setHintOrMessageText(Ljava/lang/CharSequence;ZI)V
    .locals 6
    .param p1, "hint"    # Ljava/lang/CharSequence;
    .param p2, "important"    # Z
    .param p3, "timeout"    # I

    .prologue
    const/4 v1, 0x0

    .line 1215
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->updateBlackTextOnWhiteWallpaper()V

    .line 1216
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->isHintMessageArea()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1217
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v2, p1, p2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 1248
    :cond_0
    :goto_0
    return-void

    .line 1218
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 1219
    const-string v2, "ko"

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getCurrentLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1220
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$dimen;->kg_status_help_font_size_kor:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1221
    :cond_2
    const/16 v2, 0x3e8

    if-ne p3, v2, :cond_3

    const/4 v1, 0x1

    .line 1222
    .local v1, "isCountDownTimer":Z
    :cond_3
    if-eqz v1, :cond_5

    .line 1223
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 1242
    :goto_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mClearMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1243
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mClearMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1244
    :cond_4
    if-lez p3, :cond_0

    .line 1245
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mClearMessageRunnable:Ljava/lang/Runnable;

    int-to-long v4, p3

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1225
    :cond_5
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1226
    .local v0, "fadeIn":Landroid/view/animation/Animation;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 1227
    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1228
    new-instance v2, Lcom/android/keyguard/KeyguardPatternView$14;

    invoke-direct {v2, p0, p1}, Lcom/android/keyguard/KeyguardPatternView$14;-><init>(Lcom/android/keyguard/KeyguardPatternView;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1239
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1240
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 244
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 248
    return-void
.end method

.method protected setNullHintMessage()V
    .locals 2

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mClearMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1199
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mClearMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1200
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1201
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 1202
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1204
    :cond_1
    return-void
.end method

.method public showBouncer(I)V
    .locals 4
    .param p1, "duration"    # I

    .prologue
    const/4 v3, 0x1

    .line 838
    iput-boolean v3, p0, Lcom/android/keyguard/KeyguardPatternView;->isBouncerShowing:Z

    .line 839
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->isHintMessageArea()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mEcaBottomView:Landroid/view/View;

    .line 840
    .local v0, "disappearedView":Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardBouncerFrameView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 841
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardBouncerFrameView:Landroid/view/View;

    sget v2, Lcom/android/keyguard/KeyguardPatternView;->BOUNCER_FRAME_BACKGROUND_COLOR:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 842
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardBouncerFrameView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    .line 844
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardBouncerFrameView:Landroid/view/View;

    invoke-static {v1, v0, v2, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->showBouncerWithScaleAnimation(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/view/View;I)V

    .line 845
    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardPatternView;->showHideBouncerKeyguardMessageArea(Z)V

    .line 846
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mInstructionsMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 847
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mInstructionsMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 848
    :cond_1
    return-void

    .line 839
    .end local v0    # "disappearedView":Landroid/view/View;
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mEcaView:Landroid/view/View;

    goto :goto_0
.end method

.method public showHideBouncerKeyguardMessageArea(Z)V
    .locals 5
    .param p1, "show"    # Z

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 859
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->isHintMessageArea()Z

    move-result v1

    if-nez v1, :cond_1

    .line 860
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mBouncerKMA:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 861
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mBouncerKMA:Landroid/view/View;

    if-eqz p1, :cond_5

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 862
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->isCenteredMessageArea()Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v0, p0

    .line 863
    .local v0, "view":Landroid/view/View;
    :goto_1
    new-instance v1, Lcom/android/keyguard/KeyguardMessageArea$Helper;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mBouncerKMA:Landroid/view/View;

    .end local v0    # "view":Landroid/view/View;
    :cond_0
    invoke-direct {v1, v0}, Lcom/android/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 866
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mBouncerEMA:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardProperties;->isPhoneShortcutEnable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 867
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mBouncerEMA:Landroid/view/View;

    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mEMAPress:Z

    if-eqz v4, :cond_2

    if-eqz p1, :cond_2

    move v3, v2

    :cond_2
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 868
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mEMAPress:Z

    .line 870
    :cond_3
    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->isHintMessageArea()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->isCountDownTimerRunning()Z

    move-result v1

    if-nez v1, :cond_4

    .line 871
    sget v1, Lcom/android/keyguard/R$string;->kg_pattern_bouncer_instructions:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/keyguard/KeyguardPatternView;->setHintOrMessageText(IZ)V

    .line 873
    :cond_4
    return-void

    :cond_5
    move v1, v3

    .line 861
    goto :goto_0

    .line 862
    :cond_6
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackUpButtonView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_7

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackUpButtonView:Landroid/view/View;

    goto :goto_1

    :cond_7
    move-object v0, p0

    goto :goto_1
.end method

.method public showPromptReason(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 774
    packed-switch p1, :pswitch_data_0

    .line 781
    :goto_0
    return-void

    .line 776
    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v1, Lcom/android/keyguard/R$string;->kg_prompt_reason_restart_pattern:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto :goto_0

    .line 774
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public showUsabilityHint()V
    .locals 0

    .prologue
    .line 487
    return-void
.end method

.method public startAppearAnimation()V
    .locals 10

    .prologue
    const-wide/16 v2, 0x0

    .line 930
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPatternView;->enableClipping(Z)V

    .line 931
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPatternView;->setAlpha(F)V

    .line 932
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    invoke-virtual {v0}, Lcom/android/settingslib/animation/AppearAnimationUtils;->getStartTranslation()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPatternView;->setTranslationY(F)V

    .line 933
    const-wide/16 v4, 0x1f4

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    invoke-virtual {v0}, Lcom/android/settingslib/animation/AppearAnimationUtils;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v7

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/android/settingslib/animation/AppearAnimationUtils;->startTranslationYAnimation(Landroid/view/View;JJFLandroid/view/animation/Interpolator;)V

    .line 935
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/sec/SecLockPatternView;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/SecLockPatternView;->getCellStates()[[Lcom/android/internal/widget/LockPatternView$CellState;

    move-result-object v1

    new-instance v4, Lcom/android/keyguard/KeyguardPatternView$10;

    invoke-direct {v4, p0}, Lcom/android/keyguard/KeyguardPatternView$10;-><init>(Lcom/android/keyguard/KeyguardPatternView;)V

    invoke-virtual {v0, v1, v4, p0}, Lcom/android/settingslib/animation/AppearAnimationUtils;->startAnimation2d([[Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/settingslib/animation/AppearAnimationCreator;)V

    .line 944
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mHelpMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardMessageArea;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 945
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mHelpMessage:Lcom/android/keyguard/KeyguardMessageArea;

    const-wide/16 v4, 0xdc

    iget-object v6, p0, Lcom/android/keyguard/KeyguardPatternView;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    invoke-virtual {v6}, Lcom/android/settingslib/animation/AppearAnimationUtils;->getStartTranslation()F

    move-result v6

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/keyguard/KeyguardPatternView;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    invoke-virtual {v8}, Lcom/android/settingslib/animation/AppearAnimationUtils;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Lcom/android/settingslib/animation/AppearAnimationUtils;->createAnimation(Landroid/view/View;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 952
    :cond_0
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 11
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v10, 0x0

    .line 956
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/sec/SecLockPatternView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/SecLockPatternView;->clearPattern()V

    .line 957
    invoke-direct {p0, v10}, Lcom/android/keyguard/KeyguardPatternView;->enableClipping(Z)V

    .line 958
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPatternView;->setTranslationY(F)V

    .line 959
    const-wide/16 v4, 0x12c

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    invoke-virtual {v0}, Lcom/android/settingslib/animation/DisappearAnimationUtils;->getStartTranslation()F

    move-result v0

    neg-float v6, v0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    invoke-virtual {v0}, Lcom/android/settingslib/animation/DisappearAnimationUtils;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v7

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/android/settingslib/animation/AppearAnimationUtils;->startTranslationYAnimation(Landroid/view/View;JJFLandroid/view/animation/Interpolator;)V

    .line 962
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/sec/SecLockPatternView;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/SecLockPatternView;->getCellStates()[[Lcom/android/internal/widget/LockPatternView$CellState;

    move-result-object v1

    new-instance v4, Lcom/android/keyguard/KeyguardPatternView$11;

    invoke-direct {v4, p0, p1}, Lcom/android/keyguard/KeyguardPatternView$11;-><init>(Lcom/android/keyguard/KeyguardPatternView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v4, p0}, Lcom/android/settingslib/animation/DisappearAnimationUtils;->startAnimation2d([[Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/settingslib/animation/AppearAnimationCreator;)V

    .line 972
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mHelpMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardMessageArea;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 973
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mHelpMessage:Lcom/android/keyguard/KeyguardMessageArea;

    const-wide/16 v4, 0xc8

    iget-object v6, p0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    invoke-virtual {v6}, Lcom/android/settingslib/animation/DisappearAnimationUtils;->getStartTranslation()F

    move-result v6

    neg-float v6, v6

    const/high16 v7, 0x40400000    # 3.0f

    mul-float/2addr v6, v7

    iget-object v7, p0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    invoke-virtual {v7}, Lcom/android/settingslib/animation/DisappearAnimationUtils;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v8

    const/4 v9, 0x0

    move v7, v10

    invoke-virtual/range {v0 .. v9}, Lcom/android/settingslib/animation/DisappearAnimationUtils;->createAnimation(Landroid/view/View;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 980
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected updateBlackTextOnWhiteWallpaper()V
    .locals 5

    .prologue
    .line 806
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 807
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mUseBlackTextOnWhiteWallpaper:Z

    if-eqz v0, :cond_1

    .line 808
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    const v1, -0xbbbbbc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 809
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getShadowDx()F

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getShadowDy()F

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 817
    :cond_0
    :goto_0
    return-void

    .line 812
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$color;->keyguard_message_area_hint_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 813
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getShadowDx()F

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getShadowDy()F

    move-result v3

    const/high16 v4, -0x80000000

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_0
.end method

.method public updateCMASText()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v2, 0x0

    .line 1271
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mCMASTextViewPattern:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1293
    :cond_0
    :goto_0
    return-void

    .line 1273
    :cond_1
    const/4 v0, 0x0

    .line 1275
    .local v0, "disableNoti":Z
    :try_start_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_screen_show_notifications"

    const/4 v5, -0x2

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_2

    const/4 v0, 0x1

    .line 1281
    :goto_1
    const-string v3, "SecurityPatternView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disableNoti = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUSAFeature()Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    .line 1283
    const-string v3, "SecurityPatternView"

    const-string v4, "updateCMASText( )"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isShowingCMAS()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1285
    const-string v3, "SecurityPatternView"

    const-string v4, "updateCMASText( setVisibility = VISIBLE )"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mCMASTextViewPattern:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1275
    goto :goto_1

    .line 1277
    :catch_0
    move-exception v1

    .line 1278
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "SecurityPatternView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCMASText() can not found setting"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    const/4 v0, 0x0

    goto :goto_1

    .line 1288
    .end local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_3
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mCMASTextViewPattern:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1291
    :cond_4
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mCMASTextViewPattern:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
