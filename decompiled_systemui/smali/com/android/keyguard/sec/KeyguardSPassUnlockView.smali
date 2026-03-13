.class public Lcom/android/keyguard/sec/KeyguardSPassUnlockView;
.super Landroid/widget/LinearLayout;
.source "KeyguardSPassUnlockView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;
.implements Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/KeyguardSPassUnlockView$AccountAnalyzer;
    }
.end annotation


# static fields
.field private static final ATTRIBUTIONVIEW_SET_ENABLE:I = 0x10

.field private static final DEBUG:Z = true

.field private static final OVERLAY_PREF_KEY:Ljava/lang/String; = "KeyguardSPassHelpOverlayGuide"

.field private static final POPUP_PREF_KEY:Ljava/lang/String; = "KeyguardSPassPopupGuideInt"

.field private static final REPORT_FAILED_UNLOK_ATTEMPTS:I = 0xf

.field private static final SHOW_BACKUP_PASSWORD_BUTTON:I = 0xd

.field private static final SHOW_BACKUP_PASSWORD_LOCKSCREEN:I = 0xc

.field private static final SHOW_FINGERPRINT_ERROR_MESSAGE:I = 0xa

.field private static final SHOW_FINGERPRINT_ERROR_POPUP:I = 0xb

.field private static final SHOW_FINGER_PRINT_GUIDE_ANIMATION:I = 0xe

.field private static final TAG:Ljava/lang/String; = "KeyguardSPassUnlockView"

.field private static mAnimationBottomMarginAttributionEnabled:I

.field private static mAnimationBottomMarginNormal:I

.field private static mAnimationView:Landroid/widget/ImageView;

.field public static mEnableFallback:Z

.field private static mErrorAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private static mStatusImage:Landroid/widget/ImageView;


# instance fields
.field private mAccountButton:Landroid/widget/Button;

.field private mAffordanceAnim:Landroid/view/animation/Animation;

.field private mAffordanceAnimListner:Landroid/view/animation/Animation$AnimationListener;

.field private mAnimationBottomMargin:F

.field private mAnimationContainer:Landroid/widget/FrameLayout;

.field protected mAttributeViewEnabled:Z

.field private mAttributionView:Landroid/view/View;

.field private mAttributionViewEnableHandlerId:I

.field private mBackupPasswordButton:Landroid/widget/Button;

.field protected mBouncerEMA:Landroid/view/View;

.field private mBouncerFrame:Landroid/graphics/drawable/Drawable;

.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private final mClearErrorAnimationRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mDisplay:Landroid/view/Display;

.field protected mEMAPress:Z

.field private mEcaView:Landroid/view/View;

.field private mErrorTextEnterAnim:Landroid/view/animation/Animation;

.field private mErrorTextExitAnim:Landroid/view/animation/Animation;

.field private mFadeInAnim:Landroid/view/animation/Animation;

.field private mFadeOutAnim:Landroid/view/animation/Animation;

.field private mFadeOutAnimListner:Landroid/view/animation/Animation$AnimationListener;

.field private mFingerprintViewHeight:F

.field private mHandler:Landroid/os/Handler;

.field private mKeyguardMessageBottomArea:Lcom/android/keyguard/KeyguardMessageArea;

.field private mKeyguardSpassUnlockThread:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOrientationEventListener:Landroid/view/OrientationEventListener;

.field private mPopupDismissCallback:Lcom/android/keyguard/sec/SecPopupManager$PopupDismissCallback;

.field private final mReStartSenSorRunnable:Ljava/lang/Runnable;

.field private mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

.field private mStandbyAnim:Landroid/view/animation/Animation;

.field private mStatusText:Landroid/widget/TextView;

.field private mTTS:Landroid/speech/tts/TextToSpeech;

.field private mTalkbackEnabled:Z

.field private mTotalFailedSPassAttempts:I

.field private mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mUseBlackTextOnWhiteWallpaper:Z

.field private mWhiteWallpaperObserver:Landroid/database/ContentObserver;

.field private shouldNotShowArrow:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 153
    sput v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationBottomMarginAttributionEnabled:I

    .line 154
    sput v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationBottomMarginNormal:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 258
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 259
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 262
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 133
    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAttributionView:Landroid/view/View;

    .line 134
    iput v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAttributionViewEnableHandlerId:I

    .line 135
    iput v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mTotalFailedSPassAttempts:I

    .line 141
    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->shouldNotShowArrow:Z

    .line 142
    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAttributeViewEnabled:Z

    .line 145
    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mUseBlackTextOnWhiteWallpaper:Z

    .line 146
    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    .line 149
    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEMAPress:Z

    .line 150
    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mTalkbackEnabled:Z

    .line 152
    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 157
    new-instance v2, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$1;-><init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 205
    new-instance v2, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$2;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3, v4, v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$2;-><init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    .line 235
    new-instance v2, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$3;

    invoke-direct {v2, p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$3;-><init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mReStartSenSorRunnable:Ljava/lang/Runnable;

    .line 246
    new-instance v2, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$4;

    invoke-direct {v2, p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$4;-><init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mClearErrorAnimationRunnable:Ljava/lang/Runnable;

    .line 811
    new-instance v2, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$8;

    invoke-direct {v2, p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$8;-><init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAffordanceAnimListner:Landroid/view/animation/Animation$AnimationListener;

    .line 831
    new-instance v2, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$9;

    invoke-direct {v2, p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$9;-><init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mFadeOutAnimListner:Landroid/view/animation/Animation$AnimationListener;

    .line 845
    new-instance v2, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$10;

    invoke-direct {v2, p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$10;-><init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mPopupDismissCallback:Lcom/android/keyguard/sec/SecPopupManager$PopupDismissCallback;

    .line 263
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    .line 264
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 265
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 266
    new-instance v2, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mKeyguardSpassUnlockThread:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    .line 267
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mKeyguardSpassUnlockThread:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->start()V

    .line 268
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "white_lockscreen_wallpaper"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mUseBlackTextOnWhiteWallpaper:Z

    .line 269
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->checkTalkBackEnabled()V

    .line 270
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mTalkbackEnabled:Z

    if-eqz v0, :cond_0

    .line 271
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mTTS:Landroid/speech/tts/TextToSpeech;

    .line 273
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mDisplay:Landroid/view/Display;

    .line 274
    return-void

    :cond_1
    move v0, v1

    .line 268
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Lcom/android/keyguard/sec/SecPopupManager$PopupDismissCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mPopupDismissCallback:Lcom/android/keyguard/sec/SecPopupManager$PopupDismissCallback;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mKeyguardSpassUnlockThread:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    return-object v0
.end method

.method static synthetic access$1200()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->shouldNotShowArrow:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->resetErrorMessage()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->disableDevicePermanently()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->updateArrowAnimation()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStandbyAnim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEcaView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassUnlockView;
    .param p1, "x1"    # Landroid/os/CountDownTimer;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassUnlockView;
    .param p1, "x1"    # I

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->handleUpdateFingerPrintAnimation(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassUnlockView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->handleShowErrorMessage(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassUnlockView;
    .param p1, "x1"    # I

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->handleShowErrorPopup(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->handleShowBackupPasswordButton()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->handleShowBackupPasswordLockscreen()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->handleReportFailedUnlockAttempts()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAttributionView:Landroid/view/View;

    return-object v0
.end method

.method private disableDevicePermanently()V
    .locals 2

    .prologue
    .line 893
    const-string v0, "KeyguardSPassUnlockView"

    const-string v1, "disableDevicePermanently start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBackupPasswordButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 895
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBackupPasswordButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 897
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 898
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusText:Landroid/widget/TextView;

    sget v1, Lcom/android/keyguard/R$string;->device_disabled:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 900
    :cond_1
    return-void
.end method

.method private handleReportFailedUnlockAttempts()V
    .locals 14

    .prologue
    const/4 v10, 0x5

    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 667
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    .line 668
    .local v5, "monitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    invoke-virtual {v5, v13}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 669
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v7, v13, v10}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(ZI)V

    .line 670
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->updateSPassButtonArea()V

    .line 673
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v7

    invoke-virtual {v5, v7, v13}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(IZ)I

    move-result v3

    .line 675
    .local v3, "failedAttempts":I
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    const-string v8, "enterprise_policy"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 678
    .local v2, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v2, :cond_1

    .line 679
    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/enterprise/PasswordPolicy;->getMaximumFailedPasswordsForDeviceDisable()I

    move-result v4

    .line 680
    .local v4, "mDeviceDisableFailedAttempts":I
    const-string v7, "KeyguardSPassUnlockView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "max failed attempt for device disable :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    if-lez v4, :cond_1

    if-lt v3, v4, :cond_1

    .line 683
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mKeyguardSpassUnlockThread:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    if-eqz v7, :cond_1

    .line 684
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mKeyguardSpassUnlockThread:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-virtual {v7}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->cleanUp()V

    .line 685
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mKeyguardSpassUnlockThread:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    .line 691
    .end local v4    # "mDeviceDisableFailedAttempts":I
    :cond_1
    rsub-int/lit8 v6, v3, 0x5

    .line 692
    .local v6, "remaining":I
    const-string v7, "KeyguardSPassUnlockView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "reportFailedAttempt( attempts ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , remaining = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    sget-boolean v7, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v7, :cond_2

    .line 694
    if-ne v6, v12, :cond_5

    .line 695
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v8, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    sget v9, Lcom/android/keyguard/R$string;->kg_1_attempt_remaining:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v12}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 704
    :cond_2
    :goto_0
    if-eqz v3, :cond_6

    rem-int/lit8 v7, v3, 0x5

    if-nez v7, :cond_6

    .line 705
    sget-boolean v7, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v7, :cond_3

    if-eqz v6, :cond_4

    .line 706
    :cond_3
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v8, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    .line 707
    .local v0, "deadline":J
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->handleAttemptLockout(J)V

    .line 712
    .end local v0    # "deadline":J
    :cond_4
    :goto_1
    return-void

    .line 697
    :cond_5
    if-gt v6, v10, :cond_2

    if-le v6, v12, :cond_2

    .line 699
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v8, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    sget v9, Lcom/android/keyguard/R$string;->kg_n_attempts_remaining:I

    new-array v10, v12, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v12}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 710
    :cond_6
    invoke-direct {p0, v12}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->handleUpdateFingerPrintAnimation(I)V

    goto :goto_1
.end method

.method private handleShowBackupPasswordButton()V
    .locals 0

    .prologue
    .line 775
    return-void
.end method

.method private handleShowBackupPasswordLockscreen()V
    .locals 2

    .prologue
    .line 778
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 779
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 780
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 781
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->resetErrorMessage()V

    .line 782
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Biometric:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->showBackupSecurity(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 783
    :cond_0
    return-void
.end method

.method private handleShowErrorMessage(Ljava/lang/String;I)V
    .locals 4
    .param p1, "errorMessage"    # Ljava/lang/String;
    .param p2, "imageQuality"    # I

    .prologue
    const/4 v3, 0x0

    .line 734
    const-string v0, "KeyguardSPassUnlockView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleShowErrorMessage( errorMessage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    sget-object v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 736
    sget-object v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 737
    sget-object v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-static {p2, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getImageQualityAnimation(ILandroid/content/Context;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 739
    sget-object v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    sput-object v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mErrorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 740
    sget-object v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mErrorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 741
    sget-object v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mErrorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 743
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 744
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mTalkbackEnabled:Z

    if-eqz v0, :cond_1

    .line 745
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mTTS:Landroid/speech/tts/TextToSpeech;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v3, v1}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 748
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 749
    sget-object v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 751
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mReStartSenSorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 752
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mReStartSenSorRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 754
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mClearErrorAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 755
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mClearErrorAnimationRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 756
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mKeyguardSpassUnlockThread:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mKeyguardSpassUnlockThread:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->stopSensor()V

    .line 758
    :cond_2
    return-void
.end method

.method private handleShowErrorPopup(I)V
    .locals 5
    .param p1, "resid"    # I

    .prologue
    const/4 v4, 0x0

    .line 762
    const-string v1, "KeyguardSPassUnlockView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleShowErrorPopup( resid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->ok:I

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 770
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 771
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 772
    return-void
.end method

.method private handleUpdateFingerPrintAnimation(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 786
    packed-switch p1, :pswitch_data_0

    .line 800
    :cond_0
    :goto_0
    return-void

    .line 788
    :pswitch_0
    sget-object v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->shouldNotShowArrow:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 789
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAffordanceAnim:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAffordanceAnimListner:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 790
    sget-object v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAffordanceAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 794
    :pswitch_1
    sget-object v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->shouldNotShowArrow:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 795
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAffordanceAnim:Landroid/view/animation/Animation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 796
    sget-object v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mFadeOutAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 786
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isDeviceDisabledForMaxFailedAttempt()Z
    .locals 7

    .prologue
    .line 870
    const/4 v2, 0x0

    .line 871
    .local v2, "lDeviceDisableForMaxFailedAttempt":Z
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "enterprise_policy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 875
    .local v0, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v0, :cond_0

    .line 876
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/enterprise/PasswordPolicy;->getMaximumFailedPasswordsForDeviceDisable()I

    move-result v3

    .line 878
    .local v3, "lMaxNumFailedAttemptForDisable":I
    const-string v4, "KeyguardSPassUnlockView"

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

    .line 880
    if-lez v3, :cond_0

    .line 881
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getCurrentFailedPasswordAttempts()I

    move-result v1

    .line 882
    .local v1, "lCurNumFailedAttempts":I
    const-string v4, "KeyguardSPassUnlockView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "current failed attempt for device  :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    if-lt v1, v3, :cond_1

    const/4 v2, 0x1

    .line 887
    .end local v1    # "lCurNumFailedAttempts":I
    .end local v3    # "lMaxNumFailedAttemptForDisable":I
    :cond_0
    :goto_0
    const-string v4, "KeyguardSPassUnlockView"

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

    .line 889
    return v2

    .line 883
    .restart local v1    # "lCurNumFailedAttempts":I
    .restart local v3    # "lMaxNumFailedAttemptForDisable":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private makeAnimations()V
    .locals 2

    .prologue
    .line 856
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/keyguard/R$anim;->keyguard_spass_standby_animation:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStandbyAnim:Landroid/view/animation/Animation;

    .line 857
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/keyguard/R$anim;->keyguard_spass_affordance_animation:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAffordanceAnim:Landroid/view/animation/Animation;

    .line 858
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAffordanceAnim:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/interpolator/SineEaseInOut;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineEaseInOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 859
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/keyguard/R$anim;->keyguard_spass_fadeout_animation:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mFadeOutAnim:Landroid/view/animation/Animation;

    .line 860
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mFadeOutAnim:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/interpolator/SineEaseInOut;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineEaseInOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 861
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mFadeOutAnim:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mFadeOutAnimListner:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 862
    return-void
.end method

.method private maybeEnableFallback(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 951
    new-instance v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$AccountAnalyzer;

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$AccountAnalyzer;-><init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;Landroid/accounts/AccountManager;Lcom/android/keyguard/sec/KeyguardSPassUnlockView$1;)V

    .line 952
    .local v0, "accountAnalyzer":Lcom/android/keyguard/sec/KeyguardSPassUnlockView$AccountAnalyzer;
    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$AccountAnalyzer;->start()V

    .line 953
    return-void
.end method

.method private resetErrorMessage()V
    .locals 3

    .prologue
    .line 715
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 716
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 717
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 718
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 719
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockCompleted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 720
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->fingerprint_change_reset_password_help_text:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 724
    :cond_0
    sget-object v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 725
    sget-object v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusImage:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 726
    sget-object v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mErrorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    .line 727
    sget-object v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mErrorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 730
    :cond_1
    return-void
.end method

.method private updateArrowAnimation()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 358
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationContainer:Landroid/widget/FrameLayout;

    if-nez v2, :cond_1

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardProperties;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 361
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 362
    .local v1, "rotation":I
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 363
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 364
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    packed-switch v1, :pswitch_data_0

    .line 381
    :goto_1
    :pswitch_0
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 368
    :pswitch_1
    const/16 v2, 0x15

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 369
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationContainer:Landroid/widget/FrameLayout;

    const/high16 v3, 0x43870000    # 270.0f

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setRotation(F)V

    goto :goto_1

    .line 372
    :pswitch_2
    const/16 v2, 0x31

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 373
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationContainer:Landroid/widget/FrameLayout;

    const/high16 v3, 0x43340000    # 180.0f

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setRotation(F)V

    .line 374
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    .line 377
    :pswitch_3
    const/16 v2, 0x13

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 378
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationContainer:Landroid/widget/FrameLayout;

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setRotation(F)V

    goto :goto_1

    .line 382
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v1    # "rotation":I
    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardProperties;->hasCocktailBar(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 383
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 384
    .restart local v1    # "rotation":I
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 385
    .restart local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    packed-switch v1, :pswitch_data_1

    .line 396
    :goto_2
    :pswitch_4
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 387
    :pswitch_5
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 388
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$dimen;->spass_animation_container_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_2

    .line 391
    :pswitch_6
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_2

    .line 364
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 385
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public checkTalkBackEnabled()V
    .locals 3

    .prologue
    .line 1005
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enabled_accessibility_services"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1007
    .local v0, "accesibilityService":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1010
    const-string v1, "(?i).*com.google.android.marvin.talkback.TalkBackService.*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mTalkbackEnabled:Z

    .line 1012
    :cond_0
    return-void
.end method

.method public cleanUp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 597
    const-string v0, "KeyguardSPassUnlockView"

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_0

    .line 599
    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mTTS:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_1

    .line 603
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mTTS:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 604
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mTTS:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 607
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mKeyguardSpassUnlockThread:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    if-eqz v0, :cond_2

    .line 608
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mKeyguardSpassUnlockThread:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->cleanUp()V

    .line 609
    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mKeyguardSpassUnlockThread:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    .line 612
    :cond_2
    invoke-static {}, Lcom/android/keyguard/sec/SecPopupManager;->isShowingPopupDialog()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 613
    invoke-static {}, Lcom/android/keyguard/sec/SecPopupManager;->dismissPopupDialog()V

    .line 616
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_4

    .line 617
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 618
    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    .line 621
    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 622
    return-void
.end method

.method public getCallback()Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method protected handleAttemptLockout(J)V
    .locals 9
    .param p1, "elapsedRealtimeDeadline"    # J

    .prologue
    .line 904
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 906
    .local v6, "elapsedRealtime":J
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mClearErrorAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 907
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mClearErrorAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 908
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    .line 909
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 910
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 912
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mKeyguardSpassUnlockThread:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mKeyguardSpassUnlockThread:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->stopSensor()V

    .line 913
    :cond_2
    sget-object v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mErrorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_3

    .line 914
    sget-object v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mErrorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 916
    :cond_3
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->shouldNotShowArrow:Z

    if-nez v0, :cond_4

    .line 917
    sget-object v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 919
    :cond_4
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->resetErrorMessage()V

    .line 920
    new-instance v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$11;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$11;-><init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;JJ)V

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$11;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 946
    return-void
.end method

.method public hideBouncer(I)V
    .locals 3
    .param p1, "duration"    # I

    .prologue
    .line 584
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->showHideBouncerKeyguardMessageArea(Z)V

    .line 585
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEcaView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->hideBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 586
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 532
    const/4 v0, 0x0

    return v0
.end method

.method public needsShowClockandNotifications()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 537
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockCompleted()Z

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 458
    const-string v0, "KeyguardSPassUnlockView"

    const-string v1, "onAttachedToWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 461
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 466
    const-string v0, "KeyguardSPassUnlockView"

    const-string v1, "onDetachedFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 468
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->cleanUp()V

    .line 469
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 279
    const-string v0, "KeyguardSPassUnlockView"

    const-string v1, "onFinishInflate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 282
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->maybeEnableFallback(Landroid/content/Context;)V

    .line 284
    new-instance v0, Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 285
    sget v0, Lcom/android/keyguard/R$id;->kg_spass_status:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusText:Landroid/widget/TextView;

    .line 286
    sget v0, Lcom/android/keyguard/R$id;->sec_emergency_button_area:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBouncerEMA:Landroid/view/View;

    .line 287
    sget v0, Lcom/android/keyguard/R$id;->spass_eca_container:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEcaView:Landroid/view/View;

    .line 288
    sget v0, Lcom/android/keyguard/R$id;->kg_spass_status_image:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sput-object v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusImage:Landroid/widget/ImageView;

    .line 289
    sget v0, Lcom/android/keyguard/R$id;->kg_spass_animation:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sput-object v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationView:Landroid/widget/ImageView;

    .line 290
    sget v0, Lcom/android/keyguard/R$id;->keyguard_animation_container:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationContainer:Landroid/widget/FrameLayout;

    .line 292
    sget-object v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->shouldNotShowArrow:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 293
    sget-object v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 298
    :goto_0
    sget v0, Lcom/android/keyguard/R$id;->kg_alternative_password:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBackupPasswordButton:Landroid/widget/Button;

    .line 300
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBackupPasswordButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBackupPasswordButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$5;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$5;-><init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    :cond_0
    sget v0, Lcom/android/keyguard/R$id;->forgot_password_button:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAccountButton:Landroid/widget/Button;

    .line 319
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAccountButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAccountButton:Landroid/widget/Button;

    sget v1, Lcom/android/keyguard/R$string;->kg_forgot_spass_button_text:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 321
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAccountButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$6;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$6;-><init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockCompleted()Z

    move-result v0

    if-nez v0, :cond_6

    .line 330
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEcaView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 331
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEcaView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 340
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 341
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->disableDevicePermanently()V

    .line 344
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_4

    .line 345
    new-instance v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$7;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$7;-><init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    .line 352
    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 353
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->makeAnimations()V

    .line 354
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->updateArrowAnimation()V

    .line 355
    return-void

    .line 295
    :cond_5
    sget-object v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 334
    :cond_6
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEcaView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 335
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEcaView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public onInit(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 565
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 473
    const-string v0, "KeyguardSPassUnlockView"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mKeyguardSpassUnlockThread:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mKeyguardSpassUnlockThread:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->onPause()V

    .line 476
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->resetErrorMessage()V

    .line 478
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    .line 479
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 480
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 482
    :cond_1
    return-void
.end method

.method public onResume(I)V
    .locals 5
    .param p1, "reason"    # I

    .prologue
    .line 487
    const-string v2, "KeyguardSPassUnlockView"

    const-string v3, "onResume()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v2

    if-nez v2, :cond_4

    .line 489
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    .line 490
    .local v0, "deadline":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 491
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->handleAttemptLockout(J)V

    .line 511
    .end local v0    # "deadline":J
    :cond_0
    :goto_0
    return-void

    .line 493
    .restart local v0    # "deadline":J
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mKeyguardSpassUnlockThread:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mKeyguardSpassUnlockThread:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-virtual {v2, p1}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->onResume(I)V

    .line 494
    :cond_2
    sget-object v2, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->shouldNotShowArrow:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 495
    sget-object v2, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->clearAnimation()V

    .line 496
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAffordanceAnim:Landroid/view/animation/Animation;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAffordanceAnimListner:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 497
    sget-object v2, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAffordanceAnim:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 499
    :cond_3
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusText:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 500
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 501
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->clearAnimation()V

    .line 502
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusText:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 503
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockCompleted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 504
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$string;->fingerprint_change_reset_password_help_text:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 509
    .end local v0    # "deadline":J
    :cond_4
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->disableDevicePermanently()V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 515
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 516
    const-string v0, "KeyguardSPassUnlockView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged(): hasWindowFocus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    if-eqz p1, :cond_1

    .line 519
    const-string v0, "KeyguardSPassUnlockView"

    const-string v1, "onWindowFocusChanged - get focus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->reset()V

    .line 528
    :cond_0
    :goto_0
    return-void

    .line 522
    :cond_1
    const-string v0, "KeyguardSPassUnlockView"

    const-string v1, "onWindowFocusChanged - loosing focus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mKeyguardSpassUnlockThread:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mKeyguardSpassUnlockThread:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->stopSensor()V

    .line 524
    :cond_2
    sget-object v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mErrorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 525
    sget-object v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mErrorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_0
.end method

.method public reportFailedUnlockAttempts()V
    .locals 3

    .prologue
    const/16 v2, 0xf

    .line 661
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 662
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 663
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 664
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 440
    const-string v2, "KeyguardSPassUnlockView"

    const-string v3, "reset()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v2

    if-nez v2, :cond_2

    .line 443
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    .line 444
    .local v0, "deadline":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 445
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->handleAttemptLockout(J)V

    .line 452
    .end local v0    # "deadline":J
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->updateSPassButtonArea()V

    .line 453
    return-void

    .line 447
    .restart local v0    # "deadline":J
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mKeyguardSpassUnlockThread:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mKeyguardSpassUnlockThread:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->reset()V

    goto :goto_0

    .line 450
    .end local v0    # "deadline":J
    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->disableDevicePermanently()V

    goto :goto_0
.end method

.method public setAttributionInfoView(Landroid/view/View;)V
    .locals 0
    .param p1, "attributionView"    # Landroid/view/View;

    .prologue
    .line 865
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAttributionView:Landroid/view/View;

    .line 866
    return-void
.end method

.method public setAttributionViewEnabled(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const/16 v4, 0x10

    .line 804
    const-string v1, "KeyguardSPassUnlockView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAttributionViewEnabled( enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAttributeViewEnabled:Z

    .line 806
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 807
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 808
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 809
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 424
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 425
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mKeyguardSpassUnlockThread:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mKeyguardSpassUnlockThread:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 427
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mKeyguardSpassUnlockThread:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->setSpassCallback(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;)V

    .line 429
    :cond_0
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 2
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 433
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 434
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mKeyguardSpassUnlockThread:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mKeyguardSpassUnlockThread:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 435
    :cond_0
    return-void
.end method

.method public showBackupPassword()V
    .locals 3

    .prologue
    const/16 v2, 0xc

    .line 646
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 647
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 648
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 649
    return-void
.end method

.method public showBouncer(I)V
    .locals 4
    .param p1, "duration"    # I

    .prologue
    const/4 v3, 0x1

    .line 576
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEcaView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->showBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 577
    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->showHideBouncerKeyguardMessageArea(Z)V

    .line 578
    invoke-direct {p0, v3}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->handleUpdateFingerPrintAnimation(I)V

    .line 579
    return-void
.end method

.method public showErrorMessage(Ljava/lang/String;I)V
    .locals 5
    .param p1, "errorMessage"    # Ljava/lang/String;
    .param p2, "imageQuality"    # I

    .prologue
    const/16 v4, 0xa

    .line 628
    const-string v1, "KeyguardSPassUnlockView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showErrorMessage( errorMessage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 630
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 631
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v4, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 632
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 633
    return-void
.end method

.method public showErrorPopup(I)V
    .locals 5
    .param p1, "resid"    # I

    .prologue
    const/16 v4, 0xb

    .line 638
    const-string v1, "KeyguardSPassUnlockView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showErrorPopup( resid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 640
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v4, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 641
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 642
    return-void
.end method

.method public showHideBouncerKeyguardMessageArea(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    const/4 v1, 0x0

    .line 589
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBouncerEMA:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isPhoneShortcutEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBouncerEMA:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEMAPress:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 591
    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEMAPress:Z

    .line 593
    :cond_0
    return-void

    .line 590
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showPromptReason(I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    .line 548
    return-void
.end method

.method public showUsabilityHint()V
    .locals 0

    .prologue
    .line 571
    return-void
.end method

.method public startAppearAnimation()V
    .locals 0

    .prologue
    .line 553
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 558
    const/4 v0, 0x0

    return v0
.end method

.method public updateFingerPrintAnimation(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const/16 v3, 0xe

    .line 653
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 654
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 655
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 656
    return-void
.end method

.method public updateSPassButtonArea()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 401
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(IZ)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mTotalFailedSPassAttempts:I

    .line 402
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAccountButton:Landroid/widget/Button;

    if-nez v2, :cond_1

    .line 403
    const-string v2, "KeyguardSPassUnlockView"

    const-string v3, "account button is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    sget-boolean v2, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEnableFallback:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mTotalFailedSPassAttempts:I

    const/4 v3, 0x5

    if-lt v2, v3, :cond_3

    .line 408
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAccountButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 409
    sget v2, Lcom/android/keyguard/R$id;->emergency_button_area_spass:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 410
    .local v1, "view":Landroid/widget/LinearLayout;
    if-eqz v1, :cond_2

    .line 411
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 412
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v2, -0x1

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 413
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 415
    .end local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBackupPasswordButton:Landroid/widget/Button;

    if-eqz v2, :cond_0

    .line 416
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBackupPasswordButton:Landroid/widget/Button;

    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 418
    .end local v1    # "view":Landroid/widget/LinearLayout;
    :cond_3
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAccountButton:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method
