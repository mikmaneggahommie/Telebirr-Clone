.class public Lcom/android/systemui/volume/SecVolumeDialog;
.super Ljava/lang/Object;
.source "SecVolumeDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/SecVolumeDialog$Callback;,
        Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;,
        Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;,
        Lcom/android/systemui/volume/SecVolumeDialog$VolumeSeekBarChangeListener;,
        Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;,
        Lcom/android/systemui/volume/SecVolumeDialog$H;
    }
.end annotation


# static fields
.field private static final ACTION_LOGGING:Ljava/lang/String; = "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

.field public static final ACTION_VOLUMEPANEL_CLICK_BUTTON1:Ljava/lang/String; = "android.view.volumepanel.CLICK_BUTTON1"

.field public static final ACTION_VOLUMEPANEL_CLICK_BUTTON2:Ljava/lang/String; = "android.view.volumepanel.CLICK_BUTTON2"

.field private static final EXTRA_DATA:Ljava/lang/String; = "data"

.field private static final EXTRA_MEDIA:Ljava/lang/String; = "Media"

.field private static final EXTRA_NOTIFICATION:Ljava/lang/String; = "Notification"

.field private static final EXTRA_RINGTONE:Ljava/lang/String; = "Ringtone"

.field private static final EXTRA_SYSTEM:Ljava/lang/String; = "System"

.field private static final FEATURE_UNIQUE_VALUE:Ljava/lang/String; = "FWVP"

.field private static final FINEVOLUME_MAX_INDEX:I = 0x96

.field private static final HW_USE_VALUE:J = 0x3e8L

.field private static LOGD:Z = false

.field private static final LOGGER_PACKAGE:Ljava/lang/String; = "com.samsung.android.providers.context"

.field private static final NUM_SOUNDPOOL_CHANNELS:I = 0x4

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.android.systemui.volume"

.field private static final SOUND_EFFECT_PATH:Ljava/lang/String; = "system/media/audio/ui/TW_Volume_control.ogg"

.field private static final STREAM_REMOTE_CONTROL:I = 0x64

.field private static SUPPORT_DEFAULTSTREAM_NOTIFICATION:Z = false

.field private static final SUPPORT_FINEVOLUME:Z = false

.field private static final SUPPORT_WEARABLE_HMT:Z = false

.field private static final SVIEWCOVER_FEATURE_LEVEL:Ljava/lang/String; = "com.sec.feature.cover.sviewcover"

.field private static final SW_USE_VALUE:J = 0x0L

.field private static final TAG:Ljava/lang/String;

.field private static final UPDATE_ANIMATION_DURATION:I = 0xc8

.field private static final USER_ATTEMPT_GRACE_PERIOD:J = 0x3e8L

.field private static final WAIT_FOR_RIPPLE:I = 0xc8

.field private static mActiveStreamChanged:Z

.field public static mIsSafetyWarningShowing:Z

.field private static mRemoteControlCurrentVolume:I

.field private static mRemoteControlMaxVolume:I

.field private static final mSafetyWarningLock:Ljava/lang/Object;

.field public static mShowing:Z


# instance fields
.field private final mAccessibility:Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;

.field private final mActiveSliderTint:Landroid/content/res/ColorStateList;

.field private mActiveStream:I

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mAutomute:Z

.field private mCallback:Lcom/android/systemui/volume/SecVolumeDialog$Callback;

.field private final mClickExpand:Landroid/view/View$OnClickListener;

.field private final mClickSettings:Landroid/view/View$OnClickListener;

.field private mCollapseTime:J

.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/android/systemui/volume/VolumeDialogController;

.field private final mControllerCallbackH:Lcom/android/systemui/volume/VolumeDialogController$Callbacks;

.field private mCoverBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCoverLevel:I

.field private mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

.field private mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

.field private mCoverType:I

.field private final mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

.field private mDialogBgDrawable:Landroid/graphics/drawable/PaintDrawable;

.field private final mDialogContentView:Landroid/view/ViewGroup;

.field private final mDialogView:Landroid/view/ViewGroup;

.field private final mDisabledAlpha:F

.field private final mDynamic:Landroid/util/SparseBooleanArray;

.field private mEarProtectLevel:I

.field private final mExpandButton:Landroid/widget/ImageButton;

.field private final mExpandButtonAnimationDuration:J

.field private mExpandButtonAnimationRunning:Z

.field private mExpandButtonRes:I

.field private mExpanded:Z

.field private mExtraForRingerMode:Ljava/lang/String;

.field private final mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

.field private mIconActiveColor:Landroid/content/res/ColorStateList;

.field private mIconActiveDefaultColor:Landroid/content/res/ColorStateList;

.field private mIconDisabledColor:Landroid/content/res/ColorStateList;

.field private final mInactiveSliderTint:Landroid/content/res/ColorStateList;

.field private mIsShowingSCoverWarning:Z

.field private final mKeyguard:Landroid/app/KeyguardManager;

.field private final mLayoutTransition:Landroid/animation/LayoutTransition;

.field private final mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

.field private mPendingRecheckAll:Z

.field private mPendingStateChanged:Z

.field private mProgressBgColor:Landroid/content/res/ColorStateList;

.field private mProgressBgDefaultColor:Landroid/content/res/ColorStateList;

.field private mProgressColor:Landroid/content/res/ColorStateList;

.field private mProgressDefaultColor:Landroid/content/res/ColorStateList;

.field private final mRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;",
            ">;"
        }
    .end annotation
.end field

.field private mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

.field private final mSamsungAudioManager:Landroid/media/SamsungAudioManager;

.field private mScover:Lcom/samsung/android/sdk/cover/Scover;

.field mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mSettingsButton:Landroid/view/View;

.field private mShowHeaders:Z

.field private mSilentMode:Z

.field private mSoundID:I

.field private mSoundPool:Landroid/media/SoundPool;

.field private final mSpTexts:Lcom/android/systemui/volume/SpTexts;

.field private mState:Lcom/android/systemui/volume/VolumeDialogController$State;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mThumbColor:Landroid/content/res/ColorStateList;

.field private mThumbDefaultColor:Landroid/content/res/ColorStateList;

.field private mThumbDisabledColor:Landroid/content/res/ColorStateList;

.field private mThumbDisabledDefaultColor:Landroid/content/res/ColorStateList;

.field private mTopOffset:I

.field private mUseCocktailFeature:Z

.field private mValueForHwSwKey:J

.field private mVoiceCapable:Z

.field private mVolumePanelBgColor:Landroid/content/res/ColorStateList;

.field private mVolumePanelBgDefaultColor:Landroid/content/res/ColorStateList;

.field private mVolumeTitleColor:Landroid/content/res/ColorStateList;

.field private mVolumeTitleDefaultColor:Landroid/content/res/ColorStateList;

.field private sCoverTopOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 137
    const-class v0, Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/Util;->logTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    .line 138
    sput-boolean v1, Lcom/android/systemui/volume/SecVolumeDialog;->LOGD:Z

    .line 160
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarningLock:Ljava/lang/Object;

    .line 231
    sput-boolean v1, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafetyWarningShowing:Z

    .line 254
    sput-boolean v1, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStreamChanged:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/systemui/volume/VolumeDialogController;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/volume/SecVolumeDialog$Callback;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowType"    # I
    .param p3, "controller"    # Lcom/android/systemui/volume/VolumeDialogController;
    .param p4, "zenModeController"    # Lcom/android/systemui/statusbar/policy/ZenModeController;
    .param p5, "callback"    # Lcom/android/systemui/volume/SecVolumeDialog$Callback;

    .prologue
    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    new-instance v2, Lcom/android/systemui/volume/SecVolumeDialog$H;

    invoke-direct {v2, p0}, Lcom/android/systemui/volume/SecVolumeDialog$H;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;)V

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    .line 153
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    .line 155
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDynamic:Landroid/util/SparseBooleanArray;

    .line 161
    new-instance v2, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;Lcom/android/systemui/volume/SecVolumeDialog$1;)V

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAccessibility:Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;

    .line 169
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mShowHeaders:Z

    .line 170
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAutomute:Z

    .line 171
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSilentMode:Z

    .line 183
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 187
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSoundID:I

    .line 214
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mUseCocktailFeature:Z

    .line 218
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    .line 219
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    .line 220
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    .line 221
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsShowingSCoverWarning:Z

    .line 223
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverLevel:I

    .line 224
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mTopOffset:I

    .line 225
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->sCoverTopOffset:I

    .line 228
    const v2, 0x3ecccccd    # 0.4f

    iput v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDisabledAlpha:F

    .line 236
    new-instance v2, Lcom/android/systemui/volume/SecVolumeDialog$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/volume/SecVolumeDialog$1;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;)V

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 285
    const-string v2, "Ringtone"

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExtraForRingerMode:Ljava/lang/String;

    .line 286
    const-wide/16 v2, 0x3e8

    iput-wide v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mValueForHwSwKey:J

    .line 292
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLevel:I

    .line 318
    new-instance v2, Lcom/android/systemui/volume/SecVolumeDialog$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/volume/SecVolumeDialog$2;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;)V

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 509
    new-instance v2, Lcom/android/systemui/volume/SecVolumeDialog$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/volume/SecVolumeDialog$4;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;)V

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    .line 1565
    new-instance v2, Lcom/android/systemui/volume/SecVolumeDialog$9;

    invoke-direct {v2, p0}, Lcom/android/systemui/volume/SecVolumeDialog$9;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;)V

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mControllerCallbackH:Lcom/android/systemui/volume/VolumeDialogController$Callbacks;

    .line 1646
    new-instance v2, Lcom/android/systemui/volume/SecVolumeDialog$10;

    invoke-direct {v2, p0}, Lcom/android/systemui/volume/SecVolumeDialog$10;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;)V

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mClickExpand:Landroid/view/View$OnClickListener;

    .line 1658
    new-instance v2, Lcom/android/systemui/volume/SecVolumeDialog$11;

    invoke-direct {v2, p0}, Lcom/android/systemui/volume/SecVolumeDialog$11;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;)V

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mClickSettings:Landroid/view/View$OnClickListener;

    .line 368
    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    .line 369
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    .line 370
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCallback:Lcom/android/systemui/volume/SecVolumeDialog$Callback;

    .line 371
    new-instance v2, Lcom/android/systemui/volume/SpTexts;

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/systemui/volume/SpTexts;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSpTexts:Lcom/android/systemui/volume/SpTexts;

    .line 372
    const-string v2, "keyguard"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mKeyguard:Landroid/app/KeyguardManager;

    .line 374
    new-instance v2, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    .line 375
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.feature.cocktailbar"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mUseCocktailFeature:Z

    .line 376
    new-instance v2, Landroid/media/SamsungAudioManager;

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/media/SamsungAudioManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSamsungAudioManager:Landroid/media/SamsungAudioManager;

    .line 377
    const-string v2, "audio"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAudioManager:Landroid/media/AudioManager;

    .line 378
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x112005c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    sput-boolean v2, Lcom/android/systemui/volume/SecVolumeDialog;->SUPPORT_DEFAULTSTREAM_NOTIFICATION:Z

    .line 381
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    invoke-virtual {v2}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v13

    .line 382
    .local v13, "window":Landroid/view/Window;
    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 383
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v13, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 384
    const/4 v2, 0x2

    invoke-virtual {v13, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 385
    const v2, 0x10c0128

    invoke-virtual {v13, v2}, Landroid/view/Window;->addFlags(I)V

    .line 391
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->setCanceledOnTouchOutside(Z)V

    .line 392
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 393
    .local v11, "res":Landroid/content/res/Resources;
    invoke-virtual {v13}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    .line 394
    .local v9, "lp":Landroid/view/WindowManager$LayoutParams;
    move/from16 v0, p2

    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 395
    const/4 v2, -0x3

    iput v2, v9, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 396
    const-class v2, Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 397
    const/16 v2, 0x31

    iput v2, v9, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 398
    const v2, 0x7f0a04df

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 399
    const/4 v2, -0x1

    iput v2, v9, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 400
    invoke-virtual {v13, v9}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 401
    const/16 v2, 0x30

    invoke-virtual {v13, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 403
    const v2, 0x7f0c0031

    invoke-direct {p0, v2}, Lcom/android/systemui/volume/SecVolumeDialog;->loadColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveSliderTint:Landroid/content/res/ColorStateList;

    .line 404
    const v2, 0x7f0c00b8

    invoke-direct {p0, v2}, Lcom/android/systemui/volume/SecVolumeDialog;->loadColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mInactiveSliderTint:Landroid/content/res/ColorStateList;

    .line 405
    const v2, 0x7f0c00b6

    invoke-direct {p0, v2}, Lcom/android/systemui/volume/SecVolumeDialog;->loadColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconDisabledColor:Landroid/content/res/ColorStateList;

    .line 406
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    const v3, 0x7f0400d2

    invoke-virtual {v2, v3}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->setContentView(I)V

    .line 407
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    const v3, 0x7f0f03f8

    invoke-virtual {v2, v3}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    .line 408
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    const v3, 0x7f0f03fa

    invoke-virtual {v2, v3}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    .line 409
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    const v3, 0x7f0f03f9

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    .line 410
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 411
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mClickExpand:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 412
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 413
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->updateWindowWidthH()V

    .line 414
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->updateExpandButtonH()V

    .line 415
    new-instance v2, Landroid/animation/LayoutTransition;

    invoke-direct {v2}, Landroid/animation/LayoutTransition;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mLayoutTransition:Landroid/animation/LayoutTransition;

    .line 416
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mLayoutTransition:Landroid/animation/LayoutTransition;

    new-instance v3, Landroid/animation/ValueAnimator;

    invoke-direct {v3}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v4

    const-wide/16 v6, 0x2

    div-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Landroid/animation/LayoutTransition;->setDuration(J)V

    .line 418
    new-instance v2, Lcom/android/systemui/volume/VolumeDialogMotion;

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    new-instance v7, Lcom/android/systemui/volume/SecVolumeDialog$3;

    invoke-direct {v7, p0}, Lcom/android/systemui/volume/SecVolumeDialog$3;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;)V

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/volume/VolumeDialogMotion;-><init>(Landroid/app/Dialog;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;Lcom/android/systemui/volume/VolumeDialogMotion$Callback;)V

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    .line 434
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x112005c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVoiceCapable:Z

    .line 436
    iget-boolean v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVoiceCapable:Z

    if-eqz v2, :cond_1

    .line 437
    const/4 v2, 0x2

    const v3, 0x1080a16

    const v4, 0x1080a02

    const/4 v5, 0x1

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    .line 439
    const/4 v2, 0x3

    const v3, 0x1080a16

    const v4, 0x1080a02

    const/4 v5, 0x1

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    .line 441
    const/4 v2, 0x5

    const v3, 0x1080a16

    const v4, 0x1080a02

    const/4 v5, 0x1

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    .line 443
    const/4 v2, 0x1

    const v3, 0x1080a16

    const v4, 0x1080a02

    const/4 v5, 0x1

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    .line 445
    const/4 v2, 0x4

    const v3, 0x1080a16

    const v4, 0x1080a02

    const/4 v5, 0x0

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    .line 447
    const/4 v2, 0x0

    const v3, 0x1080a16

    const v4, 0x1080a16

    const/4 v5, 0x0

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    .line 449
    const/4 v2, 0x6

    const v3, 0x1080a00

    const v4, 0x1080a00

    const/4 v5, 0x0

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    .line 466
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    const v3, 0x7f0f03ff

    invoke-virtual {v2, v3}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSettingsButton:Landroid/view/View;

    .line 467
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSettingsButton:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mClickSettings:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 468
    const v2, 0x7f0e005e

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButtonAnimationDuration:J

    .line 472
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAccessibility:Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;

    invoke-virtual {v2}, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;->init()V

    .line 474
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mControllerCallbackH:Lcom/android/systemui/volume/VolumeDialogController$Callbacks;

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/volume/VolumeDialogController;->addCallback(Lcom/android/systemui/volume/VolumeDialogController$Callbacks;Landroid/os/Handler;)V

    .line 475
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/volume/VolumeDialogController;->getState()V

    .line 478
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->makeSound()V

    .line 481
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->updateTintColor()V

    .line 482
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->updateDefaultTintColor()V

    .line 484
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->refreshMorebuttonTintColor()V

    .line 486
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 487
    .local v12, "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    invoke-direct {p0, v12}, Lcom/android/systemui/volume/SecVolumeDialog;->refreshResourceTintColor(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    goto :goto_2

    .line 378
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v11    # "res":Landroid/content/res/Resources;
    .end local v12    # "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .end local v13    # "window":Landroid/view/Window;
    :cond_0
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 452
    .restart local v9    # "lp":Landroid/view/WindowManager$LayoutParams;
    .restart local v11    # "res":Landroid/content/res/Resources;
    .restart local v13    # "window":Landroid/view/Window;
    :cond_1
    const/4 v2, 0x5

    const v3, 0x1080a16

    const v4, 0x1080a02

    const/4 v5, 0x1

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    .line 454
    const/4 v2, 0x3

    const v3, 0x1080a16

    const v4, 0x1080a02

    const/4 v5, 0x1

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    .line 456
    const/4 v2, 0x1

    const v3, 0x1080a16

    const v4, 0x1080a02

    const/4 v5, 0x1

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    .line 458
    const/4 v2, 0x4

    const v3, 0x1080a16

    const v4, 0x1080a02

    const/4 v5, 0x0

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    .line 460
    const/4 v2, 0x0

    const v3, 0x1080a16

    const v4, 0x1080a16

    const/4 v5, 0x0

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    .line 462
    const/4 v2, 0x6

    const v3, 0x1080a00

    const v4, 0x1080a00

    const/4 v5, 0x0

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    goto/16 :goto_1

    .line 493
    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->registerCoverReceiver()V

    .line 495
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-nez v2, :cond_3

    .line 496
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/systemui/volume/SecVolumeDialog;->initCoverManager(Landroid/content/Context;)V

    .line 500
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 502
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 503
    .local v10, "pm":Landroid/content/pm/PackageManager;
    if-eqz v10, :cond_4

    .line 504
    const-string v2, "com.sec.feature.cover.sviewcover"

    invoke-virtual {v10, v2}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverLevel:I

    .line 507
    :cond_4
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SafetyWarningDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/volume/SecVolumeDialog;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->sendCoverWarningMsgIntent(Z)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/volume/SecVolumeDialog;Lcom/android/systemui/volume/SafetyWarningDialog;)Lcom/android/systemui/volume/SafetyWarningDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;
    .param p1, "x1"    # Lcom/android/systemui/volume/SafetyWarningDialog;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/volume/SecVolumeDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mUseCocktailFeature:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/volume/SecVolumeDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->closeCocktail()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/volume/SecVolumeDialog;Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;
    .param p1, "x1"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->repositionExpandAnim(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 136
    sget-boolean v0, Lcom/android/systemui/volume/SecVolumeDialog;->LOGD:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/systemui/volume/SecVolumeDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVoiceCapable:Z

    return v0
.end method

.method static synthetic access$3300(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController$State;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/systemui/volume/SecVolumeDialog;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->setExpandedH(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    return-object v0
.end method

.method static synthetic access$4400()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 136
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarningLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/systemui/volume/SecVolumeDialog;Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;
    .param p1, "x1"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->recheckH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/systemui/volume/SecVolumeDialog;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;
    .param p1, "x1"    # I

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->showH(I)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/systemui/volume/SecVolumeDialog;Lcom/android/systemui/volume/VolumeDialogController$State;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;
    .param p1, "x1"    # Lcom/android/systemui/volume/VolumeDialogController$State;

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->onStateChangedH(Lcom/android/systemui/volume/VolumeDialogController$State;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/systemui/volume/SecVolumeDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->updateWindowWidthH()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/volume/SecVolumeDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsShowingSCoverWarning:Z

    return v0
.end method

.method static synthetic access$5000(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SpTexts;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSpTexts:Lcom/android/systemui/volume/SpTexts;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/systemui/volume/SecVolumeDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSilentMode:Z

    return v0
.end method

.method static synthetic access$5200(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/samsung/android/sdk/cover/ScoverManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/systemui/volume/SecVolumeDialog;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->initCoverManager(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/systemui/volume/SecVolumeDialog;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/systemui/volume/SecVolumeDialog;Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;
    .param p1, "x1"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->sendSafetyVolumeWarningToCocktailBar(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/systemui/volume/SecVolumeDialog;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;
    .param p1, "x1"    # I

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->showSafetyWarningH(I)V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/systemui/volume/SecVolumeDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButtonAnimationRunning:Z

    return v0
.end method

.method static synthetic access$5800(Lcom/android/systemui/volume/SecVolumeDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    return v0
.end method

.method static synthetic access$5900(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SecVolumeDialog$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCallback:Lcom/android/systemui/volume/SecVolumeDialog$Callback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSettingsButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/android/systemui/volume/SecVolumeDialog;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 136
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/SecVolumeDialog;->setStreamImportantH(IZ)V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/systemui/volume/SecVolumeDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->updateDialogBottomMarginH()V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/VolumeDialogMotion;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    return-object v0
.end method

.method static synthetic access$6400(I)I
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 136
    invoke-static {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->getImpliedMediaVolumeLevel(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$6500(Landroid/widget/SeekBar;I)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/SeekBar;
    .param p1, "x1"    # I

    .prologue
    .line 136
    invoke-static {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->getImpliedLevel(Landroid/widget/SeekBar;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/volume/SecVolumeDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mPendingStateChanged:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/systemui/volume/SecVolumeDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mPendingStateChanged:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SecVolumeDialog$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/volume/SecVolumeDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mPendingRecheckAll:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/systemui/volume/SecVolumeDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mPendingRecheckAll:Z

    return p1
.end method

.method private addRow(IIIZ)V
    .locals 7
    .param p1, "stream"    # I
    .param p2, "iconRes"    # I
    .param p3, "iconMuteRes"    # I
    .param p4, "important"    # Z

    .prologue
    .line 609
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/volume/SecVolumeDialog;->initRow(IIIZ)Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    move-result-object v2

    .line 610
    .local v2, "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 611
    new-instance v3, Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 612
    .local v3, "v":Landroid/view/View;
    const/high16 v4, 0x1020000

    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    .line 613
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a04de

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 615
    .local v0, "h":I
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v1, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 617
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    invoke-virtual {v4, v3, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 618
    invoke-static {v2, v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1302(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/view/View;)Landroid/view/View;

    .line 620
    .end local v0    # "h":I
    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "v":Landroid/view/View;
    :cond_0
    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1800(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/volume/SecVolumeDialog$5;

    invoke-direct {v5, p0, v2}, Lcom/android/systemui/volume/SecVolumeDialog$5;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 646
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 647
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 648
    return-void
.end method

.method private closeCocktail()V
    .locals 6

    .prologue
    .line 1963
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;

    move-result-object v1

    .line 1964
    .local v1, "cocktailManager":Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanelProvider;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v3}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->getCocktailIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 1966
    .local v0, "cocktailIds":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 1967
    aget v3, v0, v2

    const v4, 0x10004

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->closeCocktail(II)V

    .line 1966
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1970
    :cond_0
    return-void
.end method

.method private colorToColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 4
    .param p1, "color"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1999
    new-array v0, v2, [[I

    new-array v1, v3, [I

    aput-object v1, v0, v3

    .line 2000
    .local v0, "EMPTY":[[I
    new-instance v1, Landroid/content/res/ColorStateList;

    new-array v2, v2, [I

    aput p1, v2, v3

    invoke-direct {v1, v0, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v1
.end method

.method private computeTimeoutH()I
    .locals 2

    .prologue
    const/16 v0, 0x1388

    .line 911
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAccessibility:Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;->access$2000(Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 915
    :cond_0
    :goto_0
    return v0

    .line 912
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-nez v1, :cond_0

    .line 913
    iget-boolean v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButtonAnimationRunning:Z

    if-nez v1, :cond_0

    .line 914
    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStream:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    const/16 v0, 0x5dc

    goto :goto_0

    .line 915
    :cond_2
    const/16 v0, 0xbb8

    goto :goto_0
.end method

.method private createCoverMsgRemoteView()Landroid/widget/RemoteViews;
    .locals 3

    .prologue
    .line 297
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 298
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    .line 300
    :cond_0
    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 301
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0400d1

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 305
    .local v0, "coverMsgRemoteViews":Landroid/widget/RemoteViews;
    :goto_0
    return-object v0

    .line 303
    .end local v0    # "coverMsgRemoteViews":Landroid/widget/RemoteViews;
    :cond_1
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0400d0

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .restart local v0    # "coverMsgRemoteViews":Landroid/widget/RemoteViews;
    goto :goto_0
.end method

.method private findRow(I)Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .locals 3
    .param p1, "stream"    # I

    .prologue
    .line 664
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 665
    .local v1, "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1900(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 667
    .end local v1    # "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getActiveRow()Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .locals 4

    .prologue
    .line 655
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 656
    .local v1, "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1900(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v2

    iget v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStream:I

    if-ne v2, v3, :cond_0

    .line 660
    .end local v1    # "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    move-object v1, v2

    goto :goto_0
.end method

.method private getConservativeCollapseDuration()J
    .locals 4

    .prologue
    .line 991
    iget-wide v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButtonAnimationDuration:J

    const-wide/16 v2, 0x3

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method private static getImpliedLevel(Landroid/widget/SeekBar;I)I
    .locals 5
    .param p0, "seekBar"    # Landroid/widget/SeekBar;
    .param p1, "progress"    # I

    .prologue
    .line 699
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    .line 700
    .local v1, "m":I
    div-int/lit8 v3, v1, 0x64

    add-int/lit8 v2, v3, -0x1

    .line 701
    .local v2, "n":I
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 703
    .local v0, "level":I
    :goto_0
    return v0

    .line 701
    .end local v0    # "level":I
    :cond_0
    if-ne p1, v1, :cond_1

    div-int/lit8 v0, v1, 0x64

    goto :goto_0

    :cond_1
    int-to-float v3, p1

    int-to-float v4, v1

    div-float/2addr v3, v4

    int-to-float v4, v2

    mul-float/2addr v3, v4

    float-to-int v3, v3

    add-int/lit8 v0, v3, 0x1

    goto :goto_0
.end method

.method private static getImpliedMediaVolumeLevel(I)I
    .locals 0
    .param p0, "progress"    # I

    .prologue
    .line 707
    div-int/lit8 p0, p0, 0xa

    .line 708
    mul-int/lit8 p0, p0, 0xa

    return p0
.end method

.method private initCoverManager(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2180
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    if-nez v0, :cond_1

    .line 2181
    new-instance v0, Lcom/samsung/android/sdk/cover/Scover;

    invoke-direct {v0}, Lcom/samsung/android/sdk/cover/Scover;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    .line 2183
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/cover/Scover;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2189
    :goto_0
    sget-boolean v0, Lcom/android/systemui/volume/SecVolumeDialog;->LOGD:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string v1, "initCoverManager: initCoverManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2190
    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    .line 2191
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2192
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    .line 2193
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    .line 2197
    :cond_1
    :goto_1
    return-void

    .line 2195
    :cond_2
    sget-boolean v0, Lcom/android/systemui/volume/SecVolumeDialog;->LOGD:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string v1, "initCoverManager fail NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2186
    :catch_0
    move-exception v0

    goto :goto_0

    .line 2184
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private initRow(IIIZ)Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .locals 9
    .param p1, "stream"    # I
    .param p2, "iconRes"    # I
    .param p3, "iconMuteRes"    # I
    .param p4, "important"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    const/16 v8, 0x64

    const/4 v0, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 713
    new-instance v3, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    invoke-direct {v3, v7}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;-><init>(Lcom/android/systemui/volume/SecVolumeDialog$1;)V

    .line 714
    .local v3, "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    invoke-static {v3, p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1902(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I

    .line 715
    invoke-static {v3, p2}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2202(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I

    .line 716
    invoke-static {v3, p3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2302(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I

    .line 717
    invoke-static {v3, p4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2402(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Z)Z

    .line 718
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    invoke-virtual {v4}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v6, 0x7f0400d3

    invoke-virtual {v4, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1602(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/view/View;)Landroid/view/View;

    .line 719
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 720
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v4

    const v6, 0x7f0f03fc

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {v3, v4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2502(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 721
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSpTexts:Lcom/android/systemui/volume/SpTexts;

    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2500(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/systemui/volume/SpTexts;->add(Landroid/widget/TextView;)I

    .line 722
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v4

    const v6, 0x7f0f03fe

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    invoke-static {v3, v4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2602(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/widget/SeekBar;)Landroid/widget/SeekBar;

    .line 723
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v4

    new-instance v6, Lcom/android/systemui/volume/SecVolumeDialog$VolumeSeekBarChangeListener;

    invoke-direct {v6, p0, v3, v7}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeSeekBarChangeListener;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Lcom/android/systemui/volume/SecVolumeDialog$1;)V

    invoke-virtual {v4, v6}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 724
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setMuteAnimation(Z)V

    .line 725
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setFluidEnabled(Z)V

    .line 753
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v4

    const v6, 0x7f0f03fd

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    invoke-static {v3, v4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2802(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;

    .line 754
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2800(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 755
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2800(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 756
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2800(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v4

    new-instance v6, Lcom/android/systemui/volume/SecVolumeDialog$6;

    invoke-direct {v6, p0, v3, p1}, Lcom/android/systemui/volume/SecVolumeDialog$6;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)V

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 785
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v4

    const v6, 0x7f0f03ff

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    invoke-static {v3, v4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1802(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;

    .line 786
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1800(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v4

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mClickSettings:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 788
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1900(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1900(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v4

    const/4 v6, 0x6

    if-ne v4, v6, :cond_1

    :cond_0
    move v0, v5

    .line 790
    .local v0, "isCallOrBTSco":Z
    :cond_1
    const/4 v1, 0x0

    .line 791
    .local v1, "levelMax":I
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1900(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v4

    if-ge v4, v8, :cond_4

    .line 792
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 797
    :goto_0
    if-eqz v0, :cond_5

    add-int/lit8 v4, v1, 0x1

    mul-int/lit8 v2, v4, 0x64

    .line 798
    .local v2, "max":I
    :goto_1
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 799
    if-eqz v0, :cond_2

    .line 800
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/SeekBar;->setMin(I)V

    .line 803
    :cond_2
    const/4 v4, 0x3

    if-ne p1, v4, :cond_3

    .line 804
    invoke-direct {p0, v2}, Lcom/android/systemui/volume/SecVolumeDialog;->setImpliedEarProtectLevel(I)V

    .line 807
    :cond_3
    return-object v3

    .line 794
    .end local v2    # "max":I
    :cond_4
    sget v1, Lcom/android/systemui/volume/SecVolumeDialog;->mRemoteControlMaxVolume:I

    goto :goto_0

    .line 797
    :cond_5
    mul-int/lit8 v2, v1, 0x64

    goto :goto_1
.end method

.method private insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "extra"    # Ljava/lang/String;
    .param p4, "value"    # J

    .prologue
    .line 2217
    sget-object v2, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertLog : extra = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2218
    sget-object v2, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertLog : value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2220
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2222
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2223
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "app_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2224
    const-string v2, "feature"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2225
    const-string v2, "extra"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2226
    const-string v2, "value"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2228
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2230
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2231
    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2232
    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2234
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2236
    .end local v0    # "broadcastIntent":Landroid/content/Intent;
    .end local v1    # "cv":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method private isAttached()Z
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVisibleH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Z)Z
    .locals 1
    .param p1, "row"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .param p2, "isActive"    # Z

    .prologue
    .line 1063
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2400(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p2, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-nez v0, :cond_3

    if-eqz p2, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 1
    .param p1, "colorResId"    # I

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method private makeSound()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 824
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 840
    :goto_0
    return-void

    .line 826
    :cond_0
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string v1, "sound : new SoundPool"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    new-instance v0, Landroid/media/SoundPool$Builder;

    invoke-direct {v0}, Landroid/media/SoundPool$Builder;-><init>()V

    invoke-virtual {v0, v3}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v0

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSoundPool:Landroid/media/SoundPool;

    .line 834
    sget-boolean v0, Lcom/android/systemui/volume/SecVolumeDialog;->SUPPORT_DEFAULTSTREAM_NOTIFICATION:Z

    if-eqz v0, :cond_1

    .line 835
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSoundPool:Landroid/media/SoundPool;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setStreamType(I)V

    .line 839
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSoundPool:Landroid/media/SoundPool;

    const-string v1, "system/media/audio/ui/TW_Volume_control.ogg"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSoundID:I

    goto :goto_0

    .line 837
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSoundPool:Landroid/media/SoundPool;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setStreamType(I)V

    goto :goto_1
.end method

.method private onStateChangedH(Lcom/android/systemui/volume/VolumeDialogController$State;)V
    .locals 12
    .param p1, "state"    # Lcom/android/systemui/volume/VolumeDialogController$State;

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1118
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-nez v6, :cond_1

    .line 1119
    sget-boolean v6, Lcom/android/systemui/volume/SecVolumeDialog;->LOGD:Z

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string v7, "onStateChangedH():initCoverManager"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6}, Lcom/android/systemui/volume/SecVolumeDialog;->initCoverManager(Landroid/content/Context;)V

    .line 1122
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->isSviewCoverOpened()Z

    move-result v6

    if-nez v6, :cond_4

    .line 1123
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1128
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->updateWindowWidthH()V

    .line 1130
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-virtual {v6}, Lcom/android/systemui/volume/VolumeDialogMotion;->isAnimating()Z

    move-result v0

    .line 1131
    .local v0, "animating":Z
    sget-boolean v6, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v6, :cond_2

    sget-object v6, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onStateChangedH animating="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    :cond_2
    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    .line 1133
    if-eqz v0, :cond_5

    .line 1134
    iput-boolean v9, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mPendingStateChanged:Z

    .line 1198
    :cond_3
    return-void

    .line 1126
    .end local v0    # "animating":Z
    :cond_4
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, v10}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 1137
    .restart local v0    # "animating":Z
    :cond_5
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1139
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v6, p1, Lcom/android/systemui/volume/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v1, v6, :cond_8

    .line 1140
    iget-object v6, p1, Lcom/android/systemui/volume/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 1141
    .local v5, "stream":I
    iget-object v6, p1, Lcom/android/systemui/volume/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    .line 1142
    .local v4, "ss":Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    iget-boolean v6, v4, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->dynamic:Z

    if-nez v6, :cond_7

    .line 1139
    :cond_6
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1143
    :cond_7
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v5, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1144
    invoke-direct {p0, v5}, Lcom/android/systemui/volume/SecVolumeDialog;->findRow(I)Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    move-result-object v6

    if-nez v6, :cond_6

    .line 1145
    iget v6, v4, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->levelMax:I

    sput v6, Lcom/android/systemui/volume/SecVolumeDialog;->mRemoteControlMaxVolume:I

    .line 1146
    iget v6, v4, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    sput v6, Lcom/android/systemui/volume/SecVolumeDialog;->mRemoteControlCurrentVolume:I

    .line 1147
    const v6, 0x7f0201a9

    const v7, 0x7f0201aa

    invoke-direct {p0, v5, v6, v7, v9}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    goto :goto_2

    .line 1151
    .end local v4    # "ss":Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    .end local v5    # "stream":I
    :cond_8
    iget v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStream:I

    iget v7, p1, Lcom/android/systemui/volume/VolumeDialogController$State;->activeStream:I

    if-eq v6, v7, :cond_9

    .line 1152
    sput-boolean v9, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStreamChanged:Z

    .line 1153
    iget v6, p1, Lcom/android/systemui/volume/VolumeDialogController$State;->activeStream:I

    iput v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStream:I

    .line 1154
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->updateRowsH()V

    .line 1155
    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->rescheduleTimeoutH()V

    .line 1161
    :goto_3
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->refreshMorebuttonTintColor()V

    .line 1163
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 1164
    .local v3, "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->refreshResourceTintColor(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    goto :goto_4

    .line 1157
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    :cond_9
    sput-boolean v10, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStreamChanged:Z

    goto :goto_3

    .line 1167
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_a
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 1168
    .restart local v3    # "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->updateVolumeRowH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    goto :goto_5

    .line 1173
    .end local v3    # "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    :cond_b
    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->isSviewCoverOpened()Z

    move-result v6

    if-nez v6, :cond_e

    .line 1174
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {v6}, Lcom/android/systemui/volume/SafetyWarningDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1175
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    if-eqz v6, :cond_e

    .line 1176
    sget-boolean v6, Lcom/android/systemui/volume/SecVolumeDialog;->LOGD:Z

    if-eqz v6, :cond_c

    sget-object v6, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string v7, "onStateChangedH : call mDialog.dismiss()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    :cond_c
    const/4 v6, 0x4

    invoke-virtual {p0, v6}, Lcom/android/systemui/volume/SecVolumeDialog;->dismissH(I)V

    .line 1180
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 1181
    .restart local v3    # "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    iget-boolean v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mUseCocktailFeature:Z

    if-eqz v6, :cond_d

    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->isSviewCoverOpened()Z

    move-result v6

    if-nez v6, :cond_d

    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1900(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v6

    if-ne v6, v11, :cond_d

    .line 1183
    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->sendUpdateCocktailVolumePanel(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    goto :goto_6

    .line 1192
    .end local v3    # "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    :cond_e
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 1193
    .restart local v3    # "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    iget-boolean v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mUseCocktailFeature:Z

    if-eqz v6, :cond_f

    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->isSviewCoverOpened()Z

    move-result v6

    if-nez v6, :cond_f

    if-eqz v3, :cond_f

    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1900(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v6

    if-ne v6, v11, :cond_f

    .line 1195
    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->sendUpdateCocktailVolumePanel(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    goto :goto_7
.end method

.method private phoneIsOffhook()Z
    .locals 4

    .prologue
    .line 2133
    const/4 v0, 0x0

    .line 2135
    .local v0, "phoneOffhook":Z
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_1

    .line 2136
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 2143
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "phoneIsOffhook : phoneOffhook = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2144
    return v0

    .line 2138
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 2139
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private prepareForCollapse()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 995
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    invoke-virtual {v0, v4}, Lcom/android/systemui/volume/SecVolumeDialog$H;->removeMessages(I)V

    .line 996
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCollapseTime:J

    .line 997
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->updateDialogBottomMarginH()V

    .line 998
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->getConservativeCollapseDuration()J

    move-result-wide v2

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/systemui/volume/SecVolumeDialog$H;->sendEmptyMessageDelayed(IJ)Z

    .line 999
    return-void
.end method

.method private recheckH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V
    .locals 5
    .param p1, "row"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .prologue
    .line 1438
    if-nez p1, :cond_1

    .line 1439
    sget-boolean v2, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string v3, "recheckH ALL"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->trimObsoleteH()V

    .line 1441
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 1442
    .local v1, "r":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    invoke-direct {p0, v1}, Lcom/android/systemui/volume/SecVolumeDialog;->updateVolumeRowH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    goto :goto_0

    .line 1445
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "r":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    :cond_1
    sget-boolean v2, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recheckH "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1900(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->updateVolumeRowH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    .line 1448
    :cond_3
    return-void
.end method

.method private refreshMorebuttonTintColor()V
    .locals 3

    .prologue
    .line 2080
    new-instance v0, Landroid/graphics/drawable/PaintDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/PaintDrawable;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogBgDrawable:Landroid/graphics/drawable/PaintDrawable;

    .line 2082
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-nez v0, :cond_0

    .line 2083
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->initCoverManager(Landroid/content/Context;)V

    .line 2086
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2087
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    .line 2090
    :cond_1
    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->isSviewCoverOpened()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2091
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconActiveDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 2092
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogBgDrawable:Landroid/graphics/drawable/PaintDrawable;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumePanelBgDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/PaintDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 2098
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogBgDrawable:Landroid/graphics/drawable/PaintDrawable;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0365

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadius(F)V

    .line 2099
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogBgDrawable:Landroid/graphics/drawable/PaintDrawable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2100
    return-void

    .line 2094
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconActiveColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 2095
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogBgDrawable:Landroid/graphics/drawable/PaintDrawable;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumePanelBgColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/PaintDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method private refreshResourceTintColor(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V
    .locals 2
    .param p1, "row"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .prologue
    .line 2005
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-nez v0, :cond_0

    .line 2006
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->initCoverManager(Landroid/content/Context;)V

    .line 2008
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2009
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    .line 2012
    :cond_1
    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->isSviewCoverOpened()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2013
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->refreshSliderResourceDefaultTintColor(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    .line 2014
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2800(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconActiveDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 2015
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2500(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumeTitleDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 2022
    :goto_0
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1900(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1900(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    .line 2023
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->setDualColorSeekbar(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    .line 2025
    :cond_3
    return-void

    .line 2017
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->refreshSliderResourceTintColor(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    .line 2018
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2800(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconActiveColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 2019
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2500(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumeTitleColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method private refreshSliderResourceDefaultTintColor(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V
    .locals 3
    .param p1, "row"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .prologue
    .line 2052
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshSliderResourceDefaultTintColor row stream : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1900(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2054
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setDefaultColorForVolumePanel(Z)V

    .line 2062
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$6700(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mThumbDefaultColor:Landroid/content/res/ColorStateList;

    if-eq v0, v1, :cond_0

    .line 2063
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mThumbDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 2064
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mThumbDefaultColor:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$6702(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 2067
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$6800(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressDefaultColor:Landroid/content/res/ColorStateList;

    if-eq v0, v1, :cond_1

    .line 2068
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 2069
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressDefaultColor:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$6802(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 2072
    :cond_1
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$6900(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressBgDefaultColor:Landroid/content/res/ColorStateList;

    if-eq v0, v1, :cond_2

    .line 2073
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressBgDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 2074
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressBgDefaultColor:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$6902(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 2076
    :cond_2
    return-void
.end method

.method private refreshSliderResourceTintColor(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V
    .locals 2
    .param p1, "row"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .prologue
    .line 2030
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setDefaultColorForVolumePanel(Z)V

    .line 2032
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$6700(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mThumbColor:Landroid/content/res/ColorStateList;

    if-eq v0, v1, :cond_0

    .line 2033
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string v1, "refreshSliderResourceTintColor #1 mThumbColor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2034
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mThumbColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 2035
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mThumbColor:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$6702(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 2038
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$6800(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressColor:Landroid/content/res/ColorStateList;

    if-eq v0, v1, :cond_1

    .line 2039
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string v1, "refreshSliderResourceTintColor #2 mProgressColor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2040
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 2041
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressColor:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$6802(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 2044
    :cond_1
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$6900(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressBgColor:Landroid/content/res/ColorStateList;

    if-eq v0, v1, :cond_2

    .line 2045
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string v1, "refreshSliderResourceTintColor #3 mProgressBgColor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2046
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressBgColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 2047
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressBgColor:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$6902(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 2049
    :cond_2
    return-void
.end method

.method private releaseSound()V
    .locals 2

    .prologue
    .line 854
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 855
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string v1, "sound : release SoundPool"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 857
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSoundPool:Landroid/media/SoundPool;

    .line 859
    :cond_0
    return-void
.end method

.method private repositionExpandAnim(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V
    .locals 7
    .param p1, "row"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .prologue
    .line 671
    const/4 v4, 0x2

    new-array v0, v4, [I

    .line 672
    .local v0, "loc":[I
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1800(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->getLocationInWindow([I)V

    .line 673
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 674
    .local v1, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v4, 0x0

    aget v4, v0, v4

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int v2, v4, v5

    .line 675
    .local v2, "x":I
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    .line 676
    .local v3, "y":I
    sget-boolean v4, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "repositionExpandAnim x="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " y="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    int-to-float v5, v2

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setTranslationX(F)V

    .line 678
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    int-to-float v5, v3

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setTranslationY(F)V

    .line 679
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 680
    return-void
.end method

.method private sendCoverWarningMsgIntent(Z)V
    .locals 4
    .param p1, "coverMessageEnabled"    # Z

    .prologue
    .line 310
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->createCoverMsgRemoteView()Landroid/widget/RemoteViews;

    move-result-object v1

    .line 311
    .local v1, "remoteViews":Landroid/widget/RemoteViews;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.cover.REMOTEVIEWS_UPDATE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 312
    .local v0, "coverIntent":Landroid/content/Intent;
    const-string v2, "visibility"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 313
    const-string v2, "type"

    const-string v3, "volume"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 314
    const-string v2, "remote"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 315
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 316
    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsShowingSCoverWarning:Z

    .line 317
    return-void
.end method

.method private sendSafetyVolumeWarningToCocktailBar(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V
    .locals 8
    .param p1, "row"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .prologue
    const/4 v7, 0x3

    .line 1974
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1975
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v5, "package"

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1976
    const-string v5, "content"

    const-class v6, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1978
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1900(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v5

    if-ne v5, v7, :cond_0

    .line 1980
    const-string v5, "progress"

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1981
    const-string v5, "max"

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getMax()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1982
    const-string v5, "streamtype"

    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1985
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;

    move-result-object v2

    .line 1986
    .local v2, "cocktailManager":Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;
    new-instance v5, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;

    invoke-direct {v5, v0}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;-><init>(Landroid/os/Bundle;)V

    const v6, 0x10004

    invoke-virtual {v5, v6}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;->setCategory(I)Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;->build()Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;

    move-result-object v4

    .line 1989
    .local v4, "info":Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    const-class v7, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanelProvider;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v5}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->getCocktailIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    .line 1991
    .local v1, "cocktailIds":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, v1

    if-ge v3, v5, :cond_1

    .line 1992
    aget v5, v1, v3

    invoke-virtual {v2, v5, v4}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->updateCocktail(ILcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;)V

    .line 1993
    aget v5, v1, v3

    invoke-virtual {v2, v5}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->showCocktail(I)V

    .line 1991
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1995
    :cond_1
    return-void
.end method

.method private sendUpdateCocktailVolumePanel(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V
    .locals 8
    .param p1, "row"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .prologue
    .line 1938
    if-eqz p1, :cond_1

    .line 1939
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1940
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v5, "package"

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1941
    const-string v5, "content"

    const-class v6, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1943
    if-eqz p1, :cond_0

    .line 1944
    const-string v5, "progress"

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1900(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1945
    const-string v5, "max"

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getMax()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1946
    const-string v5, "streamtype"

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1900(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1949
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;

    move-result-object v2

    .line 1950
    .local v2, "cocktailManager":Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;
    new-instance v5, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;

    invoke-direct {v5, v0}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;-><init>(Landroid/os/Bundle;)V

    const v6, 0x10004

    invoke-virtual {v5, v6}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;->setCategory(I)Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;->build()Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;

    move-result-object v4

    .line 1953
    .local v4, "info":Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    const-class v7, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanelProvider;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v5}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->getCocktailIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    .line 1955
    .local v1, "cocktailIds":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, v1

    if-ge v3, v5, :cond_1

    .line 1956
    aget v5, v1, v3

    invoke-virtual {v2, v5, v4}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->updateCocktail(ILcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;)V

    .line 1957
    aget v5, v1, v3

    invoke-virtual {v2, v5}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->showCocktail(I)V

    .line 1955
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1960
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "cocktailIds":[I
    .end local v2    # "cocktailManager":Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;
    .end local v3    # "i":I
    .end local v4    # "info":Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;
    :cond_1
    return-void
.end method

.method private setDualColorSeekbar(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V
    .locals 3
    .param p1, "row"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .prologue
    .line 1914
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSamsungAudioManager:Landroid/media/SamsungAudioManager;

    invoke-virtual {v0}, Landroid/media/SamsungAudioManager;->isSafeMediaVolumeDeviceOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1915
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMode(I)V

    .line 1916
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDualColorSeekbar - mAudioManager.getEarProtectLimitIndex() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {}, Landroid/media/AudioManager;->getEarProtectLimitIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mEarProtectLevel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1918
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLevel:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOverlapPointForDualColor(I)V

    .line 1923
    :goto_0
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->invalidate()V

    .line 1924
    return-void

    .line 1921
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOverlapPointForDualColor(I)V

    goto :goto_0
.end method

.method private setExpandedH(Z)V
    .locals 3
    .param p1, "expanded"    # Z

    .prologue
    .line 1002
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-ne v0, p1, :cond_0

    .line 1032
    :goto_0
    return-void

    .line 1003
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    .line 1004
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->isAttached()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButtonAnimationRunning:Z

    .line 1005
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setExpandedH "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStreamChanged:Z

    .line 1010
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->updateRowsH()V

    .line 1011
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButtonAnimationRunning:Z

    if-eqz v0, :cond_2

    .line 1028
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButtonAnimationRunning:Z

    .line 1030
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->updateExpandButtonH()V

    .line 1031
    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->rescheduleTimeoutH()V

    goto :goto_0
.end method

.method private setImpliedEarProtectLevel(I)V
    .locals 2
    .param p1, "max"    # I

    .prologue
    .line 1927
    div-int/lit8 v1, p1, 0x64

    add-int/lit8 v0, v1, -0x1

    .line 1932
    .local v0, "n":I
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {}, Landroid/media/AudioManager;->getEarProtectLimitIndex()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, p1

    div-int/2addr v1, v0

    iput v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLevel:I

    .line 1934
    return-void
.end method

.method private setStreamImportantH(IZ)V
    .locals 3
    .param p1, "stream"    # I
    .param p2, "important"    # Z

    .prologue
    .line 1451
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 1452
    .local v1, "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1900(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 1453
    invoke-static {v1, p2}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2402(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Z)Z

    .line 1457
    .end local v1    # "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    :cond_1
    return-void
.end method

.method private setStreamTypeForLogging(I)V
    .locals 1
    .param p1, "streamType"    # I

    .prologue
    .line 957
    packed-switch p1, :pswitch_data_0

    .line 974
    :goto_0
    :pswitch_0
    return-void

    .line 959
    :pswitch_1
    const-string v0, "System"

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExtraForRingerMode:Ljava/lang/String;

    goto :goto_0

    .line 963
    :pswitch_2
    const-string v0, "Ringtone"

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExtraForRingerMode:Ljava/lang/String;

    goto :goto_0

    .line 967
    :pswitch_3
    const-string v0, "Media"

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExtraForRingerMode:Ljava/lang/String;

    goto :goto_0

    .line 971
    :pswitch_4
    const-string v0, "Notification"

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExtraForRingerMode:Ljava/lang/String;

    goto :goto_0

    .line 957
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private showH(I)V
    .locals 6
    .param p1, "reason"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 884
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogMotion;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 899
    :cond_0
    :goto_0
    return-void

    .line 887
    :cond_1
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showH r="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/volume/Events;->DISMISS_REASONS:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    invoke-virtual {v0, v3}, Lcom/android/systemui/volume/SecVolumeDialog$H;->removeMessages(I)V

    .line 889
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    invoke-virtual {v0, v5}, Lcom/android/systemui/volume/SecVolumeDialog$H;->removeMessages(I)V

    .line 890
    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->rescheduleTimeoutH()V

    .line 891
    sget-boolean v0, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    if-nez v0, :cond_0

    .line 892
    sget-boolean v0, Lcom/android/systemui/volume/SecVolumeDialog;->LOGD:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showH with mIsShowingSCoverWarning value as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsShowingSCoverWarning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->isSviewCoverOpened()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-nez v0, :cond_0

    .line 894
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SafetyWarningDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 895
    :cond_5
    sput-boolean v3, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    .line 896
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogMotion;->startShow()V

    .line 897
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mKeyguard:Landroid/app/KeyguardManager;

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v4, v1}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 898
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v0, v3}, Lcom/android/systemui/volume/VolumeDialogController;->notifyVisible(Z)V

    goto/16 :goto_0
.end method

.method private showSafetyWarningH(I)V
    .locals 12
    .param p1, "flags"    # I

    .prologue
    const/4 v11, 0x1

    .line 1461
    const/4 v3, 0x1

    .line 1462
    .local v3, "isCoverOpen":Z
    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->isSviewCoverOpened()Z

    move-result v3

    .line 1465
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->getActiveRow()Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    move-result-object v7

    const/4 v8, -0x1

    invoke-static {v7, v8}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$4002(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I

    .line 1466
    const/high16 v7, 0x10000000

    and-int/2addr v7, p1

    if-eqz v7, :cond_2

    .line 1467
    sget-object v8, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1468
    :try_start_0
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-eqz v7, :cond_1

    .line 1469
    sget-boolean v7, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v7, :cond_0

    sget-object v7, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string v9, "SafetyWarning dismissed"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    :cond_0
    const/4 v7, 0x0

    sput-boolean v7, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafetyWarningShowing:Z

    .line 1471
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {v7}, Lcom/android/systemui/volume/SafetyWarningDialog;->dismiss()V

    .line 1472
    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->onDismissSafeVolumeWarning()V

    .line 1474
    :cond_1
    monitor-exit v8

    .line 1563
    :goto_0
    return-void

    .line 1474
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 1480
    :cond_2
    sget-object v8, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1481
    :try_start_1
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-eqz v7, :cond_5

    .line 1483
    if-nez v3, :cond_4

    iget-boolean v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsShowingSCoverWarning:Z

    if-nez v7, :cond_4

    .line 1484
    sget-boolean v7, Lcom/android/systemui/volume/SecVolumeDialog;->LOGD:Z

    if-eqz v7, :cond_3

    sget-object v7, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string v9, "show warning popup on the s view cover and than return"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    :cond_3
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/android/systemui/volume/SecVolumeDialog;->sendCoverWarningMsgIntent(Z)V

    .line 1488
    :cond_4
    monitor-exit v8

    goto :goto_0

    .line 1559
    :catchall_1
    move-exception v7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v7

    .line 1490
    :cond_5
    :try_start_2
    new-instance v7, Lcom/android/systemui/volume/SecVolumeDialog$8;

    iget-object v9, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v10}, Lcom/android/systemui/volume/VolumeDialogController;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v10

    invoke-direct {v7, p0, v9, v10}, Lcom/android/systemui/volume/SecVolumeDialog$8;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;Landroid/content/Context;Landroid/media/AudioManager;)V

    iput-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    .line 1501
    sget-boolean v7, Lcom/android/systemui/volume/SecVolumeDialog;->LOGD:Z

    if-eqz v7, :cond_6

    sget-object v7, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isCoverOpen = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    :cond_6
    if-eqz v3, :cond_d

    .line 1504
    sget-boolean v7, Lcom/android/systemui/volume/SecVolumeDialog;->LOGD:Z

    if-eqz v7, :cond_7

    sget-object v7, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string v9, "cover open, warning popup window type is set to TYPE_VOLUME_OVERLAY"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    :cond_7
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {v7}, Lcom/android/systemui/volume/SafetyWarningDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v9, 0x7e4

    invoke-virtual {v7, v9}, Landroid/view/Window;->setType(I)V

    .line 1518
    :goto_1
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    invoke-virtual {v7}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1519
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    invoke-virtual {v7}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->dismiss()V

    .line 1520
    const/4 v7, 0x4

    invoke-virtual {p0, v7}, Lcom/android/systemui/volume/SecVolumeDialog;->dismissH(I)V

    .line 1523
    :cond_8
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {v7}, Lcom/android/systemui/volume/SafetyWarningDialog;->show()V

    .line 1524
    const/4 v7, 0x1

    sput-boolean v7, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafetyWarningShowing:Z

    .line 1526
    if-nez v3, :cond_c

    .line 1528
    sget-boolean v7, Lcom/android/systemui/volume/SecVolumeDialog;->LOGD:Z

    if-eqz v7, :cond_9

    sget-object v7, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string v9, "Show warning popup on the s view cover"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    :cond_9
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 1531
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v7

    iput v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    .line 1534
    :cond_a
    iget v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    const/4 v9, 0x6

    if-eq v7, v9, :cond_b

    iget v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverLevel:I

    if-ne v7, v11, :cond_f

    .line 1535
    :cond_b
    new-instance v6, Landroid/widget/RemoteViews;

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const v9, 0x7f0400d1

    invoke-direct {v6, v7, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1539
    .local v6, "remoteViews":Landroid/widget/RemoteViews;
    :goto_2
    new-instance v0, Landroid/content/Intent;

    const-string v7, "com.samsung.cover.REMOTEVIEWS_UPDATE"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1540
    .local v0, "coverIntent":Landroid/content/Intent;
    const-string v7, "visibility"

    const/4 v9, 0x1

    invoke-virtual {v0, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1541
    const-string v7, "type"

    const-string v9, "volume"

    invoke-virtual {v0, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1542
    const-string v7, "remote"

    invoke-virtual {v0, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1544
    new-instance v1, Landroid/content/Intent;

    const-string v7, "android.view.volumepanel.CLICK_BUTTON1"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1545
    .local v1, "intent1":Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    const/high16 v10, 0x8000000

    invoke-static {v7, v9, v1, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 1547
    .local v4, "pendingIntent1":Landroid/app/PendingIntent;
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.view.volumepanel.CLICK_BUTTON2"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1548
    .local v2, "intent2":Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    const/high16 v10, 0x8000000

    invoke-static {v7, v9, v2, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 1550
    .local v5, "pendingIntent2":Landroid/app/PendingIntent;
    const v7, 0x7f0f03f4

    invoke-virtual {v6, v7, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1551
    const v7, 0x7f0f03f6

    invoke-virtual {v6, v7, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1552
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1553
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsShowingSCoverWarning:Z

    .line 1554
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1555
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsShowingSCoverWarning:Z

    .line 1558
    .end local v0    # "coverIntent":Landroid/content/Intent;
    .end local v1    # "intent1":Landroid/content/Intent;
    .end local v2    # "intent2":Landroid/content/Intent;
    .end local v4    # "pendingIntent1":Landroid/app/PendingIntent;
    .end local v5    # "pendingIntent2":Landroid/app/PendingIntent;
    .end local v6    # "remoteViews":Landroid/widget/RemoteViews;
    :cond_c
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/systemui/volume/SecVolumeDialog;->recheckH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    .line 1559
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1560
    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->rescheduleTimeoutH()V

    goto/16 :goto_0

    .line 1507
    :cond_d
    :try_start_3
    sget-boolean v7, Lcom/android/systemui/volume/SecVolumeDialog;->LOGD:Z

    if-eqz v7, :cond_e

    sget-object v7, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string v9, "cover closed, warning popup window type is set to LayoutParams"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    :cond_e
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {v7}, Lcom/android/systemui/volume/SafetyWarningDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v9, 0x7d9

    invoke-virtual {v7, v9}, Landroid/view/Window;->setType(I)V

    goto/16 :goto_1

    .line 1537
    :cond_f
    new-instance v6, Landroid/widget/RemoteViews;

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const v9, 0x7f0400d0

    invoke-direct {v6, v7, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .restart local v6    # "remoteViews":Landroid/widget/RemoteViews;
    goto/16 :goto_2
.end method

.method private trimObsoleteH()V
    .locals 4

    .prologue
    .line 1104
    sget-boolean v2, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string v3, "trimObsoleteH"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 1106
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 1107
    .local v1, "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$3400(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$3400(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->dynamic:Z

    if-nez v2, :cond_2

    .line 1105
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1108
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1900(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1109
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1110
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1111
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1300(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 1114
    .end local v1    # "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    :cond_3
    return-void
.end method

.method private updateDefaultTintColor()V
    .locals 2

    .prologue
    .line 2119
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string v1, "updateDefaultTintColor()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2120
    const-string v0, "#919799"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconActiveDefaultColor:Landroid/content/res/ColorStateList;

    .line 2121
    const-string v0, "#000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumeTitleDefaultColor:Landroid/content/res/ColorStateList;

    .line 2122
    const-string v0, "#fafafa"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumePanelBgDefaultColor:Landroid/content/res/ColorStateList;

    .line 2123
    const-string v0, "#ff00a0ce"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mThumbDefaultColor:Landroid/content/res/ColorStateList;

    .line 2124
    const-string v0, "#ffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mThumbDisabledDefaultColor:Landroid/content/res/ColorStateList;

    .line 2125
    const-string v0, "#ff00a0ce"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressDefaultColor:Landroid/content/res/ColorStateList;

    .line 2126
    const-string v0, "#ffC9c9c9"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressBgDefaultColor:Landroid/content/res/ColorStateList;

    .line 2127
    return-void
.end method

.method private updateDialogBottomMarginH()V
    .locals 12

    .prologue
    const/4 v6, 0x1

    .line 977
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCollapseTime:J

    sub-long v2, v8, v10

    .line 978
    .local v2, "diff":J
    iget-wide v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCollapseTime:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->getConservativeCollapseDuration()J

    move-result-wide v8

    cmp-long v7, v2, v8

    if-gez v7, :cond_2

    move v1, v6

    .line 979
    .local v1, "collapsing":Z
    :goto_0
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 980
    .local v4, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v5, v7, Landroid/content/res/Configuration;->orientation:I

    .line 981
    .local v5, "orientation":I
    if-eqz v1, :cond_3

    if-ne v5, v6, :cond_3

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    .line 983
    .local v0, "bottomMargin":I
    :goto_1
    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v0, v6, :cond_1

    .line 984
    sget-boolean v6, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bottomMargin "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    :cond_0
    iput v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 986
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 988
    :cond_1
    return-void

    .line 978
    .end local v0    # "bottomMargin":I
    .end local v1    # "collapsing":Z
    .end local v4    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v5    # "orientation":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 981
    .restart local v1    # "collapsing":Z
    .restart local v4    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v5    # "orientation":I
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a04e1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_1
.end method

.method private updateExpandButtonH()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 1035
    sget-boolean v1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string v2, "updateExpandButtonH"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButtonAnimationRunning:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 1037
    iget-boolean v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButtonAnimationRunning:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1060
    :goto_1
    return-void

    .line 1036
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1040
    :cond_2
    sget-boolean v1, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    if-eqz v1, :cond_4

    .line 1041
    iget-boolean v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-eqz v1, :cond_3

    .line 1042
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    const-string v2, "rotation"

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1043
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    iget-wide v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButtonAnimationDuration:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1044
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1058
    .end local v0    # "animator":Landroid/animation/ObjectAnimator;
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-eqz v1, :cond_5

    const v1, 0x7f0b063f

    :goto_3
    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1046
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    const-string v2, "rotation"

    new-array v3, v3, [F

    fill-array-data v3, :array_1

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1047
    .restart local v0    # "animator":Landroid/animation/ObjectAnimator;
    iget-wide v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButtonAnimationDuration:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1048
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_2

    .line 1051
    .end local v0    # "animator":Landroid/animation/ObjectAnimator;
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setRotation(F)V

    goto :goto_2

    .line 1058
    :cond_5
    const v1, 0x7f0b063e

    goto :goto_3

    .line 1042
    :array_0
    .array-data 4
        0x0
        0x43340000    # 180.0f
    .end array-data

    .line 1046
    :array_1
    .array-data 4
        0x43340000    # 180.0f
        0x0
    .end array-data
.end method

.method private updateRowsH()V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1069
    sget-boolean v8, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v8, :cond_0

    sget-object v8, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string v9, "updateRowsH"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->getActiveRow()Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    move-result-object v0

    .line 1073
    .local v0, "activeRow":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    sget-boolean v8, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    if-nez v8, :cond_1

    .line 1074
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->trimObsoleteH()V

    .line 1077
    :cond_1
    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 1078
    .local v4, "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    if-ne v4, v0, :cond_4

    move v3, v6

    .line 1079
    .local v3, "isActive":Z
    :goto_1
    invoke-direct {p0, v4, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->isVisibleH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Z)Z

    move-result v5

    .line 1080
    .local v5, "visible":Z
    sget-boolean v8, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStreamChanged:Z

    if-eqz v8, :cond_2

    .line 1081
    invoke-direct {p0, v4, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->updateVolumeRowFocusable(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Z)V

    .line 1083
    :cond_2
    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v8

    invoke-static {v8, v5}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 1084
    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1300(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v9

    if-eqz v5, :cond_5

    iget-boolean v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-eqz v8, :cond_5

    move v8, v6

    :goto_2
    invoke-static {v9, v8}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 1085
    iget-boolean v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-eqz v8, :cond_6

    const v1, 0x7f0201ae

    .line 1086
    .local v1, "expandButtonRes":I
    :goto_3
    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$3900(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v8

    if-eq v1, v8, :cond_3

    .line 1087
    invoke-static {v4, v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$3902(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I

    .line 1088
    if-nez v1, :cond_7

    .line 1089
    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1800(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1094
    :cond_3
    :goto_4
    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1800(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/android/systemui/volume/Util;->setVisOrInvis(Landroid/view/View;Z)V

    .line 1095
    invoke-direct {p0, v4}, Lcom/android/systemui/volume/SecVolumeDialog;->updateVolumeRowHeaderVisibleH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    .line 1097
    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2500(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/TextView;

    move-result-object v8

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0

    .end local v1    # "expandButtonRes":I
    .end local v3    # "isActive":Z
    .end local v5    # "visible":Z
    :cond_4
    move v3, v7

    .line 1078
    goto :goto_1

    .restart local v3    # "isActive":Z
    .restart local v5    # "visible":Z
    :cond_5
    move v8, v7

    .line 1084
    goto :goto_2

    :cond_6
    move v1, v7

    .line 1085
    goto :goto_3

    .line 1091
    .restart local v1    # "expandButtonRes":I
    :cond_7
    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1800(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_4

    .line 1100
    .end local v1    # "expandButtonRes":I
    .end local v3    # "isActive":Z
    .end local v4    # "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .end local v5    # "visible":Z
    :cond_8
    sput-boolean v7, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStreamChanged:Z

    .line 1101
    return-void
.end method

.method private updateTintColor()V
    .locals 6

    .prologue
    .line 2103
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2104
    .local v1, "res":Landroid/content/res/Resources;
    sget-object v3, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string v4, "updateTintColor()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2105
    const v3, 0x7f0c00a4

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconActiveColor:Landroid/content/res/ColorStateList;

    .line 2106
    const v3, 0x7f0c00b9

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumeTitleColor:Landroid/content/res/ColorStateList;

    .line 2107
    const v3, 0x7f0c0090

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumePanelBgColor:Landroid/content/res/ColorStateList;

    .line 2108
    const v3, 0x106011d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mThumbColor:Landroid/content/res/ColorStateList;

    .line 2109
    const v3, 0x106011e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mThumbDisabledColor:Landroid/content/res/ColorStateList;

    .line 2110
    const v3, 0x1060118

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressColor:Landroid/content/res/ColorStateList;

    .line 2111
    const v3, 0x1060117

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressBgColor:Landroid/content/res/ColorStateList;

    .line 2113
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 2114
    .local v2, "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v3

    const v4, 0x1080afa

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 2116
    .end local v2    # "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    :cond_0
    return-void
.end method

.method private updateVolumeRowFocusable(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Z)V
    .locals 3
    .param p1, "row"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .param p2, "isActive"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1333
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAccessibility:Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;->access$3800(Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1334
    if-eqz p2, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-eqz v0, :cond_1

    .line 1335
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setFocusable(Z)V

    .line 1336
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setFocusableInTouchMode(Z)V

    .line 1337
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->requestFocus()Z

    .line 1350
    :cond_0
    :goto_0
    return-void

    .line 1339
    :cond_1
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setFocusable(Z)V

    .line 1340
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setFocusableInTouchMode(Z)V

    .line 1341
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->clearFocus()V

    goto :goto_0
.end method

.method private updateVolumeRowH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V
    .locals 31
    .param p1, "row"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .prologue
    .line 1213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v28, v0

    if-nez v28, :cond_1

    .line 1321
    :cond_0
    :goto_0
    return-void

    .line 1214
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    move-object/from16 v28, v0

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1900(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    .line 1215
    .local v24, "ss":Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    if-eqz v24, :cond_0

    .line 1216
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$3402(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Lcom/android/systemui/volume/VolumeDialogController$StreamState;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    .line 1217
    sget-boolean v28, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v28, :cond_2

    sget-object v28, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "updateVolumeRowH s="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1900(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", ss.level : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", row.lastAudibleLevel : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$3500(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", row.ss.muted : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$3400(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v30

    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muted:Z

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    :cond_2
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    move/from16 v28, v0

    if-lez v28, :cond_3

    .line 1220
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$3502(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I

    .line 1222
    :cond_3
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    move/from16 v28, v0

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$4000(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_4

    .line 1223
    const/16 v28, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$4002(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I

    .line 1225
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1900(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v28

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_f

    const/4 v15, 0x1

    .line 1226
    .local v15, "isRingStream":Z
    :goto_1
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1900(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v28

    const/16 v29, 0x5

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_10

    const/4 v11, 0x1

    .line 1227
    .local v11, "isNotificationStream":Z
    :goto_2
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1900(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_11

    const/16 v19, 0x1

    .line 1228
    .local v19, "isSystemStream":Z
    :goto_3
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1900(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v28

    const/16 v29, 0x4

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_12

    const/4 v6, 0x1

    .line 1229
    .local v6, "isAlarmStream":Z
    :goto_4
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1900(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v28

    const/16 v29, 0x3

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_13

    const/4 v9, 0x1

    .line 1230
    .local v9, "isMusicStream":Z
    :goto_5
    if-eqz v15, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeInternal:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_14

    const/16 v16, 0x1

    .line 1232
    .local v16, "isRingVibrate":Z
    :goto_6
    if-eqz v11, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeInternal:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_15

    const/4 v12, 0x1

    .line 1234
    .local v12, "isNotificationVibrate":Z
    :goto_7
    if-eqz v19, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeInternal:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_16

    const/16 v20, 0x1

    .line 1236
    .local v20, "isSystemVibrate":Z
    :goto_8
    if-eqz v15, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeInternal:I

    move/from16 v28, v0

    if-nez v28, :cond_17

    const/4 v14, 0x1

    .line 1238
    .local v14, "isRingSilent":Z
    :goto_9
    if-eqz v11, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeInternal:I

    move/from16 v28, v0

    if-nez v28, :cond_18

    const/4 v10, 0x1

    .line 1240
    .local v10, "isNotificationSilent":Z
    :goto_a
    if-eqz v19, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeInternal:I

    move/from16 v28, v0

    if-nez v28, :cond_19

    const/16 v18, 0x1

    .line 1242
    .local v18, "isSystemSilent":Z
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->zenMode:I

    move/from16 v28, v0

    const/16 v29, 0x3

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_1a

    const/16 v21, 0x1

    .line 1243
    .local v21, "isZenAlarms":Z
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->zenMode:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_1b

    const/16 v22, 0x1

    .line 1244
    .local v22, "isZenNone":Z
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->zenMode:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_1c

    const/16 v23, 0x1

    .line 1245
    .local v23, "isZenPriority":Z
    :goto_e
    if-nez v15, :cond_5

    if-eqz v19, :cond_1d

    :cond_5
    if-eqz v22, :cond_1d

    const/16 v17, 0x1

    .line 1246
    .local v17, "isRingZenNone":Z
    :goto_f
    if-eqz v15, :cond_1e

    if-eqz v23, :cond_1e

    const/4 v13, 0x1

    .line 1247
    .local v13, "isRingLimited":Z
    :goto_10
    const/16 v27, 0x0

    .line 1250
    .local v27, "zenMuted":Z
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1900(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v28

    if-eqz v28, :cond_6

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1900(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v28

    const/16 v29, 0x6

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_1f

    :cond_6
    const/4 v7, 0x1

    .line 1252
    .local v7, "isCallOrBTSco":Z
    :goto_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mVoiceCapable:Z

    move/from16 v28, v0

    if-eqz v28, :cond_21

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1900(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v28

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_20

    const/4 v8, 0x1

    .line 1255
    .local v8, "isMainStream":Z
    :goto_12
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog;->updateVolumeRowHeaderVisibleH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    .line 1258
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 1274
    .local v25, "text":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2500(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/TextView;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/android/systemui/volume/Util;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    .line 1277
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mAutomute:Z

    move/from16 v28, v0

    if-nez v28, :cond_7

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muteSupported:Z

    move/from16 v28, v0

    if-eqz v28, :cond_23

    :cond_7
    const/4 v4, 0x1

    .line 1278
    .local v4, "iconEnabled":Z
    :goto_13
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2800(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1279
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2800(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v29

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1900(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v28

    if-eqz v28, :cond_8

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1900(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v28

    const/16 v30, 0x6

    move/from16 v0, v28

    move/from16 v1, v30

    if-ne v0, v1, :cond_25

    :cond_8
    if-nez v4, :cond_24

    const/16 v28, 0x1

    :goto_14
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1281
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2800(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v29

    if-eqz v4, :cond_26

    const/high16 v28, 0x3f800000    # 1.0f

    :goto_15
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 1282
    if-nez v16, :cond_9

    if-eqz v12, :cond_27

    :cond_9
    const v5, 0x1080a1e

    .line 1288
    .local v5, "iconRes":I
    :goto_16
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$4100(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v28

    move/from16 v0, v28

    if-eq v5, v0, :cond_a

    .line 1292
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$4102(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I

    .line 1293
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2800(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1295
    :cond_a
    const v28, 0x1080a1e

    move/from16 v0, v28

    if-ne v5, v0, :cond_2c

    const/16 v28, 0x3

    :goto_17
    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$3002(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I

    .line 1302
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2800(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v28

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1305
    if-nez v12, :cond_b

    if-nez v10, :cond_b

    if-nez v20, :cond_b

    if-eqz v18, :cond_c

    :cond_b
    if-eqz v8, :cond_31

    :cond_c
    const/4 v3, 0x1

    .line 1307
    .local v3, "enableSlider":Z
    :goto_18
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$3400(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v28

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muted:Z

    move/from16 v28, v0

    if-eqz v28, :cond_32

    if-nez v14, :cond_d

    if-nez v16, :cond_d

    if-nez v15, :cond_32

    :cond_d
    const/16 v26, 0x0

    .line 1311
    .local v26, "vlevel":I
    :goto_19
    if-nez v3, :cond_34

    .line 1313
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2800(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v28

    const v29, 0x3ecccccd    # 0.4f

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 1314
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2800(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v28

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 1320
    :cond_e
    :goto_1a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v26

    invoke-direct {v0, v1, v3, v2}, Lcom/android/systemui/volume/SecVolumeDialog;->updateVolumeRowSliderH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;ZI)V

    goto/16 :goto_0

    .line 1225
    .end local v3    # "enableSlider":Z
    .end local v4    # "iconEnabled":Z
    .end local v5    # "iconRes":I
    .end local v6    # "isAlarmStream":Z
    .end local v7    # "isCallOrBTSco":Z
    .end local v8    # "isMainStream":Z
    .end local v9    # "isMusicStream":Z
    .end local v10    # "isNotificationSilent":Z
    .end local v11    # "isNotificationStream":Z
    .end local v12    # "isNotificationVibrate":Z
    .end local v13    # "isRingLimited":Z
    .end local v14    # "isRingSilent":Z
    .end local v15    # "isRingStream":Z
    .end local v16    # "isRingVibrate":Z
    .end local v17    # "isRingZenNone":Z
    .end local v18    # "isSystemSilent":Z
    .end local v19    # "isSystemStream":Z
    .end local v20    # "isSystemVibrate":Z
    .end local v21    # "isZenAlarms":Z
    .end local v22    # "isZenNone":Z
    .end local v23    # "isZenPriority":Z
    .end local v25    # "text":Ljava/lang/String;
    .end local v26    # "vlevel":I
    .end local v27    # "zenMuted":Z
    :cond_f
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 1226
    .restart local v15    # "isRingStream":Z
    :cond_10
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 1227
    .restart local v11    # "isNotificationStream":Z
    :cond_11
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 1228
    .restart local v19    # "isSystemStream":Z
    :cond_12
    const/4 v6, 0x0

    goto/16 :goto_4

    .line 1229
    .restart local v6    # "isAlarmStream":Z
    :cond_13
    const/4 v9, 0x0

    goto/16 :goto_5

    .line 1230
    .restart local v9    # "isMusicStream":Z
    :cond_14
    const/16 v16, 0x0

    goto/16 :goto_6

    .line 1232
    .restart local v16    # "isRingVibrate":Z
    :cond_15
    const/4 v12, 0x0

    goto/16 :goto_7

    .line 1234
    .restart local v12    # "isNotificationVibrate":Z
    :cond_16
    const/16 v20, 0x0

    goto/16 :goto_8

    .line 1236
    .restart local v20    # "isSystemVibrate":Z
    :cond_17
    const/4 v14, 0x0

    goto/16 :goto_9

    .line 1238
    .restart local v14    # "isRingSilent":Z
    :cond_18
    const/4 v10, 0x0

    goto/16 :goto_a

    .line 1240
    .restart local v10    # "isNotificationSilent":Z
    :cond_19
    const/16 v18, 0x0

    goto/16 :goto_b

    .line 1242
    .restart local v18    # "isSystemSilent":Z
    :cond_1a
    const/16 v21, 0x0

    goto/16 :goto_c

    .line 1243
    .restart local v21    # "isZenAlarms":Z
    :cond_1b
    const/16 v22, 0x0

    goto/16 :goto_d

    .line 1244
    .restart local v22    # "isZenNone":Z
    :cond_1c
    const/16 v23, 0x0

    goto/16 :goto_e

    .line 1245
    .restart local v23    # "isZenPriority":Z
    :cond_1d
    const/16 v17, 0x0

    goto/16 :goto_f

    .line 1246
    .restart local v17    # "isRingZenNone":Z
    :cond_1e
    const/4 v13, 0x0

    goto/16 :goto_10

    .line 1250
    .restart local v13    # "isRingLimited":Z
    .restart local v27    # "zenMuted":Z
    :cond_1f
    const/4 v7, 0x0

    goto/16 :goto_11

    .line 1252
    .restart local v7    # "isCallOrBTSco":Z
    :cond_20
    const/4 v8, 0x0

    goto/16 :goto_12

    :cond_21
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1900(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v28

    const/16 v29, 0x5

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_22

    const/4 v8, 0x1

    goto/16 :goto_12

    :cond_22
    const/4 v8, 0x0

    goto/16 :goto_12

    .line 1277
    .restart local v8    # "isMainStream":Z
    .restart local v25    # "text":Ljava/lang/String;
    :cond_23
    const/4 v4, 0x0

    goto/16 :goto_13

    .line 1279
    .restart local v4    # "iconEnabled":Z
    :cond_24
    const/16 v28, 0x0

    goto/16 :goto_14

    :cond_25
    move/from16 v28, v4

    goto/16 :goto_14

    .line 1281
    :cond_26
    const/high16 v28, 0x3f000000    # 0.5f

    goto/16 :goto_15

    .line 1282
    :cond_27
    if-nez v14, :cond_28

    if-nez v10, :cond_28

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->routedToBluetooth:Z

    move/from16 v28, v0

    if-eqz v28, :cond_29

    const v5, 0x1080a00

    goto/16 :goto_16

    :cond_28
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2300(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v5

    goto/16 :goto_16

    :cond_29
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mAutomute:Z

    move/from16 v28, v0

    if-eqz v28, :cond_2a

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    move/from16 v28, v0

    if-nez v28, :cond_2a

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2300(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v5

    goto/16 :goto_16

    :cond_2a
    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muted:Z

    move/from16 v28, v0

    if-eqz v28, :cond_2b

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2300(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v5

    goto/16 :goto_16

    :cond_2b
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2200(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v5

    goto/16 :goto_16

    .line 1295
    .restart local v5    # "iconRes":I
    :cond_2c
    const v28, 0x1080a02

    move/from16 v0, v28

    if-eq v5, v0, :cond_2d

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2300(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v28

    move/from16 v0, v28

    if-ne v5, v0, :cond_2e

    :cond_2d
    const/16 v28, 0x2

    goto/16 :goto_17

    :cond_2e
    const v28, 0x1080a00

    move/from16 v0, v28

    if-eq v5, v0, :cond_2f

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2200(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v28

    move/from16 v0, v28

    if-ne v5, v0, :cond_30

    :cond_2f
    const/16 v28, 0x1

    goto/16 :goto_17

    :cond_30
    const/16 v28, 0x0

    goto/16 :goto_17

    .line 1305
    :cond_31
    const/4 v3, 0x0

    goto/16 :goto_18

    .line 1307
    .restart local v3    # "enableSlider":Z
    :cond_32
    if-eqz v7, :cond_33

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$3400(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    move/from16 v28, v0

    add-int/lit8 v26, v28, 0x1

    goto/16 :goto_19

    :cond_33
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$3400(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    move/from16 v26, v0

    goto/16 :goto_19

    .line 1316
    .restart local v26    # "vlevel":I
    :cond_34
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2800(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/widget/ImageButton;->isClickable()Z

    move-result v28

    if-nez v28, :cond_e

    .line 1317
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2800(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v28

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageButton;->setClickable(Z)V

    goto/16 :goto_1a
.end method

.method private updateVolumeRowHeaderVisibleH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V
    .locals 5
    .param p1, "row"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1324
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$3400(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$3400(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->dynamic:Z

    if-eqz v4, :cond_2

    move v0, v2

    .line 1325
    .local v0, "dynamic":Z
    :goto_0
    iget-boolean v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mShowHeaders:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-eqz v4, :cond_3

    if-eqz v0, :cond_3

    :cond_0
    move v1, v2

    .line 1326
    .local v1, "showHeaders":Z
    :goto_1
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$4200(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Z

    move-result v2

    if-eq v2, v1, :cond_1

    .line 1327
    invoke-static {p1, v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$4202(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Z)Z

    .line 1328
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2500(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 1330
    :cond_1
    return-void

    .end local v0    # "dynamic":Z
    .end local v1    # "showHeaders":Z
    :cond_2
    move v0, v3

    .line 1324
    goto :goto_0

    .restart local v0    # "dynamic":Z
    :cond_3
    move v1, v3

    .line 1325
    goto :goto_1
.end method

.method private updateVolumeRowSliderH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;ZI)V
    .locals 12
    .param p1, "row"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .param p2, "enable"    # Z
    .param p3, "vlevel"    # I

    .prologue
    .line 1353
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 1354
    if-nez p2, :cond_3

    .line 1355
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mThumbDisabledColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 1360
    :goto_0
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1900(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v5

    if-nez v5, :cond_5

    .line 1361
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->phoneIsOffhook()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->isExtraButtonOn()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1362
    sget-object v5, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string v6, "Call setMode(ProgressBar.MODE_WARNING)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setMode(I)V

    .line 1371
    :goto_1
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1900(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1900(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_1

    .line 1372
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->setDualColorSeekbar(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    .line 1376
    :cond_1
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$4300(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1435
    :cond_2
    :goto_2
    return-void

    .line 1357
    :cond_3
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mThumbColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 1365
    :cond_4
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setMode(I)V

    goto :goto_1

    .line 1368
    :cond_5
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setMode(I)V

    goto :goto_1

    .line 1379
    :cond_6
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    .line 1381
    .local v3, "progress":I
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1900(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_7

    .line 1384
    :cond_7
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->getImpliedLevel(Landroid/widget/SeekBar;I)I

    move-result v1

    .line 1386
    .local v1, "level":I
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_9

    const/4 v4, 0x1

    .line 1387
    .local v4, "rowVisible":Z
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$3600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    cmp-long v5, v6, v8

    if-gez v5, :cond_a

    const/4 v0, 0x1

    .line 1389
    .local v0, "inGracePeriod":Z
    :goto_4
    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    const/4 v6, 0x3

    invoke-virtual {v5, v6, p1}, Lcom/android/systemui/volume/SecVolumeDialog$H;->removeMessages(ILjava/lang/Object;)V

    .line 1390
    sget-boolean v5, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    if-eqz v5, :cond_b

    if-eqz v4, :cond_b

    if-eqz v0, :cond_b

    .line 1391
    sget-boolean v5, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v5, :cond_8

    sget-object v5, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string v6, "inGracePeriod"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    :cond_8
    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    const/4 v7, 0x3

    invoke-virtual {v6, v7, p1}, Lcom/android/systemui/volume/SecVolumeDialog$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$3600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    add-long/2addr v8, v10

    invoke-virtual {v5, v6, v8, v9}, Lcom/android/systemui/volume/SecVolumeDialog$H;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_2

    .line 1386
    .end local v0    # "inGracePeriod":Z
    .end local v4    # "rowVisible":Z
    :cond_9
    const/4 v4, 0x0

    goto :goto_3

    .line 1387
    .restart local v4    # "rowVisible":Z
    :cond_a
    const/4 v0, 0x0

    goto :goto_4

    .line 1396
    .restart local v0    # "inGracePeriod":Z
    :cond_b
    if-ne p3, v1, :cond_c

    .line 1397
    sget-boolean v5, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    if-eqz v5, :cond_c

    if-nez v4, :cond_2

    .line 1402
    :cond_c
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1900(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_d

    .line 1405
    :cond_d
    mul-int/lit8 v2, p3, 0x64

    .line 1408
    .local v2, "newProgress":I
    if-eq v3, v2, :cond_2

    .line 1433
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto/16 :goto_2
.end method

.method private updateWindowWidthH()V
    .locals 9

    .prologue
    const v8, 0x7f0a04df

    .line 551
    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 552
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    invoke-virtual {v5}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 553
    .local v2, "lp_dialogWindow":Landroid/view/WindowManager$LayoutParams;
    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 554
    .local v0, "dm":Landroid/util/DisplayMetrics;
    sget-boolean v5, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateWindowWidth dm.w="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :cond_0
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 556
    .local v4, "w":I
    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a02e6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 558
    .local v3, "max":I
    if-le v4, v3, :cond_1

    .line 559
    move v4, v3

    .line 561
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->isSviewCoverOpened()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 562
    sget-boolean v5, Lcom/android/systemui/volume/SecVolumeDialog;->LOGD:Z

    if-eqz v5, :cond_2

    sget-object v5, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string v6, "updateWindowWidth isSviewCoverOpened"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a04e2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v4, v5

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 564
    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 582
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    invoke-virtual {v5}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 583
    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 584
    return-void

    .line 566
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v5

    iput v5, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    .line 567
    iget v5, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_5

    .line 568
    sget-boolean v5, Lcom/android/systemui/volume/SecVolumeDialog;->LOGD:Z

    if-eqz v5, :cond_4

    sget-object v5, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string v6, "updateWindowWidth -TYPE_CLEAR_COVER"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :cond_4
    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0511

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v4, v5

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 570
    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    .line 572
    :cond_5
    iget v5, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_7

    .line 573
    sget-boolean v5, Lcom/android/systemui/volume/SecVolumeDialog;->LOGD:Z

    if-eqz v5, :cond_6

    sget-object v5, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string v6, "updateWindowWidth -TYPE_SVIEW_COVER"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :cond_6
    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a050d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 575
    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a050e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    .line 578
    :cond_7
    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0512

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v4, v5

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 579
    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 811
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mControllerCallbackH:Lcom/android/systemui/volume/VolumeDialogController$Callbacks;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogController;->removeCallback(Lcom/android/systemui/volume/VolumeDialogController$Callbacks;)V

    .line 812
    return-void
.end method

.method public dismiss(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 819
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/systemui/volume/SecVolumeDialog$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 820
    return-void
.end method

.method protected dismissH(I)V
    .locals 8
    .param p1, "reason"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 919
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogMotion;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 954
    :cond_0
    :goto_0
    return-void

    .line 922
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog$H;->removeMessages(I)V

    .line 923
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    invoke-virtual {v0, v7}, Lcom/android/systemui/volume/SecVolumeDialog$H;->removeMessages(I)V

    .line 924
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismissH : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    sget-boolean v0, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    if-eqz v0, :cond_0

    .line 926
    sput-boolean v6, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    .line 927
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    new-instance v1, Lcom/android/systemui/volume/SecVolumeDialog$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/SecVolumeDialog$7;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogMotion;->startDismiss(Ljava/lang/Runnable;)V

    .line 934
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 936
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->getActiveRow()Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1900(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->setStreamTypeForLogging(I)V

    .line 937
    const-string v1, "com.android.systemui.volume"

    const-string v2, "FWVP"

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExtraForRingerMode:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogController;->isChangedFromKey()J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/volume/SecVolumeDialog;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 941
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v7, v1}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 942
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v0, v6}, Lcom/android/systemui/volume/VolumeDialogController;->notifyVisible(Z)V

    .line 943
    sget-object v1, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v1

    .line 944
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-eqz v0, :cond_6

    .line 945
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAccessibility:Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;->access$3800(Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 946
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string v2, "SafetyWarning dismiss cancelled"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    :cond_3
    monitor-exit v1

    goto/16 :goto_0

    .line 953
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 949
    :cond_4
    :try_start_1
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string v2, "SafetyWarning dismissed"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    :cond_5
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafetyWarningShowing:Z

    .line 951
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SafetyWarningDialog;->dismiss()V

    .line 953
    :cond_6
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 683
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 684
    const-string v0, "  mShowing: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 685
    const-string v0, "  mExpanded: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 686
    const-string v0, "  mExpandButtonAnimationRunning: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 687
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButtonAnimationRunning:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 688
    const-string v0, "  mActiveStream: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStream:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 689
    const-string v0, "  mDynamic: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 690
    const-string v0, "  mShowHeaders: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mShowHeaders:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 691
    const-string v0, "  mAutomute: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAutomute:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 692
    const-string v0, "  mSilentMode: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSilentMode:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 693
    const-string v0, "  mCollapseTime: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCollapseTime:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 694
    const-string v0, "  mAccessibility.mFeedbackEnabled: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 695
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAccessibility:Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;->access$2000(Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 696
    return-void
.end method

.method public isExtraButtonOn()Z
    .locals 6

    .prologue
    .line 2148
    const/4 v2, 0x0

    .line 2150
    .local v2, "rtvalue":Z
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAudioManager:Landroid/media/AudioManager;

    const-string v4, "extraVolume"

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2151
    .local v0, "extraButtonOn":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAudioManager:Landroid/media/AudioManager;

    const-string v4, "audioParam;extraVolume"

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2153
    .local v1, "extraButtonOnDevice":Ljava/lang/String;
    sget-object v3, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isExtraButtonOn : extraButtonOn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2154
    sget-object v3, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isExtraButtonOn : extraButtonOnDevice = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2157
    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2158
    const/4 v2, 0x1

    .line 2163
    :goto_0
    sget-object v3, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isExtraButtonOn : rtvalue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2164
    return v2

    .line 2160
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isSviewCoverOpened()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 2201
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v2, :cond_3

    .line 2202
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v0

    .line 2203
    .local v0, "state":Lcom/samsung/android/sdk/cover/ScoverState;
    if-eqz v0, :cond_2

    .line 2204
    sget-boolean v1, Lcom/android/systemui/volume/SecVolumeDialog;->LOGD:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCoverManager.getCoverState() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2205
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v1

    .line 2212
    .end local v0    # "state":Lcom/samsung/android/sdk/cover/ScoverState;
    :cond_1
    :goto_0
    return v1

    .line 2207
    .restart local v0    # "state":Lcom/samsung/android/sdk/cover/ScoverState;
    :cond_2
    sget-boolean v2, Lcom/android/systemui/volume/SecVolumeDialog;->LOGD:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string v3, "state is null "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2211
    .end local v0    # "state":Lcom/samsung/android/sdk/cover/ScoverState;
    :cond_3
    sget-boolean v2, Lcom/android/systemui/volume/SecVolumeDialog;->LOGD:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string v3, "mCoverManager is null "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onDismissSafeVolumeWarning()V
    .locals 2

    .prologue
    .line 351
    sget-object v1, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v1

    .line 352
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SafetyWarningDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SafetyWarningDialog;->dismiss()V

    .line 355
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsShowingSCoverWarning:Z

    if-eqz v0, :cond_2

    .line 358
    sget-boolean v0, Lcom/android/systemui/volume/SecVolumeDialog;->LOGD:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string v1, "dismiss warning popup on the s view cover"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->sendCoverWarningMsgIntent(Z)V

    .line 362
    :cond_2
    return-void

    .line 355
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public playSoundH()V
    .locals 7

    .prologue
    .line 843
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string v1, "playSoundH"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    monitor-enter p0

    .line 845
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSoundPool:Landroid/media/SoundPool;

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->getActiveRow()Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1900(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setStreamType(I)V

    .line 846
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->makeSound()V

    .line 847
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 848
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSoundID:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 850
    :cond_0
    monitor-exit p0

    .line 851
    return-void

    .line 850
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerCoverReceiver()V
    .locals 3

    .prologue
    .line 2168
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2170
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2171
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2172
    const-string v1, "android.view.volumepanel.CLICK_BUTTON1"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2173
    const-string v1, "android.view.volumepanel.CLICK_BUTTON2"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2174
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2175
    return-void
.end method

.method protected rescheduleTimeoutH()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 902
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    invoke-virtual {v1, v5}, Lcom/android/systemui/volume/SecVolumeDialog$H;->removeMessages(I)V

    .line 903
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->computeTimeoutH()I

    move-result v0

    .line 904
    .local v0, "timeout":I
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/systemui/volume/SecVolumeDialog$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/systemui/volume/SecVolumeDialog$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 907
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v1}, Lcom/android/systemui/volume/VolumeDialogController;->userActivity()V

    .line 908
    return-void
.end method

.method public setAutomute(Z)V
    .locals 2
    .param p1, "automute"    # Z

    .prologue
    .line 597
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAutomute:Z

    if-ne v0, p1, :cond_0

    .line 600
    :goto_0
    return-void

    .line 598
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAutomute:Z

    .line 599
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog$H;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public setShowHeaders(Z)V
    .locals 2
    .param p1, "showHeaders"    # Z

    .prologue
    .line 591
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mShowHeaders:Z

    if-ne p1, v0, :cond_0

    .line 594
    :goto_0
    return-void

    .line 592
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mShowHeaders:Z

    .line 593
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog$H;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public setSilentMode(Z)V
    .locals 2
    .param p1, "silentMode"    # Z

    .prologue
    .line 603
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSilentMode:Z

    if-ne v0, p1, :cond_0

    .line 606
    :goto_0
    return-void

    .line 604
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSilentMode:Z

    .line 605
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog$H;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public setStreamImportant(IZ)V
    .locals 3
    .param p1, "stream"    # I
    .param p2, "important"    # Z

    .prologue
    .line 587
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    const/4 v2, 0x5

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, p1, v0}, Lcom/android/systemui/volume/SecVolumeDialog$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 588
    return-void

    .line 587
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public show(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 815
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/systemui/volume/SecVolumeDialog$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 816
    return-void
.end method

.method public stopSoundH()V
    .locals 2

    .prologue
    .line 862
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string v1, "stopSound"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    return-void
.end method

.method public themeChanged()V
    .locals 4

    .prologue
    .line 868
    sget-object v2, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string v3, "themeChanged"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->updateTintColor()V

    .line 872
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 873
    .local v1, "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setFluidEnabled(Z)V

    goto :goto_0

    .line 880
    .end local v1    # "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    :cond_0
    return-void
.end method
