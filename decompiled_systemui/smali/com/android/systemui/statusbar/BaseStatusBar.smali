.class public abstract Lcom/android/systemui/statusbar/BaseStatusBar;
.super Lcom/android/systemui/SystemUI;
.source "BaseStatusBar.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;
.implements Lcom/android/systemui/RecentsComponent$Callbacks;
.implements Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;
.implements Lcom/android/systemui/statusbar/NotificationData$Environment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/BaseStatusBar$19;,
        Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;,
        Lcom/android/systemui/statusbar/BaseStatusBar$TouchOutsideListener;,
        Lcom/android/systemui/statusbar/BaseStatusBar$H;,
        Lcom/android/systemui/statusbar/BaseStatusBar$PersonaObserver;,
        Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;
    }
.end annotation


# static fields
.field private static final ACTION_RCP_POLICY_CHANGED:Ljava/lang/String; = "samsung.knox.intent.action.RCP_POLICY_CHANGED"

.field private static final APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

.field private static final BANNER_ACTION_CANCEL:Ljava/lang/String; = "com.android.systemui.statusbar.banner_action_cancel"

.field private static final BANNER_ACTION_SETUP:Ljava/lang/String; = "com.android.systemui.statusbar.banner_action_setup"

.field public static final DEBUG:Z

.field protected static final ENABLE_HEADS_UP:Z = true

.field public static final EXPANDED_FULL_OPEN:I = -0x2711

.field public static final EXPANDED_LEAVE_ALONE:I = -0x2710

.field private static final HIDDEN_NOTIFICATION_ID:I = 0x2710

.field protected static final INTERRUPTION_THRESHOLD:I = 0xa

.field public static final KEEP:I = 0x3131d

.field protected static final KNOX_DEBUG:Z

.field public static final KNOX_EXPORT_DATA:I = 0x2

.field public static final KNOX_IMPORT_DATA:I = 0x1

.field public static final KNOX_NO_SANITIZING:I = 0x8

.field public static final KNOX_SANITIZING:I = 0x4

.field public static final KNOX_SANITIZING_LOCKSCREEN:I = 0x10

.field protected static final KNOX_TAG:Ljava/lang/String; = "KnoxNotification"

.field public static final MAGIC_NUMBER_HIDE_NOTIFICATION:I = -0x7f7f7f80

.field public static final MAGIC_NUMBER_HIDE_NOTIFICATION_ICON:I = 0x10101010

.field protected static final MSG_CANCEL_PRELOAD_RECENT_APPS:I = 0x3ff

.field protected static final MSG_CLOSE_SEARCH_PANEL:I = 0x403

.field protected static final MSG_DECAY_HEADS_UP:I = 0x407

.field protected static final MSG_ENABLE_SIGNAL:I = 0x408

.field protected static final MSG_ESCALATE_HEADS_UP:I = 0x406

.field protected static final MSG_HIDE_HEADS_UP:I = 0x405

.field protected static final MSG_HIDE_RECENT_APPS:I = 0x3fc

.field protected static final MSG_PRELOAD_RECENT_APPS:I = 0x3fe

.field protected static final MSG_SHOW_HEADS_UP:I = 0x404

.field protected static final MSG_SHOW_NEXT_AFFILIATED_TASK:I = 0x400

.field protected static final MSG_SHOW_PREV_AFFILIATED_TASK:I = 0x401

.field protected static final MSG_SHOW_RECENT_APPS:I = 0x3fb

.field protected static final MSG_TICKER_HALT:I = 0x409

.field protected static final MSG_TOGGLE_RECENTS_APPS:I = 0x3fd

.field public static final MULTIUSER_DEBUG:Z = false

.field public static final MYKNOX_PKG:Ljava/lang/String; = "com.samsung.knoxpb.mdm"

.field public static final NONE:I = 0x0

.field protected static final SETTING_HEADS_UP_TICKER:Ljava/lang/String; = "ticker_gets_heads_up"

.field public static final SYSTEM_DIALOG_REASON_RECENT_APPS:Ljava/lang/String; = "recentapps"

.field public static final TAG:Ljava/lang/String; = "StatusBar"

.field public static isAutoBrightBoxChecked:Z

.field public static isAutoBrightBoxCheckingChanged:Z

.field public static isNetworkAvailable:Z

.field private static final mExportDataPolicyForUserCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mImportDataPolicyForUserCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mIs3LMAllowed:Z

.field public static mIsNavigationBarHidden:Z

.field public static mIsStatusBarHidden:Z

.field protected static final mKnoxInLockMode:Landroid/util/SparseBooleanArray;

.field protected static final mKnoxInSuperLockMode:Landroid/util/SparseBooleanArray;

.field protected static mLayoutDirection:I

.field private static final mSanitizeDataPolicyForUserCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mSanitizeLockScreenDataPolicyForUserCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sSystemSignature:[Landroid/content/pm/Signature;


# instance fields
.field containerObserver:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/statusbar/BaseStatusBar$PersonaObserver;",
            ">;"
        }
    .end annotation
.end field

.field public isUniversalLockBoolean:Z

.field protected mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public mActivated:Z

.field protected mAssistManager:Lcom/android/systemui/assist/AssistManager;

.field protected mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field protected mBouncerShowing:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field protected mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field protected final mCurrentProfiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mCurrentUserId:I

.field protected mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mDeviceProvisioned:Z

.field protected mDisableNotificationAlerts:Z

.field protected mDismissView:Lcom/android/systemui/statusbar/DismissView;

.field protected mDisplay:Landroid/view/Display;

.field protected mDreamManager:Landroid/service/dreams/IDreamManager;

.field protected mDualSimLayout:Lcom/android/systemui/statusbar/MultiSIMView;

.field private mFastOutLinearIn:Landroid/animation/TimeInterpolator;

.field private mFontScale:F

.field protected mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

.field protected mHeadsUpNotificationDecay:I

.field protected mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

.field protected mHeadsUpTicker:Z

.field private mHideAppNotificationList:[Ljava/lang/String;

.field private mIsMobileKeyboard:Z

.field public mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

.field private mLauncherApps:Landroid/content/pm/LauncherApps;

.field private mLinearOutSlowIn:Landroid/animation/TimeInterpolator;

.field private mLocale:Ljava/util/Locale;

.field protected mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockscreenKnoxMode:Z

.field private mLockscreenPublicMode:Z

.field private final mLockscreenSettingsObserver:Landroid/database/ContentObserver;

.field protected mMaxKeyguardNotifications:I

.field private mNMS:Landroid/app/INotificationManager;

.field protected mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

.field private mNotificationColorUtil:Lcom/android/internal/util/NotificationColorUtil;

.field protected mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

.field private mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

.field private final mNotificationListener:Landroid/service/notification/NotificationListenerService;

.field public mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field private mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

.field protected mPanelSlightlyVisible:Z

.field private final mPersonaLaunchReceiver:Landroid/content/BroadcastReceiver;

.field private mPm:Landroid/os/PersonaManager;

.field mPowerManager:Landroid/os/PowerManager;

.field protected mQconnectSfinderView:Lcom/android/systemui/statusbar/QconnectSfinderView;

.field private final mRcpPolicyReceiver:Landroid/content/BroadcastReceiver;

.field public mReasonClear:I

.field protected mRecents:Lcom/android/systemui/RecentsComponent;

.field protected mRecentsPreloadOnTouchListener:Landroid/view/View$OnTouchListener;

.field protected mRowMaxHeight:I

.field protected mRowMinHeight:I

.field public mScreen:Lcom/samsung/android/dualscreen/DualScreen;

.field protected mScrollView:Landroid/widget/ScrollView;

.field protected mSearchPanelView:Lcom/android/systemui/SearchPanelView;

.field protected final mSettingsObserver:Landroid/database/ContentObserver;

.field protected mShowLockscreenNotifications:Z

.field public mShowSFinderQConnectView:Z

.field public mSingleLine:Z

.field protected mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

.field protected mState:I

.field protected mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field protected mToggleSliderView:Lcom/android/systemui/statusbar/ToggleSliderView;

.field protected mUseHeadsUp:Z

.field private mUserManager:Landroid/os/UserManager;

.field private final mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

.field protected mWindowManager:Landroid/view/WindowManager;

.field protected mWindowManagerService:Landroid/view/IWindowManager;

.field protected mZenMode:I

.field protected panelRevealedByUser:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 190
    const-string v0, "StatusBar"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    .line 268
    const/4 v0, -0x1

    sput v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLayoutDirection:I

    .line 312
    sput-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsStatusBarHidden:Z

    .line 313
    sput-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsNavigationBarHidden:Z

    .line 356
    const-string v0, "eng"

    const-string v1, "ro.build.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    .line 371
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSanitizeDataPolicyForUserCache:Landroid/util/SparseArray;

    .line 373
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSanitizeLockScreenDataPolicyForUserCache:Landroid/util/SparseArray;

    .line 375
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mImportDataPolicyForUserCache:Landroid/util/SparseArray;

    .line 376
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mExportDataPolicyForUserCache:Landroid/util/SparseArray;

    .line 378
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxInLockMode:Landroid/util/SparseBooleanArray;

    .line 379
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxInSuperLockMode:Landroid/util/SparseBooleanArray;

    .line 4596
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.NOTIFICATION_PREFERENCES"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/BaseStatusBar;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 185
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 248
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->createHandler()Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    .line 265
    iput v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    .line 266
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    .line 272
    iput-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 276
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUseHeadsUp:Z

    .line 277
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpTicker:Z

    .line 278
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDisableNotificationAlerts:Z

    .line 288
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockscreenPublicMode:Z

    .line 289
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    .line 318
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDeviceProvisioned:Z

    .line 323
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->panelRevealedByUser:Z

    .line 361
    iput-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    .line 381
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->containerObserver:Landroid/util/SparseArray;

    .line 383
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockscreenKnoxMode:Z

    .line 388
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSingleLine:Z

    .line 391
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->isUniversalLockBoolean:Z

    .line 393
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mActivated:Z

    .line 924
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$1;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$1;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 941
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$2;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$2;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockscreenSettingsObserver:Landroid/database/ContentObserver;

    .line 952
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$3;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    .line 1042
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$4;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPersonaLaunchReceiver:Landroid/content/BroadcastReceiver;

    .line 1067
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$5;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1158
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$6;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRcpPolicyReceiver:Landroid/content/BroadcastReceiver;

    .line 1210
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$7;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    .line 1730
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsMobileKeyboard:Z

    .line 2244
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$14;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$14;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecentsPreloadOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 3477
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mMaxKeyguardNotifications:I

    return-void
.end method

.method private FlipFontSwitched()V
    .locals 4

    .prologue
    .line 1589
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 1592
    .local v0, "am":Landroid/app/IActivityManager;
    :try_start_0
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 1593
    .local v2, "config":Landroid/content/res/Configuration;
    iget v1, v2, Landroid/content/res/Configuration;->FlipFont:I

    .line 1594
    .local v1, "before":I
    iget v3, v2, Landroid/content/res/Configuration;->FlipFont:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_0

    .line 1595
    iget v3, v2, Landroid/content/res/Configuration;->FlipFont:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/content/res/Configuration;->FlipFont:I

    .line 1599
    :goto_0
    invoke-interface {v0, v2}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 1603
    .end local v1    # "before":I
    .end local v2    # "config":Landroid/content/res/Configuration;
    :goto_1
    return-void

    .line 1597
    .restart local v1    # "before":I
    .restart local v2    # "config":Landroid/content/res/Configuration;
    :cond_0
    iget v3, v2, Landroid/content/res/Configuration;->FlipFont:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Landroid/content/res/Configuration;->FlipFont:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1601
    .end local v1    # "before":I
    .end local v2    # "config":Landroid/content/res/Configuration;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public static IsDualFolderType(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 4740
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.folder_type"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.dual_lcd"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static IsFolderType(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 4745
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.folder_type"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/BaseStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/BaseStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 185
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDeviceProvisioned:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/BaseStatusBar;)Landroid/util/SparseBooleanArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$1000()Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 185
    sget-object v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mImportDataPolicyForUserCache:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/BaseStatusBar;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 185
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/BaseStatusBar;->startAppNotificationSettingsActivity(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/content/Intent;ILjava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I

    .prologue
    .line 185
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/BaseStatusBar;->startAppOwnNotificationSettingsActivity(Landroid/content/Intent;ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/BaseStatusBar;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;
    .param p1, "x1"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->inflateGuts(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/BaseStatusBar;)Landroid/animation/TimeInterpolator;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLinearOutSlowIn:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/systemui/statusbar/BaseStatusBar;Lcom/android/systemui/statusbar/NotificationGuts;)Lcom/android/systemui/statusbar/NotificationGuts;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;
    .param p1, "x1"    # Lcom/android/systemui/statusbar/NotificationGuts;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/BaseStatusBar;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;
    .param p1, "x1"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->doBlock(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/BaseStatusBar;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;
    .param p1, "x1"    # I

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->knoxContainerInLockMode(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/BaseStatusBar;)Landroid/os/PersonaManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    return-object v0
.end method

.method static synthetic access$300()Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 185
    sget-object v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSanitizeDataPolicyForUserCache:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$400()Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 185
    sget-object v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSanitizeLockScreenDataPolicyForUserCache:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateCurrentProfilesCache()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->FlipFontSwitched()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/BaseStatusBar;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;
    .param p1, "x1"    # I

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->registerPersonaObserver(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/BaseStatusBar;)Landroid/os/UserManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$900()Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 185
    sget-object v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mExportDataPolicyForUserCache:Landroid/util/SparseArray;

    return-object v0
.end method

.method private alertAgain(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/app/Notification;)Z
    .locals 1
    .param p1, "oldEntry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "newNotification"    # Landroid/app/Notification;

    .prologue
    .line 4258
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->hasInterrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p2, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private doBlock(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 5
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 4713
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 4714
    .local v0, "sbn":Landroid/service/notification/StatusBarNotification;
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNMS:Landroid/app/INotificationManager;

    if-eqz v1, :cond_0

    .line 4716
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->animateCollapsePanels(IZ)V

    .line 4718
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNMS:Landroid/app/INotificationManager;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V

    .line 4719
    invoke-direct {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->showUnlockHintToast()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4723
    :cond_0
    :goto_0
    return-void

    .line 4720
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v5, 0x0

    .line 3125
    instance-of v2, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    .line 3126
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3134
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    .local v1, "canvas":Landroid/graphics/Canvas;
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .line 3129
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3130
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3131
    .restart local v1    # "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {p0, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3132
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private findPackageInfo(Landroid/content/pm/PackageManager;Landroid/service/notification/StatusBarNotification;)Landroid/content/pm/PackageInfo;
    .locals 6
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 4673
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 4674
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 4675
    .local v4, "packages":[Ljava/lang/String;
    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    .line 4676
    array-length v0, v4

    .line 4677
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 4678
    aget-object v2, v4, v1

    .line 4679
    .local v2, "p":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4681
    const/16 v5, 0x40

    :try_start_0
    invoke-virtual {p1, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 4687
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "p":Ljava/lang/String;
    :goto_1
    return-object v5

    .line 4682
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v2    # "p":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 4677
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4687
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "p":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private static getFirstSignature(Landroid/content/pm/PackageInfo;)Landroid/content/pm/Signature;
    .locals 2
    .param p0, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 4700
    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 4701
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 4703
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getIsAutoBrightBoxChecked()Z
    .locals 1

    .prologue
    .line 4503
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->isAutoBrightBoxCheckingChanged:Z

    .line 4504
    sget-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->isAutoBrightBoxChecked:Z

    return v0
.end method

.method public static getIsNetworkAvailable()Z
    .locals 1

    .prologue
    .line 4490
    sget-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->isNetworkAvailable:Z

    return v0
.end method

.method private getKnoxName(I)Ljava/lang/String;
    .locals 2
    .param p1, "personaID"    # I

    .prologue
    .line 3138
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    if-nez v0, :cond_0

    .line 3139
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    .line 3142
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/os/PersonaManager;->getPersonaName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPolicy(ILjava/lang/String;I)Z
    .locals 11
    .param p1, "userId"    # I
    .param p2, "policyProperty"    # Ljava/lang/String;
    .param p3, "policyArray"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 423
    const-string v1, "true"

    .line 424
    .local v1, "TRUE":Ljava/lang/String;
    const-string v0, "false"

    .line 429
    .local v0, "FALSE":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v6

    if-nez v6, :cond_1

    move v8, v7

    .line 483
    :cond_0
    :goto_0
    return v8

    .line 435
    :cond_1
    const/4 v2, 0x0

    .line 436
    .local v2, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    sparse-switch p3, :sswitch_data_0

    goto :goto_0

    .line 441
    :sswitch_0
    sget-object v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mImportDataPolicyForUserCache:Landroid/util/SparseArray;

    .line 455
    :goto_1
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 456
    .local v5, "policy":Ljava/lang/String;
    if-nez v5, :cond_4

    .line 458
    :try_start_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    if-nez v6, :cond_2

    .line 459
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v9, "persona"

    invoke-virtual {v6, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PersonaManager;

    iput-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    .line 461
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    if-eqz v6, :cond_0

    .line 464
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    const-string v9, "persona_policy"

    invoke-virtual {v6, v9}, Landroid/os/PersonaManager;->getPersonaService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PersonaPolicyManager;

    .line 466
    .local v4, "personaPolicyMgr":Landroid/os/PersonaPolicyManager;
    if-eqz v4, :cond_0

    .line 469
    const-string v6, "Notifications"

    invoke-virtual {v4, p1, v6, p2}, Landroid/os/PersonaPolicyManager;->getRCPDataPolicyForUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 473
    const-string v6, "true"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "false"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 474
    :cond_3
    invoke-virtual {v2, p1, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    .end local v4    # "personaPolicyMgr":Landroid/os/PersonaPolicyManager;
    :cond_4
    :goto_2
    sget-boolean v6, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v6, :cond_5

    .line 482
    const-string v6, "KnoxNotification"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getPolicy: policy value returned = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_5
    const-string v6, "true"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    move v6, v7

    :goto_3
    move v8, v6

    goto :goto_0

    .line 438
    .end local v5    # "policy":Ljava/lang/String;
    :sswitch_1
    sget-object v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mSanitizeDataPolicyForUserCache:Landroid/util/SparseArray;

    .line 439
    goto :goto_1

    .line 444
    :sswitch_2
    sget-object v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mExportDataPolicyForUserCache:Landroid/util/SparseArray;

    .line 445
    goto :goto_1

    .line 448
    :sswitch_3
    sget-object v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mSanitizeLockScreenDataPolicyForUserCache:Landroid/util/SparseArray;

    .line 449
    goto :goto_1

    .line 476
    .restart local v5    # "policy":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 477
    .local v3, "e":Ljava/lang/Exception;
    const-string v6, "KnoxNotification"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getPolicy: threw an exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .end local v3    # "e":Ljava/lang/Exception;
    :cond_6
    move v6, v8

    .line 483
    goto :goto_3

    .line 436
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x10 -> :sswitch_3
    .end sparse-switch
.end method

.method private getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "slot"    # I
    .param p3, "defaultVal"    # Ljava/lang/String;

    .prologue
    .line 1674
    const/4 v1, 0x0

    .line 1675
    .local v1, "propVal":Ljava/lang/String;
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1676
    .local v0, "prop":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 1677
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1678
    .local v2, "values":[Ljava/lang/String;
    if-ltz p2, :cond_0

    array-length v3, v2

    if-ge p2, v3, :cond_0

    aget-object v3, v2, p2

    if-eqz v3, :cond_0

    .line 1679
    aget-object v1, v2, p2

    .line 1682
    .end local v2    # "values":[Ljava/lang/String;
    :cond_0
    if-nez v1, :cond_1

    .end local p3    # "defaultVal":Ljava/lang/String;
    :goto_0
    return-object p3

    .restart local p3    # "defaultVal":Ljava/lang/String;
    :cond_1
    move-object p3, v1

    goto :goto_0
.end method

.method private getSystemSignature(Landroid/content/pm/PackageManager;)Landroid/content/pm/Signature;
    .locals 3
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 4692
    :try_start_0
    const-string v1, "android"

    const/16 v2, 0x40

    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 4693
    .local v0, "sys":Landroid/content/pm/PackageInfo;
    invoke-static {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->getFirstSignature(Landroid/content/pm/PackageInfo;)Landroid/content/pm/Signature;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4696
    .end local v0    # "sys":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v1

    .line 4694
    :catch_0
    move-exception v1

    .line 4696
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private hasKnoxTitleChanged(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p1, "component"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    .line 3147
    const/4 v2, 0x0

    .line 3148
    .local v2, "newName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 3149
    .local v1, "myKnoxAdmin":Ljava/lang/String;
    const/4 v6, 0x0

    .line 3151
    .local v6, "realPackageName":Ljava/lang/String;
    new-instance v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-direct {v0, p2}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;)V

    .line 3152
    .local v0, "edManager":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getMyKnoxAdmin()Ljava/lang/String;

    move-result-object v1

    .line 3153
    if-eqz v1, :cond_0

    if-eqz v1, :cond_1

    const-string v7, "com.samsung.knoxpb.mdm"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    move-object v3, v2

    .line 3164
    .end local v2    # "newName":Ljava/lang/String;
    .local v3, "newName":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 3156
    .end local v3    # "newName":Ljava/lang/String;
    .restart local v2    # "newName":Ljava/lang/String;
    :cond_1
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/sec/enterprise/ApplicationPolicy;

    move-result-object v5

    .line 3157
    .local v5, "policy":Landroid/sec/enterprise/ApplicationPolicy;
    invoke-virtual {v5, p1, v8}, Landroid/sec/enterprise/ApplicationPolicy;->getApplicationNameFromDb(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 3158
    if-nez v2, :cond_2

    .line 3160
    const-string v7, "/"

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 3161
    .local v4, "parts":[Ljava/lang/String;
    aget-object v6, v4, v8

    .line 3162
    invoke-virtual {v5, v6, v8}, Landroid/sec/enterprise/ApplicationPolicy;->getApplicationNameFromDb(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .end local v4    # "parts":[Ljava/lang/String;
    :cond_2
    move-object v3, v2

    .line 3164
    .end local v2    # "newName":Ljava/lang/String;
    .restart local v3    # "newName":Ljava/lang/String;
    goto :goto_0
.end method

.method private hideExistingBadgeOfBigContentView(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;)V
    .locals 3
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "bigContentViewLocal"    # Landroid/view/View;

    .prologue
    .line 3053
    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v1, :cond_0

    .line 3054
    const-string v1, "KnoxNotification"

    const-string v2, "----- Inside hideExistingBadgeOfBigContentView -----"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3059
    :cond_0
    const v1, 0x1020435

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 3061
    .local v0, "badgeLarge":Landroid/widget/ImageView;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 3063
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3064
    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v1, :cond_1

    .line 3065
    const-string v1, "KnoxNotification"

    const-string v2, "----- hideExistingBadgeOfBigContentView: Hiding badgeLarge  -----"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3076
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->hideExistingBadgeOfContentView(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;Z)V

    .line 3077
    return-void
.end method

.method private hideExistingBadgeOfContentView(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;Z)V
    .locals 5
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "contentViewLocal"    # Landroid/view/View;
    .param p3, "publicOrPrivate"    # Z

    .prologue
    const/16 v4, 0x8

    .line 3015
    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v2, :cond_0

    .line 3016
    const-string v2, "KnoxNotification"

    const-string v3, "----- Inside hideExistingBadgeOfContentView -----"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3021
    :cond_0
    const v2, 0x1020445

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 3023
    .local v0, "badgeLine2":Landroid/widget/ImageView;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 3025
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3026
    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v2, :cond_1

    .line 3027
    const-string v2, "KnoxNotification"

    const-string v3, "----- hideExistingBadgeOfContentView: Hiding badgeLine2  -----"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3032
    :cond_1
    const v2, 0x1020448

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 3034
    .local v1, "badgeLine3":Landroid/widget/ImageView;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 3036
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3037
    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v2, :cond_2

    .line 3038
    const-string v2, "KnoxNotification"

    const-string v3, "----- hideExistingBadgeOfContentView: Hiding badgeLine3  -----"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3043
    :cond_2
    return-void
.end method

.method private inflateGuts(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 28
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 1941
    const v23, 0x7f0f03aa

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/view/ViewStub;

    .line 1942
    .local v22, "stub":Landroid/view/ViewStub;
    if-eqz v22, :cond_0

    .line 1943
    invoke-virtual/range {v22 .. v22}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 1945
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v20

    .line 1946
    .local v20, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->getPackageManagerForUser(I)Landroid/content/pm/PackageManager;

    move-result-object v19

    .line 1948
    .local v19, "pmUser":Landroid/content/pm/PackageManager;
    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setTag(Ljava/lang/Object;)V

    .line 1949
    const v23, 0x7f0f0229

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 1950
    .local v12, "guts":Landroid/view/View;
    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v17

    .line 1951
    .local v17, "pkg":Ljava/lang/String;
    move-object/from16 v10, v17

    .line 1952
    .local v10, "appname":Ljava/lang/String;
    const/16 v18, 0x0

    .line 1953
    .local v18, "pkgicon":Landroid/graphics/drawable/Drawable;
    const/4 v9, 0x0

    .line 1954
    .local v9, "applicationIcon":Landroid/graphics/drawable/Drawable;
    const/4 v7, -0x1

    .line 1957
    .local v7, "appUid":I
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxContainerVersion()Landroid/os/PersonaManager$KnoxContainerVersion;

    move-result-object v23

    sget-object v24, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_3_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-virtual/range {v23 .. v24}, Landroid/os/PersonaManager$KnoxContainerVersion;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_4

    const/4 v15, 0x1

    .line 1959
    .local v15, "isKnox2_3_0":Z
    :goto_0
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxContainerVersion()Landroid/os/PersonaManager$KnoxContainerVersion;

    move-result-object v23

    sget-object v24, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_3_1:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-virtual/range {v23 .. v24}, Landroid/os/PersonaManager$KnoxContainerVersion;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_5

    const/16 v16, 0x1

    .line 1964
    .local v16, "isKnox2_3_1":Z
    :goto_1
    const/16 v23, 0x2200

    :try_start_0
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    .line 1967
    .local v13, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v13, :cond_1

    .line 1968
    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 1969
    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    .line 1970
    iget v7, v13, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1979
    .end local v13    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_1
    :goto_2
    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v23

    invoke-static/range {v23 .. v23}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 1980
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v23, v0

    new-instance v24, Landroid/os/UserHandle;

    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v25

    invoke-direct/range {v24 .. v25}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->getBadgedIconForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 1990
    :goto_3
    if-eqz v12, :cond_3

    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v23

    invoke-static/range {v23 .. v23}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v23

    if-eqz v23, :cond_2

    if-nez v15, :cond_3

    if-nez v16, :cond_3

    .line 1991
    :cond_2
    const v23, 0x1020006

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/ImageView;

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1994
    :cond_3
    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v23

    move-object/from16 v0, v23

    iget-wide v0, v0, Landroid/app/Notification;->when:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v23, v24, v26

    if-nez v23, :cond_7

    .line 1995
    const v23, 0x7f0f022b

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/DateTimeView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Landroid/widget/DateTimeView;->setTime(J)V

    .line 1999
    :goto_4
    const v23, 0x7f0f022a

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2000
    const v23, 0x7f0f022e

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    .line 2001
    .local v21, "settingsButton":Landroid/view/View;
    const v23, 0x7f0f022d

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 2003
    .local v4, "appSettingsButton":Landroid/view/View;
    if-ltz v7, :cond_9

    .line 2004
    move v8, v7

    .line 2005
    .local v8, "appUidF":I
    new-instance v23, Lcom/android/systemui/statusbar/BaseStatusBar$10;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2, v8}, Lcom/android/systemui/statusbar/BaseStatusBar$10;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Ljava/lang/String;I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2012
    new-instance v23, Landroid/content/Intent;

    const-string v24, "android.intent.action.MAIN"

    invoke-direct/range {v23 .. v24}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v24, "android.intent.category.NOTIFICATION_PREFERENCES"

    invoke-virtual/range {v23 .. v24}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 2016
    .local v6, "appSettingsQueryIntent":Landroid/content/Intent;
    const/16 v23, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v6, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v14

    .line 2017
    .local v14, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v23

    if-lez v23, :cond_8

    .line 2018
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2019
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0b035d

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v10, v25, v26

    invoke-virtual/range {v23 .. v25}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2024
    new-instance v24, Landroid/content/Intent;

    move-object/from16 v0, v24

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 2026
    .local v5, "appSettingsLaunchIntent":Landroid/content/Intent;
    new-instance v23, Lcom/android/systemui/statusbar/BaseStatusBar$11;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v5, v2, v8}, Lcom/android/systemui/statusbar/BaseStatusBar$11;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/content/Intent;Landroid/service/notification/StatusBarNotification;I)V

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2043
    .end local v5    # "appSettingsLaunchIntent":Landroid/content/Intent;
    .end local v6    # "appSettingsQueryIntent":Landroid/content/Intent;
    .end local v8    # "appUidF":I
    .end local v14    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_5
    return-void

    .line 1957
    .end local v4    # "appSettingsButton":Landroid/view/View;
    .end local v15    # "isKnox2_3_0":Z
    .end local v16    # "isKnox2_3_1":Z
    .end local v21    # "settingsButton":Landroid/view/View;
    :cond_4
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 1959
    .restart local v15    # "isKnox2_3_0":Z
    :cond_5
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 1972
    .restart local v16    # "isKnox2_3_1":Z
    :catch_0
    move-exception v11

    .line 1974
    .local v11, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v18

    goto/16 :goto_2

    .line 1983
    .end local v11    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_6
    move-object/from16 v9, v18

    goto/16 :goto_3

    .line 1997
    :cond_7
    const v23, 0x7f0f022b

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/DateTimeView;

    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v24

    move-object/from16 v0, v24

    iget-wide v0, v0, Landroid/app/Notification;->when:J

    move-wide/from16 v24, v0

    invoke-virtual/range {v23 .. v25}, Landroid/widget/DateTimeView;->setTime(J)V

    goto/16 :goto_4

    .line 2036
    .restart local v4    # "appSettingsButton":Landroid/view/View;
    .restart local v6    # "appSettingsQueryIntent":Landroid/content/Intent;
    .restart local v8    # "appUidF":I
    .restart local v14    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v21    # "settingsButton":Landroid/view/View;
    :cond_8
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 2039
    .end local v6    # "appSettingsQueryIntent":Landroid/content/Intent;
    .end local v8    # "appUidF":I
    .end local v14    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_9
    const/16 v23, 0x8

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2040
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5
.end method

.method private inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z
    .locals 1
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 2450
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;Z)Z

    move-result v0

    return v0
.end method

.method private inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;Z)Z
    .locals 57
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "isHeadsUp"    # Z

    .prologue
    .line 2458
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->getPackageManagerForUser(I)Landroid/content/pm/PackageManager;

    move-result-object v41

    .line 2461
    .local v41, "pmUser":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRowMaxHeight:I

    move/from16 v35, v0

    .line 2462
    .local v35, "maxHeight":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v48, v0

    .line 2466
    .local v48, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v7

    invoke-static {v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2468
    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    sget-object v8, Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;->PRIVATE_CONTENT_VIEW:Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8}, Lcom/android/systemui/statusbar/BaseStatusBar;->reimposeBadgeAtBottomRight(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;)Landroid/widget/RemoteViews;

    move-result-object v8

    iput-object v8, v7, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 2470
    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    sget-object v8, Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;->BIG_CONTENT_VIEW:Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8}, Lcom/android/systemui/statusbar/BaseStatusBar;->reimposeBadgeAtBottomRight(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;)Landroid/widget/RemoteViews;

    move-result-object v8

    iput-object v8, v7, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 2475
    :cond_0
    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-object v0, v7, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v16, v0

    .line 2476
    .local v16, "contentView":Landroid/widget/RemoteViews;
    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-object v13, v7, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 2478
    .local v13, "bigContentView":Landroid/widget/RemoteViews;
    if-eqz p3, :cond_2

    .line 2481
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a02d1

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v35

    .line 2485
    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v7

    invoke-static {v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2486
    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    sget-object v8, Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;->HEADSUP_CONTENT_VIEW:Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8}, Lcom/android/systemui/statusbar/BaseStatusBar;->reimposeBadgeAtBottomRight(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;)Landroid/widget/RemoteViews;

    move-result-object v8

    iput-object v8, v7, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 2490
    :cond_1
    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-object v13, v7, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 2494
    :cond_2
    if-nez v16, :cond_3

    .line 2495
    const/4 v7, 0x0

    .line 2911
    :goto_0
    return v7

    .line 2498
    :cond_3
    sget-boolean v7, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v7, :cond_4

    .line 2499
    const-string v7, "StatusBar"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "publicNotification: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    iget-object v9, v9, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2502
    :cond_4
    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-object v0, v7, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    move-object/from16 v45, v0

    .line 2505
    .local v45, "publicNotification":Landroid/app/Notification;
    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v7

    invoke-static {v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v7

    if-eqz v7, :cond_5

    if-eqz v45, :cond_5

    .line 2506
    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-object v7, v7, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    sget-object v8, Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;->PUBLIC_CONTENT_VIEW:Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8}, Lcom/android/systemui/statusbar/BaseStatusBar;->reimposeBadgeAtBottomRight(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;)Landroid/widget/RemoteViews;

    move-result-object v8

    iput-object v8, v7, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 2515
    :cond_5
    const/16 v27, 0x0

    .line 2516
    .local v27, "hasUserChangedExpansion":Z
    const/16 v54, 0x0

    .line 2517
    .local v54, "userExpanded":Z
    const/16 v55, 0x0

    .line 2519
    .local v55, "userLocked":Z
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v7, :cond_20

    .line 2520
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v47, v0

    .line 2521
    .local v47, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual/range {v47 .. v47}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->hasUserChangedExpansion()Z

    move-result v27

    .line 2522
    invoke-virtual/range {v47 .. v47}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserExpanded()Z

    move-result v54

    .line 2523
    invoke-virtual/range {v47 .. v47}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserLocked()Z

    move-result v55

    .line 2524
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->reset()V

    .line 2525
    if-eqz v27, :cond_6

    .line 2526
    move-object/from16 v0, v47

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserExpanded(Z)V

    .line 2537
    :cond_6
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->workAroundBadLayerDrawableOpacity(Landroid/view/View;)V

    .line 2538
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationVetoButton(Landroid/view/View;Landroid/service/notification/StatusBarNotification;)Landroid/view/View;

    move-result-object v56

    .line 2539
    .local v56, "vetoButton":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const v8, 0x7f0b0316

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v56

    invoke-virtual {v0, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2545
    const v7, 0x7f0f03a6

    move-object/from16 v0, v47

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/android/systemui/statusbar/NotificationContentView;

    .line 2547
    .local v24, "expanded":Lcom/android/systemui/statusbar/NotificationContentView;
    const v7, 0x7f0f03a7

    move-object/from16 v0, v47

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Lcom/android/systemui/statusbar/NotificationContentView;

    .line 2550
    .local v26, "expandedPublic":Lcom/android/systemui/statusbar/NotificationContentView;
    const v7, 0x7f0f03a8

    move-object/from16 v0, v47

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Lcom/android/systemui/statusbar/NotificationContentView;

    .line 2554
    .local v25, "expandedKnox":Lcom/android/systemui/statusbar/NotificationContentView;
    const/high16 v7, 0x60000

    move-object/from16 v0, v47

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setDescendantFocusability(I)V

    .line 2556
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mUseEventNotification:Z

    if-eqz v7, :cond_7

    const-string v7, "com.sec.android.app.eventnotification"

    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2558
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0463

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    .line 2559
    .local v22, "eventNotiHeight":I
    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->setMinHeight(I)V

    .line 2560
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRowMinHeight:I

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/NotificationContentView;->setMinHeight(I)V

    .line 2563
    .end local v22    # "eventNotiHeight":I
    :cond_7
    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-object v15, v7, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 2564
    .local v15, "contentIntent":Landroid/app/PendingIntent;
    if-eqz v15, :cond_21

    .line 2565
    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v15, v7, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->makeClicker(Landroid/app/PendingIntent;Ljava/lang/String;Z)Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    move-result-object v34

    .line 2567
    .local v34, "listener":Landroid/view/View$OnClickListener;
    move-object/from16 v0, v47

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2585
    .end local v34    # "listener":Landroid/view/View$OnClickListener;
    :goto_2
    const v7, 0x7f0f039f

    move-object/from16 v0, v47

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v36

    .line 2586
    .local v36, "notificationLeft":Landroid/view/View;
    new-instance v7, Lcom/android/systemui/statusbar/BaseStatusBar$16;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$16;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2591
    const v7, 0x7f0f03a5

    move-object/from16 v0, v47

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v37

    .line 2592
    .local v37, "notificationRight":Landroid/view/View;
    new-instance v7, Lcom/android/systemui/statusbar/BaseStatusBar$17;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$17;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2612
    const/16 v17, 0x0

    .line 2613
    .local v17, "contentViewLocal":Landroid/view/View;
    const/4 v14, 0x0

    .line 2615
    .local v14, "bigContentViewLocal":Landroid/view/View;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v7, v1, v8}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v17

    .line 2617
    if-eqz v13, :cond_8

    .line 2618
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    move-object/from16 v0, v24

    invoke-virtual {v13, v7, v0, v8}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 2628
    :cond_8
    if-eqz v17, :cond_a

    .line 2631
    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v7

    invoke-static {v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 2632
    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2, v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->hideExistingBadgeOfContentView(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;Z)V

    .line 2635
    :cond_9
    const/4 v7, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/view/View;->setIsRootNamespace(Z)V

    .line 2636
    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->setContractedChild(Landroid/view/View;)V

    .line 2638
    :cond_a
    if-eqz v14, :cond_c

    .line 2639
    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v7

    invoke-static {v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 2640
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/android/systemui/statusbar/BaseStatusBar;->hideExistingBadgeOfBigContentView(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;)V

    .line 2642
    :cond_b
    const/4 v7, 0x1

    invoke-virtual {v14, v7}, Landroid/view/View;->setIsRootNamespace(Z)V

    .line 2643
    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Lcom/android/systemui/statusbar/NotificationContentView;->setExpandedChild(Landroid/view/View;)V

    .line 2646
    :cond_c
    if-eqz v17, :cond_10

    if-eqz v14, :cond_d

    const v7, 0x1020437

    invoke-virtual {v14, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_10

    .line 2649
    :cond_d
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v49

    .line 2658
    .local v49, "temp":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v49

    instance-of v7, v0, Landroid/graphics/drawable/ColorDrawable;

    if-nez v7, :cond_e

    move-object/from16 v0, v49

    instance-of v7, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v7, :cond_f

    .line 2659
    :cond_e
    move-object/from16 v0, v24

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->setBackgroundForDragDown(Landroid/graphics/drawable/Drawable;)V

    .line 2660
    invoke-virtual/range {v47 .. v47}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->changeBackgroundForDragDown()V

    .line 2663
    :cond_f
    sget-boolean v7, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v7, :cond_10

    .line 2664
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_22

    .line 2665
    const-string v7, "StatusBar"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sq76 Drawable : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "pkg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2672
    .end local v49    # "temp":Landroid/graphics/drawable/Drawable;
    :cond_10
    :goto_3
    const/16 v46, 0x0

    .line 2673
    .local v46, "publicViewLocal":Landroid/view/View;
    if-eqz v45, :cond_12

    .line 2675
    :try_start_1
    move-object/from16 v0, v45

    iget-object v7, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    move-object/from16 v0, v26

    invoke-virtual {v7, v8, v0, v9}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v46

    .line 2678
    if-eqz v46, :cond_12

    .line 2680
    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v7

    invoke-static {v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 2681
    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v46

    invoke-direct {v0, v1, v2, v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->hideExistingBadgeOfContentView(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;Z)V

    .line 2684
    :cond_11
    const/4 v7, 0x1

    move-object/from16 v0, v46

    invoke-virtual {v0, v7}, Landroid/view/View;->setIsRootNamespace(Z)V

    .line 2685
    move-object/from16 v0, v26

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->setContractedChild(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2697
    :cond_12
    :goto_4
    :try_start_2
    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object/from16 v0, v41

    invoke-virtual {v0, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v32

    .line 2698
    .local v32, "info":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, v32

    iget v7, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move-object/from16 v0, p1

    iput v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2703
    .end local v32    # "info":Landroid/content/pm/ApplicationInfo;
    :goto_5
    sget-boolean v7, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v7, :cond_13

    .line 2704
    const-string v7, "KnoxNotification"

    const-string v8, "-----------------------BaseStatusBar--------------------------------"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2705
    const-string v7, "KnoxNotification"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Notification - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2706
    const-string v7, "KnoxNotification"

    const-string v8, "-----------------------BaseStatusBar--------------------------------"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2709
    :cond_13
    const/16 v19, 0x0

    .line 2710
    .local v19, "customPublicViewLocal":Landroid/view/View;
    if-nez v46, :cond_18

    .line 2711
    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v7

    invoke-static {v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v7

    if-eqz v7, :cond_23

    .line 2712
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f04004f

    const/4 v9, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v7, v8, v0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    .line 2715
    const v7, 0x7f0f01b4

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/view/ViewGroup;

    .line 2717
    .local v40, "parentPublicViewLocal":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f04005f

    const/4 v9, 0x1

    move-object/from16 v0, v40

    invoke-virtual {v7, v8, v0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v46

    .line 2720
    const/4 v7, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/view/View;->setIsRootNamespace(Z)V

    .line 2721
    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->setContractedChild(Landroid/view/View;)V

    .line 2730
    .end local v40    # "parentPublicViewLocal":Landroid/view/ViewGroup;
    :goto_6
    const-string v7, "KnoxNotification"

    const-string v8, "----- inflateViews : modified publicViewLocal -----"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2731
    const v7, 0x7f0f00cd

    move-object/from16 v0, v46

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v52

    check-cast v52, Landroid/widget/TextView;

    .line 2733
    .local v52, "title":Landroid/widget/TextView;
    const/4 v7, 0x5

    :try_start_3
    move-object/from16 v0, v52

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 2734
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object/from16 v0, v41

    invoke-virtual {v0, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    move-object/from16 v0, v41

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    move-object/from16 v0, v52

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    .line 2740
    :goto_7
    const v7, 0x7f0f00cc

    move-object/from16 v0, v46

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/ImageView;

    .line 2741
    .local v28, "icon":Landroid/widget/ImageView;
    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v7

    invoke-static {v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v7

    if-eqz v7, :cond_24

    if-eqz v19, :cond_24

    const v7, 0x7f0f01b5

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    :goto_8
    check-cast v7, Landroid/widget/ImageView;

    move-object/from16 v43, v7

    check-cast v43, Landroid/widget/ImageView;

    .line 2748
    .local v43, "profileBadge":Landroid/widget/ImageView;
    new-instance v6, Lcom/android/internal/statusbar/StatusBarIcon;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    iget v9, v9, Landroid/app/Notification;->icon:I

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v10

    iget v10, v10, Landroid/app/Notification;->iconLevel:I

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v11

    iget v11, v11, Landroid/app/Notification;->number:I

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v12

    iget-object v12, v12, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-direct/range {v6 .. v12}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;Landroid/os/UserHandle;IIILjava/lang/CharSequence;)V

    .line 2755
    .local v6, "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v7, v6}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIcon(Landroid/content/Context;Lcom/android/internal/statusbar/StatusBarIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v29

    .line 2756
    .local v29, "iconDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2757
    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I

    const/16 v8, 0x15

    if-ge v7, v8, :cond_14

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 2759
    :cond_14
    const v7, 0x1080638

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2761
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1050061

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v38

    .line 2763
    .local v38, "padding":I
    move-object/from16 v0, v28

    move/from16 v1, v38

    move/from16 v2, v38

    move/from16 v3, v38

    move/from16 v4, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 2764
    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget v7, v7, Landroid/app/Notification;->color:I

    if-eqz v7, :cond_15

    .line 2765
    invoke-virtual/range {v28 .. v28}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    iget v8, v8, Landroid/app/Notification;->color:I

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2770
    .end local v38    # "padding":I
    :cond_15
    if-eqz v43, :cond_16

    .line 2771
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getUserBadgeForDensity(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v44

    .line 2773
    .local v44, "profileDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v44, :cond_25

    .line 2774
    invoke-virtual/range {v43 .. v44}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2775
    const/4 v7, 0x0

    move-object/from16 v0, v43

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2781
    .end local v44    # "profileDrawable":Landroid/graphics/drawable/Drawable;
    :cond_16
    :goto_9
    const v7, 0x10200a3

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v42

    .line 2782
    .local v42, "privateTime":Landroid/view/View;
    const v7, 0x7f0f0231

    move-object/from16 v0, v46

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v50

    check-cast v50, Landroid/widget/DateTimeView;

    .line 2783
    .local v50, "time":Landroid/widget/DateTimeView;
    if-eqz v42, :cond_17

    invoke-virtual/range {v42 .. v42}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_17

    .line 2784
    const/4 v7, 0x0

    move-object/from16 v0, v50

    invoke-virtual {v0, v7}, Landroid/widget/DateTimeView;->setVisibility(I)V

    .line 2785
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-wide v8, v7, Landroid/app/Notification;->when:J

    move-object/from16 v0, v50

    invoke-virtual {v0, v8, v9}, Landroid/widget/DateTimeView;->setTime(J)V

    .line 2788
    :cond_17
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v46

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateSensitiveTextForKnox(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;)V

    .line 2790
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v7, v8, v9}, Landroid/app/Notification$Builder;->calculateTopPadding(Landroid/content/Context;ZF)I

    move-result v53

    .line 2793
    .local v53, "topPadding":I
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v52

    move/from16 v1, v53

    invoke-virtual {v0, v7, v1, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2795
    const/4 v7, 0x1

    move-object/from16 v0, p1

    iput-boolean v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->autoRedacted:Z

    .line 2800
    .end local v6    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    .end local v28    # "icon":Landroid/widget/ImageView;
    .end local v29    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    .end local v42    # "privateTime":Landroid/view/View;
    .end local v43    # "profileBadge":Landroid/widget/ImageView;
    .end local v50    # "time":Landroid/widget/DateTimeView;
    .end local v52    # "title":Landroid/widget/TextView;
    .end local v53    # "topPadding":I
    :cond_18
    const/16 v18, 0x0

    .line 2801
    .local v18, "customKnoxViewLocal":Landroid/view/View;
    if-nez v18, :cond_1d

    .line 2802
    const/16 v33, 0x0

    .line 2803
    .local v33, "knoxViewLocal":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f04004f

    const/4 v9, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v7, v8, v0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    .line 2806
    const v7, 0x7f0f01b4

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v39

    check-cast v39, Landroid/view/ViewGroup;

    .line 2808
    .local v39, "parentKnoxViewLocal":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x10900a4

    const/4 v9, 0x1

    move-object/from16 v0, v39

    invoke-virtual {v7, v8, v0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v33

    .line 2812
    const-string v7, "KnoxNotification"

    const-string v8, "----- inflateViews : modified KnoxViewLocal -----"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2813
    const v7, 0x1020016

    move-object/from16 v0, v33

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v52

    check-cast v52, Landroid/widget/TextView;

    .line 2815
    .restart local v52    # "title":Landroid/widget/TextView;
    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v7

    invoke-static {v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v7

    if-eqz v7, :cond_26

    if-eqz v19, :cond_26

    move-object/from16 v7, v19

    :goto_a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2, v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationTitleForKnox(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;Landroid/view/View;)V

    .line 2821
    const v7, 0x1020006

    move-object/from16 v0, v33

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/ImageView;

    .line 2823
    .restart local v28    # "icon":Landroid/widget/ImageView;
    const v7, 0x7f0f01b5

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v43

    check-cast v43, Landroid/widget/ImageView;

    .line 2826
    .restart local v43    # "profileBadge":Landroid/widget/ImageView;
    new-instance v6, Lcom/android/internal/statusbar/StatusBarIcon;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    iget v9, v9, Landroid/app/Notification;->icon:I

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v10

    iget v10, v10, Landroid/app/Notification;->iconLevel:I

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v11

    iget v11, v11, Landroid/app/Notification;->number:I

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v12

    iget-object v12, v12, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-direct/range {v6 .. v12}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;Landroid/os/UserHandle;IIILjava/lang/CharSequence;)V

    .line 2833
    .restart local v6    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v7, v6}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIcon(Landroid/content/Context;Lcom/android/internal/statusbar/StatusBarIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v29

    .line 2834
    .restart local v29    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2835
    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I

    const/16 v8, 0x15

    if-ge v7, v8, :cond_19

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 2837
    :cond_19
    const v7, 0x1080638

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2839
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1050061

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v38

    .line 2841
    .restart local v38    # "padding":I
    move-object/from16 v0, v28

    move/from16 v1, v38

    move/from16 v2, v38

    move/from16 v3, v38

    move/from16 v4, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 2844
    .end local v38    # "padding":I
    :cond_1a
    if-eqz v43, :cond_1b

    .line 2845
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getUserBadgeForDensity(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v44

    .line 2847
    .restart local v44    # "profileDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v44, :cond_27

    .line 2848
    invoke-virtual/range {v43 .. v44}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2849
    const/4 v7, 0x0

    move-object/from16 v0, v43

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2855
    .end local v44    # "profileDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1b
    :goto_b
    const v7, 0x10200a3

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v42

    .line 2856
    .restart local v42    # "privateTime":Landroid/view/View;
    if-eqz v42, :cond_1c

    invoke-virtual/range {v42 .. v42}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1c

    .line 2857
    const v7, 0x10200a3

    move-object/from16 v0, v33

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v51

    .line 2858
    .local v51, "timeStub":Landroid/view/View;
    const/4 v7, 0x0

    move-object/from16 v0, v51

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2859
    const v7, 0x10200a3

    move-object/from16 v0, v33

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/DateTimeView;

    .line 2861
    .local v20, "dateTimeView":Landroid/widget/DateTimeView;
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-wide v8, v7, Landroid/app/Notification;->when:J

    move-object/from16 v0, v20

    invoke-virtual {v0, v8, v9}, Landroid/widget/DateTimeView;->setTime(J)V

    .line 2864
    .end local v20    # "dateTimeView":Landroid/widget/DateTimeView;
    .end local v51    # "timeStub":Landroid/view/View;
    :cond_1c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateSanitizedTextForKnox(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;)V

    .line 2866
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v7, v8, v9}, Landroid/app/Notification$Builder;->calculateTopPadding(Landroid/content/Context;ZF)I

    move-result v53

    .line 2869
    .restart local v53    # "topPadding":I
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v52

    move/from16 v1, v53

    invoke-virtual {v0, v7, v1, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2870
    const/4 v7, 0x1

    move-object/from16 v0, p1

    iput-boolean v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->autoRedacted:Z

    .line 2883
    .end local v6    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    .end local v28    # "icon":Landroid/widget/ImageView;
    .end local v29    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    .end local v33    # "knoxViewLocal":Landroid/view/View;
    .end local v39    # "parentKnoxViewLocal":Landroid/view/ViewGroup;
    .end local v42    # "privateTime":Landroid/view/View;
    .end local v43    # "profileBadge":Landroid/widget/ImageView;
    .end local v52    # "title":Landroid/widget/TextView;
    .end local v53    # "topPadding":I
    :cond_1d
    move-object/from16 v0, v47

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2884
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRowMinHeight:I

    move/from16 v0, v35

    invoke-virtual {v7, v8, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setHeightRange(II)V

    .line 2885
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnActivatedListener(Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;)V

    .line 2886
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    .line 2887
    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v7

    invoke-static {v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v7

    if-eqz v7, :cond_28

    if-eqz v19, :cond_28

    .end local v19    # "customPublicViewLocal":Landroid/view/View;
    :goto_c
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedPublic:Landroid/view/View;

    .line 2890
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedKnox:Landroid/view/View;

    .line 2892
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/android/systemui/statusbar/NotificationData$Entry;->setBigContentView(Landroid/view/View;)V

    .line 2894
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mUseEventNotification:Z

    if-eqz v7, :cond_1e

    const-string v7, "com.sec.android.app.eventnotification"

    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 2896
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0463

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    .line 2897
    .restart local v22    # "eventNotiHeight":I
    const-string v7, "StatusBar"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mUseEventNotification eventNotiHeight = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2898
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    add-int/lit8 v8, v22, -0x1

    move/from16 v0, v22

    invoke-virtual {v7, v0, v8}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setHeightRange(II)V

    .line 2901
    .end local v22    # "eventNotiHeight":I
    :cond_1e
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->applyColorsAndBackgrounds(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 2904
    if-eqz v27, :cond_1f

    .line 2907
    move-object/from16 v0, v47

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserExpanded(Z)V

    .line 2909
    :cond_1f
    move-object/from16 v0, v47

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserLocked(Z)V

    .line 2910
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v0, v47

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setStatusBarNotification(Landroid/service/notification/StatusBarNotification;)V

    .line 2911
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 2530
    .end local v14    # "bigContentViewLocal":Landroid/view/View;
    .end local v15    # "contentIntent":Landroid/app/PendingIntent;
    .end local v17    # "contentViewLocal":Landroid/view/View;
    .end local v18    # "customKnoxViewLocal":Landroid/view/View;
    .end local v24    # "expanded":Lcom/android/systemui/statusbar/NotificationContentView;
    .end local v25    # "expandedKnox":Lcom/android/systemui/statusbar/NotificationContentView;
    .end local v26    # "expandedPublic":Lcom/android/systemui/statusbar/NotificationContentView;
    .end local v36    # "notificationLeft":Landroid/view/View;
    .end local v37    # "notificationRight":Landroid/view/View;
    .end local v46    # "publicViewLocal":Landroid/view/View;
    .end local v47    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v56    # "vetoButton":Landroid/view/View;
    :cond_20
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/view/LayoutInflater;

    .line 2532
    .local v31, "inflater":Landroid/view/LayoutInflater;
    const v7, 0x7f0400b4

    const/4 v8, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, p2

    invoke-virtual {v0, v7, v1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v47

    check-cast v47, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2534
    .restart local v47    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setExpansionLogger(Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2572
    .end local v31    # "inflater":Landroid/view/LayoutInflater;
    .restart local v15    # "contentIntent":Landroid/app/PendingIntent;
    .restart local v24    # "expanded":Lcom/android/systemui/statusbar/NotificationContentView;
    .restart local v25    # "expandedKnox":Lcom/android/systemui/statusbar/NotificationContentView;
    .restart local v26    # "expandedPublic":Lcom/android/systemui/statusbar/NotificationContentView;
    .restart local v56    # "vetoButton":Landroid/view/View;
    :cond_21
    new-instance v7, Lcom/android/systemui/statusbar/BaseStatusBar$15;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$15;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    move-object/from16 v0, v47

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 2622
    .restart local v14    # "bigContentViewLocal":Landroid/view/View;
    .restart local v17    # "contentViewLocal":Landroid/view/View;
    .restart local v36    # "notificationLeft":Landroid/view/View;
    .restart local v37    # "notificationRight":Landroid/view/View;
    :catch_0
    move-exception v21

    .line 2623
    .local v21, "e":Ljava/lang/RuntimeException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 2624
    .local v30, "ident":Ljava/lang/String;
    const-string v7, "StatusBar"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "couldn\'t inflate view for notification "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v21

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2625
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 2667
    .end local v21    # "e":Ljava/lang/RuntimeException;
    .end local v30    # "ident":Ljava/lang/String;
    .restart local v49    # "temp":Landroid/graphics/drawable/Drawable;
    :cond_22
    const-string v7, "StatusBar"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sq76 Drawable : null pkg : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2688
    .end local v49    # "temp":Landroid/graphics/drawable/Drawable;
    .restart local v46    # "publicViewLocal":Landroid/view/View;
    :catch_1
    move-exception v21

    .line 2689
    .restart local v21    # "e":Ljava/lang/RuntimeException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 2690
    .restart local v30    # "ident":Ljava/lang/String;
    const-string v7, "StatusBar"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "couldn\'t inflate public view for notification "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v21

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2691
    const/16 v46, 0x0

    goto/16 :goto_4

    .line 2699
    .end local v21    # "e":Ljava/lang/RuntimeException;
    .end local v30    # "ident":Ljava/lang/String;
    :catch_2
    move-exception v23

    .line 2700
    .local v23, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "StatusBar"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed looking up ApplicationInfo for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v23

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 2724
    .end local v23    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v19    # "customPublicViewLocal":Landroid/view/View;
    :cond_23
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f04005f

    const/4 v9, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v7, v8, v0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v46

    .line 2727
    const/4 v7, 0x1

    move-object/from16 v0, v46

    invoke-virtual {v0, v7}, Landroid/view/View;->setIsRootNamespace(Z)V

    .line 2728
    move-object/from16 v0, v26

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->setContractedChild(Landroid/view/View;)V

    goto/16 :goto_6

    .line 2736
    .restart local v52    # "title":Landroid/widget/TextView;
    :catch_3
    move-exception v21

    .line 2737
    .local v21, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v52

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 2741
    .end local v21    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v28    # "icon":Landroid/widget/ImageView;
    :cond_24
    const v7, 0x7f0f0232

    move-object/from16 v0, v46

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    goto/16 :goto_8

    .line 2777
    .restart local v6    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    .restart local v29    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v43    # "profileBadge":Landroid/widget/ImageView;
    .restart local v44    # "profileDrawable":Landroid/graphics/drawable/Drawable;
    :cond_25
    const/16 v7, 0x8

    move-object/from16 v0, v43

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_9

    .end local v6    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    .end local v28    # "icon":Landroid/widget/ImageView;
    .end local v29    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    .end local v43    # "profileBadge":Landroid/widget/ImageView;
    .end local v44    # "profileDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v18    # "customKnoxViewLocal":Landroid/view/View;
    .restart local v33    # "knoxViewLocal":Landroid/view/View;
    .restart local v39    # "parentKnoxViewLocal":Landroid/view/ViewGroup;
    :cond_26
    move-object/from16 v7, v46

    .line 2815
    goto/16 :goto_a

    .line 2851
    .restart local v6    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    .restart local v28    # "icon":Landroid/widget/ImageView;
    .restart local v29    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v43    # "profileBadge":Landroid/widget/ImageView;
    .restart local v44    # "profileDrawable":Landroid/graphics/drawable/Drawable;
    :cond_27
    const/16 v7, 0x8

    move-object/from16 v0, v43

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_b

    .end local v6    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    .end local v28    # "icon":Landroid/widget/ImageView;
    .end local v29    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    .end local v33    # "knoxViewLocal":Landroid/view/View;
    .end local v39    # "parentKnoxViewLocal":Landroid/view/ViewGroup;
    .end local v43    # "profileBadge":Landroid/widget/ImageView;
    .end local v44    # "profileDrawable":Landroid/graphics/drawable/Drawable;
    .end local v52    # "title":Landroid/widget/TextView;
    :cond_28
    move-object/from16 v19, v46

    .line 2887
    goto/16 :goto_c
.end method

.method public static isCoveredState(I)Z
    .locals 2
    .param p0, "curState"    # I

    .prologue
    .line 4570
    and-int/lit8 v0, p0, 0xa

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    and-int/lit8 v0, p0, 0x5

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFolderOpen(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 4749
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 4751
    .local v0, "config":Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v2, v1, :cond_0

    .line 4754
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isForceSanitizationRequired(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 10
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 783
    iget-object v4, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 784
    .local v4, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v5

    .line 785
    .local v5, "userId":I
    const/4 v0, 0x0

    .line 790
    .local v0, "bReturn":Z
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    iget-object v1, v8, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 792
    .local v1, "contentView":Landroid/widget/RemoteViews;
    sget-boolean v8, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v8, :cond_0

    .line 793
    const-string v8, "KnoxNotification"

    const-string v9, "----- Our attached knox_content_view is found -----"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->isMediaNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    const v9, 0x1020432

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    if-nez v8, :cond_4

    .line 799
    :cond_1
    sget-boolean v8, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v8, :cond_2

    .line 800
    const-string v8, "KnoxNotification"

    const-string v9, "----- Application provided RemoteView, so forcing sanitization -----"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    :cond_2
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxContainerVersion()Landroid/os/PersonaManager$KnoxContainerVersion;

    move-result-object v8

    sget-object v9, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_3_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-virtual {v8, v9}, Landroid/os/PersonaManager$KnoxContainerVersion;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v2, v6

    .line 805
    .local v2, "isKnox2_3_0":Z
    :goto_0
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxContainerVersion()Landroid/os/PersonaManager$KnoxContainerVersion;

    move-result-object v8

    sget-object v9, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_3_1:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-virtual {v8, v9}, Landroid/os/PersonaManager$KnoxContainerVersion;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    move v3, v6

    .line 807
    .local v3, "isKnox2_3_1":Z
    :goto_1
    if-nez v2, :cond_3

    if-eqz v3, :cond_7

    .line 808
    :cond_3
    iget v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    if-eq v5, v6, :cond_4

    .line 809
    const/4 v0, 0x1

    .line 818
    .end local v2    # "isKnox2_3_0":Z
    .end local v3    # "isKnox2_3_1":Z
    :cond_4
    :goto_2
    return v0

    :cond_5
    move v2, v7

    .line 803
    goto :goto_0

    .restart local v2    # "isKnox2_3_0":Z
    :cond_6
    move v3, v7

    .line 805
    goto :goto_1

    .line 814
    .restart local v3    # "isKnox2_3_1":Z
    :cond_7
    const/4 v0, 0x1

    goto :goto_2
.end method

.method public static isKeyguardState(I)Z
    .locals 2
    .param p0, "curState"    # I

    .prologue
    const/4 v0, 0x1

    .line 4553
    and-int/lit8 v1, p0, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLayoutDirectionRTL()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 4545
    sget v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mLayoutDirection:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isPersona(I)Z
    .locals 1
    .param p0, "userId"    # I

    .prologue
    .line 397
    const/16 v0, 0x64

    if-lt p0, v0, :cond_0

    const/16 v0, 0xc8

    if-gt p0, v0, :cond_0

    .line 398
    const/4 v0, 0x1

    .line 400
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPersonaInKioskMode(I)Z
    .locals 2
    .param p1, "personaId"    # I

    .prologue
    .line 414
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    invoke-virtual {v1, p1}, Landroid/os/PersonaManager;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v0

    .line 415
    .local v0, "personaInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSIMandOperatorMatched()Z
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 4449
    const-string v9, "gsm.sim.operator.numeric"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4450
    .local v1, "currentSIM":Ljava/lang/String;
    const-string v9, "ril.currentplmn"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4453
    .local v0, "currentLocation":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Framework_ReplaceDataTypeIconAsOpBrand"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4454
    .local v2, "mDataTypeBrand":Ljava/lang/String;
    const-string v9, "ORANGE"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 4481
    :cond_0
    :goto_0
    return v7

    .line 4457
    :cond_1
    const-string v9, "StatusBar"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isSIMandOperatorMatched  currentPlmn = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4459
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperatorSIM()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 4460
    const-string v9, "StatusBar"

    const-string v10, "isSIMandOperatorMatched SIM is matched!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4461
    const-string v9, "domestic"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v7, v8

    .line 4462
    goto :goto_0

    .line 4466
    :cond_2
    const-string v9, "StatusBar"

    const-string v10, "isSIMandOperatorMatched SIM is NOT matched!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4467
    const-string v9, "20801"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "20802"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 4468
    :cond_3
    const-string v9, "gsm.sim.operator.numeric"

    const-string v10, ""

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4469
    .local v6, "simNumeric":Ljava/lang/String;
    const-string v9, "gsm.operator.numeric"

    const-string v10, ""

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4470
    .local v4, "plmnNumeric":Ljava/lang/String;
    const-string v9, "StatusBar"

    const-string v10, "isSIMandOperatorMatched SIM is matched for Orange!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4471
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_0

    .line 4472
    invoke-virtual {v6, v7, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 4473
    .local v5, "simMCC":Ljava/lang/String;
    invoke-virtual {v4, v7, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 4474
    .local v3, "plmnMCC":Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v7, v8

    .line 4475
    goto :goto_0
.end method

.method public static isShadeLockedState(I)Z
    .locals 2
    .param p0, "curState"    # I

    .prologue
    .line 4561
    and-int/lit8 v0, p0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSharedDeviceKeyguardOn()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 3778
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "shared_device_status"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3779
    .local v0, "sd_status":I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 3780
    const/4 v1, 0x1

    .line 3782
    :cond_0
    return v1
.end method

.method private isSystemPackage(Landroid/service/notification/StatusBarNotification;)Z
    .locals 6
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4663
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 4664
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    invoke-direct {p0, v1, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->findPackageInfo(Landroid/content/pm/PackageManager;Landroid/service/notification/StatusBarNotification;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 4666
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    sget-object v4, Lcom/android/systemui/statusbar/BaseStatusBar;->sSystemSignature:[Landroid/content/pm/Signature;

    if-nez v4, :cond_0

    .line 4667
    new-array v4, v2, [Landroid/content/pm/Signature;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->getSystemSignature(Landroid/content/pm/PackageManager;)Landroid/content/pm/Signature;

    move-result-object v5

    aput-object v5, v4, v3

    sput-object v4, Lcom/android/systemui/statusbar/BaseStatusBar;->sSystemSignature:[Landroid/content/pm/Signature;

    .line 4669
    :cond_0
    sget-object v4, Lcom/android/systemui/statusbar/BaseStatusBar;->sSystemSignature:[Landroid/content/pm/Signature;

    aget-object v4, v4, v3

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/systemui/statusbar/BaseStatusBar;->sSystemSignature:[Landroid/content/pm/Signature;

    aget-object v4, v4, v3

    invoke-static {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->getFirstSignature(Landroid/content/pm/PackageInfo;)Landroid/content/pm/Signature;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method private knoxContainerInLockMode(I)Z
    .locals 5
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 900
    invoke-static {p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 901
    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v2, :cond_0

    .line 902
    const-string v2, "KnoxNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get KnoxInLockMode for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is false"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    :cond_0
    :goto_0
    return v1

    .line 905
    :cond_1
    sget-object v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxInLockMode:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    .line 906
    .local v0, "index":I
    if-gez v0, :cond_2

    .line 907
    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v2, :cond_0

    .line 908
    const-string v2, "KnoxNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get KnoxInLockMode for container "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is false"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 911
    :cond_2
    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v1, :cond_3

    .line 912
    const-string v1, "KnoxNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get KnoxInLockMode for container "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxInLockMode:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    :cond_3
    sget-object v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxInLockMode:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    goto :goto_0
.end method

.method private static queryNotificationConfigActivities(Landroid/content/pm/PackageManager;)Ljava/util/List;
    .locals 3
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4707
    sget-object v1, Lcom/android/systemui/statusbar/BaseStatusBar;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 4709
    .local v0, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    return-object v0
.end method

.method private reSanitizePendingIntentIfNeeded(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V
    .locals 4
    .param p1, "oldEntry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 4071
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v0, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 4073
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v1, :cond_0

    .line 4074
    const-string v1, "KnoxNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "----- reSanitizePendingIntentIfNeeded : contentIntent - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4078
    :cond_0
    if-nez v0, :cond_3

    .line 4079
    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v1, :cond_1

    .line 4080
    const-string v1, "KnoxNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "----- reSanitizePendingIntentIfNeeded : entry.isSanitizedPendingIntent - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->isSanitizedPendingIntent:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4082
    :cond_1
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->isSanitizedPendingIntent:Z

    if-eqz v1, :cond_2

    .line 4087
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->sanitizePendingIntent(Lcom/android/systemui/statusbar/NotificationData$Entry;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 4089
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iput-object v0, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 4102
    :cond_2
    :goto_0
    return-void

    .line 4092
    :cond_3
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->isSanitizedPendingIntent:Z

    if-eqz v1, :cond_2

    .line 4096
    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v1, :cond_4

    .line 4097
    const-string v1, "KnoxNotification"

    const-string v2, "----- reSanitizePendingIntentIfNeeded : But doing un-sanitize -----"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4098
    :cond_4
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iput-object v0, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 4099
    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->isSanitizedPendingIntent:Z

    goto :goto_0
.end method

.method private registerPersonaObserver(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 880
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->containerObserver:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 881
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$PersonaObserver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$PersonaObserver;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/content/Context;II)V

    .line 883
    .local v0, "observer":Lcom/android/systemui/statusbar/BaseStatusBar$PersonaObserver;
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->containerObserver:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 884
    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v1, :cond_0

    .line 885
    const-string v1, "KnoxNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "register container observer for container "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    .end local v0    # "observer":Lcom/android/systemui/statusbar/BaseStatusBar$PersonaObserver;
    :cond_0
    return-void
.end method

.method private reimposeBadgeAtBottomRight(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;)Landroid/widget/RemoteViews;
    .locals 9
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "remoteViewType"    # Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;

    .prologue
    const v8, 0x7f0f01b4

    .line 3085
    const-string v5, "KnoxNotification"

    const-string v6, "----- Inside reimposeBadgeAtBottomRight -----"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3087
    iget-object v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .line 3088
    .local v2, "notification":Landroid/app/Notification;
    const/4 v3, 0x0

    .line 3089
    .local v3, "notificationContentView":Landroid/widget/RemoteViews;
    sget-object v5, Lcom/android/systemui/statusbar/BaseStatusBar$19;->$SwitchMap$com$android$systemui$statusbar$BaseStatusBar$RemoteViewType:[I

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 3104
    :goto_0
    const/4 v1, 0x0

    .line 3105
    .local v1, "contentView":Landroid/widget/RemoteViews;
    if-eqz v3, :cond_1

    .line 3106
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getUserBadgeForDensity(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 3108
    .local v4, "profileDrawable":Landroid/graphics/drawable/Drawable;
    if-nez v4, :cond_0

    .line 3121
    .end local v3    # "notificationContentView":Landroid/widget/RemoteViews;
    .end local v4    # "profileDrawable":Landroid/graphics/drawable/Drawable;
    :goto_1
    return-object v3

    .line 3091
    .end local v1    # "contentView":Landroid/widget/RemoteViews;
    .restart local v3    # "notificationContentView":Landroid/widget/RemoteViews;
    :pswitch_0
    iget-object v5, v2, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    iget-object v3, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 3092
    goto :goto_0

    .line 3094
    :pswitch_1
    iget-object v3, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 3095
    goto :goto_0

    .line 3097
    :pswitch_2
    iget-object v3, v2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 3098
    goto :goto_0

    .line 3100
    :pswitch_3
    iget-object v3, v2, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    goto :goto_0

    .line 3111
    .restart local v1    # "contentView":Landroid/widget/RemoteViews;
    .restart local v4    # "profileDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    new-instance v1, Landroid/widget/RemoteViews;

    .end local v1    # "contentView":Landroid/widget/RemoteViews;
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f04004f

    invoke-direct {v1, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 3114
    .restart local v1    # "contentView":Landroid/widget/RemoteViews;
    invoke-static {v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3115
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const v5, 0x7f0f01b5

    invoke-virtual {v1, v5, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 3116
    invoke-virtual {v1, v8}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 3118
    invoke-virtual {v1, v8, v3}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 3119
    const-string v5, "KnoxNotification"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "----- returning contentView = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "profileDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    move-object v3, v1

    .line 3121
    goto :goto_1

    .line 3089
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 2234
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2236
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2240
    :cond_0
    :goto_0
    return-void

    .line 2237
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static setIsAutoBrightBoxChecked(Z)V
    .locals 1
    .param p0, "value"    # Z

    .prologue
    .line 4496
    sget-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->isAutoBrightBoxChecked:Z

    if-eq v0, p0, :cond_0

    .line 4497
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->isAutoBrightBoxCheckingChanged:Z

    .line 4499
    :cond_0
    sput-boolean p0, Lcom/android/systemui/statusbar/BaseStatusBar;->isAutoBrightBoxChecked:Z

    .line 4500
    return-void
.end method

.method public static setIsNetworkAvailable(Z)V
    .locals 3
    .param p0, "value"    # Z

    .prologue
    .line 4485
    sput-boolean p0, Lcom/android/systemui/statusbar/BaseStatusBar;->isNetworkAvailable:Z

    .line 4486
    const-string v0, "StatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsNetworkAvailable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->isNetworkAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4487
    return-void
.end method

.method private shouldExpandOnKeyguard(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 3733
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->twQuickPanelEvent:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->twQuickPanelEvent:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->twQuickPanelEvent:I

    const/16 v1, 0x102

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->twQuickPanelEvent:I

    const/16 v1, 0x101

    if-ne v0, v1, :cond_1

    .line 3737
    :cond_0
    const/4 v0, 0x1

    .line 3739
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldShowOnKeyguard(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 3751
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mShowLockscreenNotifications:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationData;->isAmbient(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationData;->getVisibilityOverride(Ljava/lang/String;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldShowOnShadeLocked(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 3757
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mShowLockscreenNotifications:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationData;->getVisibilityOverride(Ljava/lang/String;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showUnlockHintToast()V
    .locals 3

    .prologue
    .line 4726
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0612

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 4728
    return-void
.end method

.method private startAppNotificationSettingsActivity(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appUid"    # I

    .prologue
    .line 1895
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APP_NOTIFICATION_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1896
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "app_package"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1897
    const-string v1, "app_uid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1899
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/statusbar/BaseStatusBar;->startNotificationGutsIntent(Landroid/content/Intent;I)V

    .line 1900
    return-void
.end method

.method private startAppOwnNotificationSettingsActivity(Landroid/content/Intent;ILjava/lang/String;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "notificationId"    # I
    .param p3, "notificationTag"    # Ljava/lang/String;
    .param p4, "appUid"    # I

    .prologue
    .line 1879
    const-string v0, "notification_id"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1880
    const-string v0, "notification_tag"

    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1881
    invoke-direct {p0, p1, p4}, Lcom/android/systemui/statusbar/BaseStatusBar;->startNotificationGutsIntent(Landroid/content/Intent;I)V

    .line 1882
    return-void
.end method

.method private startNotificationGutsIntent(Landroid/content/Intent;I)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "appUid"    # I

    .prologue
    const/4 v3, 0x0

    .line 1903
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isInstantDismiss()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isCoveredState()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->goToKeyguard()V

    .line 1905
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    .line 1906
    .local v0, "keyguardShowing":Z
    new-instance v1, Lcom/android/systemui/statusbar/BaseStatusBar$9;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/android/systemui/statusbar/BaseStatusBar$9;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;ZILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isInstantDismiss()Z

    move-result v2

    invoke-virtual {p0, v1, v3, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;ZZZ)V

    .line 1938
    return-void
.end method

.method private unregisterPersonaObserver(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 890
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->containerObserver:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/BaseStatusBar$PersonaObserver;

    .line 891
    .local v0, "observer":Lcom/android/systemui/statusbar/BaseStatusBar$PersonaObserver;
    if-eqz v0, :cond_0

    .line 892
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BaseStatusBar$PersonaObserver;->unregisterPersonaObserver()V

    .line 893
    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "KnoxNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregister container observer for container "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    :cond_0
    return-void
.end method

.method private updateCurrentProfilesCache()V
    .locals 5

    .prologue
    .line 1301
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    monitor-enter v3

    .line 1302
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 1303
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUserManager:Landroid/os/UserManager;

    if-eqz v2, :cond_0

    .line 1304
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUserManager:Landroid/os/UserManager;

    iget v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    invoke-virtual {v2, v4}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 1305
    .local v1, "user":Landroid/content/pm/UserInfo;
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 1308
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1309
    return-void
.end method

.method private updateHeadsUpViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V
    .locals 1
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 4111
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;Z)V

    .line 4112
    return-void
.end method

.method private updateKnoxNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;Z)V
    .locals 11
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "notification"    # Landroid/service/notification/StatusBarNotification;
    .param p3, "isHeadsUp"    # Z

    .prologue
    .line 4177
    iget-object v9, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedKnox:Landroid/view/View;

    .line 4178
    .local v9, "knoxViewLocal":Landroid/view/View;
    if-eqz v9, :cond_1

    .line 4179
    const v1, 0x1020006

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 4182
    .local v7, "icon":Landroid/widget/ImageView;
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon;

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    iget-object v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget v3, v3, Landroid/app/Notification;->icon:I

    iget-object v4, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget v4, v4, Landroid/app/Notification;->iconLevel:I

    iget-object v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget v5, v5, Landroid/app/Notification;->number:I

    iget-object v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;Landroid/os/UserHandle;IIILjava/lang/CharSequence;)V

    .line 4189
    .local v0, "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIcon(Landroid/content/Context;Lcom/android/internal/statusbar/StatusBarIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 4190
    .local v8, "iconDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4191
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    invoke-virtual {v1, v8}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4192
    const v1, 0x1080638

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 4194
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050061

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 4196
    .local v10, "padding":I
    invoke-virtual {v7, v10, v10, v10, v10}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 4198
    .end local v10    # "padding":I
    :cond_0
    iput-object v9, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedKnox:Landroid/view/View;

    .line 4200
    .end local v0    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    .end local v7    # "icon":Landroid/widget/ImageView;
    .end local v8    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4201
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->hideExistingBadgeOfContentView(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;Z)V

    .line 4202
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getBigContentView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 4203
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getBigContentView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->hideExistingBadgeOfBigContentView(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;)V

    .line 4204
    :cond_2
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getPublicContentView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 4206
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getPublicContentView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->hideExistingBadgeOfContentView(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;Z)V

    .line 4209
    :cond_3
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedPublic:Landroid/view/View;

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateSensitiveTextForKnox(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;)V

    .line 4210
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedKnox:Landroid/view/View;

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateSanitizedTextForKnox(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;)V

    .line 4211
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedKnox:Landroid/view/View;

    iget-object v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedPublic:Landroid/view/View;

    invoke-direct {p0, p1, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationTitleForKnox(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;Landroid/view/View;)V

    .line 4213
    :cond_4
    return-void
.end method

.method private updateNotificationTitleForKnox(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;Landroid/view/View;)V
    .locals 10
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "knoxViewLocal"    # Landroid/view/View;
    .param p3, "publicViewLocal"    # Landroid/view/View;

    .prologue
    const v8, 0x1020016

    .line 2951
    if-eqz p2, :cond_4

    .line 2952
    iget-object v7, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 2953
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 2956
    .local v5, "title":Landroid/widget/TextView;
    move-object v6, v2

    .line 2958
    .local v6, "titleString":Ljava/lang/String;
    :try_start_0
    iget-object v7, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->getPackageManagerForUser(I)Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 2960
    .local v3, "pmUser":Landroid/content/pm/PackageManager;
    iget-object v7, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2962
    .local v1, "label":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    .line 2963
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2966
    :cond_0
    if-eqz v2, :cond_2

    const-string v7, "com.samsung.android.email.provider"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2967
    sget-boolean v7, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v7, :cond_1

    .line 2968
    const-string v7, "KnoxNotification"

    const-string v8, "----- updateNotificationTitleForKnox: EmailProvider found -----"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2971
    :cond_1
    if-eqz p3, :cond_2

    .line 2975
    const v7, 0x7f0f00cd

    invoke-virtual {p3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2977
    .local v4, "publicTitle":Landroid/widget/TextView;
    if-eqz v4, :cond_5

    .line 2978
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 2999
    .end local v1    # "label":Ljava/lang/CharSequence;
    .end local v3    # "pmUser":Landroid/content/pm/PackageManager;
    .end local v4    # "publicTitle":Landroid/widget/TextView;
    :cond_2
    :goto_0
    sget-boolean v7, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v7, :cond_3

    .line 3000
    const-string v7, "KnoxNotification"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "----- updateNotificationTitleForKnox: titleString - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " -----"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3003
    :cond_3
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3005
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v5    # "title":Landroid/widget/TextView;
    .end local v6    # "titleString":Ljava/lang/String;
    :cond_4
    return-void

    .line 2980
    .restart local v1    # "label":Ljava/lang/CharSequence;
    .restart local v2    # "packageName":Ljava/lang/String;
    .restart local v3    # "pmUser":Landroid/content/pm/PackageManager;
    .restart local v4    # "publicTitle":Landroid/widget/TextView;
    .restart local v5    # "title":Landroid/widget/TextView;
    .restart local v6    # "titleString":Ljava/lang/String;
    :cond_5
    const v7, 0x1020016

    :try_start_1
    invoke-virtual {p3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4    # "publicTitle":Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 2982
    .restart local v4    # "publicTitle":Landroid/widget/TextView;
    if-eqz v4, :cond_6

    .line 2983
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 2985
    :cond_6
    sget-boolean v7, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v7, :cond_2

    .line 2986
    const-string v7, "KnoxNotification"

    const-string v8, "----- updateNotificationTitleForKnox: did not find title view -----"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2993
    .end local v1    # "label":Ljava/lang/CharSequence;
    .end local v3    # "pmUser":Landroid/content/pm/PackageManager;
    .end local v4    # "publicTitle":Landroid/widget/TextView;
    :catch_0
    move-exception v0

    .line 2994
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v7, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v7, :cond_2

    .line 2995
    const-string v7, "KnoxNotification"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateNotificationTitleForKnox: threw an exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2996
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private updateNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V
    .locals 1
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 4106
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;Z)V

    .line 4107
    return-void
.end method

.method private updateNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;Z)V
    .locals 9
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "notification"    # Landroid/service/notification/StatusBarNotification;
    .param p3, "isHeadsUp"    # Z

    .prologue
    .line 4116
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v2, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 4118
    .local v2, "contentView":Landroid/widget/RemoteViews;
    if-eqz p3, :cond_3

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v0, v6, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 4122
    .local v0, "bigContentView":Landroid/widget/RemoteViews;
    :goto_0
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v5, v6, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    .line 4123
    .local v5, "publicVersion":Landroid/app/Notification;
    if-eqz v5, :cond_4

    iget-object v4, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 4127
    .local v4, "publicContentView":Landroid/widget/RemoteViews;
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    iget-object v7, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {v2, v6, v7, v8}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 4128
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getBigContentView()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 4129
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getBigContentView()Landroid/view/View;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {v0, v6, v7, v8}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 4132
    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getPublicContentView()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 4133
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getPublicContentView()Landroid/view/View;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {v4, v6, v7, v8}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 4137
    :cond_1
    iget-object v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v6

    invoke-static {v6}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4139
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateKnoxNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;Z)V

    .line 4142
    :cond_2
    iget-object v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v1, v6, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 4146
    .local v1, "contentIntent":Landroid/app/PendingIntent;
    const/4 v3, 0x0

    .line 4147
    .local v3, "listener":Landroid/view/View$OnClickListener;
    if-eqz v1, :cond_5

    .line 4148
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v1, v6, p3}, Lcom/android/systemui/statusbar/BaseStatusBar;->makeClicker(Landroid/app/PendingIntent;Ljava/lang/String;Z)Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    move-result-object v3

    .line 4166
    :goto_2
    iget-object v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4167
    iget-object v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6, p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setStatusBarNotification(Landroid/service/notification/StatusBarNotification;)V

    .line 4168
    iget-object v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->notifyContentUpdated()V

    .line 4169
    iget-object v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->resetHeight()V

    .line 4170
    return-void

    .line 4118
    .end local v0    # "bigContentView":Landroid/widget/RemoteViews;
    .end local v1    # "contentIntent":Landroid/app/PendingIntent;
    .end local v3    # "listener":Landroid/view/View$OnClickListener;
    .end local v4    # "publicContentView":Landroid/widget/RemoteViews;
    .end local v5    # "publicVersion":Landroid/app/Notification;
    :cond_3
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v0, v6, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    goto :goto_0

    .line 4123
    .restart local v0    # "bigContentView":Landroid/widget/RemoteViews;
    .restart local v5    # "publicVersion":Landroid/app/Notification;
    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    .line 4154
    .restart local v1    # "contentIntent":Landroid/app/PendingIntent;
    .restart local v3    # "listener":Landroid/view/View$OnClickListener;
    .restart local v4    # "publicContentView":Landroid/widget/RemoteViews;
    :cond_5
    new-instance v3, Lcom/android/systemui/statusbar/BaseStatusBar$18;

    .end local v3    # "listener":Landroid/view/View$OnClickListener;
    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$18;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    .restart local v3    # "listener":Landroid/view/View$OnClickListener;
    goto :goto_2
.end method

.method private updateSanitizedTextForKnox(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;)V
    .locals 9
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "knoxViewLocal"    # Landroid/view/View;

    .prologue
    const v8, 0x7f0b03f7

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 2916
    if-eqz p2, :cond_0

    .line 2917
    const v4, 0x102008c

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 2919
    .local v3, "text":Landroid/widget/TextView;
    if-eqz v3, :cond_0

    .line 2920
    iget-object v4, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v2

    .line 2921
    .local v2, "personaId":I
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->getKnoxName(I)Ljava/lang/String;

    move-result-object v0

    .line 2922
    .local v0, "knoxName":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 2923
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "KNOX"

    aput-object v6, v5, v7

    invoke-virtual {v4, v8, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2938
    .end local v0    # "knoxName":Ljava/lang/String;
    .end local v2    # "personaId":I
    .end local v3    # "text":Landroid/widget/TextView;
    :cond_0
    :goto_0
    return-void

    .line 2925
    .restart local v0    # "knoxName":Ljava/lang/String;
    .restart local v2    # "personaId":I
    .restart local v3    # "text":Landroid/widget/TextView;
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    invoke-virtual {v4, v2}, Landroid/os/PersonaManager;->getKnoxNameChangedAsUser(I)Ljava/lang/String;

    move-result-object v1

    .line 2927
    .local v1, "myKnoxName":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 2929
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v7

    invoke-virtual {v4, v8, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2933
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v7

    invoke-virtual {v4, v8, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateSensitiveTextForKnox(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;)V
    .locals 2
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "publicViewLocal"    # Landroid/view/View;

    .prologue
    .line 2941
    if-eqz p2, :cond_0

    .line 2942
    const v1, 0x7f0f0233

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2943
    .local v0, "text":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 2944
    const v1, 0x7f0b03f5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2947
    .end local v0    # "text":Landroid/widget/TextView;
    :cond_0
    return-void
.end method


# virtual methods
.method public abstract addNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;Lcom/android/systemui/statusbar/NotificationData$Entry;)V
.end method

.method protected addNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 1
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 3457
    if-nez p1, :cond_0

    .line 3463
    :goto_0
    return-void

    .line 3461
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/NotificationData;->add(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 3462
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotifications()V

    goto :goto_0
.end method

.method public animateCollapsePanels(IZ)V
    .locals 0
    .param p1, "flags"    # I
    .param p2, "force"    # Z

    .prologue
    .line 3351
    return-void
.end method

.method protected applyColorsAndBackgrounds(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 6
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    const v3, 0x1020432

    const/16 v5, 0x15

    const/4 v1, 0x1

    .line 1831
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v2

    invoke-static {v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v2, v3, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v2

    invoke-static {v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_5

    .line 1838
    :cond_1
    iget v2, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_2

    iget v2, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I

    if-ge v2, v5, :cond_2

    .line 1840
    iget-object v2, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setShowingLegacyBackground(Z)V

    .line 1841
    iput-boolean v1, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->legacy:Z

    .line 1854
    :cond_2
    :goto_0
    iget-object v2, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v2, :cond_3

    .line 1855
    iget v2, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I

    if-lt v2, v5, :cond_7

    .line 1865
    :cond_3
    :goto_1
    iget-object v2, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v2, :cond_4

    .line 1866
    iget-object v2, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    const v3, 0x7f0f00a2

    iget v4, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I

    if-ge v4, v5, :cond_8

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setTag(ILjava/lang/Object;)V

    .line 1868
    :cond_4
    return-void

    .line 1845
    :cond_5
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget v0, v2, Landroid/app/Notification;->color:I

    .line 1846
    .local v0, "color":I
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/BaseStatusBar;->isMediaNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1847
    iget-object v2, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v0, :cond_6

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0057

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .end local v0    # "color":I
    :cond_6
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setTintColor(I)V

    goto :goto_0

    .line 1861
    :cond_7
    iget-object v2, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1

    .line 1866
    :cond_8
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public applyEDMPolicy()V
    .locals 0

    .prologue
    .line 4412
    return-void
.end method

.method public canChildBeBlocked(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z
    .locals 15
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 4604
    const/4 v4, 0x0

    .line 4605
    .local v4, "isNotificationConfigAcitivity":Z
    iget-object v12, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 4606
    .local v7, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v11

    .line 4607
    .local v11, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 4609
    .local v8, "packageName":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLauncherApps:Landroid/content/pm/LauncherApps;

    if-nez v12, :cond_0

    .line 4610
    iget-object v12, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v13, "launcherapps"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/LauncherApps;

    iput-object v12, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 4613
    :cond_0
    iget-object v12, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v13

    invoke-virtual {v12, v8, v13}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v5

    .line 4616
    .local v5, "launcherActivityInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    invoke-static {v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->queryNotificationConfigActivities(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v10

    .line 4617
    .local v10, "resolvedConfigActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 4618
    .local v9, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v12, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 4619
    const/4 v4, 0x1

    goto :goto_0

    .line 4624
    .end local v9    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    if-nez v12, :cond_3

    if-nez v4, :cond_3

    .line 4625
    const-string v12, "StatusBar"

    const-string v13, "canChildBeBlocked-R1"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4626
    const/4 v12, 0x0

    .line 4659
    .end local v3    # "i$":Ljava/util/Iterator;
    :goto_1
    return v12

    .line 4630
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v12

    const-string v13, "CscFeature_Setting_ConfigBlockNotiAppList"

    invoke-virtual {v12, v13}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4632
    .local v1, "hideAppNotificationList":Ljava/lang/String;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_4

    .line 4633
    const-string v12, "StatusBar"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "canChildBeBlocked-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4634
    const-string v12, ","

    invoke-virtual {v1, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHideAppNotificationList:[Ljava/lang/String;

    .line 4635
    iget-object v12, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHideAppNotificationList:[Ljava/lang/String;

    if-nez v12, :cond_5

    .line 4648
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-direct {p0, v11}, Lcom/android/systemui/statusbar/BaseStatusBar;->isSystemPackage(Landroid/service/notification/StatusBarNotification;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 4649
    const-string v12, "StatusBar"

    const-string v13, "canChildBeBlocked-R3"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4650
    const/4 v12, 0x0

    goto :goto_1

    .line 4637
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHideAppNotificationList:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_2
    if-ge v3, v6, :cond_4

    aget-object v2, v0, v3

    .line 4638
    .local v2, "hidePackageName":Ljava/lang/String;
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 4639
    const-string v12, "StatusBar"

    const-string v13, "canChildBeBlocked-R2"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4640
    const/4 v12, 0x0

    goto :goto_1

    .line 4637
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 4659
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "hidePackageName":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v6    # "len$":I
    :cond_7
    const/4 v12, 0x1

    goto :goto_1
.end method

.method public cancelPreloadRecentApps()V
    .locals 2

    .prologue
    .line 2180
    const/16 v0, 0x3ff

    .line 2181
    .local v0, "msg":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 2182
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 2183
    return-void
.end method

.method protected cancelPreloadingRecents()V
    .locals 1

    .prologue
    .line 2294
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    if-eqz v0, :cond_0

    .line 2295
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    invoke-interface {v0}, Lcom/android/systemui/RecentsComponent;->cancelPreloadingRecents()V

    .line 2297
    :cond_0
    return-void
.end method

.method protected clickNotificationLeftButton(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 4589
    return-void
.end method

.method protected clickNotificationRightButton(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 4590
    return-void
.end method

.method protected abstract createAndAddWindows()V
.end method

.method protected createHandler()Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1

    .prologue
    .line 2230
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    return-object v0
.end method

.method protected createIcon(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/StatusBarIconView;
    .locals 9
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 3437
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    .line 3438
    .local v8, "n":Landroid/app/Notification;
    new-instance v7, Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v1, v2, v8}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)V

    .line 3440
    .local v7, "iconView":Lcom/android/systemui/statusbar/StatusBarIconView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 3442
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    iget v4, v8, Landroid/app/Notification;->iconLevel:I

    iget v5, v8, Landroid/app/Notification;->number:I

    iget-object v6, v8, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Landroid/os/UserHandle;Ljava/lang/String;Landroid/graphics/drawable/Icon;IILjava/lang/CharSequence;)V

    .line 3449
    .local v0, "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    invoke-virtual {v7, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t create icon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->handleNotificationError(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V

    .line 3451
    const/4 v7, 0x0

    .line 3453
    .end local v7    # "iconView":Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_0
    return-object v7
.end method

.method protected createNotificationViews(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/NotificationData$Entry;
    .locals 6
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v2, 0x0

    .line 3418
    sget-boolean v3, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 3419
    const-string v3, "StatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createNotificationViews(notification="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3421
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->createIcon(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v1

    .line 3422
    .local v1, "iconView":Lcom/android/systemui/statusbar/StatusBarIconView;
    if-nez v1, :cond_2

    move-object v0, v2

    .line 3432
    :cond_1
    :goto_0
    return-object v0

    .line 3427
    :cond_2
    new-instance v0, Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/statusbar/NotificationData$Entry;-><init>(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    .line 3428
    .local v0, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-direct {p0, v0, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3429
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t expand RemoteViews for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->handleNotificationError(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V

    move-object v0, v2

    .line 3430
    goto :goto_0
.end method

.method public destroy()V
    .locals 6

    .prologue
    .line 4317
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    if-eqz v3, :cond_0

    .line 4318
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-interface {v3, v4}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 4320
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4323
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRcpPolicyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4325
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPersonaLaunchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4327
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->containerObserver:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 4329
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 4330
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->containerObserver:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 4331
    .local v2, "userId":I
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->unregisterPersonaObserver(I)V

    .line 4332
    sget-boolean v3, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "KnoxNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "counting container observer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " total size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4329
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4337
    .end local v2    # "userId":I
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v3}, Landroid/service/notification/NotificationListenerService;->unregisterAsSystemService()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4341
    :goto_1
    return-void

    .line 4338
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method protected dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;ZZZ)V
    .locals 0
    .param p1, "action"    # Lcom/android/keyguard/KeyguardHostView$OnDismissAction;
    .param p2, "afterKeyguardGone"    # Z
    .param p3, "dismissIfInsecure"    # Z
    .param p4, "isQSTileClicked"    # Z

    .prologue
    .line 1727
    invoke-interface {p1}, Lcom/android/keyguard/KeyguardHostView$OnDismissAction;->onDismiss()Z

    .line 1728
    return-void
.end method

.method public dismissPopups()V
    .locals 6

    .prologue
    .line 2123
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v4, :cond_0

    .line 2124
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    .line 2125
    .local v1, "v":Lcom/android/systemui/statusbar/NotificationGuts;
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    .line 2127
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationGuts;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_1

    .line 2144
    .end local v1    # "v":Lcom/android/systemui/statusbar/NotificationGuts;
    :cond_0
    :goto_0
    return-void

    .line 2129
    .restart local v1    # "v":Lcom/android/systemui/statusbar/NotificationGuts;
    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationGuts;->getLeft()I

    move-result v4

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationGuts;->getRight()I

    move-result v5

    add-int/2addr v4, v5

    div-int/lit8 v2, v4, 0x2

    .line 2130
    .local v2, "x":I
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationGuts;->getTop()I

    move-result v4

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationGuts;->getActualHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int v3, v4, v5

    .line 2131
    .local v3, "y":I
    int-to-float v4, v2

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    .line 2133
    .local v0, "a":Landroid/animation/Animator;
    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 2134
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mFastOutLinearIn:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2135
    new-instance v4, Lcom/android/systemui/statusbar/BaseStatusBar$13;

    invoke-direct {v4, p0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$13;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Lcom/android/systemui/statusbar/NotificationGuts;)V

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2142
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method public filterOutForKnoxContainer(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 12
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 550
    if-nez p1, :cond_0

    .line 551
    const/4 v10, 0x1

    .line 664
    :goto_0
    return v10

    .line 553
    :cond_0
    iget-object v7, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 554
    .local v7, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v9

    .line 555
    .local v9, "userId":I
    iget-object v10, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 559
    .local v4, "packageName":Ljava/lang/String;
    invoke-static {v9}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v10

    if-nez v10, :cond_b

    .line 561
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iget v10, v10, Lcom/android/systemui/statusbar/NotificationData;->isKnoxKioskMode:I

    if-gez v10, :cond_2

    .line 562
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    if-nez v10, :cond_1

    .line 563
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v11, "persona"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/PersonaManager;

    iput-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    .line 565
    :cond_1
    iget-object v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    invoke-virtual {v10}, Landroid/os/PersonaManager;->isKioskContainerExistOnDevice()Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    :goto_1
    iput v10, v11, Lcom/android/systemui/statusbar/NotificationData;->isKnoxKioskMode:I

    .line 570
    :cond_2
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iget v10, v10, Lcom/android/systemui/statusbar/NotificationData;->isKnoxKioskMode:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_4

    if-nez v9, :cond_4

    const-string v10, "com.android.incallui"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "com.android.server.telecom"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "com.samsung.android.SettingsReceiver"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "com.android.mms"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "com.android.settings"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "com.android.phone"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 578
    const/4 v10, 0x1

    goto :goto_0

    .line 565
    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    .line 580
    :cond_4
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iget v10, v10, Lcom/android/systemui/statusbar/NotificationData;->isKnoxKioskMode:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_8

    .line 581
    const/4 v1, -0x1

    .line 582
    .local v1, "kioskContainerId":I
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    if-nez v10, :cond_5

    .line 583
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v11, "persona"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/PersonaManager;

    iput-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    .line 584
    :cond_5
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/os/PersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v5

    .line 585
    .local v5, "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v5, :cond_6

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_6

    .line 586
    const/4 v10, 0x0

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/PersonaInfo;

    iget v1, v10, Landroid/content/pm/PersonaInfo;->id:I

    .line 588
    :cond_6
    const/4 v10, -0x1

    if-eq v1, v10, :cond_8

    if-nez v9, :cond_8

    const-string v10, "com.android.mms"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->knoxContainerInSuperLockMode(I)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 592
    sget-boolean v10, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v10, :cond_7

    .line 593
    const-string v10, "KnoxNotification"

    const-string v11, "----- filterOutForKnoxContainer:  Skipping com.android.mms notif for COM + ADMIN_LOCKED case"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :cond_7
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 601
    .end local v1    # "kioskContainerId":I
    .end local v5    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isLockscreenPublicMode()Z

    move-result v10

    if-nez v10, :cond_9

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isLockscreenKnoxMode()Z

    move-result v10

    if-eqz v10, :cond_a

    :cond_9
    if-eqz v4, :cond_a

    const-string v10, "com.sec.knox.switcher"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    const/4 v10, 0x1

    goto/16 :goto_0

    :cond_a
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 611
    :cond_b
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isLockscreenKnoxMode()Z

    move-result v0

    .line 613
    .local v0, "isLockScreen":Z
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v10

    iget v10, v10, Landroid/app/Notification;->visibility:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_c

    if-eqz v0, :cond_c

    .line 614
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 620
    :cond_c
    invoke-virtual {p0, v9}, Lcom/android/systemui/statusbar/BaseStatusBar;->knoxContainerInSuperLockMode(I)Z

    move-result v10

    if-nez v10, :cond_d

    invoke-static {v9}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v10

    if-eqz v10, :cond_e

    if-eqz v4, :cond_e

    const-string v10, "com.android.settings"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 624
    :cond_d
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 627
    :cond_e
    const/4 v10, 0x0

    invoke-virtual {p0, p1, v10}, Lcom/android/systemui/statusbar/BaseStatusBar;->isKnoxNotificationSanitizeNeeded(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 628
    iget v10, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->sanitizing:I

    or-int/lit8 v10, v10, 0x8

    iput v10, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->sanitizing:I

    .line 629
    iget v10, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->sanitizing:I

    and-int/lit8 v10, v10, -0x4

    iput v10, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->sanitizing:I

    .line 631
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "|"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 632
    .local v3, "mapKey":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v10, v10, Lcom/android/systemui/statusbar/NotificationData;->mSanitizingToCollapse:Landroid/util/ArrayMap;

    invoke-virtual {v10, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 633
    .local v8, "tEnt":Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-nez v8, :cond_11

    .line 634
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v10, v10, Lcom/android/systemui/statusbar/NotificationData;->mSanitizingToCollapse:Landroid/util/ArrayMap;

    invoke-virtual {v10, v3, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    :cond_f
    iget-boolean v10, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->isSanitizedPendingIntent:Z

    if-nez v10, :cond_10

    .line 645
    invoke-virtual {p0, p1, v9}, Lcom/android/systemui/statusbar/BaseStatusBar;->sanitizePendingIntent(Lcom/android/systemui/statusbar/NotificationData$Entry;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 647
    .local v6, "pi":Landroid/app/PendingIntent;
    iget-object v10, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v10

    iput-object v6, v10, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 648
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {p0, v6, v10, v11}, Lcom/android/systemui/statusbar/BaseStatusBar;->makeClicker(Landroid/app/PendingIntent;Ljava/lang/String;Z)Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    move-result-object v2

    .line 650
    .local v2, "listener":Landroid/view/View$OnClickListener;
    iget-object v10, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v10, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 664
    .end local v2    # "listener":Landroid/view/View$OnClickListener;
    .end local v3    # "mapKey":Ljava/lang/String;
    .end local v6    # "pi":Landroid/app/PendingIntent;
    .end local v8    # "tEnt":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_10
    :goto_2
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 635
    .restart local v3    # "mapKey":Ljava/lang/String;
    .restart local v8    # "tEnt":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_11
    iget-object v10, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    iget-object v11, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_f

    .line 639
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 655
    .end local v3    # "mapKey":Ljava/lang/String;
    .end local v8    # "tEnt":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_12
    iget-boolean v10, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->isSanitizedPendingIntent:Z

    const/4 v11, 0x1

    if-ne v10, v11, :cond_13

    .line 656
    iget-object v10, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v10

    const/4 v11, 0x0

    iput-object v11, v10, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 657
    const/4 v10, 0x0

    iput-boolean v10, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->isSanitizedPendingIntent:Z

    .line 658
    iget-object v10, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 661
    :cond_13
    iget v10, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->sanitizing:I

    or-int/lit8 v10, v10, 0x3

    iput v10, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->sanitizing:I

    .line 662
    iget v10, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->sanitizing:I

    and-int/lit8 v10, v10, -0x9

    iput v10, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->sanitizing:I

    goto :goto_2
.end method

.method public getCurrentMediaNotificationKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1717
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentUserId()I
    .locals 1

    .prologue
    .line 876
    iget v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    return v0
.end method

.method protected getMaxCoverNotifications()I
    .locals 1

    .prologue
    .line 3474
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract getMaxKeyguardNotifications()I
.end method

.method protected getNotificationLongClicker()Lcom/android/systemui/SwipeHelper$LongPressListener;
    .locals 1

    .prologue
    .line 2046
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$12;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$12;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    return-object v0
.end method

.method protected getNotificationTickerText(Landroid/service/notification/StatusBarNotification;)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "n"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 3172
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v2, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 3174
    .local v2, "tickerText":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    .line 3175
    .local v0, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-eqz v0, :cond_2

    .line 3176
    iget v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->sanitizing:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    .line 3178
    .local v1, "sanitize":Z
    :goto_0
    if-eqz v1, :cond_0

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedKnox:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 3180
    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedKnox:Landroid/view/View;

    const v5, 0x1020016

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 3182
    .local v3, "title":Landroid/widget/TextView;
    if-eqz v3, :cond_0

    .line 3183
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 3184
    sget-boolean v4, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v4, :cond_0

    .line 3185
    const-string v4, "KnoxNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "----- getNotificationTickerText : tickerText(When Sanitize) = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -----"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3195
    .end local v1    # "sanitize":Z
    .end local v3    # "title":Landroid/widget/TextView;
    :cond_0
    :goto_1
    return-object v2

    .line 3176
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 3191
    :cond_2
    sget-boolean v4, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v4, :cond_0

    .line 3192
    const-string v4, "KnoxNotification"

    const-string v5, "----- NotificationData does not contain specified entry !!! -----"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected getNumberOfActiveSim()I
    .locals 5

    .prologue
    .line 1624
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v1

    .line 1625
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v1, :cond_0

    .line 1626
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 1627
    .local v0, "numOfSim":I
    const-string v2, "StatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNumberOfActiveSim: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    .end local v0    # "numOfSim":I
    :goto_0
    return v0

    .line 1630
    :cond_0
    const-string v2, "StatusBar"

    const-string v3, "getNumberOfActiveSim: 1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected getPackageManagerForUser(I)Landroid/content/pm/PackageManager;
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 4348
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    .line 4350
    .local v0, "contextForUser":Landroid/content/Context;
    if-ltz p1, :cond_0

    .line 4354
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 4362
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    return-object v1

    .line 4358
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getPolicyExternal(ILjava/lang/String;I)Z
    .locals 1
    .param p1, "userId"    # I
    .param p2, "policyProperty"    # Ljava/lang/String;
    .param p3, "policyArray"    # I

    .prologue
    .line 419
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/BaseStatusBar;->getPolicy(ILjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method protected getReadySimCount()I
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 1636
    const/4 v2, 0x0

    .line 1637
    .local v2, "count":I
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mIsCGGDuosCTC:Z

    if-nez v7, :cond_0

    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mIsDGGDuos:Z

    if-nez v7, :cond_0

    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mIsUseIPC:Z

    if-eqz v7, :cond_6

    .line 1638
    :cond_0
    new-array v3, v10, [I

    .line 1639
    .local v3, "phone_on":[I
    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "phone1_on"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    aput v7, v3, v6

    .line 1640
    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "phone2_on"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    aput v7, v3, v9

    .line 1641
    const-string v7, "gsm.sim.currentcardstatus"

    const-string v8, "9,9"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1642
    .local v1, "cardStatusTemp":Ljava/lang/String;
    const-string v7, ","

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1643
    .local v0, "cardStatusSlot":[Ljava/lang/String;
    array-length v7, v0

    if-eq v7, v10, :cond_1

    .line 1670
    .end local v0    # "cardStatusSlot":[Ljava/lang/String;
    .end local v1    # "cardStatusTemp":Ljava/lang/String;
    .end local v3    # "phone_on":[I
    :goto_0
    return v6

    .line 1645
    .restart local v0    # "cardStatusSlot":[Ljava/lang/String;
    .restart local v1    # "cardStatusTemp":Ljava/lang/String;
    .restart local v3    # "phone_on":[I
    :cond_1
    const/4 v5, 0x0

    .local v5, "sub":I
    :goto_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 1646
    sget-boolean v6, Lcom/android/systemui/statusbar/Feature;->mIsDCGSCTC:Z

    if-eqz v6, :cond_3

    .line 1647
    const-string v6, "3"

    aget-object v7, v0, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->hasSlotSwiching()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1648
    add-int/lit8 v2, v2, 0x1

    .line 1645
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1650
    :cond_3
    sget-boolean v6, Lcom/android/systemui/statusbar/Feature;->mIsUseIPC:Z

    if-eqz v6, :cond_4

    .line 1651
    aget v6, v3, v5

    if-ne v6, v9, :cond_2

    .line 1652
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1655
    :cond_4
    const-string v6, "3"

    aget-object v7, v0, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    aget v6, v3, v5

    if-ne v6, v9, :cond_2

    .line 1656
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    move v6, v2

    .line 1660
    goto :goto_0

    .line 1662
    .end local v0    # "cardStatusSlot":[Ljava/lang/String;
    .end local v1    # "cardStatusTemp":Ljava/lang/String;
    .end local v3    # "phone_on":[I
    .end local v5    # "sub":I
    :cond_6
    const-string v4, "NOT_READY"

    .line 1663
    .local v4, "simState":Ljava/lang/String;
    const/4 v5, 0x0

    .restart local v5    # "sub":I
    :goto_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v6

    if-ge v5, v6, :cond_8

    .line 1664
    const-string v6, "gsm.sim.state"

    const-string v7, "NOT_READY"

    invoke-direct {p0, v6, v5, v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1665
    const-string v6, "READY"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1666
    add-int/lit8 v2, v2, 0x1

    .line 1663
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_8
    move v6, v2

    .line 1670
    goto :goto_0
.end method

.method protected abstract getSearchLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
.end method

.method protected abstract getStatusBarView()Landroid/view/View;
.end method

.method public goToCover()V
    .locals 2

    .prologue
    .line 4406
    const-string v0, "StatusBar"

    const-string v1, "goToCover() called on BaseStatusBar"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4407
    return-void
.end method

.method public goToKeyguard()V
    .locals 2

    .prologue
    .line 4402
    const-string v0, "StatusBar"

    const-string v1, "goToKeyguard() called on BaseStatusBar"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4403
    return-void
.end method

.method protected abstract haltTicker()V
.end method

.method handleNotificationError(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V
    .locals 8
    .param p1, "n"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 3398
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 3400
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v4

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    move-result v5

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v7

    move-object v6, p2

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3405
    :goto_0
    return-void

    .line 3402
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public hideRecentApps(ZZ)V
    .locals 5
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2158
    const/16 v0, 0x3fc

    .line 2159
    .local v0, "msg":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 2160
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    if-eqz p1, :cond_0

    move v3, v1

    :goto_0
    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v4, v0, v3, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2162
    return-void

    :cond_0
    move v3, v2

    .line 2160
    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method protected hideRecents(ZZ)V
    .locals 1
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z

    .prologue
    .line 2274
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    if-eqz v0, :cond_0

    .line 2275
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/RecentsComponent;->hideRecents(ZZ)V

    .line 2277
    :cond_0
    return-void
.end method

.method protected inflateViewsForHeadsUp(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z
    .locals 1
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 2454
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;Z)Z

    move-result v0

    return v0
.end method

.method public isBouncerShowing()Z
    .locals 1

    .prologue
    .line 4313
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBouncerShowing:Z

    return v0
.end method

.method public isCoverViewShowing()Z
    .locals 2

    .prologue
    .line 4436
    const-string v0, "StatusBar"

    const-string v1, "isCoverViewShowing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4437
    const/4 v0, 0x0

    return v0
.end method

.method public isCoveredState()Z
    .locals 2

    .prologue
    .line 4565
    iget v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mState:I

    and-int/lit8 v0, v0, 0xa

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mState:I

    and-int/lit8 v0, v0, 0x5

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isCurrentProfile(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 1710
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1711
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1712
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isDeviceProvisioned()Z
    .locals 1

    .prologue
    .line 921
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDeviceProvisioned:Z

    return v0
.end method

.method public isHeadsUp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1615
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->isShowing(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInstantDismiss()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4513
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isKeyguardState()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4514
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isDCMModel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4515
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMascotClicked:Z

    if-eqz v2, :cond_1

    .line 4516
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iput-boolean v1, v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMascotClicked:Z

    .line 4539
    :cond_0
    :goto_0
    return v0

    .line 4520
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mActivated:Z

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mBlockLaunchingActivityonLockScreen:Z

    if-eqz v2, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwipeLockShowingBeforeTimeout:Z

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    .line 4525
    goto :goto_0

    .line 4527
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isShadeLockedState()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4528
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwipeLockShowingBeforeTimeout:Z

    if-nez v2, :cond_0

    move v0, v1

    .line 4532
    goto :goto_0

    .line 4536
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 4539
    goto :goto_0
.end method

.method public isKeyguardSecure()Z
    .locals 3

    .prologue
    .line 4375
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-nez v0, :cond_0

    .line 4379
    const-string v0, "StatusBar"

    const-string v1, "isKeyguardSecure() called before startKeyguard(), returning false"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4381
    const/4 v0, 0x0

    .line 4383
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isSecure()Z

    move-result v0

    goto :goto_0
.end method

.method public isKeyguardState()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 4549
    iget v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mState:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKnoxNotificationSanitizeNeeded(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)Z
    .locals 13
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "isHeadsUp"    # Z

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 720
    iget-object v9, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v8

    .line 722
    .local v8, "userId":I
    if-eqz p2, :cond_1

    invoke-static {v8}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v9

    if-nez v9, :cond_1

    .line 779
    :cond_0
    :goto_0
    return v11

    .line 725
    :cond_1
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    if-nez v9, :cond_2

    .line 726
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v12, "persona"

    invoke-virtual {v9, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/PersonaManager;

    iput-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    .line 729
    :cond_2
    const/4 v5, 0x0

    .line 730
    .local v5, "personaInfo":Landroid/content/pm/PersonaInfo;
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    if-eqz v9, :cond_3

    .line 731
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    invoke-virtual {v9, v8}, Landroid/os/PersonaManager;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v5

    .line 734
    :cond_3
    const-string v9, "knox-sanitize-data"

    const/4 v12, 0x4

    invoke-direct {p0, v8, v9, v12}, Lcom/android/systemui/statusbar/BaseStatusBar;->getPolicy(ILjava/lang/String;I)Z

    move-result v6

    .line 736
    .local v6, "policy":Z
    const-string v9, "knox-sanitize-data-lockscreen"

    const/16 v12, 0x10

    invoke-direct {p0, v8, v9, v12}, Lcom/android/systemui/statusbar/BaseStatusBar;->getPolicy(ILjava/lang/String;I)Z

    move-result v7

    .line 738
    .local v7, "policy_lockscreen":Z
    iget-object v9, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 740
    .local v4, "packageName":Ljava/lang/String;
    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/BaseStatusBar;->knoxContainerInLockMode(I)Z

    move-result v0

    .line 741
    .local v0, "isContainerLocked":Z
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->isForceSanitizationRequired(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v1

    .line 742
    .local v1, "isForceSanitize":Z
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxContainerVersion()Landroid/os/PersonaManager$KnoxContainerVersion;

    move-result-object v9

    sget-object v12, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_3_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-virtual {v9, v12}, Landroid/os/PersonaManager$KnoxContainerVersion;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    move v2, v10

    .line 744
    .local v2, "isKnox2_3_0":Z
    :goto_1
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxContainerVersion()Landroid/os/PersonaManager$KnoxContainerVersion;

    move-result-object v9

    sget-object v12, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_3_1:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-virtual {v9, v12}, Landroid/os/PersonaManager$KnoxContainerVersion;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    move v3, v10

    .line 747
    .local v3, "isKnox2_3_1":Z
    :goto_2
    if-nez v2, :cond_4

    if-eqz v3, :cond_c

    .line 749
    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isLockscreenKnoxMode()Z

    move-result v9

    if-nez v9, :cond_9

    :cond_5
    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersonaInKioskMode(I)Z

    move-result v9

    if-nez v9, :cond_8

    if-nez v6, :cond_6

    if-nez v1, :cond_9

    :cond_6
    if-eqz v6, :cond_7

    iget v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    if-ne v9, v8, :cond_9

    :cond_7
    if-eqz v6, :cond_8

    if-eqz v0, :cond_8

    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    invoke-virtual {v9}, Landroid/os/PersonaManager;->getForegroundUser()I

    move-result v9

    if-ne v9, v8, :cond_9

    :cond_8
    if-eqz v5, :cond_0

    const-string v9, "com.android.email"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    if-ne v9, v8, :cond_9

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isLockscreenKnoxMode()Z

    move-result v9

    if-eqz v9, :cond_0

    :cond_9
    move v11, v10

    .line 755
    goto/16 :goto_0

    .end local v2    # "isKnox2_3_0":Z
    .end local v3    # "isKnox2_3_1":Z
    :cond_a
    move v2, v11

    .line 742
    goto :goto_1

    .restart local v2    # "isKnox2_3_0":Z
    :cond_b
    move v3, v11

    .line 744
    goto :goto_2

    .line 758
    .restart local v3    # "isKnox2_3_1":Z
    :cond_c
    const-string v9, "com.samsung.knox.knoxtrustagent"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 763
    if-eqz v6, :cond_d

    if-eqz v0, :cond_d

    if-nez v1, :cond_d

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isLockscreenKnoxMode()Z

    move-result v9

    if-nez v9, :cond_13

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isLockscreenPublicMode()Z

    move-result v9

    if-nez v9, :cond_13

    :cond_d
    if-eqz v7, :cond_e

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isLockscreenKnoxMode()Z

    move-result v9

    if-nez v9, :cond_13

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isLockscreenPublicMode()Z

    move-result v9

    if-nez v9, :cond_13

    :cond_e
    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersonaInKioskMode(I)Z

    move-result v9

    if-nez v9, :cond_10

    if-eqz v0, :cond_f

    if-nez v1, :cond_13

    :cond_f
    if-eqz v6, :cond_10

    if-nez v0, :cond_13

    :cond_10
    if-eqz v5, :cond_0

    const-string v9, "com.samsung.android.email.provider"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    const-string v9, "com.samsung.android.email.sync"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    const-string v9, "com.samsung.android.email.ui"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    const-string v9, "com.samsung.android.email.composer"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    const-string v9, "com.android.email"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    :cond_11
    if-nez v0, :cond_13

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isLockscreenKnoxMode()Z

    move-result v9

    if-nez v9, :cond_12

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isLockscreenPublicMode()Z

    move-result v9

    if-eqz v9, :cond_0

    :cond_12
    if-nez v0, :cond_0

    :cond_13
    move v11, v10

    .line 776
    goto/16 :goto_0
.end method

.method public isLockscreenKnoxMode()Z
    .locals 1

    .prologue
    .line 410
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockscreenKnoxMode:Z

    return v0
.end method

.method public isLockscreenPublicMode()Z
    .locals 1

    .prologue
    .line 2332
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockscreenPublicMode:Z

    return v0
.end method

.method protected isMSim()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1620
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMediaNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 2
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 1872
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedBig:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedBig:Landroid/view/View;

    const v1, 0x1020437

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMobileKeyboardAttached()Z
    .locals 1

    .prologue
    .line 1733
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsMobileKeyboard:Z

    return v0
.end method

.method protected isNavigationBarHidden()Z
    .locals 1

    .prologue
    .line 4423
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/kioskmode/KioskMode;->isNavigationBarHidden()Z

    move-result v0

    return v0
.end method

.method public isNotificationForCurrentProfiles(Landroid/service/notification/StatusBarNotification;)Z
    .locals 3
    .param p1, "n"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 1688
    iget v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    .line 1689
    .local v1, "thisUserId":I
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    .line 1690
    .local v0, "notificationUserId":I
    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1694
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isCurrentProfile(I)Z

    move-result v2

    return v2
.end method

.method public isShadeLockedState()Z
    .locals 2

    .prologue
    .line 4557
    iget v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mState:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowNotifications()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 4575
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_screen_show_notifications"

    iget v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 4577
    .local v0, "value":I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method protected isSkipShowingNotificationForHeadsUp(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 6
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 669
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    if-nez v2, :cond_0

    .line 670
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v5, "persona"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersonaManager;

    iput-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    .line 673
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    invoke-virtual {v2}, Landroid/os/PersonaManager;->isKioskContainerExistOnDevice()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 674
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    invoke-virtual {v2, v3}, Landroid/os/PersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v1

    .line 675
    .local v1, "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 676
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PersonaInfo;

    iget v2, v2, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->knoxContainerInSuperLockMode(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 677
    iget-object v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 678
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v2, "com.android.mms"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    .line 685
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :goto_0
    return v2

    :cond_1
    move v2, v4

    goto :goto_0
.end method

.method protected isStatusBarHidden()Z
    .locals 1

    .prologue
    .line 4419
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/kioskmode/KioskMode;->isStatusBarHidden()Z

    move-result v0

    return v0
.end method

.method protected isSystemBarHidden()Z
    .locals 1

    .prologue
    .line 4415
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/kioskmode/KioskMode;->isSystemBarHidden()Z

    move-result v0

    return v0
.end method

.method protected knoxContainerInSuperLockMode(I)Z
    .locals 5
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 689
    invoke-static {p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 690
    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v2, :cond_0

    .line 691
    const-string v2, "KnoxNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get knoxInSuperLockMode for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is false"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    :cond_0
    :goto_0
    return v1

    .line 694
    :cond_1
    sget-object v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxInSuperLockMode:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    .line 695
    .local v0, "index":I
    if-gez v0, :cond_2

    .line 696
    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v2, :cond_0

    .line 697
    const-string v2, "KnoxNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get knoxInSuperLockMode for container "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is false"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 700
    :cond_2
    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v1, :cond_3

    .line 701
    const-string v1, "KnoxNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get knoxInSuperLockMode for container "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxInSuperLockMode:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    :cond_3
    sget-object v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxInSuperLockMode:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    goto :goto_0
.end method

.method public logNotificationExpansion(Ljava/lang/String;ZZ)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userAction"    # Z
    .param p3, "expanded"    # Z

    .prologue
    .line 4368
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationExpansionChanged(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4372
    :goto_0
    return-void

    .line 4369
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public makeClicker(Landroid/app/PendingIntent;Ljava/lang/String;Z)Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "notificationKey"    # Ljava/lang/String;
    .param p3, "forHun"    # Z

    .prologue
    .line 3204
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/app/PendingIntent;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public needsShowClockandNotifications()Z
    .locals 1

    .prologue
    .line 4732
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-nez v0, :cond_0

    .line 4733
    const/4 v0, 0x0

    .line 4736
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->needsShowClockandNotifications()Z

    move-result v0

    goto :goto_0
.end method

.method protected notifyHeadsUpScreenOn(Z)V
    .locals 0
    .param p1, "screenOn"    # Z

    .prologue
    .line 4252
    if-nez p1, :cond_0

    .line 4253
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->scheduleHeadsUpEscalation()V

    .line 4255
    :cond_0
    return-void
.end method

.method protected notifyUserAboutHiddenNotifications()V
    .locals 14

    .prologue
    const/high16 v13, 0x10000000

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1536
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "show_note_about_notification_hiding"

    invoke-static {v8, v9, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_0

    .line 1538
    const-string v8, "StatusBar"

    const-string v9, "user hasn\'t seen notification about hidden notifications"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v2, v8}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1541
    .local v2, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1542
    const-string v8, "StatusBar"

    const-string v9, "insecure lockscreen, skipping notification"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "show_note_about_notification_hiding"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1584
    .end local v2    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_0
    :goto_0
    return-void

    .line 1548
    .restart local v2    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_1
    const-string v8, "StatusBar"

    const-string v9, "disabling lockecreen notifications and alerting the user"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_show_notifications"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1552
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_allow_private_notifications"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1555
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1556
    .local v5, "packageName":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.android.systemui.statusbar.banner_action_cancel"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    invoke-static {v8, v11, v9, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1559
    .local v0, "cancelIntent":Landroid/app/PendingIntent;
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.android.systemui.statusbar.banner_action_setup"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    invoke-static {v8, v11, v9, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 1563
    .local v7, "setupIntent":Landroid/app/PendingIntent;
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 1564
    .local v6, "res":Landroid/content/res/Resources;
    const v1, 0x1060059

    .line 1565
    .local v1, "colorRes":I
    new-instance v8, Landroid/app/Notification$Builder;

    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f0200d4

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const v10, 0x7f0b0412

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const v10, 0x7f0b0413

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v8

    const v9, 0x1060059

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v8

    const v9, 0x7f0200e0

    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const v11, 0x7f0b0414

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v8

    const v9, 0x7f020182

    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const v11, 0x7f0b0415

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10, v7}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1580
    .local v4, "note":Landroid/app/Notification$Builder;
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v9, "notification"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 1582
    .local v3, "noMan":Landroid/app/NotificationManager;
    const/16 v8, 0x2710

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0
.end method

.method public onCameraLaunchGestureDetected(I)V
    .locals 0
    .param p1, "source"    # I

    .prologue
    .line 4762
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1738
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v2, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1739
    .local v2, "locale":Ljava/util/Locale;
    invoke-static {v2}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    .line 1740
    .local v1, "ld":I
    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 1742
    .local v0, "fontScale":F
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLocale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget v3, Lcom/android/systemui/statusbar/BaseStatusBar;->mLayoutDirection:I

    if-ne v1, v3, :cond_0

    iget v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mFontScale:F

    cmpl-float v3, v0, v3

    if-eqz v3, :cond_2

    .line 1743
    :cond_0
    sget-boolean v3, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 1744
    const-string v3, "StatusBar"

    const-string v4, "config changed locale/LD: %s (%d) -> %s (%d)"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLocale:Ljava/util/Locale;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget v7, Lcom/android/systemui/statusbar/BaseStatusBar;->mLayoutDirection:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object v2, v5, v6

    const/4 v6, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    :cond_1
    iput-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLocale:Ljava/util/Locale;

    .line 1749
    sput v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mLayoutDirection:I

    .line 1750
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->refreshLayout(I)V

    .line 1758
    :cond_2
    return-void
.end method

.method public onCoverAppCovered(Z)I
    .locals 2
    .param p1, "covered"    # Z

    .prologue
    .line 4442
    const-string v0, "StatusBar"

    const-string v1, "onCoverAppCovered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4443
    const/4 v0, 0x0

    return v0
.end method

.method public onHeadsUpDismissed()V
    .locals 0

    .prologue
    .line 2147
    return-void
.end method

.method public onNotificationClear(Landroid/service/notification/StatusBarNotification;)V
    .locals 5
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 2380
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClear(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2388
    :goto_0
    return-void

    .line 2385
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onVisibilityChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 2314
    return-void
.end method

.method public overrideActivityPendingAppTransition(Z)V
    .locals 6
    .param p1, "keyguardShowing"    # Z

    .prologue
    .line 3354
    if-eqz p1, :cond_0

    .line 3356
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManagerService:Landroid/view/IWindowManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/view/IWindowManager;->overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3361
    :cond_0
    :goto_0
    return-void

    .line 3357
    :catch_0
    move-exception v0

    .line 3358
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "StatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error overriding app transition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public packageHasVisibilityOverride(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 3745
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationData;->getVisibilityOverride(Ljava/lang/String;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postResetQsEditPanel()V
    .locals 0

    .prologue
    .line 4757
    return-void
.end method

.method public preloadRecentApps()V
    .locals 2

    .prologue
    .line 2173
    const/16 v0, 0x3fe

    .line 2174
    .local v0, "msg":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 2175
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 2176
    return-void
.end method

.method protected preloadRecents()V
    .locals 1

    .prologue
    .line 2288
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    if-eqz v0, :cond_0

    .line 2289
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    invoke-interface {v0}, Lcom/android/systemui/RecentsComponent;->preloadRecents()V

    .line 2291
    :cond_0
    return-void
.end method

.method protected abstract refreshLayout(I)V
.end method

.method public abstract removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V
.end method

.method protected removeNotificationViews(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)Landroid/service/notification/StatusBarNotification;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 3408
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1, p1, p2}, Lcom/android/systemui/statusbar/NotificationData;->remove(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    .line 3409
    .local v0, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-nez v0, :cond_0

    .line 3410
    const-string v1, "StatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeNotification for unknown key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3411
    const/4 v1, 0x0

    .line 3414
    :goto_0
    return-object v1

    .line 3413
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotifications()V

    .line 3414
    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    goto :goto_0
.end method

.method public abstract resetHeadsUpDecayTimer()V
.end method

.method public sanitizePendingIntent(Lcom/android/systemui/statusbar/NotificationData$Entry;I)Landroid/app/PendingIntent;
    .locals 16
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "userId"    # I

    .prologue
    .line 829
    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v1, :cond_0

    .line 830
    const-string v1, "KnoxNotification"

    const-string v2, "----- Inside sanitizePendingIntent -----"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    :cond_0
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v13, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 832
    .local v13, "pi":Landroid/app/PendingIntent;
    move-object v15, v13

    .line 833
    .local v15, "sanitized":Landroid/app/PendingIntent;
    const/4 v12, 0x0

    .line 834
    .local v12, "isSanitizeRequired":Z
    if-nez v13, :cond_5

    .line 835
    const/4 v12, 0x1

    .line 845
    :cond_1
    :goto_0
    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v1, :cond_2

    .line 846
    const-string v1, "KnoxNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "----- sanitizePendingIntent : isSanitizeRequired - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    :cond_2
    if-eqz v12, :cond_3

    .line 848
    if-eqz v13, :cond_8

    invoke-virtual {v13}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v10

    .line 850
    .local v10, "creatorPkg":Ljava/lang/String;
    :goto_1
    new-instance v3, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 851
    .local v3, "in":Landroid/content/Intent;
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 852
    invoke-virtual {v3, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 853
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    move/from16 v0, p2

    invoke-virtual {v1, v3, v2, v0}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v14

    .line 856
    .local v14, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v14, :cond_9

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_9

    .line 857
    const/4 v1, 0x0

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v10, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 858
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v4, 0x8000000

    const/4 v5, 0x0

    new-instance v6, Landroid/os/UserHandle;

    move/from16 v0, p2

    invoke-direct {v6, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static/range {v1 .. v6}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v15

    .line 868
    :goto_2
    const/4 v1, 0x1

    move-object/from16 v0, p1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->isSanitizedPendingIntent:Z

    .line 870
    .end local v3    # "in":Landroid/content/Intent;
    .end local v10    # "creatorPkg":Ljava/lang/String;
    .end local v14    # "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_3
    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v1, :cond_4

    .line 871
    const-string v1, "KnoxNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "----- sanitizePendingIntent : sanitized - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    :cond_4
    return-object v15

    .line 837
    :cond_5
    invoke-virtual {v13}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v11

    .line 838
    .local v11, "innerIntent":Landroid/content/Intent;
    if-eqz v11, :cond_6

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v11, v1}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 839
    :cond_6
    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v1, :cond_7

    .line 840
    const-string v1, "KnoxNotification"

    const-string v2, "----- sanitizePendingIntent : innerIntent null or filterEquals -----"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    :cond_7
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 848
    .end local v11    # "innerIntent":Landroid/content/Intent;
    :cond_8
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 861
    .restart local v3    # "in":Landroid/content/Intent;
    .restart local v10    # "creatorPkg":Ljava/lang/String;
    .restart local v14    # "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_9
    new-instance v6, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v6, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 862
    .local v6, "home":Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v6, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 863
    const/high16 v1, 0x10000000

    invoke-virtual {v6, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 865
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v7, 0x8000000

    const/4 v8, 0x0

    new-instance v9, Landroid/os/UserHandle;

    move/from16 v0, p2

    invoke-direct {v9, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static/range {v4 .. v9}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v15

    goto :goto_2
.end method

.method public abstract scheduleHeadsUpClose()V
.end method

.method public abstract scheduleHeadsUpEscalation()V
.end method

.method public abstract scheduleHeadsUpOpen()V
.end method

.method public sendDiagnosticLogs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/String;

    .prologue
    .line 3200
    return-void
.end method

.method protected abstract setAreThereNotifications()V
.end method

.method public setBouncerShowing(Z)V
    .locals 0
    .param p1, "bouncerShowing"    # Z

    .prologue
    .line 4306
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBouncerShowing:Z

    .line 4307
    return-void
.end method

.method public setInteracting(IZ)V
    .locals 0
    .param p1, "barWindow"    # I
    .param p2, "interacting"    # Z

    .prologue
    .line 4303
    return-void
.end method

.method public setLockscreenKnoxMode(Z)V
    .locals 0
    .param p1, "knoxMode"    # Z

    .prologue
    .line 404
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockscreenKnoxMode:Z

    .line 407
    return-void
.end method

.method public setLockscreenPublicMode(Z)V
    .locals 0
    .param p1, "publicMode"    # Z

    .prologue
    .line 2328
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockscreenPublicMode:Z

    .line 2329
    return-void
.end method

.method protected setNotificationShown(Landroid/service/notification/StatusBarNotification;)V
    .locals 3
    .param p1, "n"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 1698
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->setNotificationsShown([Ljava/lang/String;)V

    .line 1699
    return-void
.end method

.method protected setNotificationsShown([Ljava/lang/String;)V
    .locals 3
    .param p1, "keys"    # [Ljava/lang/String;

    .prologue
    .line 1703
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v1, p1}, Landroid/service/notification/NotificationListenerService;->setNotificationsShown([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1707
    :goto_0
    return-void

    .line 1704
    :catch_0
    move-exception v0

    .line 1705
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "StatusBar"

    const-string v2, "failed setNotificationsShown: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected abstract setOtherBar(Lcom/android/systemui/statusbar/BaseStatusBar;)V
.end method

.method protected setShowLockscreenNotifications(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 3771
    const-string v1, "StatusBar"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SLN:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_0

    const-string v0, "S"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3773
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mShowLockscreenNotifications:Z

    .line 3774
    return-void

    .line 3771
    :cond_0
    const-string v0, "H"

    goto :goto_0
.end method

.method protected setZenMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 3763
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3766
    :goto_0
    return-void

    .line 3764
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mZenMode:I

    .line 3765
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotifications()V

    goto :goto_0
.end method

.method protected abstract shouldDisableNavbarGestures()Z
.end method

.method public shouldHideSensitiveContents(I)Z
    .locals 1
    .param p1, "userid"    # I

    .prologue
    .line 2375
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isLockscreenPublicMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->userAllowsPrivateNotificationsInPublic(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected shouldInterrupt(Landroid/service/notification/StatusBarNotification;)Z
    .locals 13
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 4263
    iget-object v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v11, p1}, Lcom/android/systemui/statusbar/NotificationData;->shouldFilterOut(Landroid/service/notification/StatusBarNotification;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 4264
    sget-boolean v10, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v10, :cond_0

    .line 4265
    const-string v10, "StatusBar"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Skipping HUN check for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " since it\'s filtered out."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4298
    :cond_0
    :goto_0
    return v9

    .line 4270
    :cond_1
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    .line 4272
    .local v8, "notification":Landroid/app/Notification;
    iget v11, v8, Landroid/app/Notification;->defaults:I

    and-int/lit8 v11, v11, 0x1

    if-nez v11, :cond_2

    iget v11, v8, Landroid/app/Notification;->defaults:I

    and-int/lit8 v11, v11, 0x2

    if-nez v11, :cond_2

    iget-object v11, v8, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-nez v11, :cond_2

    iget-object v11, v8, Landroid/app/Notification;->vibrate:[J

    if-eqz v11, :cond_6

    :cond_2
    move v7, v10

    .line 4276
    .local v7, "isNoisy":Z
    :goto_1
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getScore()I

    move-result v11

    const/16 v12, 0xa

    if-lt v11, v12, :cond_7

    move v6, v10

    .line 4277
    .local v6, "isHighPriority":Z
    :goto_2
    iget-object v11, v8, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v11, :cond_8

    move v5, v10

    .line 4278
    .local v5, "isFullscreen":Z
    :goto_3
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpTicker:Z

    if-eqz v11, :cond_9

    iget-object v11, v8, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_9

    move v2, v10

    .line 4279
    .local v2, "hasTicker":Z
    :goto_4
    iget-object v11, v8, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v12, "headsup"

    invoke-virtual {v11, v12, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_a

    move v4, v10

    .line 4281
    .local v4, "isAllowed":Z
    :goto_5
    if-eqz v5, :cond_b

    iget-object v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v11}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v11

    if-eqz v11, :cond_b

    move v0, v10

    .line 4284
    .local v0, "accessibilityForcesLaunch":Z
    :goto_6
    if-nez v5, :cond_3

    if-eqz v6, :cond_c

    if-nez v7, :cond_3

    if-eqz v2, :cond_c

    :cond_3
    if-eqz v4, :cond_c

    if-nez v0, :cond_c

    iget-object v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v11}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v11

    if-eqz v11, :cond_c

    iget-object v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v11

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v11

    if-eqz v11, :cond_c

    :cond_4
    iget-object v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isInputRestricted()Z

    move-result v11

    if-nez v11, :cond_c

    move v3, v10

    .line 4293
    .local v3, "interrupt":Z
    :goto_7
    if-eqz v3, :cond_d

    :try_start_0
    iget-object v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v11}, Landroid/service/dreams/IDreamManager;->isDreaming()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    if-nez v11, :cond_d

    move v3, v10

    .line 4297
    :goto_8
    sget-boolean v9, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v9, :cond_5

    const-string v9, "StatusBar"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "interrupt: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v9, v3

    .line 4298
    goto/16 :goto_0

    .end local v0    # "accessibilityForcesLaunch":Z
    .end local v2    # "hasTicker":Z
    .end local v3    # "interrupt":Z
    .end local v4    # "isAllowed":Z
    .end local v5    # "isFullscreen":Z
    .end local v6    # "isHighPriority":Z
    .end local v7    # "isNoisy":Z
    :cond_6
    move v7, v9

    .line 4272
    goto/16 :goto_1

    .restart local v7    # "isNoisy":Z
    :cond_7
    move v6, v9

    .line 4276
    goto/16 :goto_2

    .restart local v6    # "isHighPriority":Z
    :cond_8
    move v5, v9

    .line 4277
    goto/16 :goto_3

    .restart local v5    # "isFullscreen":Z
    :cond_9
    move v2, v9

    .line 4278
    goto :goto_4

    .restart local v2    # "hasTicker":Z
    :cond_a
    move v4, v9

    .line 4279
    goto :goto_5

    .restart local v4    # "isAllowed":Z
    :cond_b
    move v0, v9

    .line 4281
    goto :goto_6

    .restart local v0    # "accessibilityForcesLaunch":Z
    :cond_c
    move v3, v9

    .line 4284
    goto :goto_7

    .restart local v3    # "interrupt":Z
    :cond_d
    move v3, v9

    .line 4293
    goto :goto_8

    .line 4294
    :catch_0
    move-exception v1

    .line 4295
    .local v1, "e":Landroid/os/RemoteException;
    const-string v9, "StatusBar"

    const-string v10, "failed to query dream manager"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8
.end method

.method public showAssistDisclosure()V
    .locals 1

    .prologue
    .line 4388
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    if-eqz v0, :cond_0

    .line 4389
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v0}, Lcom/android/systemui/assist/AssistManager;->showDisclosure()V

    .line 4391
    :cond_0
    return-void
.end method

.method public showNextAffiliatedTask()V
    .locals 2

    .prologue
    .line 2187
    const/16 v0, 0x400

    .line 2188
    .local v0, "msg":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 2189
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 2190
    return-void
.end method

.method public showPreviousAffiliatedTask()V
    .locals 2

    .prologue
    .line 2194
    const/16 v0, 0x401

    .line 2195
    .local v0, "msg":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 2196
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 2197
    return-void
.end method

.method public showRecentApps(Z)V
    .locals 4
    .param p1, "triggeredFromAltTab"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2151
    const/16 v0, 0x3fb

    .line 2152
    .local v0, "msg":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 2153
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2154
    return-void

    :cond_0
    move v1, v2

    .line 2153
    goto :goto_0
.end method

.method protected showRecents(Z)V
    .locals 2
    .param p1, "triggeredFromAltTab"    # Z

    .prologue
    .line 2267
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    if-eqz v0, :cond_0

    .line 2268
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v1, "recentapps"

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 2269
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->getStatusBarView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/systemui/RecentsComponent;->showRecents(ZLandroid/view/View;)V

    .line 2271
    :cond_0
    return-void
.end method

.method protected showRecentsNextAffiliatedTask()V
    .locals 1

    .prologue
    .line 2300
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    if-eqz v0, :cond_0

    .line 2301
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    invoke-interface {v0}, Lcom/android/systemui/RecentsComponent;->showNextAffiliatedTask()V

    .line 2303
    :cond_0
    return-void
.end method

.method protected showRecentsPreviousAffiliatedTask()V
    .locals 1

    .prologue
    .line 2306
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    if-eqz v0, :cond_0

    .line 2307
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    invoke-interface {v0}, Lcom/android/systemui/RecentsComponent;->showPrevAffiliatedTask()V

    .line 2309
    :cond_0
    return-void
.end method

.method protected snapContentViews(Landroid/view/View;Z)V
    .locals 0
    .param p1, "exceptView"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .prologue
    .line 4591
    return-void
.end method

.method public start()V
    .locals 27

    .prologue
    .line 1313
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isStatusBarHidden()Z

    move-result v22

    sput-boolean v22, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsStatusBarHidden:Z

    .line 1314
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isNavigationBarHidden()Z

    move-result v22

    sput-boolean v22, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsNavigationBarHidden:Z

    .line 1317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    .line 1318
    .local v19, "pm":Landroid/content/pm/PackageManager;
    if-eqz v19, :cond_3

    .line 1319
    const-string v22, "com.sec.feature.findo"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_2

    const/16 v22, 0x1

    :goto_0
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mShowSFinderQConnectView:Z

    .line 1322
    :try_start_0
    const-string v22, "com.android.settings"

    const/16 v23, 0x80

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v15

    .line 1324
    .local v15, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v0, v15, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v16, v0

    .line 1325
    .local v16, "meta_data":Landroid/os/Bundle;
    const-string v22, "StatusBar"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Metadata value : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "settings_apk_name"

    const-string v25, "none"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    const-string v22, "settings_apk_name"

    const-string v23, "none"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v23, "SecSettings2"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 1327
    const/16 v22, 0x1

    sput-boolean v22, Lcom/android/systemui/statusbar/Feature;->mZeroSettingConcept:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1336
    .end local v15    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v16    # "meta_data":Landroid/os/Bundle;
    :cond_0
    :goto_1
    new-instance v22, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string v23, "window"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/view/WindowManager;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    .line 1339
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManagerService:Landroid/view/IWindowManager;

    .line 1340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mDisplay:Landroid/view/Display;

    .line 1341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string v23, "device_policy"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 1344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/internal/util/NotificationColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    .line 1346
    new-instance v22, Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/NotificationData;-><init>(Lcom/android/systemui/statusbar/NotificationData$Environment;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    .line 1348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string v23, "accessibility"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 1351
    const-string v22, "dreams"

    invoke-static/range {v22 .. v22}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mDreamManager:Landroid/service/dreams/IDreamManager;

    .line 1353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string v23, "power"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/os/PowerManager;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mPowerManager:Landroid/os/PowerManager;

    .line 1355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 1356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "device_provisioned"

    invoke-static/range {v23 .. v23}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    const/16 v24, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    move-object/from16 v25, v0

    invoke-virtual/range {v22 .. v25}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "zen_mode"

    invoke-static/range {v23 .. v23}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    move-object/from16 v25, v0

    invoke-virtual/range {v22 .. v25}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "zen_mode_config_etag"

    invoke-static/range {v23 .. v23}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    move-object/from16 v25, v0

    const/16 v26, -0x1

    invoke-virtual/range {v22 .. v26}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "lock_screen_show_notifications"

    invoke-static/range {v23 .. v23}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    move-object/from16 v25, v0

    const/16 v26, -0x1

    invoke-virtual/range {v22 .. v26}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "kids_home_mode"

    invoke-static/range {v23 .. v23}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    move-object/from16 v25, v0

    const/16 v26, -0x1

    invoke-virtual/range {v22 .. v26}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "lock_screen_allow_private_notifications"

    invoke-static/range {v23 .. v23}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    const/16 v24, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockscreenSettingsObserver:Landroid/database/ContentObserver;

    move-object/from16 v25, v0

    const/16 v26, -0x1

    invoke-virtual/range {v22 .. v26}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1387
    const-string v22, "statusbar"

    invoke-static/range {v22 .. v22}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 1390
    const-class v22, Lcom/android/systemui/recents/Recents;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/systemui/RecentsComponent;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    .line 1391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/android/systemui/RecentsComponent;->setCallback(Lcom/android/systemui/RecentsComponent$Callbacks;)V

    .line 1393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    .line 1394
    .local v9, "currentConfig":Landroid/content/res/Configuration;
    iget-object v0, v9, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mLocale:Ljava/util/Locale;

    .line 1395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLocale:Ljava/util/Locale;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v22

    sput v22, Lcom/android/systemui/statusbar/BaseStatusBar;->mLayoutDirection:I

    .line 1396
    iget v0, v9, Landroid/content/res/Configuration;->fontScale:F

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mFontScale:F

    .line 1405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string v23, "user"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/os/UserManager;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mUserManager:Landroid/os/UserManager;

    .line 1407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x10c000e

    invoke-static/range {v22 .. v23}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mLinearOutSlowIn:Landroid/animation/TimeInterpolator;

    .line 1409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x10c000f

    invoke-static/range {v22 .. v23}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mFastOutLinearIn:Landroid/animation/TimeInterpolator;

    .line 1413
    new-instance v14, Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-direct {v14}, Lcom/android/internal/statusbar/StatusBarIconList;-><init>()V

    .line 1414
    .local v14, "iconList":Lcom/android/internal/statusbar/StatusBarIconList;
    new-instance v22, Lcom/android/systemui/statusbar/CommandQueue;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14}, Lcom/android/systemui/statusbar/CommandQueue;-><init>(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;Lcom/android/internal/statusbar/StatusBarIconList;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1416
    const/16 v22, 0x8

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v20, v0

    .line 1417
    .local v20, "switches":[I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1424
    .local v7, "binders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v14, v2, v7}, Lcom/android/internal/statusbar/IStatusBarService;->registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;Lcom/android/internal/statusbar/StatusBarIconList;[ILjava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1429
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->createAndAddWindows()V

    .line 1431
    const/16 v22, 0x0

    aget v22, v20, v22

    const/16 v23, 0x6

    aget v23, v20, v23

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->disable(IIZ)V

    .line 1432
    const/16 v22, 0x1

    aget v22, v20, v22

    const/16 v23, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->setSystemUiVisibility(II)V

    .line 1433
    const/16 v22, 0x2

    aget v22, v20, v22

    if-eqz v22, :cond_4

    const/16 v22, 0x1

    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->topAppWindowChanged(Z)V

    .line 1435
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/os/IBinder;

    const/16 v23, 0x3

    aget v24, v20, v23

    const/16 v23, 0x4

    aget v25, v20, v23

    const/16 v23, 0x5

    aget v23, v20, v23

    if-eqz v23, :cond_5

    const/16 v23, 0x1

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->setImeWindowStatus(Landroid/os/IBinder;IIZ)V

    .line 1438
    invoke-virtual {v14}, Lcom/android/internal/statusbar/StatusBarIconList;->size()I

    move-result v5

    .line 1439
    .local v5, "N":I
    const/16 v21, 0x0

    .line 1440
    .local v21, "viewIndex":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_5
    if-ge v12, v5, :cond_6

    .line 1441
    invoke-virtual {v14, v12}, Lcom/android/internal/statusbar/StatusBarIconList;->getIcon(I)Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v13

    .line 1442
    .local v13, "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    if-eqz v13, :cond_1

    .line 1443
    invoke-virtual {v14, v12}, Lcom/android/internal/statusbar/StatusBarIconList;->getSlot(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v21

    invoke-virtual {v0, v1, v12, v2, v13}, Lcom/android/systemui/statusbar/BaseStatusBar;->addIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;)V

    .line 1444
    add-int/lit8 v21, v21, 0x1

    .line 1440
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 1319
    .end local v5    # "N":I
    .end local v7    # "binders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    .end local v9    # "currentConfig":Landroid/content/res/Configuration;
    .end local v12    # "i":I
    .end local v13    # "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    .end local v14    # "iconList":Lcom/android/internal/statusbar/StatusBarIconList;
    .end local v20    # "switches":[I
    .end local v21    # "viewIndex":I
    :cond_2
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 1329
    :catch_0
    move-exception v10

    .line 1330
    .local v10, "e":Ljava/lang/Exception;
    const-string v22, "StatusBar"

    const-string v23, "Cannot get Metadata value"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1333
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_3
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mShowSFinderQConnectView:Z

    goto/16 :goto_1

    .line 1433
    .restart local v7    # "binders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    .restart local v9    # "currentConfig":Landroid/content/res/Configuration;
    .restart local v14    # "iconList":Lcom/android/internal/statusbar/StatusBarIconList;
    .restart local v20    # "switches":[I
    :cond_4
    const/16 v22, 0x0

    goto :goto_3

    .line 1435
    :cond_5
    const/16 v23, 0x0

    goto :goto_4

    .line 1450
    .restart local v5    # "N":I
    .restart local v12    # "i":I
    .restart local v21    # "viewIndex":I
    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    new-instance v24, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v24 .. v26}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v25, -0x1

    invoke-virtual/range {v22 .. v25}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1457
    :goto_6
    sget-boolean v22, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v22, :cond_7

    .line 1458
    const-string v22, "StatusBar"

    const-string v23, "init: icons=%d disabled=0x%08x lights=0x%08x menu=0x%08x imeButton=0x%08x"

    const/16 v24, 0x5

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual {v14}, Lcom/android/internal/statusbar/StatusBarIconList;->size()I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    const/16 v26, 0x0

    aget v26, v20, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x2

    const/16 v26, 0x1

    aget v26, v20, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x3

    const/16 v26, 0x2

    aget v26, v20, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x4

    const/16 v26, 0x3

    aget v26, v20, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    :cond_7
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    .line 1470
    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    .line 1471
    .local v11, "filter":Landroid/content/IntentFilter;
    const-string v22, "android.intent.action.USER_SWITCHED"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1472
    const-string v22, "android.intent.action.USER_ADDED"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1473
    const-string v22, "android.intent.action.USER_REMOVED"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1474
    const-string v22, "android.intent.action.USER_PRESENT"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1475
    const-string v22, "com.android.systemui.statusbar.banner_action_cancel"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1476
    const-string v22, "com.android.systemui.statusbar.banner_action_setup"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1477
    const-string v22, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1481
    new-instance v18, Landroid/content/IntentFilter;

    invoke-direct/range {v18 .. v18}, Landroid/content/IntentFilter;-><init>()V

    .line 1482
    .local v18, "personaLaunchFilter":Landroid/content/IntentFilter;
    const-string v22, "com.sec.knox.container.action.launchinfo"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPersonaLaunchReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v23, v0

    const-string v24, "com.samsung.container.LAUNCH_INFO"

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v18

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1486
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 1487
    .local v6, "RcpFilter":Landroid/content/IntentFilter;
    const-string v22, "samsung.knox.intent.action.RCP_POLICY_CHANGED"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRcpPolicyReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1491
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    move-object/from16 v22, v0

    if-nez v22, :cond_8

    .line 1492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string v23, "persona"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/os/PersonaManager;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    .line 1494
    :cond_8
    const/16 v17, 0x0

    .line 1495
    .local v17, "personaIds":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    move-object/from16 v22, v0

    if-eqz v22, :cond_9

    .line 1496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/PersonaManager;->getPersonaIds()[I

    move-result-object v17

    .line 1498
    :cond_9
    if-eqz v17, :cond_e

    .line 1499
    const/4 v12, 0x0

    :goto_7
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v12, v0, :cond_e

    .line 1500
    aget v22, v17, v12

    invoke-static/range {v22 .. v22}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 1502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    move-object/from16 v22, v0

    aget v23, v17, v12

    invoke-virtual/range {v22 .. v23}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/os/PersonaManager$StateManager;->getState()Landroid/content/pm/PersonaState;

    move-result-object v8

    .line 1504
    .local v8, "currState":Landroid/content/pm/PersonaState;
    sget-object v22, Landroid/content/pm/PersonaState;->LICENSE_LOCKED:Landroid/content/pm/PersonaState;

    move-object/from16 v0, v22

    if-eq v8, v0, :cond_a

    sget-object v22, Landroid/content/pm/PersonaState;->ADMIN_LOCKED:Landroid/content/pm/PersonaState;

    move-object/from16 v0, v22

    if-eq v8, v0, :cond_a

    sget-object v22, Landroid/content/pm/PersonaState;->ADMIN_LICENSE_LOCKED:Landroid/content/pm/PersonaState;

    move-object/from16 v0, v22

    if-ne v8, v0, :cond_b

    .line 1507
    :cond_a
    sget-object v22, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxInSuperLockMode:Landroid/util/SparseBooleanArray;

    aget v23, v17, v12

    const/16 v24, 0x1

    invoke-virtual/range {v22 .. v24}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1510
    :cond_b
    sget-object v22, Landroid/content/pm/PersonaState;->LOCKED:Landroid/content/pm/PersonaState;

    move-object/from16 v0, v22

    if-ne v8, v0, :cond_c

    .line 1511
    sget-object v22, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxInLockMode:Landroid/util/SparseBooleanArray;

    aget v23, v17, v12

    const/16 v24, 0x1

    invoke-virtual/range {v22 .. v24}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1514
    :cond_c
    aget v22, v17, v12

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->registerPersonaObserver(I)V

    .line 1515
    sget-boolean v22, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v22, :cond_d

    .line 1516
    const-string v22, "KnoxNotification"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "add container observer="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " for userId="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    aget v24, v17, v12

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " No. of users="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1499
    .end local v8    # "currState":Landroid/content/pm/PersonaState;
    :cond_d
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_7

    .line 1453
    .end local v6    # "RcpFilter":Landroid/content/IntentFilter;
    .end local v11    # "filter":Landroid/content/IntentFilter;
    .end local v17    # "personaIds":[I
    .end local v18    # "personaLaunchFilter":Landroid/content/IntentFilter;
    :catch_1
    move-exception v10

    .line 1454
    .local v10, "e":Landroid/os/RemoteException;
    const-string v22, "StatusBar"

    const-string v23, "Unable to register notification listener"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    .line 1521
    .end local v10    # "e":Landroid/os/RemoteException;
    .restart local v6    # "RcpFilter":Landroid/content/IntentFilter;
    .restart local v11    # "filter":Landroid/content/IntentFilter;
    .restart local v18    # "personaLaunchFilter":Landroid/content/IntentFilter;
    :catch_2
    move-exception v10

    .line 1522
    .local v10, "e":Ljava/lang/Exception;
    const-string v22, "KnoxNotification"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "start: threw an exception: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 1527
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateCurrentProfilesCache()V

    .line 1530
    const-string v22, "notification"

    invoke-static/range {v22 .. v22}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mNMS:Landroid/app/INotificationManager;

    .line 1533
    return-void

    .line 1425
    .end local v5    # "N":I
    .end local v6    # "RcpFilter":Landroid/content/IntentFilter;
    .end local v11    # "filter":Landroid/content/IntentFilter;
    .end local v12    # "i":I
    .end local v18    # "personaLaunchFilter":Landroid/content/IntentFilter;
    .end local v21    # "viewIndex":I
    :catch_3
    move-exception v22

    goto/16 :goto_2
.end method

.method public startAssist(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 4395
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    if-eqz v0, :cond_0

    .line 4396
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/assist/AssistManager;->startAssist(Landroid/os/Bundle;)V

    .line 4398
    :cond_0
    return-void
.end method

.method protected abstract tick(Landroid/service/notification/StatusBarNotification;Z)V
.end method

.method public toggleNotificationPanel()V
    .locals 0

    .prologue
    .line 4510
    return-void
.end method

.method public toggleRecentApps()V
    .locals 2

    .prologue
    .line 2166
    const/16 v0, 0x3fd

    .line 2167
    .local v0, "msg":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 2168
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 2169
    return-void
.end method

.method protected toggleRecents()V
    .locals 4

    .prologue
    .line 2280
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    if-eqz v0, :cond_0

    .line 2282
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDisplay:Landroid/view/Display;

    sget v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mLayoutDirection:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->getStatusBarView()Landroid/view/View;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/RecentsComponent;->toggleRecents(Landroid/view/Display;ILandroid/view/View;)V

    .line 2283
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v1, "recentapps"

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 2285
    :cond_0
    return-void
.end method

.method public updateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 2
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 4431
    const-string v0, "StatusBar"

    const-string v1, "updateCoverState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4432
    return-void
.end method

.method protected abstract updateExpandedViewPos(I)V
.end method

.method protected updateLegacyBackgroundForKnox(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 4
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4217
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4218
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    const v1, 0x1020432

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4220
    iget v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    iget v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 4222
    iget v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->sanitizing:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    .line 4223
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setShowingLegacyBackground(Z)V

    .line 4224
    iput-boolean v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->legacy:Z

    .line 4232
    :cond_0
    :goto_0
    return-void

    .line 4226
    :cond_1
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setShowingLegacyBackground(Z)V

    .line 4227
    iput-boolean v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->legacy:Z

    goto :goto_0
.end method

.method protected updateLockscreenNotificationSetting()V
    .locals 22

    .prologue
    .line 3796
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v10

    .line 3799
    .local v10, "isPersona":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "lock_screen_show_notifications"

    const/16 v20, 0x0

    if-eqz v10, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    move/from16 v21, v0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/PersonaManager;->getParentId(I)I

    move-result v17

    :goto_0
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v17

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v16

    .line 3803
    .local v16, "value":I
    if-eqz v16, :cond_4

    const/4 v13, 0x1

    .line 3804
    .local v13, "show":Z
    :goto_1
    const-string v17, "StatusBar"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "LSSN:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    if-eqz v10, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    move/from16 v20, v0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/PersonaManager;->getParentId(I)I

    move-result v17

    :goto_2
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v8

    .line 3808
    .local v8, "dpmFlags":I
    and-int/lit8 v17, v8, 0x4

    if-nez v17, :cond_6

    const/4 v4, 0x1

    .line 3811
    .local v4, "allowedByDpm":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "kids_home_mode"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    const/4 v12, 0x1

    .line 3812
    .local v12, "kidsModeEnabled":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->needsFullscreenBouncer()Z

    move-result v17

    if-eqz v17, :cond_8

    const/4 v9, 0x1

    .line 3814
    .local v9, "fullBouncer":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-object/from16 v17, v0

    if-eqz v17, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->needsShowClockandNotifications()Z

    move-result v17

    if-eqz v17, :cond_9

    const/4 v14, 0x1

    .line 3815
    .local v14, "showClockandNotifications":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v17

    if-eqz v17, :cond_a

    const/4 v6, 0x1

    .line 3816
    .local v6, "bouncerShowing":Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isDisableClockAndClear()Z

    move-result v17

    if-eqz v17, :cond_b

    const/4 v7, 0x1

    .line 3819
    .local v7, "disableClockandClear":Z
    :goto_8
    if-eqz v13, :cond_c

    if-eqz v4, :cond_c

    if-nez v12, :cond_c

    if-nez v9, :cond_c

    if-eqz v14, :cond_c

    if-eqz v6, :cond_0

    if-eqz v7, :cond_c

    :cond_0
    const/4 v15, 0x1

    .line 3822
    .local v15, "showNotification":Z
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isCoveredState()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 3823
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "activity"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    .line 3824
    .local v5, "am":Landroid/app/ActivityManager;
    invoke-virtual {v5}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v11

    .line 3826
    .local v11, "isWindowPinned":Z
    if-nez v11, :cond_1

    if-nez v13, :cond_d

    .line 3827
    :cond_1
    const/4 v15, 0x0

    .line 3833
    .end local v5    # "am":Landroid/app/ActivityManager;
    .end local v11    # "isWindowPinned":Z
    :cond_2
    :goto_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/systemui/statusbar/BaseStatusBar;->setShowLockscreenNotifications(Z)V

    .line 3835
    return-void

    .line 3799
    .end local v4    # "allowedByDpm":Z
    .end local v6    # "bouncerShowing":Z
    .end local v7    # "disableClockandClear":Z
    .end local v8    # "dpmFlags":I
    .end local v9    # "fullBouncer":Z
    .end local v12    # "kidsModeEnabled":Z
    .end local v13    # "show":Z
    .end local v14    # "showClockandNotifications":Z
    .end local v15    # "showNotification":Z
    .end local v16    # "value":I
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    move/from16 v17, v0

    goto/16 :goto_0

    .line 3803
    .restart local v16    # "value":I
    :cond_4
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 3806
    .restart local v13    # "show":Z
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    move/from16 v17, v0

    goto/16 :goto_2

    .line 3808
    .restart local v8    # "dpmFlags":I
    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 3811
    .restart local v4    # "allowedByDpm":Z
    :cond_7
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 3812
    .restart local v12    # "kidsModeEnabled":Z
    :cond_8
    const/4 v9, 0x0

    goto/16 :goto_5

    .line 3814
    .restart local v9    # "fullBouncer":Z
    :cond_9
    const/4 v14, 0x0

    goto :goto_6

    .line 3815
    .restart local v14    # "showClockandNotifications":Z
    :cond_a
    const/4 v6, 0x0

    goto :goto_7

    .line 3816
    .restart local v6    # "bouncerShowing":Z
    :cond_b
    const/4 v7, 0x0

    goto :goto_8

    .line 3819
    .restart local v7    # "disableClockandClear":Z
    :cond_c
    const/4 v15, 0x0

    goto :goto_9

    .line 3829
    .restart local v5    # "am":Landroid/app/ActivityManager;
    .restart local v11    # "isWindowPinned":Z
    .restart local v15    # "showNotification":Z
    :cond_d
    const/4 v15, 0x1

    goto :goto_a
.end method

.method protected updateMediaNotificationsForKnox(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 4
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 4235
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4236
    iget v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->sanitizing:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    .line 4237
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0054

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setTintColor(I)V

    .line 4247
    :cond_0
    :goto_0
    return-void

    .line 4240
    :cond_1
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v0, v1, Landroid/app/Notification;->color:I

    .line 4241
    .local v0, "color":I
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0057

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .end local v0    # "color":I
    :cond_2
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setTintColor(I)V

    goto :goto_0
.end method

.method public updateNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 39
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 3850
    sget-boolean v5, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateNotification("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3852
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v21

    .line 3853
    .local v21, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->isHeadsUp(Ljava/lang/String;)Z

    move-result v38

    .line 3855
    .local v38, "wasHeadsUp":Z
    if-eqz v38, :cond_1

    .line 3856
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v26

    .line 3860
    .local v26, "oldEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :goto_0
    if-nez v26, :cond_2

    .line 4062
    :goto_1
    return-void

    .line 3858
    .end local v26    # "oldEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v26

    .restart local v26    # "oldEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    goto :goto_0

    .line 3864
    :cond_2
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v28, v0

    .line 3867
    .local v28, "oldNotification":Landroid/service/notification/StatusBarNotification;
    invoke-virtual/range {v28 .. v28}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v0, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v25, v0

    .line 3868
    .local v25, "oldContentView":Landroid/widget/RemoteViews;
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v22

    .line 3869
    .local v22, "n":Landroid/app/Notification;
    move-object/from16 v0, v22

    iget-object v14, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 3870
    .local v14, "contentView":Landroid/widget/RemoteViews;
    invoke-virtual/range {v28 .. v28}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v0, v5, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    move-object/from16 v24, v0

    .line 3871
    .local v24, "oldBigContentView":Landroid/widget/RemoteViews;
    move-object/from16 v0, v22

    iget-object v12, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 3872
    .local v12, "bigContentView":Landroid/widget/RemoteViews;
    invoke-virtual/range {v28 .. v28}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v0, v5, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    move-object/from16 v27, v0

    .line 3873
    .local v27, "oldHeadsUpContentView":Landroid/widget/RemoteViews;
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    move-object/from16 v17, v0

    .line 3874
    .local v17, "headsUpContentView":Landroid/widget/RemoteViews;
    invoke-virtual/range {v28 .. v28}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v0, v5, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    move-object/from16 v30, v0

    .line 3875
    .local v30, "oldPublicNotification":Landroid/app/Notification;
    if-eqz v30, :cond_19

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v29, v0

    .line 3877
    .local v29, "oldPublicContentView":Landroid/widget/RemoteViews;
    :goto_2
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    move-object/from16 v32, v0

    .line 3878
    .local v32, "publicNotification":Landroid/app/Notification;
    if-eqz v32, :cond_1a

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v31, v0

    .line 3881
    .local v31, "publicContentView":Landroid/widget/RemoteViews;
    :goto_3
    sget-boolean v5, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v5, :cond_3

    .line 3882
    const-string v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "old notification: when="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v28 .. v28}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-wide v8, v7, Landroid/app/Notification;->when:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ongoing="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v28 .. v28}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " expanded="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v26

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " contentView="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bigContentView="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " publicView="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " rowParent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v26

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3889
    const-string v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "new notification: when="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v22

    iget-wide v8, v0, Landroid/app/Notification;->when:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ongoing="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v28 .. v28}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " contentView="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bigContentView="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " publicView="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3895
    :cond_3
    invoke-virtual/range {v28 .. v28}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v37

    .line 3900
    .local v37, "userId":I
    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    if-eqz v5, :cond_1b

    invoke-virtual {v14}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1b

    invoke-virtual/range {v25 .. v25}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1b

    invoke-static/range {v37 .. v37}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual/range {v25 .. v25}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    :cond_4
    invoke-static/range {v37 .. v37}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual/range {v25 .. v25}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v5

    const v6, 0x7f04004f

    if-eq v5, v6, :cond_6

    :cond_5
    invoke-virtual/range {v25 .. v25}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v5

    invoke-virtual {v14}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v6

    if-ne v5, v6, :cond_1b

    :cond_6
    const/4 v15, 0x1

    .line 3906
    .local v15, "contentsUnchanged":Z
    :goto_4
    if-nez v24, :cond_7

    if-eqz v12, :cond_a

    :cond_7
    if-eqz v24, :cond_1c

    if-eqz v12, :cond_1c

    invoke-virtual {v12}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1c

    invoke-virtual/range {v24 .. v24}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1c

    invoke-static/range {v37 .. v37}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual/range {v24 .. v24}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    :cond_8
    invoke-static/range {v37 .. v37}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual/range {v24 .. v24}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v5

    const v6, 0x7f04004f

    if-eq v5, v6, :cond_a

    :cond_9
    invoke-virtual/range {v24 .. v24}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v5

    invoke-virtual {v12}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v6

    if-ne v5, v6, :cond_1c

    :cond_a
    const/4 v13, 0x1

    .line 3913
    .local v13, "bigContentsUnchanged":Z
    :goto_5
    if-nez v27, :cond_b

    if-eqz v17, :cond_d

    :cond_b
    if-eqz v27, :cond_1d

    if-eqz v17, :cond_1d

    invoke-virtual/range {v17 .. v17}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1d

    invoke-virtual/range {v27 .. v27}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1d

    invoke-virtual/range {v27 .. v27}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-static/range {v37 .. v37}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual/range {v27 .. v27}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v5

    const v6, 0x7f04004f

    if-eq v5, v6, :cond_d

    :cond_c
    invoke-virtual/range {v27 .. v27}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v5

    invoke-virtual/range {v17 .. v17}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v6

    if-ne v5, v6, :cond_1d

    :cond_d
    const/16 v18, 0x1

    .line 3920
    .local v18, "headsUpContentsUnchanged":Z
    :goto_6
    if-nez v29, :cond_e

    if-eqz v31, :cond_10

    :cond_e
    if-eqz v29, :cond_1e

    if-eqz v31, :cond_1e

    invoke-virtual/range {v31 .. v31}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1e

    invoke-virtual/range {v29 .. v29}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1e

    invoke-virtual/range {v29 .. v29}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v31 .. v31}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-static/range {v37 .. v37}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual/range {v29 .. v29}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v5

    const v6, 0x7f04004f

    if-eq v5, v6, :cond_10

    :cond_f
    invoke-virtual/range {v29 .. v29}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v5

    invoke-virtual/range {v31 .. v31}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v6

    if-ne v5, v6, :cond_1e

    :cond_10
    const/16 v33, 0x1

    .line 3927
    .local v33, "publicUnchanged":Z
    :goto_7
    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v5, :cond_1f

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    move-object/from16 v0, v26

    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1f

    const/16 v36, 0x1

    .line 3931
    .local v36, "updateTicker":Z
    :goto_8
    const-string v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "----- contentsUnchanged : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", bigContentsUnchanged - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", headsUpContentsUnchanged - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , publicUnchanged "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3932
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->shouldInterrupt(Landroid/service/notification/StatusBarNotification;)Z

    move-result v34

    .line 3933
    .local v34, "shouldInterrupt":Z
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->alertAgain(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/app/Notification;)Z

    move-result v11

    .line 3936
    .local v11, "alertAgain":Z
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->isHeadsUp(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_11

    .line 3937
    const/16 v18, 0x1

    .line 3939
    :cond_11
    const/16 v35, 0x0

    .line 3940
    .local v35, "updateSuccessful":Z
    if-eqz v15, :cond_13

    if-eqz v13, :cond_13

    if-eqz v18, :cond_13

    if-eqz v33, :cond_13

    .line 3942
    sget-boolean v5, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v5, :cond_12

    const-string v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reusing notification for key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3943
    :cond_12
    move-object/from16 v0, p1

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 3945
    :try_start_0
    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v5, :cond_20

    .line 3947
    new-instance v4, Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    move-object/from16 v0, v22

    iget v7, v0, Landroid/app/Notification;->icon:I

    move-object/from16 v0, v22

    iget v8, v0, Landroid/app/Notification;->iconLevel:I

    move-object/from16 v0, v22

    iget v9, v0, Landroid/app/Notification;->number:I

    move-object/from16 v0, v22

    iget-object v10, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;Landroid/os/UserHandle;IIILjava/lang/CharSequence;)V

    .line 3953
    .local v4, "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setNotification(Landroid/app/Notification;)V

    .line 3954
    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v5

    if-nez v5, :cond_20

    .line 3955
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t update icon: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/android/systemui/statusbar/BaseStatusBar;->handleNotificationError(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 3984
    .end local v4    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    :catch_0
    move-exception v16

    .line 3986
    .local v16, "e":Ljava/lang/RuntimeException;
    const-string v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t reapply views for package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v14}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3989
    .end local v16    # "e":Ljava/lang/RuntimeException;
    :cond_13
    :goto_9
    if-nez v35, :cond_16

    .line 3990
    sget-boolean v5, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v5, :cond_14

    const-string v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "not reusing notification for key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3991
    :cond_14
    if-eqz v38, :cond_28

    .line 3992
    if-eqz v34, :cond_26

    .line 3993
    sget-boolean v5, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v5, :cond_15

    const-string v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rebuilding heads up for key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3994
    :cond_15
    new-instance v23, Lcom/android/systemui/statusbar/NotificationData$Entry;

    const/4 v5, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/android/systemui/statusbar/NotificationData$Entry;-><init>(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    .line 3995
    .local v23, "newEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getHolder()Landroid/view/ViewGroup;

    move-result-object v19

    .line 3996
    .local v19, "holder":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->inflateViewsForHeadsUp(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 3997
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v5, v0, v6}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->showNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/NotificationListenerService$RankingMap;)Z

    .line 3998
    if-eqz v11, :cond_16

    .line 3999
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->resetHeadsUpDecayTimer()V

    .line 4039
    .end local v19    # "holder":Landroid/view/ViewGroup;
    .end local v23    # "newEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_16
    :goto_a
    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v5, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationVetoButton(Landroid/view/View;Landroid/service/notification/StatusBarNotification;)Landroid/view/View;

    .line 4042
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->isNotificationForCurrentProfiles(Landroid/service/notification/StatusBarNotification;)Z

    move-result v20

    .line 4043
    .local v20, "isForCurrentUser":Z
    sget-boolean v5, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v5, :cond_17

    const-string v6, "StatusBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notification is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v20, :cond_2c

    const-string v5, ""

    :goto_b
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "for you"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4046
    :cond_17
    if-eqz v36, :cond_18

    if-eqz v20, :cond_18

    .line 4050
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/android/systemui/statusbar/BaseStatusBar;->tick(Landroid/service/notification/StatusBarNotification;Z)V

    .line 4054
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->setAreThereNotifications()V

    .line 4055
    const/16 v5, -0x2710

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateExpandedViewPos(I)V

    goto/16 :goto_1

    .line 3875
    .end local v11    # "alertAgain":Z
    .end local v13    # "bigContentsUnchanged":Z
    .end local v15    # "contentsUnchanged":Z
    .end local v18    # "headsUpContentsUnchanged":Z
    .end local v20    # "isForCurrentUser":Z
    .end local v29    # "oldPublicContentView":Landroid/widget/RemoteViews;
    .end local v31    # "publicContentView":Landroid/widget/RemoteViews;
    .end local v32    # "publicNotification":Landroid/app/Notification;
    .end local v33    # "publicUnchanged":Z
    .end local v34    # "shouldInterrupt":Z
    .end local v35    # "updateSuccessful":Z
    .end local v36    # "updateTicker":Z
    .end local v37    # "userId":I
    :cond_19
    const/16 v29, 0x0

    goto/16 :goto_2

    .line 3878
    .restart local v29    # "oldPublicContentView":Landroid/widget/RemoteViews;
    .restart local v32    # "publicNotification":Landroid/app/Notification;
    :cond_1a
    const/16 v31, 0x0

    goto/16 :goto_3

    .line 3900
    .restart local v31    # "publicContentView":Landroid/widget/RemoteViews;
    .restart local v37    # "userId":I
    :cond_1b
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 3906
    .restart local v15    # "contentsUnchanged":Z
    :cond_1c
    const/4 v13, 0x0

    goto/16 :goto_5

    .line 3913
    .restart local v13    # "bigContentsUnchanged":Z
    :cond_1d
    const/16 v18, 0x0

    goto/16 :goto_6

    .line 3920
    .restart local v18    # "headsUpContentsUnchanged":Z
    :cond_1e
    const/16 v33, 0x0

    goto/16 :goto_7

    .line 3927
    .restart local v33    # "publicUnchanged":Z
    :cond_1f
    const/16 v36, 0x0

    goto/16 :goto_8

    .line 3960
    .restart local v11    # "alertAgain":Z
    .restart local v34    # "shouldInterrupt":Z
    .restart local v35    # "updateSuccessful":Z
    .restart local v36    # "updateTicker":Z
    :cond_20
    if-eqz v38, :cond_23

    .line 3961
    if-eqz v34, :cond_22

    .line 3962
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateHeadsUpViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V

    .line 3963
    if-eqz v11, :cond_21

    .line 3964
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->resetHeadsUpDecayTimer()V

    .line 3980
    :cond_21
    :goto_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/NotificationData;->updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 3981
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotifications()V

    .line 3982
    const/16 v35, 0x1

    goto/16 :goto_9

    .line 3968
    :cond_22
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->releaseAndClose()V

    goto/16 :goto_1

    .line 3972
    :cond_23
    if-eqz v34, :cond_24

    if-eqz v11, :cond_24

    .line 3973
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->removeNotificationViews(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)Landroid/service/notification/StatusBarNotification;

    .line 3974
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/systemui/statusbar/BaseStatusBar;->addNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    goto :goto_c

    .line 3976
    :cond_24
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->reSanitizePendingIntentIfNeeded(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V

    .line 3977
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_c

    .line 4002
    .restart local v19    # "holder":Landroid/view/ViewGroup;
    .restart local v23    # "newEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_25
    const-string v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t create new updated headsup for package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v14}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 4006
    .end local v19    # "holder":Landroid/view/ViewGroup;
    .end local v23    # "newEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_26
    sget-boolean v5, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v5, :cond_27

    const-string v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "releasing heads up for key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4007
    :cond_27
    move-object/from16 v0, p1

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 4008
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->releaseAndClose()V

    goto/16 :goto_1

    .line 4012
    :cond_28
    if-eqz v34, :cond_2a

    if-eqz v11, :cond_2a

    .line 4013
    sget-boolean v5, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v5, :cond_29

    const-string v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reposting to invoke heads up for key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4014
    :cond_29
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->removeNotificationViews(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)Landroid/service/notification/StatusBarNotification;

    .line 4015
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/systemui/statusbar/BaseStatusBar;->addNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    goto/16 :goto_a

    .line 4017
    :cond_2a
    sget-boolean v5, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v5, :cond_2b

    const-string v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rebuilding update in place for key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4018
    :cond_2b
    move-object/from16 v0, p1

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 4020
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->reSanitizePendingIntentIfNeeded(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V

    .line 4022
    new-instance v4, Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    move-object/from16 v0, v22

    iget v7, v0, Landroid/app/Notification;->icon:I

    move-object/from16 v0, v22

    iget v8, v0, Landroid/app/Notification;->iconLevel:I

    move-object/from16 v0, v22

    iget v9, v0, Landroid/app/Notification;->number:I

    move-object/from16 v0, v22

    iget-object v10, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;Landroid/os/UserHandle;IIILjava/lang/CharSequence;)V

    .line 4028
    .restart local v4    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setNotification(Landroid/app/Notification;)V

    .line 4029
    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 4030
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v38

    invoke-direct {v0, v1, v5, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;Z)Z

    .line 4031
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/NotificationData;->updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 4032
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotifications()V

    goto/16 :goto_a

    .line 4043
    .end local v4    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    .restart local v20    # "isForCurrentUser":Z
    :cond_2c
    const-string v5, "not "

    goto/16 :goto_b
.end method

.method protected abstract updateNotificationRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V
.end method

.method protected updateNotificationVetoButton(Landroid/view/View;Landroid/service/notification/StatusBarNotification;)Landroid/view/View;
    .locals 7
    .param p1, "row"    # Landroid/view/View;
    .param p2, "n"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 1761
    const v0, 0x7f0f03a9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 1762
    .local v6, "vetoButton":Landroid/view/View;
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-ne v0, p1, :cond_1

    .line 1764
    :cond_0
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1765
    .local v2, "_pkg":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v3

    .line 1766
    .local v3, "_tag":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    .line 1767
    .local v4, "_id":I
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v5

    .line 1774
    .local v5, "_userId":I
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$8;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/BaseStatusBar$8;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1816
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1820
    .end local v2    # "_pkg":Ljava/lang/String;
    .end local v3    # "_tag":Ljava/lang/String;
    .end local v4    # "_id":I
    .end local v5    # "_userId":I
    :goto_0
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1821
    return-object v6

    .line 1818
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected abstract updateNotifications()V
.end method

.method protected updateRowStates()V
    .locals 40

    .prologue
    .line 3483
    const/4 v9, 0x0

    .line 3484
    .local v9, "hasEventNotification":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->getIconsView()Lcom/android/systemui/statusbar/NotificationOverflowIconsView;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->removeAllViews()V

    .line 3485
    const/4 v8, 0x0

    .line 3489
    .local v8, "hasCMASNotification":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v4

    .line 3490
    .local v4, "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 3491
    .local v22, "toShow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 3492
    .local v23, "toShowMiniCon":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 3493
    .local v24, "toShowMiniConCMAS":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 3494
    .local v25, "toShowMiniConContextAware":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 3495
    .local v26, "toShowMiniConKnoxMode":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 3496
    .local v27, "toShowMiniConToolbox":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 3497
    .local v28, "toShowNotification":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 3499
    .local v29, "toShowOnGoing":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 3500
    .local v30, "toShowTmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3502
    .local v3, "N":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v3, :cond_11

    .line 3503
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 3505
    .local v7, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v36

    move-object/from16 v0, v36

    iget v0, v0, Landroid/app/Notification;->secFlags:I

    move/from16 v36, v0

    and-int/lit8 v36, v36, 0x1

    if-eqz v36, :cond_1

    .line 3507
    const-string v36, "StatusBar"

    const-string v37, "Icon Only"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3502
    :cond_0
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 3511
    :cond_1
    sget-boolean v36, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v36, :cond_b

    .line 3512
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/service/notification/StatusBarNotification;->isMiniCon()Z

    move-result v36

    if-nez v36, :cond_2

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->getCurrentMediaNotificationKey()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_9

    .line 3513
    :cond_2
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v36

    move-object/from16 v0, v36

    iget v0, v0, Landroid/app/Notification;->twQuickPanelEvent:I

    move/from16 v36, v0

    const/16 v37, 0x10

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_3

    .line 3514
    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3557
    :goto_2
    sget-boolean v36, Lcom/android/systemui/statusbar/Feature;->mUseEventNotification:Z

    if-eqz v36, :cond_0

    const-string v36, "com.sec.android.app.eventnotification"

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_0

    .line 3558
    const/4 v9, 0x1

    goto :goto_1

    .line 3515
    :cond_3
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v36

    move-object/from16 v0, v36

    iget v0, v0, Landroid/app/Notification;->twQuickPanelEvent:I

    move/from16 v36, v0

    const/16 v37, 0x80

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_4

    .line 3516
    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3517
    :cond_4
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v36

    move-object/from16 v0, v36

    iget v0, v0, Landroid/app/Notification;->twQuickPanelEvent:I

    move/from16 v36, v0

    const/16 v37, 0x104

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_5

    .line 3518
    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3519
    :cond_5
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v36

    move-object/from16 v0, v36

    iget v0, v0, Landroid/app/Notification;->twQuickPanelEvent:I

    move/from16 v36, v0

    const/16 v37, 0x200

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_8

    .line 3520
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPresidentialCMASFeature()Z

    move-result v36

    if-eqz v36, :cond_7

    .line 3521
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v36

    move-object/from16 v0, v36

    iget v0, v0, Landroid/app/Notification;->commonValue:I

    move/from16 v36, v0

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_6

    .line 3522
    const/4 v8, 0x1

    .line 3527
    :goto_3
    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 3524
    :cond_6
    const/4 v8, 0x0

    goto :goto_3

    .line 3526
    :cond_7
    const/4 v8, 0x1

    goto :goto_3

    .line 3529
    :cond_8
    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 3532
    :cond_9
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result v36

    if-eqz v36, :cond_a

    .line 3533
    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 3535
    :cond_a
    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 3539
    :cond_b
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v36

    move-object/from16 v0, v36

    iget v0, v0, Landroid/app/Notification;->twQuickPanelEvent:I

    move/from16 v36, v0

    const/16 v37, 0x200

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_e

    .line 3540
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPresidentialCMASFeature()Z

    move-result v36

    if-eqz v36, :cond_d

    .line 3541
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v36

    move-object/from16 v0, v36

    iget v0, v0, Landroid/app/Notification;->commonValue:I

    move/from16 v36, v0

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_c

    .line 3542
    const/4 v8, 0x1

    .line 3547
    :goto_4
    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 3544
    :cond_c
    const/4 v8, 0x0

    goto :goto_4

    .line 3546
    :cond_d
    const/4 v8, 0x1

    goto :goto_4

    .line 3548
    :cond_e
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v36

    move-object/from16 v0, v36

    iget v0, v0, Landroid/app/Notification;->twQuickPanelEvent:I

    move/from16 v36, v0

    const/16 v37, 0x80

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_f

    .line 3549
    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 3550
    :cond_f
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v36

    move-object/from16 v0, v36

    iget v0, v0, Landroid/app/Notification;->twQuickPanelEvent:I

    move/from16 v36, v0

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_10

    .line 3551
    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 3553
    :cond_10
    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 3561
    .end local v7    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_11
    const/4 v11, 0x0

    :goto_5
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v36

    move/from16 v0, v36

    if-ge v11, v0, :cond_12

    .line 3562
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v0, v22

    move-object/from16 v1, v36

    invoke-virtual {v0, v11, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3561
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 3564
    :cond_12
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v36

    add-int/lit8 v11, v36, -0x1

    :goto_6
    if-ltz v11, :cond_13

    .line 3565
    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v0, v22

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3564
    add-int/lit8 v11, v11, -0x1

    goto :goto_6

    .line 3567
    :cond_13
    const/4 v11, 0x0

    :goto_7
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v36

    move/from16 v0, v36

    if-ge v11, v0, :cond_14

    .line 3568
    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v0, v22

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3567
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 3570
    :cond_14
    const/4 v11, 0x0

    :goto_8
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v36

    move/from16 v0, v36

    if-ge v11, v0, :cond_15

    .line 3571
    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v0, v22

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3570
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 3573
    :cond_15
    const/4 v11, 0x0

    :goto_9
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v36

    move/from16 v0, v36

    if-ge v11, v0, :cond_16

    .line 3574
    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v0, v22

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3573
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 3576
    :cond_16
    const/4 v11, 0x0

    :goto_a
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v36

    move/from16 v0, v36

    if-ge v11, v0, :cond_17

    .line 3577
    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v0, v22

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3576
    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    .line 3579
    :cond_17
    const/4 v11, 0x0

    :goto_b
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v36

    move/from16 v0, v36

    if-ge v11, v0, :cond_18

    .line 3580
    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v0, v22

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3579
    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    .line 3585
    :cond_18
    const/4 v11, 0x0

    :goto_c
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v36

    move/from16 v0, v36

    if-ge v11, v0, :cond_1a

    .line 3586
    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-object/from16 v0, v36

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->isDismissed:Z

    move/from16 v36, v0

    if-nez v36, :cond_19

    .line 3587
    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v0, v30

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3585
    :cond_19
    add-int/lit8 v11, v11, 0x1

    goto :goto_c

    .line 3590
    :cond_1a
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clear()V

    .line 3591
    const/4 v11, 0x0

    :goto_d
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v36

    move/from16 v0, v36

    if-ge v11, v0, :cond_1b

    .line 3592
    move-object/from16 v0, v30

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v0, v22

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3591
    add-int/lit8 v11, v11, 0x1

    goto :goto_d

    .line 3595
    :cond_1b
    const/16 v34, 0x0

    .line 3596
    .local v34, "visibleNotifications":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isKeyguardState()Z

    move-result v14

    .line 3598
    .local v14, "onKeyguard":Z
    if-eqz v9, :cond_2a

    .line 3599
    const/16 v36, 0x1

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mMaxKeyguardNotifications:I

    .line 3610
    :cond_1c
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v36, v0

    if-eqz v36, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsExpanded()Z

    move-result v36

    if-nez v36, :cond_2c

    const/4 v5, 0x1

    .line 3611
    .local v5, "doNotRemoveOverFlow":Z
    :goto_f
    if-eqz v14, :cond_2d

    if-eqz v5, :cond_2d

    const/4 v14, 0x1

    .line 3614
    :goto_10
    const/4 v12, 0x0

    .line 3615
    .local v12, "isPersoLock":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-object/from16 v36, v0

    if-eqz v36, :cond_1d

    .line 3616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isPersoLock()Z

    move-result v12

    .line 3620
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isKeyguardState()Z

    move-result v36

    if-eqz v36, :cond_1e

    .line 3621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v36, v0

    if-eqz v36, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsExpanded()Z

    move-result v36

    if-nez v36, :cond_2e

    const/16 v36, 0x1

    :goto_11
    const/16 v38, 0x1

    move-object/from16 v0, v37

    move/from16 v1, v36

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDimmed(ZZ)V

    .line 3625
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v36

    const-string v37, "user_setup_complete"

    const/16 v38, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    move/from16 v39, v0

    invoke-static/range {v36 .. v39}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v36

    if-eqz v36, :cond_2f

    const/16 v32, 0x1

    .line 3632
    .local v32, "userSetup":Z
    :goto_12
    const/4 v11, 0x0

    :goto_13
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v36

    move/from16 v0, v36

    if-ge v11, v0, :cond_3d

    .line 3633
    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 3638
    .restart local v7    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v36

    move-object/from16 v0, v36

    iget v0, v0, Landroid/app/Notification;->visibility:I

    move/from16 v33, v0

    .line 3641
    .local v33, "vis":I
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v36

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->userAllowsPrivateNotificationsInPublic(I)Z

    move-result v36

    if-nez v36, :cond_30

    const/4 v10, 0x1

    .line 3643
    .local v10, "hideSensitive":Z
    :goto_14
    if-nez v33, :cond_31

    const/16 v17, 0x1

    .line 3644
    .local v17, "sensitiveNote":Z
    :goto_15
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->packageHasVisibilityOverride(Ljava/lang/String;)Z

    move-result v18

    .line 3645
    .local v18, "sensitivePackage":Z
    if-eqz v17, :cond_1f

    if-nez v10, :cond_20

    :cond_1f
    if-eqz v18, :cond_32

    :cond_20
    const/16 v16, 0x1

    .line 3646
    .local v16, "sensitive":Z
    :goto_16
    if-eqz v16, :cond_33

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isLockscreenPublicMode()Z

    move-result v36

    if-eqz v36, :cond_33

    const/16 v21, 0x1

    .line 3648
    .local v21, "showingPublic":Z
    :goto_17
    iget v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->sanitizing:I

    move/from16 v36, v0

    and-int/lit8 v36, v36, 0x8

    if-eqz v36, :cond_34

    const/4 v15, 0x1

    .line 3649
    .local v15, "sanitize":Z
    :goto_18
    if-nez v14, :cond_21

    if-nez v21, :cond_21

    if-eqz v15, :cond_35

    .line 3651
    :cond_21
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    invoke-virtual/range {v36 .. v37}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setExpansionDisabled(Z)V

    .line 3660
    :cond_22
    :goto_19
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->shouldShowOnKeyguard(Landroid/service/notification/StatusBarNotification;)Z

    move-result v19

    .line 3661
    .local v19, "showOnKeyguard":Z
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->shouldShowOnShadeLocked(Landroid/service/notification/StatusBarNotification;)Z

    move-result v20

    .line 3663
    .local v20, "showOnShadeLocked":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isSharedDeviceKeyguardOn()Z

    move-result v13

    .line 3666
    .local v13, "isSDKeyguardOn":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->isUniversalLockBoolean:Z

    move/from16 v36, v0

    if-eqz v36, :cond_38

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mShowLockscreenNotifications:Z

    move/from16 v36, v0

    if-eqz v36, :cond_38

    if-eqz v14, :cond_38

    const/4 v6, 0x1

    .line 3667
    .local v6, "doNotShowNotificationUniversalLock":Z
    :goto_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isLockscreenPublicMode()Z

    move-result v36

    if-eqz v36, :cond_23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mShowLockscreenNotifications:Z

    move/from16 v36, v0

    if-eqz v36, :cond_28

    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isCoveredState()Z

    move-result v36

    if-eqz v36, :cond_24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mShowLockscreenNotifications:Z

    move/from16 v36, v0

    if-eqz v36, :cond_28

    :cond_24
    if-eqz v14, :cond_25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mMaxKeyguardNotifications:I

    move/from16 v36, v0

    move/from16 v0, v34

    move/from16 v1, v36

    if-ge v0, v1, :cond_28

    if-eqz v19, :cond_28

    :cond_25
    if-eqz v12, :cond_26

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isKeyguardState()Z

    move-result v36

    if-nez v36, :cond_28

    :cond_26
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSingleLine:Z

    move/from16 v36, v0

    if-eqz v36, :cond_28

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isShadeLockedState()Z

    move-result v36

    if-eqz v36, :cond_27

    if-eqz v20, :cond_28

    :cond_27
    if-nez v6, :cond_28

    if-nez v13, :cond_28

    if-nez v32, :cond_39

    sget-boolean v36, Lcom/android/systemui/statusbar/Feature;->mIsFactoryBinary:Z

    if-nez v36, :cond_39

    .line 3679
    :cond_28
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v36, v0

    const/16 v37, 0x8

    invoke-virtual/range {v36 .. v37}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setVisibility(I)V

    .line 3680
    if-eqz v14, :cond_29

    if-eqz v19, :cond_29

    if-nez v12, :cond_29

    if-nez v6, :cond_29

    if-nez v13, :cond_29

    .line 3684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->getIconsView()Lcom/android/systemui/statusbar/NotificationOverflowIconsView;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->addNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 3632
    :cond_29
    :goto_1b
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_13

    .line 3601
    .end local v5    # "doNotRemoveOverFlow":Z
    .end local v6    # "doNotShowNotificationUniversalLock":Z
    .end local v7    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v10    # "hideSensitive":Z
    .end local v12    # "isPersoLock":Z
    .end local v13    # "isSDKeyguardOn":Z
    .end local v15    # "sanitize":Z
    .end local v16    # "sensitive":Z
    .end local v17    # "sensitiveNote":Z
    .end local v18    # "sensitivePackage":Z
    .end local v19    # "showOnKeyguard":Z
    .end local v20    # "showOnShadeLocked":Z
    .end local v21    # "showingPublic":Z
    .end local v32    # "userSetup":Z
    .end local v33    # "vis":I
    :cond_2a
    if-eqz v14, :cond_1c

    .line 3602
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mState:I

    move/from16 v36, v0

    const/16 v37, 0x5

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_2b

    .line 3603
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->getMaxCoverNotifications()I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mMaxKeyguardNotifications:I

    goto/16 :goto_e

    .line 3605
    :cond_2b
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->getMaxKeyguardNotifications()I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mMaxKeyguardNotifications:I

    goto/16 :goto_e

    .line 3610
    :cond_2c
    const/4 v5, 0x0

    goto/16 :goto_f

    .line 3611
    .restart local v5    # "doNotRemoveOverFlow":Z
    :cond_2d
    const/4 v14, 0x0

    goto/16 :goto_10

    .line 3621
    .restart local v12    # "isPersoLock":Z
    :cond_2e
    const/16 v36, 0x0

    goto/16 :goto_11

    .line 3625
    :cond_2f
    const/16 v32, 0x0

    goto/16 :goto_12

    .line 3641
    .restart local v7    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .restart local v32    # "userSetup":Z
    .restart local v33    # "vis":I
    :cond_30
    const/4 v10, 0x0

    goto/16 :goto_14

    .line 3643
    .restart local v10    # "hideSensitive":Z
    :cond_31
    const/16 v17, 0x0

    goto/16 :goto_15

    .line 3645
    .restart local v17    # "sensitiveNote":Z
    .restart local v18    # "sensitivePackage":Z
    :cond_32
    const/16 v16, 0x0

    goto/16 :goto_16

    .line 3646
    .restart local v16    # "sensitive":Z
    :cond_33
    const/16 v21, 0x0

    goto/16 :goto_17

    .line 3648
    .restart local v21    # "showingPublic":Z
    :cond_34
    const/4 v15, 0x0

    goto/16 :goto_18

    .line 3653
    .restart local v15    # "sanitize":Z
    :cond_35
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    invoke-virtual/range {v36 .. v37}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setExpansionDisabled(Z)V

    .line 3654
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserLocked()Z

    move-result v36

    if-nez v36, :cond_22

    .line 3655
    if-nez v11, :cond_36

    const/16 v31, 0x1

    .line 3656
    .local v31, "top":Z
    :goto_1c
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v37, v0

    if-eqz v31, :cond_37

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    move/from16 v36, v0

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->shouldHideSensitiveContents(I)Z

    move-result v36

    if-nez v36, :cond_37

    const/16 v36, 0x1

    :goto_1d
    move-object/from16 v0, v37

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setSystemExpanded(Z)V

    goto/16 :goto_19

    .line 3655
    .end local v31    # "top":Z
    :cond_36
    const/16 v31, 0x0

    goto :goto_1c

    .line 3656
    .restart local v31    # "top":Z
    :cond_37
    const/16 v36, 0x0

    goto :goto_1d

    .line 3666
    .end local v31    # "top":Z
    .restart local v13    # "isSDKeyguardOn":Z
    .restart local v19    # "showOnKeyguard":Z
    .restart local v20    # "showOnShadeLocked":Z
    :cond_38
    const/4 v6, 0x0

    goto/16 :goto_1a

    .line 3687
    .restart local v6    # "doNotShowNotificationUniversalLock":Z
    :cond_39
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v36

    const/16 v37, 0x8

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_3c

    const/16 v35, 0x1

    .line 3688
    .local v35, "wasGone":Z
    :goto_1e
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    invoke-virtual/range {v36 .. v37}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setVisibility(I)V

    .line 3689
    if-nez v35, :cond_3a

    if-eqz v14, :cond_3b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->wasOccludedAndNeedAnimation()Z

    move-result v36

    if-eqz v36, :cond_3b

    .line 3691
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v36, v0

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    invoke-virtual/range {v36 .. v38}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateAddAnimation(Landroid/view/View;Z)V

    .line 3692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    invoke-virtual/range {v36 .. v37}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->setNeedAnimationFlag(Z)V

    .line 3694
    :cond_3b
    add-int/lit8 v34, v34, 0x1

    goto/16 :goto_1b

    .line 3687
    .end local v35    # "wasGone":Z
    :cond_3c
    const/16 v35, 0x0

    goto :goto_1e

    .line 3698
    .end local v6    # "doNotShowNotificationUniversalLock":Z
    .end local v7    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v10    # "hideSensitive":Z
    .end local v13    # "isSDKeyguardOn":Z
    .end local v15    # "sanitize":Z
    .end local v16    # "sensitive":Z
    .end local v17    # "sensitiveNote":Z
    .end local v18    # "sensitivePackage":Z
    .end local v19    # "showOnKeyguard":Z
    .end local v20    # "showOnShadeLocked":Z
    .end local v21    # "showingPublic":Z
    .end local v33    # "vis":I
    :cond_3d
    if-eqz v14, :cond_43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->getIconsView()Lcom/android/systemui/statusbar/NotificationOverflowIconsView;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->getChildCount()I

    move-result v36

    if-lez v36, :cond_43

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSingleLine:Z

    move/from16 v36, v0

    if-eqz v36, :cond_43

    if-eqz v32, :cond_43

    .line 3699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->getVisibility()I

    move-result v36

    const/16 v37, 0x8

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_42

    const/16 v35, 0x1

    .line 3700
    .restart local v35    # "wasGone":Z
    :goto_1f
    if-nez v35, :cond_3e

    if-eqz v14, :cond_3f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->wasOccludedAndNeedAnimation()Z

    move-result v36

    if-eqz v36, :cond_3f

    .line 3702
    :cond_3e
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isCoveredState()Z

    move-result v36

    if-nez v36, :cond_3f

    .line 3703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    invoke-virtual/range {v36 .. v38}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateAddAnimation(Landroid/view/View;Z)V

    .line 3706
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    invoke-virtual/range {v36 .. v37}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->setVisibility(I)V

    .line 3713
    .end local v35    # "wasGone":Z
    :goto_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v38

    add-int/lit8 v38, v38, -0x1

    invoke-virtual/range {v36 .. v38}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->changeViewPosition(Landroid/view/View;I)V

    .line 3714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v38

    add-int/lit8 v38, v38, -0x2

    invoke-virtual/range {v36 .. v38}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->changeViewPosition(Landroid/view/View;I)V

    .line 3718
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isMSim()Z

    move-result v36

    if-eqz v36, :cond_40

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->getNumberOfActiveSim()I

    move-result v36

    const/16 v37, 0x2

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_40

    .line 3719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDualSimLayout:Lcom/android/systemui/statusbar/MultiSIMView;

    move-object/from16 v37, v0

    const/16 v38, 0x2

    invoke-virtual/range {v36 .. v38}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->changeViewPosition(Landroid/view/View;I)V

    .line 3722
    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mQconnectSfinderView:Lcom/android/systemui/statusbar/QconnectSfinderView;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    invoke-virtual/range {v36 .. v38}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->changeViewPosition(Landroid/view/View;I)V

    .line 3723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mToggleSliderView:Lcom/android/systemui/statusbar/ToggleSliderView;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    invoke-virtual/range {v36 .. v38}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->changeViewPosition(Landroid/view/View;I)V

    .line 3725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-object/from16 v36, v0

    if-eqz v36, :cond_41

    .line 3726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateCMASText(Z)V

    .line 3728
    :cond_41
    return-void

    .line 3699
    :cond_42
    const/16 v35, 0x0

    goto/16 :goto_1f

    .line 3708
    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    move-object/from16 v36, v0

    const/16 v37, 0x8

    invoke-virtual/range {v36 .. v37}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->setVisibility(I)V

    goto/16 :goto_20
.end method

.method protected updateSearchPanel()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2204
    const/4 v3, 0x0

    .line 2205
    .local v3, "visible":Z
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    if-eqz v4, :cond_0

    .line 2206
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-virtual {v4}, Lcom/android/systemui/SearchPanelView;->isShowing()Z

    move-result v3

    .line 2207
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-interface {v4, v7}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 2211
    :cond_0
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2212
    .local v1, "tmpRoot":Landroid/widget/LinearLayout;
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v7, 0x7f0400b8

    invoke-virtual {v4, v7, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/SearchPanelView;

    iput-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    .line 2214
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    new-instance v7, Lcom/android/systemui/statusbar/BaseStatusBar$TouchOutsideListener;

    const/16 v8, 0x403

    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-direct {v7, p0, v8, v9}, Lcom/android/systemui/statusbar/BaseStatusBar$TouchOutsideListener;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;ILcom/android/systemui/statusbar/StatusBarPanel;)V

    invoke-virtual {v4, v7}, Lcom/android/systemui/SearchPanelView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2216
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Lcom/android/systemui/SearchPanelView;->setVisibility(I)V

    .line 2217
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isVertical()Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v5

    .line 2218
    .local v2, "vertical":Z
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-virtual {v4, v2}, Lcom/android/systemui/SearchPanelView;->setHorizontal(Z)V

    .line 2220
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-virtual {v4}, Lcom/android/systemui/SearchPanelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->getSearchLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2222
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-interface {v4, v7, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2223
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-virtual {v4, p0}, Lcom/android/systemui/SearchPanelView;->setBar(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    .line 2224
    if-eqz v3, :cond_1

    .line 2225
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/SearchPanelView;->show(ZZ)V

    .line 2227
    :cond_1
    return-void

    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v2    # "vertical":Z
    :cond_2
    move v2, v6

    .line 2217
    goto :goto_0
.end method

.method public userAddRemove()V
    .locals 0

    .prologue
    .line 1612
    return-void
.end method

.method public userAllowsPrivateNotificationsInPublic(I)Z
    .locals 8
    .param p1, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2340
    const/4 v6, -0x1

    if-ne p1, v6, :cond_0

    .line 2365
    :goto_0
    return v4

    .line 2347
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2348
    const/4 p1, 0x0

    .line 2352
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v6

    if-gez v6, :cond_5

    .line 2353
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lock_screen_allow_private_notifications"

    invoke-static {v6, v7, v5, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-eqz v6, :cond_2

    move v2, v4

    .line 2356
    .local v2, "allowedByUser":Z
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, p1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v3

    .line 2358
    .local v3, "dpmFlags":I
    and-int/lit8 v6, v3, 0x8

    if-nez v6, :cond_3

    move v1, v4

    .line 2360
    .local v1, "allowedByDpm":Z
    :goto_2
    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    move v0, v4

    .line 2361
    .local v0, "allowed":Z
    :goto_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, p1, v0}, Landroid/util/SparseBooleanArray;->append(IZ)V

    move v4, v0

    .line 2362
    goto :goto_0

    .end local v0    # "allowed":Z
    .end local v1    # "allowedByDpm":Z
    .end local v2    # "allowedByUser":Z
    .end local v3    # "dpmFlags":I
    :cond_2
    move v2, v5

    .line 2353
    goto :goto_1

    .restart local v2    # "allowedByUser":Z
    .restart local v3    # "dpmFlags":I
    :cond_3
    move v1, v5

    .line 2358
    goto :goto_2

    .restart local v1    # "allowedByDpm":Z
    :cond_4
    move v0, v5

    .line 2360
    goto :goto_3

    .line 2365
    .end local v1    # "allowedByDpm":Z
    .end local v2    # "allowedByUser":Z
    .end local v3    # "dpmFlags":I
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    goto :goto_0
.end method

.method public userSwitched(I)V
    .locals 0
    .param p1, "newUserId"    # I

    .prologue
    .line 1608
    return-void
.end method

.method protected visibilityChanged(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const/4 v3, 0x1

    .line 3371
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPanelSlightlyVisible:Z

    if-eq v0, p1, :cond_1

    .line 3372
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPanelSlightlyVisible:Z

    .line 3373
    if-nez p1, :cond_0

    .line 3374
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->dismissPopups()V

    .line 3377
    :cond_0
    if-eqz p1, :cond_2

    .line 3378
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->panelRevealedByUser:Z

    if-eqz v0, :cond_1

    .line 3379
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService;->onPanelRevealed(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3388
    :cond_1
    :goto_0
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->panelRevealedByUser:Z

    .line 3389
    return-void

    .line 3382
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->onPanelHidden()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3384
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected workAroundBadLayerDrawableOpacity(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2447
    return-void
.end method
