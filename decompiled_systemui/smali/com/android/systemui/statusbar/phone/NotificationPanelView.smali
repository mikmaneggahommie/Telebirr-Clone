.class public Lcom/android/systemui/statusbar/phone/NotificationPanelView;
.super Lcom/android/systemui/statusbar/phone/PanelView;
.source "NotificationPanelView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;
.implements Lcom/android/systemui/statusbar/phone/ObservableScrollView$Listener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;
.implements Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;
.implements Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$LaunchTransitionCallback;
.implements Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;


# static fields
.field private static final ACTION_HOME_PAUSE:Ljava/lang/String; = "com.sec.android.intent.action.HOME_PAUSE"

.field private static final ACTION_HOME_RESUME:Ljava/lang/String; = "com.sec.android.intent.action.HOME_RESUME"

.field private static final CAP_HEIGHT:I = 0x5b0

.field private static final DEBUG:Z = false

.field private static final DOUBLETAP_TIMEOUT_MS:J = 0xbb8L

.field public static final DOZE_ANIMATION_DURATION:J = 0x2bcL

.field private static final FONT_HEIGHT:I = 0x873

.field private static final HEADER_RUBBERBAND_FACTOR:F = 2.05f

.field private static final HEADER_RUBBERBAND_SINGLEMODE_FACTOR:F = 1.6f

.field private static final LOCK_ICON_ACTIVE_SCALE:F = 1.2f

.field public static final MULTI_LINE:Z

.field private static sBroadcastReceiver:Landroid/content/BroadcastReceiver;


# instance fields
.field private final LOCKSCREEN_CAPTURE_ENABLED:Z

.field private isRTLlanguage:Z

.field isSameNotification:Z

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mAdditionalStatusBarHeightForCover:I

.field private final mAnimateHeaderSlidingInListener:Landroid/animation/Animator$AnimatorListener;

.field private final mAnimateKeyguardStatusBarInvisibleEndRunnable:Ljava/lang/Runnable;

.field private final mAnimateKeyguardStatusViewInvisibleEndRunnable:Ljava/lang/Runnable;

.field private final mAnimateKeyguardStatusViewVisibleEndRunnable:Ljava/lang/Runnable;

.field private mAnimateNextTopPaddingChange:Z

.field private mBlockTouches:Z

.field private mBrightnessHeight:I

.field private mBrightnessView:Landroid/view/View;

.field private mCaptureView:Lcom/android/systemui/keyguard/ViewCaptureUtil;

.field private mCarrierLabel:Landroid/widget/TextView;

.field private mCarrierLabelHeight:F

.field private mCarrierLableStartPading:I

.field private mCarrierLableStartPadingForTab:I

.field private mClearAll:Landroid/view/View;

.field private mClearAllDrawable:Landroid/widget/ImageView;

.field private mClearAllLabel:Landroid/widget/TextView;

.field private mClearAllTouchDown:Z

.field private mClearAllVisible:Z

.field private mClearX:F

.field private mClearY:F

.field private mClockAnimationTarget:I

.field private mClockAnimator:Landroid/animation/ObjectAnimator;

.field private mClockView:Landroid/widget/TextView;

.field private mCocktailBarPresent:Z

.field private mConflictingQsExpansionGesture:Z

.field private mContext:Landroid/content/Context;

.field private mCoverHolder:Landroid/widget/FrameLayout;

.field private mCueAnimator:Landroid/view/animation/Animation;

.field public mCueIsFadedOut:Z

.field private mDisableTouchEvent:Z

.field private mDisableUpdateNotificationStack:Z

.field private mDispatchInitBouncerState:Z

.field private mDispatchInitState:I

.field private mDispatchInitX:F

.field private mDispatchInitY:F

.field mDisplay:Landroid/view/Display;

.field private mDoubleTapCount:I

.field private mDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field private mDozeAnimationInterpolator:Landroid/view/animation/Interpolator;

.field private mDozing:Z

.field private mEmergencyModeActivated:Z

.field private mEmptyDragAmount:F

.field private mExtraMargin:I

.field private mExtraOverlayedMargin:I

.field private mFastOutLinearInterpolator:Landroid/view/animation/Interpolator;

.field private mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private mHandler:Landroid/os/Handler;

.field private mHasNotification:Z

.field private mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

.field private mHeaderAnimatingIn:Z

.field private final mHideBouncer:Ljava/lang/Runnable;

.field private mHideHeader:Z

.field private mInitialHeightOnTouch:F

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mIntercepting:Z

.field private mIsDetailviewMode:Z

.field private mIsDisableClockAndClear:Z

.field private mIsExpanding:Z

.field private mIsFirstExpanded:Z

.field public mIsFullyOpened:Z

.field private mIsLaunchTransitionFinished:Z

.field private mIsLaunchTransitionRunning:Z

.field private mIsQsonAnimating:Z

.field public mIsScreenon:Z

.field mIsStackScrollerTransparent:Z

.field private mIsUpwardFling:Z

.field private mKeyguardBouncerContainer:Landroid/view/View;

.field private mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

.field private mKeyguardMultiUserButton:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

.field private mKeyguardShowing:Z

.field private mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

.field private mKeyguardStatusBarAnimateAlpha:F

.field private mKeyguardStatusView:Landroid/view/View;

.field private mKeyguardStatusViewAnimating:Z

.field private mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

.field mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

.field private mLastAnnouncementWasQuickSettings:Z

.field private mLastAnnouncementforShade:Z

.field private mLastOverscroll:F

.field private mLastTouchX:F

.field private mLastTouchY:F

.field private mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

.field protected mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mMascotClicked:Z

.field private mMascotHandler:Landroid/os/Handler;

.field private mMascotView:Landroid/widget/LinearLayout;

.field mMaxHeightTranslationY:F

.field private mMoreNotificationCue:Landroid/view/View;

.field private mMoreNotificationCueRunnable:Ljava/lang/Runnable;

.field private mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

.field private mNotificationContainerParent:Landroid/widget/FrameLayout;

.field private mNotificationContentsRoot:Landroid/widget/FrameLayout;

.field private mNotificationScrimWaitDistance:I

.field private mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

.field private mNotificationTopPadding:I

.field private mNotificationsHeaderCollideDistance:I

.field mOldConfig:Landroid/content/res/Configuration;

.field private mOldLayoutDirection:I

.field private mOnlyAffordanceInThisMotion:Z

.field private mOrientationEventListener:Landroid/view/OrientationEventListener;

.field private mOwnerInfo:Landroid/widget/TextView;

.field private mOwnerInfoRefreshRunnable:Ljava/lang/Runnable;

.field mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

.field private mQConnectHeight:I

.field private mQConnectView:Landroid/view/View;

.field private mQSEditDivider:Landroid/view/View;

.field private mQsAnimatorExpand:Z

.field private mQsContainer:Lcom/android/systemui/qs/QSContainer;

.field private mQsContainerAnimator:Landroid/animation/ObjectAnimator;

.field private final mQsContainerAnimatorUpdater:Landroid/view/View$OnLayoutChangeListener;

.field private mQsExpandImmediate:Z

.field private mQsExpanded:Z

.field private mQsExpandedWhenExpandingStarted:Z

.field private mQsExpansionAnimator:Landroid/animation/ValueAnimator;

.field private mQsExpansionEnabled:Z

.field private mQsExpansionFromOverscroll:Z

.field private mQsExpansionHeight:F

.field private mQsFalsingThreshold:I

.field private mQsFixedHeight:I

.field private mQsFullyClosed:Z

.field public mQsFullyExpanded:Z

.field private mQsHsView:Landroid/widget/HorizontalScrollView;

.field private mQsMaxExpansionHeight:I

.field private mQsMinExpansionHeight:I

.field private mQsNavbarScrim:Landroid/view/View;

.field private mQsNotificationTopPaddingOnKeyguard:I

.field private mQsPanel:Lcom/android/systemui/qs/QSPanel;

.field private mQsPeekHeight:I

.field private mQsPreviousFixedHeight:I

.field private mQsPreviousPeekHeight:I

.field private mQsScrimEnabled:Z

.field private mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

.field private mQsTouchAboveFalsingThreshold:Z

.field private mQsTracking:Z

.field private mRemoteViews:Landroid/widget/RemoteViews;

.field private mReserveNotificationSpace:Landroid/view/View;

.field mScrollQsView:Z

.field private mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

.field private mScrollYOverride:I

.field private mSecClockBottom:Landroid/view/View;

.field private mSecClockHolder:Landroid/view/View;

.field private mSecKeyguardStatusView:Lcom/android/keyguard/sec/SecKeyguardStatusView;

.field private mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

.field private mStableCueRunnable:Ljava/lang/Runnable;

.field private mStackScrollerOverscrolling:Z

.field private final mStartHeaderSlidingIn:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private final mStatusBarAnimateAlphaListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mStatusBarMinHeight:I

.field private mStatusBarState:I

.field private final mTapTimeoutRunnable:Ljava/lang/Runnable;

.field private final mTemp2:[I

.field private mTempRect:Landroid/graphics/Rect;

.field private mTopPaddingAdjustment:I

.field private mTrackingPointer:I

.field private mTwoFingerQsExpandPossible:Z

.field private mUnlockIconActive:Z

.field private mUnlockMoveDistance:I

.field private final mUpdateHeader:Ljava/lang/Runnable;

.field private final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field newEV:Lcom/android/systemui/statusbar/ExpandableView;

.field oldEV:Lcom/android/systemui/statusbar/ExpandableView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 371
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->sBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 524
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 174
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDisplay:Landroid/view/Display;

    .line 175
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExtraMargin:I

    .line 176
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExtraOverlayedMargin:I

    .line 179
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCueIsFadedOut:Z

    .line 181
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$1;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMoreNotificationCueRunnable:Ljava/lang/Runnable;

    .line 187
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$2;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStableCueRunnable:Ljava/lang/Runnable;

    .line 194
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLableStartPading:I

    .line 195
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLableStartPadingForTab:I

    .line 198
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mActivityManager:Landroid/app/ActivityManager;

    .line 238
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    .line 252
    iput v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockAnimationTarget:I

    .line 271
    iput v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollYOverride:I

    .line 294
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsScrimEnabled:Z

    .line 314
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBarAnimateAlpha:F

    .line 321
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mEmergencyModeActivated:Z

    .line 323
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsQsonAnimating:Z

    .line 325
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHasNotification:Z

    .line 343
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsDetailviewMode:Z

    .line 348
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsDisableClockAndClear:Z

    .line 355
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    .line 356
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    .line 357
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandler:Landroid/os/Handler;

    .line 358
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDoubleTapCount:I

    .line 362
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMascotHandler:Landroid/os/Handler;

    .line 363
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMascotView:Landroid/widget/LinearLayout;

    .line 364
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mRemoteViews:Landroid/widget/RemoteViews;

    .line 370
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMultiUserButton:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    .line 778
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollQsView:Z

    .line 1155
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsUpwardFling:Z

    .line 1192
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$10;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$10;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 1199
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$11;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$11;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOwnerInfoRefreshRunnable:Ljava/lang/Runnable;

    .line 1356
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTempRect:Landroid/graphics/Rect;

    .line 1358
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitBouncerState:Z

    .line 1368
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHideBouncer:Ljava/lang/Runnable;

    .line 1375
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->newEV:Lcom/android/systemui/statusbar/ExpandableView;

    .line 1376
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->oldEV:Lcom/android/systemui/statusbar/ExpandableView;

    .line 1377
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isSameNotification:Z

    .line 1595
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTemp2:[I

    .line 2099
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$14;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$14;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardStatusViewInvisibleEndRunnable:Ljava/lang/Runnable;

    .line 2110
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardStatusViewVisibleEndRunnable:Ljava/lang/Runnable;

    .line 2117
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$16;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$16;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateHeaderSlidingInListener:Landroid/animation/Animator$AnimatorListener;

    .line 2127
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$17;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$17;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainerAnimatorUpdater:Landroid/view/View$OnLayoutChangeListener;

    .line 2144
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$18;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$18;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStartHeaderSlidingIn:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 2177
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$19;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$19;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardStatusBarInvisibleEndRunnable:Ljava/lang/Runnable;

    .line 2197
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$20;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$20;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarAnimateAlphaListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 2908
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsStackScrollerTransparent:Z

    .line 2989
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMaxHeightTranslationY:F

    .line 3457
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$25;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$25;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 3550
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOldConfig:Landroid/content/res/Configuration;

    .line 3941
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$27;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$27;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUpdateHeader:Ljava/lang/Runnable;

    .line 3948
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isNeedLockscreenCapture()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->LOCKSCREEN_CAPTURE_ENABLED:Z

    .line 4094
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDisableTouchEvent:Z

    .line 4127
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$29;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$29;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 525
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setWillNotDraw(Z)V

    .line 527
    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportStyleTransition(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    new-instance v0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

    invoke-direct {v0, p1}, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

    .line 533
    :cond_0
    invoke-static {}, Landroid/app/enterprise/knoxcustom/SystemManager;->getInstance()Landroid/app/enterprise/knoxcustom/SystemManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    .line 534
    invoke-static {}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getInstance()Landroid/app/enterprise/knoxcustom/ProKioskManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    .line 537
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    .line 539
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 540
    new-instance v0, Lcom/android/systemui/keyguard/ViewCaptureUtil;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/keyguard/ViewCaptureUtil;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCaptureView:Lcom/android/systemui/keyguard/ViewCaptureUtil;

    .line 541
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->runMoreCueAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMoreNotificationCue:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/systemui/statusbar/phone/NotificationPanelView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .param p1, "x1"    # I

    .prologue
    .line 127
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDoubleTapCount:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/keyguard/sec/SecKeyguardStatusView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSecKeyguardStatusView:Lcom/android/keyguard/sec/SecKeyguardStatusView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHasNotification:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .param p1, "x1"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStackScrollerOverscrolling:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .param p1, "x1"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionFromOverscroll:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQsState()V

    return-void
.end method

.method static synthetic access$1702(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .param p1, "x1"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusViewAnimating:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/phone/NotificationPanelView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .param p1, "x1"    # I

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setMascotViewVisible(I)V

    return-void
.end method

.method static synthetic access$1902(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .param p1, "x1"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeaderAnimatingIn:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setPanelEndMagin()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainerAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .param p1, "x1"    # Landroid/animation/ObjectAnimator;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainerAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/View$OnLayoutChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainerAnimatorUpdater:Landroid/view/View$OnLayoutChangeListener;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 127
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/animation/Animator$AnimatorListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateHeaderSlidingInListener:Landroid/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/systemui/statusbar/phone/NotificationPanelView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .param p1, "x1"    # F

    .prologue
    .line 127
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBarAnimateAlpha:F

    return p1
.end method

.method static synthetic access$2602(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .param p1, "x1"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsQsonAnimating:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/systemui/statusbar/phone/NotificationPanelView;F)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .param p1, "x1"    # F

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/phone/ObservableScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/systemui/statusbar/phone/NotificationPanelView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .param p1, "x1"    # I

    .prologue
    .line 127
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollYOverride:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .param p1, "x1"    # Z

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestScrollerTopPaddingUpdate(Z)V

    return-void
.end method

.method static synthetic access$3002(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    return v0
.end method

.method static synthetic access$3200(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationContentsRoot:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/qs/QSPanel;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsUpwardFling:Z

    return v0
.end method

.method static synthetic access$3800(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    return v0
.end method

.method static synthetic access$3900(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAllVisible:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/NotificationOverflowContainer;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/keyguard/KeyguardSecurityContainer;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    return-object v0
.end method

.method static synthetic access$4102(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/keyguard/KeyguardSecurityContainer;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .param p1, "x1"    # Lcom/android/keyguard/KeyguardSecurityContainer;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    return-object p1
.end method

.method static synthetic access$4200(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStableCueRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCueAnimator:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMoreNotificationCueRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 127
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    return v0
.end method

.method static synthetic access$4700(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAllLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 127
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLableStartPadingForTab:I

    return v0
.end method

.method static synthetic access$4900(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 127
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLableStartPading:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/keyguard/ViewCaptureUtil;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCaptureView:Lcom/android/systemui/keyguard/ViewCaptureUtil;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/qs/QSContainer;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .param p1, "x1"    # Landroid/animation/ObjectAnimator;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 127
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockAnimationTarget:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/systemui/statusbar/phone/NotificationPanelView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .param p1, "x1"    # I

    .prologue
    .line 127
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockAnimationTarget:I

    return p1
.end method

.method private animateHeaderSlidingIn()V
    .locals 2

    .prologue
    .line 2172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeaderAnimatingIn:Z

    .line 2173
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStartHeaderSlidingIn:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2175
    return-void
.end method

.method private animateKeyguardStatusBarIn()V
    .locals 4

    .prologue
    .line 2206
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setVisibility(I)V

    .line 2207
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setAlpha(F)V

    .line 2208
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozeAnimationInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarAnimateAlphaListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2215
    return-void
.end method

.method private animateKeyguardStatusBarOut()V
    .locals 6

    .prologue
    .line 2187
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getKeyguardFadingAwayDelay()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getKeyguardFadingAwayDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarAnimateAlphaListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardStatusBarInvisibleEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2195
    return-void
.end method

.method private calculatePanelHeightQsExpanded()I
    .locals 7

    .prologue
    .line 2865
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getEmptyBottomMargin()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getTopPadding()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v2, v4

    .line 2872
    .local v2, "notificationHeight":F
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v4

    if-nez v4, :cond_0

    .line 2874
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getEmptyShadeViewHeight()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getBottomStackPeekSize()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCollapseSecondCardPadding()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v2, v4

    .line 2878
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    .line 2881
    .local v1, "maxQsHeight":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_1

    .line 2882
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2884
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotificationTopPadding()I

    move-result v4

    add-int v5, v1, v4

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTopPaddingAdjustment:I

    :goto_0
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    add-float v3, v4, v2

    .line 2890
    .local v3, "totalHeight":F
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-lez v4, :cond_2

    .line 2891
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getMinStackHeight()I

    move-result v4

    add-int/2addr v4, v1

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotificationTopPadding()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getScrollViewScrollY()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v0, v4

    .line 2895
    .local v0, "fullyCollapsedHeight":F
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 2897
    .end local v0    # "fullyCollapsedHeight":F
    :cond_2
    float-to-int v4, v3

    return v4

    .line 2884
    .end local v3    # "totalHeight":F
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private calculatePanelHeightShade()I
    .locals 4

    .prologue
    .line 2857
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getEmptyBottomMargin()I

    move-result v0

    .line 2858
    .local v0, "emptyBottomMargin":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTopPaddingAdjustment:I

    sub-int v1, v2, v3

    .line 2860
    .local v1, "maxHeight":I
    int-to-float v2, v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getTopPaddingOverflow()F

    move-result v3

    add-float/2addr v2, v3

    float-to-int v1, v2

    .line 2861
    return v1
.end method

.method private calculateQsTopPadding()F
    .locals 6

    .prologue
    .line 2565
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandedWhenExpandingStarted:Z

    if-eqz v3, :cond_2

    .line 2572
    :cond_0
    const/4 v1, 0x0

    .line 2575
    .local v1, "maxNotifications":I
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getTempQsMaxExpansion()I

    move-result v2

    .line 2576
    .local v2, "maxQs":I
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2579
    .local v0, "max":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getExpandedFraction()F

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v4, v4

    int-to-float v5, v0

    invoke-static {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->interpolate(FFF)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    .line 2591
    .end local v0    # "max":I
    .end local v1    # "maxNotifications":I
    .end local v2    # "maxQs":I
    :goto_1
    return v3

    .restart local v1    # "maxNotifications":I
    .restart local v2    # "maxQs":I
    :cond_1
    move v0, v2

    .line 2576
    goto :goto_0

    .line 2581
    .end local v1    # "maxNotifications":I
    .end local v2    # "maxQs":I
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_3

    .line 2582
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    goto :goto_1

    .line 2583
    :cond_3
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollYOverride:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_4

    .line 2587
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getIntrinsicPadding()I

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationTopPadding:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v5, v5

    invoke-static {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->interpolate(FFF)F

    move-result v3

    goto :goto_1

    .line 2591
    :cond_4
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    goto :goto_1
.end method

.method private cancelAnimation()V
    .locals 1

    .prologue
    .line 2626
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 2627
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2629
    :cond_0
    return-void
.end method

.method private findKeguardMumButtonViews(FF)Z
    .locals 7
    .param p1, "touchX"    # F
    .param p2, "touchY"    # F

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1627
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTemp2:[I

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getLocationOnScreen([I)V

    .line 1628
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTemp2:[I

    aget v6, v6, v5

    int-to-float v6, v6

    add-float/2addr p1, v6

    .line 1629
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTemp2:[I

    aget v6, v6, v4

    int-to-float v6, v6

    add-float/2addr p2, v6

    .line 1631
    sget-boolean v6, Lcom/android/systemui/statusbar/Feature;->mSupportLockscreenMumButton:Z

    if-eqz v6, :cond_3

    .line 1632
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMultiUserButton:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMultiUserButton:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 1635
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMultiUserButton:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getTop()I

    move-result v6

    int-to-float v3, v6

    .line 1636
    .local v3, "top":F
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMultiUserButton:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getBottom()I

    move-result v6

    int-to-float v0, v6

    .line 1637
    .local v0, "bottom":F
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMultiUserButton:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getX()F

    move-result v1

    .line 1638
    .local v1, "left":F
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMultiUserButton:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getRight()I

    move-result v6

    int-to-float v2, v6

    .line 1641
    .local v2, "right":F
    cmpl-float v6, p2, v3

    if-ltz v6, :cond_1

    cmpg-float v6, p2, v0

    if-gtz v6, :cond_1

    cmpl-float v6, p1, v1

    if-ltz v6, :cond_1

    cmpg-float v6, p1, v2

    if-gtz v6, :cond_1

    .line 1661
    .end local v0    # "bottom":F
    .end local v1    # "left":F
    .end local v2    # "right":F
    .end local v3    # "top":F
    :cond_0
    :goto_0
    return v4

    .line 1646
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    iget-object v6, v6, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcherContainer:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;

    if-eqz v6, :cond_3

    .line 1647
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    iget-object v6, v6, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcherContainer:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;->getVisibility()I

    move-result v6

    if-nez v6, :cond_3

    .line 1648
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    iget-object v6, v6, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcherContainer:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;->getTop()I

    move-result v6

    int-to-float v3, v6

    .line 1649
    .restart local v3    # "top":F
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    iget-object v6, v6, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcherContainer:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;->getBottom()I

    move-result v6

    int-to-float v0, v6

    .line 1650
    .restart local v0    # "bottom":F
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    iget-object v6, v6, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcherContainer:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;->getX()F

    move-result v1

    .line 1651
    .restart local v1    # "left":F
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    iget-object v6, v6, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcherContainer:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;->getRight()I

    move-result v6

    int-to-float v2, v6

    .line 1654
    .restart local v2    # "right":F
    cmpl-float v6, p2, v3

    if-ltz v6, :cond_2

    cmpg-float v6, p2, v0

    if-gtz v6, :cond_2

    cmpl-float v6, p1, v1

    if-ltz v6, :cond_2

    cmpg-float v6, p1, v2

    if-lez v6, :cond_0

    .line 1657
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    invoke-virtual {v6, v4}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->hide(Z)V

    .end local v0    # "bottom":F
    .end local v1    # "left":F
    .end local v2    # "right":F
    .end local v3    # "top":F
    :cond_3
    move v4, v5

    .line 1661
    goto :goto_0
.end method

.method private findMascotRemoteViews(FF)Z
    .locals 7
    .param p1, "touchX"    # F
    .param p2, "touchY"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1605
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isDCMModel()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1606
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/sec/KeyguardProperties;->isDcmLauncher(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isMascotEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMascotView:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    .line 1608
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0497

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1609
    .local v2, "mascotTopPadding":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a04b1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1610
    .local v0, "mascotHeight":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a04b2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1612
    .local v1, "mascotTopMargin":I
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTemp2:[I

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getLocationOnScreen([I)V

    .line 1613
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTemp2:[I

    aget v5, v5, v4

    int-to-float v5, v5

    add-float/2addr p1, v5

    .line 1614
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTemp2:[I

    aget v5, v5, v3

    int-to-float v5, v5

    add-float/2addr p2, v5

    .line 1616
    add-int v5, v2, v1

    int-to-float v5, v5

    cmpl-float v5, p2, v5

    if-ltz v5, :cond_0

    add-int v5, v2, v1

    add-int/2addr v5, v0

    int-to-float v5, v5

    cmpg-float v5, p2, v5

    if-gtz v5, :cond_0

    .line 1622
    .end local v0    # "mascotHeight":I
    .end local v1    # "mascotTopMargin":I
    .end local v2    # "mascotTopPadding":I
    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method private findNotificationView(FF)Lcom/android/systemui/statusbar/ExpandableView;
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1598
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTemp2:[I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getLocationOnScreen([I)V

    .line 1599
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTemp2:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 1600
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTemp2:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    int-to-float v0, v0

    add-float/2addr p2, v0

    .line 1601
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAtRawPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v0

    return-object v0
.end method

.method private flingExpandsQs(F)Z
    .locals 4
    .param p1, "vel"    # F

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1699
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isBelowFalsingThreshold()Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 1705
    :cond_0
    :goto_0
    return v0

    .line 1702
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->getMinVelocityPxPerSecond()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 1703
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1705
    :cond_2
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private flingQsWithCurrentVelocity(Z)V
    .locals 2
    .param p1, "isCancelMotionEvent"    # Z

    .prologue
    .line 1694
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getCurrentVelocity()F

    move-result v0

    .line 1695
    .local v0, "vel":F
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingExpandsQs(F)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingSettings(FZ)V

    .line 1696
    return-void

    .line 1695
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private flingSettings(FZ)V
    .locals 1
    .param p1, "vel"    # F
    .param p2, "expand"    # Z

    .prologue
    .line 2662
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingSettings(FZLjava/lang/Runnable;)V

    .line 2663
    return-void
.end method

.method private flingSettings(FZLjava/lang/Runnable;)V
    .locals 8
    .param p1, "vel"    # F
    .param p2, "expand"    # Z
    .param p3, "onFinishRunnable"    # Ljava/lang/Runnable;

    .prologue
    const/4 v6, 0x2

    const/4 v7, 0x1

    .line 2666
    if-eqz p2, :cond_2

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v3, v4

    .line 2667
    .local v3, "target":F
    :goto_0
    move v2, p2

    .line 2668
    .local v2, "isExpand":Z
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    cmpl-float v4, v3, v4

    if-nez v4, :cond_4

    .line 2669
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollYOverride:I

    .line 2670
    if-eqz p3, :cond_0

    .line 2671
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 2674
    :cond_0
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHasNotification:Z

    if-nez v4, :cond_1

    if-nez v2, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isShadeLockedState()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2675
    sget-object v4, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    const-string v5, "flingSettings, shade locked -> keyguard"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2676
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v4

    if-ne v4, v6, :cond_3

    .line 2677
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->goToKeyguard()V

    .line 2732
    :cond_1
    :goto_1
    return-void

    .line 2666
    .end local v2    # "isExpand":Z
    .end local v3    # "target":F
    :cond_2
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v3, v4

    goto :goto_0

    .line 2679
    .restart local v2    # "isExpand":Z
    .restart local v3    # "target":F
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->goToCover()V

    goto :goto_1

    .line 2684
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isBelowFalsingThreshold()Z

    move-result v1

    .line 2685
    .local v1, "belowFalsingThreshold":Z
    if-eqz v1, :cond_5

    .line 2686
    const/4 p1, 0x0

    .line 2688
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v4, v7}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->setBlockFlinging(Z)V

    .line 2689
    new-array v4, v6, [F

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    aput v6, v4, v5

    aput v3, v4, v7

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 2690
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    invoke-virtual {v4, v0, v5, v3, p1}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFF)V

    .line 2691
    if-eqz v1, :cond_6

    .line 2692
    const-wide/16 v4, 0x15e

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2694
    :cond_6
    new-instance v4, Lcom/android/systemui/statusbar/phone/NotificationPanelView$21;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$21;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2701
    new-instance v4, Lcom/android/systemui/statusbar/phone/NotificationPanelView$22;

    invoke-direct {v4, p0, p3, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$22;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Ljava/lang/Runnable;Z)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2729
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 2730
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    .line 2731
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsAnimatorExpand:Z

    goto :goto_1
.end method

.method private getCurrentVelocity()F
    .locals 2

    .prologue
    .line 2618
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 2619
    const/4 v0, 0x0

    .line 2622
    :goto_0
    return v0

    .line 2621
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 2622
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    goto :goto_0
.end method

.method private getFalsingThreshold()I
    .locals 2

    .prologue
    .line 1931
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isScreenOnComingFromTouch()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v0, 0x3fc00000    # 1.5f

    .line 1932
    .local v0, "factor":F
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFalsingThreshold:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1

    .line 1931
    .end local v0    # "factor":F
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method private getHeaderExpansionFraction()F
    .locals 1

    .prologue
    .line 2449
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-nez v0, :cond_0

    .line 2450
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v0

    .line 2452
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method private getHeaderTranslation()F
    .locals 8

    .prologue
    const v3, 0x3fcccccd    # 1.6f

    const v2, 0x40033333    # 2.05f

    const/4 v5, 0x0

    .line 2991
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardState()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_1

    .line 3046
    :cond_0
    :goto_0
    return v5

    .line 2995
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v4

    if-nez v4, :cond_3

    .line 2996
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandedHeight:F

    div-float/2addr v3, v2

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-gez v3, :cond_0

    .line 3004
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandedHeight:F

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSingleLine:Z

    if-nez v4, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    :cond_2
    div-float v2, v3, v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v3, v3

    sub-float v5, v2, v3

    goto :goto_0

    .line 3014
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getTranslationY()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 3015
    .local v1, "translationY":F
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v4, v4

    cmpl-float v4, v4, v1

    if-lez v4, :cond_6

    .line 3016
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v4, v4

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMaxHeightTranslationY:F

    cmpl-float v4, v4, v6

    if-lez v4, :cond_4

    .line 3017
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v4, v4

    iput v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMaxHeightTranslationY:F

    .line 3026
    :cond_4
    :goto_1
    const/4 v0, 0x0

    .line 3027
    .local v0, "result":F
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v4, :cond_7

    .line 3029
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getTranslationY()F

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSingleLine:Z

    if-eqz v5, :cond_5

    move v2, v3

    :cond_5
    div-float v0, v4, v2

    :goto_2
    move v5, v0

    .line 3046
    goto :goto_0

    .line 3020
    .end local v0    # "result":F
    :cond_6
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMaxHeightTranslationY:F

    cmpl-float v4, v1, v4

    if-lez v4, :cond_4

    .line 3021
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMaxHeightTranslationY:F

    goto :goto_1

    .line 3034
    .restart local v0    # "result":F
    :cond_7
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getTranslationY()F

    move-result v6

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isQsBrightnessVisible()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0a03ef

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    iget v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMaxHeightTranslationY:F

    div-float/2addr v4, v7

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getTranslationY()F

    move-result v7

    mul-float/2addr v4, v7

    :goto_3
    add-float/2addr v6, v4

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isQsQconnectSfinderVisible()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0a0413

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    iget v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMaxHeightTranslationY:F

    div-float/2addr v4, v7

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getTranslationY()F

    move-result v7

    mul-float/2addr v4, v7

    :goto_4
    add-float/2addr v4, v6

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSingleLine:Z

    if-eqz v5, :cond_a

    :goto_5
    div-float v0, v4, v3

    goto :goto_2

    :cond_8
    move v4, v5

    goto :goto_3

    :cond_9
    move v4, v5

    goto :goto_4

    :cond_a
    move v3, v2

    goto :goto_5
.end method

.method private getKeyguardOrLockScreenString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2431
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isKeyguardState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isDismissingKeyguard()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2435
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0325

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2437
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getNotificationsTopY()F
    .locals 1

    .prologue
    .line 3082
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 3083
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getExpandedHeight()F

    move-result v0

    .line 3085
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotificationsTopY()F

    move-result v0

    goto :goto_0
.end method

.method private getQsExpansionFraction()F
    .locals 4

    .prologue
    .line 1714
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getTempQsMaxExpansion()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method private getScrollViewScrollY()I
    .locals 2

    .prologue
    .line 2901
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollYOverride:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    if-nez v0, :cond_0

    .line 2902
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollYOverride:I

    .line 2904
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->getScrollY()I

    move-result v0

    goto :goto_0
.end method

.method private getTempQsMaxExpansion()I
    .locals 3

    .prologue
    .line 2849
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    .line 2850
    .local v0, "qsTempMaxExpansion":I
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollYOverride:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 2851
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollYOverride:I

    sub-int/2addr v0, v1

    .line 2853
    :cond_0
    return v0
.end method

.method private handleQsDown(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1826
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->shouldQuickSettingsIntercept(FFF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1828
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    .line 1829
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted()V

    .line 1830
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    .line 1831
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    .line 1832
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    .line 1835
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    if-eqz v0, :cond_0

    .line 1836
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onExpandingFinished()V

    .line 1839
    :cond_0
    return-void
.end method

.method private initVelocityTracker()V
    .locals 1

    .prologue
    .line 2611
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2612
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2614
    :cond_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2615
    return-void
.end method

.method private static interpolate(FFF)F
    .locals 2
    .param p0, "t"    # F
    .param p1, "start"    # F
    .param p2, "end"    # F

    .prologue
    .line 3894
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p0

    mul-float/2addr v0, p1

    mul-float v1, p0, p2

    add-float/2addr v0, v1

    return v0
.end method

.method private isBelowFalsingThreshold()Z
    .locals 1

    .prologue
    .line 1710
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTouchAboveFalsingThreshold:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isKeyguardState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEdgeGestureBlockedApp()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 4102
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    const-string v5, "multiwindow_facade"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    const/16 v5, 0xa

    const/4 v6, 0x7

    invoke-virtual {v3, v5, v6}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getRunningTasks(II)Ljava/util/List;

    move-result-object v1

    .line 4107
    .local v1, "runningTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 4108
    .local v2, "tinfo":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v5, 0x4000000

    invoke-virtual {v3, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    .line 4115
    .end local v2    # "tinfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :goto_0
    return v3

    .line 4111
    .restart local v2    # "tinfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_1
    iget-boolean v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->isHomeType:Z

    if-eqz v3, :cond_0

    move v3, v4

    .line 4112
    goto :goto_0

    .line 4115
    .end local v2    # "tinfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isInBouncerFrame(FF)Z
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v2, 0x0

    .line 1569
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBouncerContainer:Landroid/view/View;

    const v4, 0x7f0f010f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1571
    .local v0, "bouncer":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1572
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1573
    .local v1, "bouncerRect":Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1575
    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_0

    iget v3, v1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_0

    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    cmpl-float v3, p2, v3

    if-ltz v3, :cond_0

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    cmpg-float v3, p2, v3

    if-gtz v3, :cond_0

    const/4 v2, 0x1

    .line 1577
    .end local v1    # "bouncerRect":Landroid/graphics/Rect;
    :cond_0
    return v2
.end method

.method private isInEmergencyButtonBouncerFrame(FF)Z
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v2, 0x0

    .line 1582
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBouncerContainer:Landroid/view/View;

    const v4, 0x7f0f0150

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1583
    .local v0, "bouncer":Landroid/view/View;
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardProperties;->isPhoneShortcutEnable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1585
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1586
    .local v1, "bouncerRect":Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1587
    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_0

    iget v3, v1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_0

    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    cmpl-float v3, p2, v3

    if-ltz v3, :cond_0

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    cmpg-float v3, p2, v3

    if-gtz v3, :cond_0

    const/4 v2, 0x1

    .line 1590
    .end local v1    # "bouncerRect":Landroid/graphics/Rect;
    :cond_0
    return v2
.end method

.method private isInQsArea(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1820
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->getLeft()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->getRight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getBottomMostNotificationBottom()F

    move-result v0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSContainer;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSContainer;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInSettings()Z
    .locals 1

    .prologue
    .line 2804
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    return v0
.end method

.method private isUserSwitcherContainerVisible()Z
    .locals 1

    .prologue
    .line 1665
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcherContainer:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;

    if-eqz v0, :cond_0

    .line 1666
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcherContainer:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1667
    const/4 v0, 0x1

    .line 1670
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private knox_Tap(Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4369
    const/4 v1, 0x0

    .line 4370
    .local v1, "tapped":Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    invoke-virtual {v2}, Landroid/app/enterprise/knoxcustom/SystemManager;->getScreenOffOnStatusBarDoubleTapState()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getStatusBarHeight()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 4372
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDoubleTapCount:I

    if-nez v2, :cond_2

    .line 4373
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 4375
    const/4 v1, 0x1

    .line 4383
    :cond_0
    :goto_0
    if-eqz v1, :cond_5

    .line 4384
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDoubleTapCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDoubleTapCount:I

    .line 4385
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDoubleTapCount:I

    if-ne v2, v5, :cond_4

    .line 4386
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4388
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4400
    :cond_1
    :goto_1
    return-void

    .line 4378
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v2, v5, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v6, :cond_0

    .line 4380
    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    .line 4389
    :cond_4
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDoubleTapCount:I

    if-lt v2, v6, :cond_1

    .line 4390
    iput v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDoubleTapCount:I

    .line 4391
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4392
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 4394
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    goto :goto_1

    .line 4397
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_5
    sget-object v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    const-string v3, "interceptTouchEvent: not tapped"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private knox_setBarState()V
    .locals 5

    .prologue
    .line 4403
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    invoke-virtual {v3}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getProKioskState()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4404
    sget-object v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    const-string v4, "KnoxCustom: Sealed Keyguard setBarState"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4405
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 4406
    .local v2, "uri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const-string v4, "getSealedStatusBarMode"

    invoke-virtual {v3, v2, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getKnoxIntValue(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v1

    .line 4408
    .local v1, "sealedStatusBarMode":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 4409
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const-string v4, "getSealedStatusBarIconsState"

    invoke-virtual {v3, v2, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getKnoxBoolValue(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    .line 4411
    .local v0, "sealedStatusBarIconState":Z
    if-nez v0, :cond_0

    .line 4413
    if-nez v0, :cond_0

    .line 4414
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setVisibility(I)V

    .line 4418
    .end local v0    # "sealedStatusBarIconState":Z
    .end local v1    # "sealedStatusBarMode":I
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method private onQsExpansionStarted()V
    .locals 1

    .prologue
    .line 1977
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted(I)V

    .line 1978
    return-void
.end method

.method private onQsExpansionStarted(I)V
    .locals 4
    .param p1, "overscrollAmount"    # I

    .prologue
    const/4 v3, 0x0

    .line 1981
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->cancelAnimation()V

    .line 1984
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    int-to-float v2, p1

    sub-float v0, v1, v2

    .line 1985
    .local v0, "height":F
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->getScrollY()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1986
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->getScrollY()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollYOverride:I

    .line 1988
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setBrightnessControllerChangeLayer(Z)V

    .line 1989
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v1, v3, v3}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->scrollTo(II)V

    .line 1990
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    .line 1991
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestPanelHeightUpdate()V

    .line 1992
    return-void
.end method

.method private onQsTouch(Landroid/view/MotionEvent;)V
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v12, -0x1

    const/4 v11, 0x0

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 1858
    iget v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    .line 1859
    .local v5, "pointerIndex":I
    if-gez v5, :cond_0

    .line 1860
    const/4 v5, 0x0

    .line 1861
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    iput v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    .line 1863
    :cond_0
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 1864
    .local v8, "y":F
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 1866
    .local v7, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 1928
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 1868
    :pswitch_1
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    .line 1869
    iput v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    .line 1870
    iput v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    .line 1871
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted()V

    .line 1872
    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iput v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    .line 1873
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->initVelocityTracker()V

    .line 1874
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 1878
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v10

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    .line 1879
    .local v6, "upPointer":I
    iget v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    if-ne v10, v6, :cond_1

    .line 1881
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    if-eq v10, v6, :cond_2

    .line 1882
    .local v2, "newIndex":I
    :goto_1
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 1883
    .local v4, "newY":F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 1884
    .local v3, "newX":F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    .line 1885
    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iput v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    .line 1886
    iput v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    .line 1887
    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    goto :goto_0

    .end local v2    # "newIndex":I
    .end local v3    # "newX":F
    .end local v4    # "newY":F
    :cond_2
    move v2, v9

    .line 1881
    goto :goto_1

    .line 1892
    .end local v6    # "upPointer":I
    :pswitch_3
    iget v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    sub-float v1, v8, v10

    .line 1893
    .local v1, "h":F
    iget v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    add-float/2addr v10, v1

    invoke-direct {p0, v10}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    .line 1894
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getFalsingThreshold()I

    move-result v10

    int-to-float v10, v10

    cmpl-float v10, v1, v10

    if-ltz v10, :cond_3

    .line 1895
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTouchAboveFalsingThreshold:Z

    .line 1897
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 1902
    .end local v1    # "h":F
    :pswitch_4
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    .line 1903
    iput v12, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    .line 1904
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    .line 1905
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v0

    .line 1906
    .local v0, "fraction":F
    cmpl-float v10, v0, v11

    if-nez v10, :cond_4

    iget v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    cmpl-float v10, v8, v10

    if-ltz v10, :cond_8

    :cond_4
    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v10, v0, v10

    if-nez v10, :cond_5

    iget v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    cmpg-float v10, v8, v10

    if-gtz v10, :cond_8

    .line 1908
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_7

    :goto_2
    invoke-direct {p0, v9}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingQsWithCurrentVelocity(Z)V

    .line 1922
    :cond_6
    :goto_3
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_1

    .line 1923
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->recycle()V

    .line 1924
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_0

    :cond_7
    move v9, v2

    .line 1908
    goto :goto_2

    .line 1911
    :cond_8
    iput v12, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollYOverride:I

    .line 1913
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHasNotification:Z

    if-nez v9, :cond_6

    cmpl-float v9, v0, v11

    if-nez v9, :cond_6

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isShadeLockedState()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1914
    sget-object v9, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    const-string v10, "ACTION_CANCEL/UP, shade locked -> keyguard"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1915
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_9

    .line 1916
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->goToKeyguard()V

    goto :goto_3

    .line 1918
    :cond_9
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->goToCover()V

    goto :goto_3

    .line 1866
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private registerReceiver()V
    .locals 5

    .prologue
    .line 374
    sget-object v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->sBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 375
    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$3;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    sput-object v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->sBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 425
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 426
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.nttdocomo.android.mascot.widget.LockScreenMascotWidget.ACTION_SCREEN_UNLOCK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 427
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->sBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.nttdocomo.android.screenlockservice.DCM_SCREEN"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 431
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private requestScrollerTopPaddingUpdate(Z)V
    .locals 7
    .param p1, "animate"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2596
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->calculateQsTopPadding()F

    move-result v4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->getScrollY()I

    move-result v5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateNextTopPaddingChange:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v6, :cond_3

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    if-nez v6, :cond_1

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    if-eqz v6, :cond_3

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandedWhenExpandingStarted:Z

    if-eqz v6, :cond_3

    :cond_1
    :goto_1
    invoke-virtual {v3, v4, v5, v0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateTopPadding(FIZZ)V

    .line 2601
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateNextTopPaddingChange:Z

    .line 2602
    return-void

    :cond_2
    move v0, v1

    .line 2596
    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_1
.end method

.method private resetDownStates(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1676
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 1677
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOnlyAffordanceInThisMotion:Z

    .line 1678
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTouchAboveFalsingThreshold:Z

    .line 1680
    :cond_0
    return-void
.end method

.method private resizeQsPanelHeight(F)V
    .locals 3
    .param p1, "height"    # F

    .prologue
    .line 2532
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2533
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    float-to-int v1, p1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2534
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/QSContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2535
    float-to-int v1, p1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    if-gt v1, v2, :cond_0

    .line 2536
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsFirstExpanded:Z

    .line 2540
    :goto_0
    return-void

    .line 2538
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsFirstExpanded:Z

    goto :goto_0
.end method

.method private runMoreCueAnimation()V
    .locals 2

    .prologue
    .line 3441
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCueAnimator:Landroid/view/animation/Animation;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$24;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$24;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 3454
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMoreNotificationCue:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCueAnimator:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3455
    return-void
.end method

.method private setKeyguardStatusViewVisibility(IZZ)V
    .locals 6
    .param p1, "statusBarState"    # I
    .param p2, "keyguardFadingAway"    # Z
    .param p3, "goingToFullShade"    # Z

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 2250
    if-nez p2, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isKeyguardState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->isKeyguardState(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p3, :cond_3

    .line 2252
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2253
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusViewAnimating:Z

    .line 2254
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xa0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardStatusViewInvisibleEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 2260
    if-eqz p2, :cond_2

    .line 2261
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getKeyguardFadingAwayDelay()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getKeyguardFadingAwayDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2298
    :cond_2
    :goto_0
    return-void

    .line 2266
    :cond_3
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isShadeLockedState(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->isKeyguardState(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2268
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2269
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2271
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setMascotViewVisible(I)V

    .line 2273
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusViewAnimating:Z

    .line 2274
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 2275
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x140

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardStatusViewVisibleEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 2281
    :cond_4
    invoke-static {p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->isKeyguardState(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2282
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2283
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusViewAnimating:Z

    .line 2284
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2286
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setMascotViewVisible(I)V

    .line 2288
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 2290
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2291
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusViewAnimating:Z

    .line 2292
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2294
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setMascotViewVisible(I)V

    .line 2296
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method private setListening(Z)V
    .locals 1
    .param p1, "listening"    # Z

    .prologue
    .line 3124
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setListening(Z)V

    .line 3125
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setListening(Z)V

    .line 3126
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSPanel;->setListening(Z)V

    .line 3127
    return-void
.end method

.method private setMarginOfBrightnessController(F)V
    .locals 6
    .param p1, "newHeight"    # F

    .prologue
    const/4 v5, 0x0

    .line 2543
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBrightnessView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2544
    .local v0, "marginParams":Landroid/view/ViewGroup$MarginLayoutParams;
    float-to-int v3, p1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBrightnessView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int v1, v3, v4

    .line 2545
    .local v1, "topMargin":I
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFixedHeight:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBrightnessView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQConnectView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int v2, v3, v4

    .line 2546
    .local v2, "topMarginTmp":I
    if-le v1, v2, :cond_0

    .line 2547
    move v1, v2

    .line 2549
    :cond_0
    invoke-virtual {v0, v5, v1, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 2550
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBrightnessView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->bringToFront()V

    .line 2552
    sget-object v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "M.O.B-V:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBrightnessView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", M:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2553
    return-void
.end method

.method private setMarginOfQuickConnectLayout()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2556
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQConnectView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2557
    .local v0, "marginParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFixedHeight:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQConnectView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int v1, v2, v3

    .line 2558
    .local v1, "topMargin":I
    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 2559
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBrightnessView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->bringToFront()V

    .line 2561
    sget-object v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "M.O.Q-V:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQConnectView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", M:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2562
    return-void
.end method

.method private setMascotViewVisible(I)V
    .locals 2
    .param p1, "visiblity"    # I

    .prologue
    .line 2083
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isDCMModel()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2096
    :goto_0
    return-void

    .line 2086
    :cond_0
    move v0, p1

    .line 2087
    .local v0, "tempVisiblity":I
    if-nez v0, :cond_1

    .line 2088
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isMascotEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2089
    const/16 v0, 0x8

    .line 2092
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardProperties;->isDcmLauncher(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2093
    const/16 v0, 0x8

    .line 2095
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMascotView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private setPanelEndMagin()V
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v9, -0x1

    const/4 v6, 0x0

    .line 715
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCocktailBarPresent:Z

    if-eqz v8, :cond_0

    .line 716
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v8

    if-nez v8, :cond_1

    move v5, v6

    .line 717
    .local v5, "shouldCocktailBarEnabled":Z
    :goto_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v8

    if-nez v8, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExtraOverlayedMargin:I

    .line 718
    .local v0, "endMargin":I
    :goto_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget-object v8, v8, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v8}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v8

    if-ne v8, v7, :cond_3

    :goto_2
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isRTLlanguage:Z

    .line 719
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 722
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v7}, Landroid/view/Display;->getRotation()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 740
    :goto_3
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 741
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v7, v5}, Lcom/android/systemui/qs/QSPanel;->SetCocktailBarEnabled(Z)V

    .line 742
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz v7, :cond_0

    .line 744
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->getMirror()Landroid/view/View;

    move-result-object v2

    .line 746
    .local v2, "mirror":Landroid/view/View;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v3, v9, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 750
    .local v3, "mirrorlp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e0060

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 752
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0349

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 753
    .local v4, "padding":I
    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v2, v4, v7, v4, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 755
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v7}, Landroid/view/Display;->getRotation()I

    move-result v7

    packed-switch v7, :pswitch_data_1

    .line 773
    :goto_4
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 776
    .end local v0    # "endMargin":I
    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v2    # "mirror":Landroid/view/View;
    .end local v3    # "mirrorlp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v4    # "padding":I
    .end local v5    # "shouldCocktailBarEnabled":Z
    :cond_0
    return-void

    :cond_1
    move v5, v7

    .line 716
    goto :goto_0

    .line 717
    .restart local v5    # "shouldCocktailBarEnabled":Z
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExtraMargin:I

    goto :goto_1

    .restart local v0    # "endMargin":I
    :cond_3
    move v7, v6

    .line 718
    goto :goto_2

    .line 724
    .restart local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :pswitch_0
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isRTLlanguage:Z

    if-eqz v7, :cond_4

    .line 725
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_3

    .line 727
    :cond_4
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_3

    .line 730
    :pswitch_1
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isRTLlanguage:Z

    if-eqz v7, :cond_5

    .line 731
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_3

    .line 733
    :cond_5
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_3

    .line 737
    :pswitch_2
    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_3

    .line 757
    .restart local v2    # "mirror":Landroid/view/View;
    .restart local v3    # "mirrorlp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v4    # "padding":I
    :pswitch_3
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isRTLlanguage:Z

    if-eqz v6, :cond_6

    .line 758
    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_4

    .line 760
    :cond_6
    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_4

    .line 763
    :pswitch_4
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isRTLlanguage:Z

    if-eqz v6, :cond_7

    .line 764
    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_4

    .line 766
    :cond_7
    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_4

    .line 770
    :pswitch_5
    invoke-virtual {v3, v6, v6, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_4

    .line 722
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 755
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private setQsExpanded(Z)V
    .locals 6
    .param p1, "expanded"    # Z

    .prologue
    .line 1995
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eq v3, p1, :cond_1

    const/4 v0, 0x1

    .line 1996
    .local v0, "changed":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 1997
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    .line 1998
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQsState()V

    .line 2000
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setInterceptDelegateEnabled(Z)V

    .line 2001
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setQsExpanded(Z)V

    .line 2002
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v3, p1}, Lcom/android/systemui/qs/QSPanel;->setExpanded(Z)V

    .line 2003
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v3, :cond_2

    .line 2004
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.systemui.statusbar.EXPAND_QUICKSETTING"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2011
    :goto_1
    :try_start_0
    const-string v3, "statusbar"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v2

    .line 2013
    .local v2, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v2, :cond_0

    .line 2014
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    invoke-interface {v2, v3}, Lcom/android/internal/statusbar/IStatusBarService;->setQuickSettingPanelExpandState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2037
    .end local v2    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_2
    return-void

    .line 1995
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2006
    .restart local v0    # "changed":Z
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.systemui.statusbar.COLLAPSED_QUICKSETTING"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_1

    .line 2016
    :catch_0
    move-exception v1

    .line 2017
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2
.end method

.method private setQsExpansion(F)V
    .locals 8
    .param p1, "height"    # F

    .prologue
    const v7, 0x7f0b0615

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2328
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v4, v4

    invoke-static {p1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 2333
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v4, v4

    cmpl-float v4, p1, v4

    if-nez v4, :cond_b

    move v1, v2

    .line 2334
    .local v1, "newExpanded":Z
    :goto_0
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    if-eq v4, v1, :cond_2

    .line 2335
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v4, v4

    cmpl-float v4, p1, v4

    if-nez v4, :cond_c

    move v4, v2

    :goto_1
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    .line 2336
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setBrightnessControllerChangeLayer(Z)V

    .line 2337
    :cond_0
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    invoke-static {v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->isKeyguardState(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2338
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateOverFlowView()V

    .line 2340
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateCarrierLabelView()V

    .line 2343
    :cond_1
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mSupportMumButton:Z

    if-eqz v4, :cond_2

    .line 2344
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMultiUserButton:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMultiUserButton:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    .line 2345
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMultiUserButton:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    if-eqz v4, :cond_d

    move v4, v3

    :goto_2
    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setClickable(Z)V

    .line 2352
    :cond_2
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    invoke-static {v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->isKeyguardState(I)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v4, :cond_3

    .line 2353
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_e

    .line 2354
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->goToCoveredShade(Landroid/view/View;)V

    .line 2361
    :cond_3
    :goto_3
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v4, v4

    cmpl-float v4, p1, v4

    if-lez v4, :cond_f

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez v4, :cond_f

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStackScrollerOverscrolling:Z

    if-nez v4, :cond_f

    .line 2362
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpanded(Z)V

    .line 2370
    :cond_4
    :goto_4
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    .line 2372
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsTranslation(F)V

    .line 2373
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestScrollerTopPaddingUpdate(Z)V

    .line 2374
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateNotificationScrim(F)V

    .line 2375
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v4, :cond_5

    .line 2376
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateHeaderKeyguard()V

    .line 2378
    :cond_5
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-nez v4, :cond_6

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v4, :cond_6

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStackScrollerOverscrolling:Z

    if-nez v4, :cond_6

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsScrimEnabled:Z

    if-eqz v4, :cond_6

    .line 2380
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsNavbarScrim:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 2385
    :cond_6
    const/4 v4, 0x0

    cmpl-float v4, p1, v4

    if-eqz v4, :cond_7

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    if-eqz v4, :cond_7

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastAnnouncementWasQuickSettings:Z

    if-nez v4, :cond_7

    .line 2390
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-nez v4, :cond_10

    .line 2391
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsFullyOpened:Z

    if-eqz v4, :cond_7

    .line 2392
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 2394
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastAnnouncementWasQuickSettings:Z

    .line 2410
    :cond_7
    :goto_5
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v4, v4

    cmpl-float v4, p1, v4

    if-nez v4, :cond_11

    move v0, v2

    .line 2411
    .local v0, "newClosed":Z
    :goto_6
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyClosed:Z

    if-eq v4, v0, :cond_a

    .line 2412
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v4, v4

    cmpl-float v4, p1, v4

    if-nez v4, :cond_8

    move v3, v2

    :cond_8
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyClosed:Z

    .line 2414
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyClosed:Z

    if-eqz v3, :cond_9

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    invoke-static {v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->isKeyguardState(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2415
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateOverFlowView()V

    .line 2417
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateCarrierLabelView()V

    .line 2421
    :cond_9
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mSwipeBlockNotification:Z

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v3

    if-eqz v3, :cond_a

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyClosed:Z

    if-eqz v3, :cond_a

    .line 2423
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3, v6, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->snapContentViews(Landroid/view/View;Z)V

    .line 2428
    :cond_a
    return-void

    .end local v0    # "newClosed":Z
    .end local v1    # "newExpanded":Z
    :cond_b
    move v1, v3

    .line 2333
    goto/16 :goto_0

    .restart local v1    # "newExpanded":Z
    :cond_c
    move v4, v3

    .line 2335
    goto/16 :goto_1

    :cond_d
    move v4, v2

    .line 2345
    goto/16 :goto_2

    .line 2356
    :cond_e
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->goToLockedShade(Landroid/view/View;)V

    goto/16 :goto_3

    .line 2363
    :cond_f
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v4, v4

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_4

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v4, :cond_4

    .line 2364
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpanded(Z)V

    .line 2365
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardState()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastAnnouncementWasQuickSettings:Z

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTracking:Z

    if-nez v4, :cond_4

    .line 2366
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getKeyguardOrLockScreenString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 2367
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastAnnouncementWasQuickSettings:Z

    goto/16 :goto_4

    .line 2396
    :cond_10
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-eq v4, v2, :cond_7

    .line 2397
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 2399
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastAnnouncementWasQuickSettings:Z

    goto/16 :goto_5

    :cond_11
    move v0, v3

    .line 2410
    goto/16 :goto_6
.end method

.method private setQsTranslation(F)V
    .locals 5
    .param p1, "height"    # F

    .prologue
    const/4 v4, 0x0

    .line 2457
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeaderAnimatingIn:Z

    if-nez v1, :cond_5

    .line 2463
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSContainer;->getDesiredHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p1, v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getHeaderTranslation()F

    move-result v2

    add-float v0, v1, v2

    .line 2464
    .local v0, "Y":F
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-nez v1, :cond_1

    .line 2466
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getHeight()I

    move-result v1

    int-to-float v0, v1

    .line 2468
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-nez v1, :cond_2

    .line 2496
    :cond_2
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2497
    sget-object v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    const-string v2, "header height is NaN : mQsContainer.setY => mHeader.getHeight()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2498
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getHeight()I

    move-result v1

    int-to-float v0, v1

    .line 2501
    :cond_3
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mSupportMumButton:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsDetailShowing()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_4

    .line 2502
    sget-object v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QsDetail is Showing - :: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mSupportMumButton:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsDetailShowing()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2504
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 2507
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/QSContainer;->setY(F)V

    .line 2511
    .end local v0    # "Y":F
    :cond_5
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v1, :cond_8

    .line 2512
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getHeight()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-static {v2, v3, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->interpolate(FFF)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setY(F)V

    .line 2529
    :cond_6
    :goto_1
    return-void

    .line 2502
    .restart local v0    # "Y":F
    :cond_7
    const/4 v1, 0x0

    goto :goto_0

    .line 2517
    .end local v0    # "Y":F
    :cond_8
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v1, :cond_9

    .line 2523
    :cond_9
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHideHeader:Z

    if-nez v1, :cond_6

    .line 2524
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setY(F)V

    goto :goto_1
.end method

.method private shouldPanelIntercept(FF)Z
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3999
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    if-nez v4, :cond_1

    .line 4008
    :cond_0
    :goto_0
    return v3

    .line 4002
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    .line 4003
    .local v0, "header":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, p2, v4

    if-ltz v4, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, p2, v4

    if-gtz v4, :cond_3

    move v1, v2

    .line 4005
    .local v1, "onHeader":Z
    :goto_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v4, :cond_4

    .line 4006
    if-nez v1, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isInQsArea(FF)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_2
    move v3, v2

    goto :goto_0

    .end local v1    # "onHeader":Z
    :cond_3
    move v1, v3

    .line 4003
    goto :goto_1

    .restart local v1    # "onHeader":Z
    :cond_4
    move v3, v1

    .line 4008
    goto :goto_0
.end method

.method private shouldQuickSettingsIntercept(FFF)Z
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "yDiff"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2738
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    if-nez v5, :cond_1

    .line 2753
    :cond_0
    :goto_0
    return v4

    .line 2741
    :cond_1
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v5, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 2742
    .local v0, "header":Landroid/view/View;
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, p2, v5

    if-ltz v5, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, p2, v5

    if-gtz v5, :cond_4

    move v1, v3

    .line 2745
    .local v1, "onHeader":Z
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSContainer;->getLeft()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_5

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSContainer;->getRight()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_5

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSContainer;->getTop()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, p2, v5

    if-ltz v5, :cond_5

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSContainer;->getBottom()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, p2, v5

    if-gtz v5, :cond_5

    move v2, v3

    .line 2748
    .local v2, "onQSContainer":Z
    :goto_3
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v5, :cond_6

    .line 2749
    if-nez v1, :cond_2

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->isScrolledToBottom()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    cmpg-float v5, p3, v5

    if-gez v5, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isInQsArea(FF)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_2
    move v4, v3

    goto :goto_0

    .line 2741
    .end local v0    # "header":Landroid/view/View;
    .end local v1    # "onHeader":Z
    .end local v2    # "onQSContainer":Z
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    goto :goto_1

    .restart local v0    # "header":Landroid/view/View;
    :cond_4
    move v1, v4

    .line 2742
    goto :goto_2

    .restart local v1    # "onHeader":Z
    :cond_5
    move v2, v4

    .line 2745
    goto :goto_3

    .restart local v2    # "onQSContainer":Z
    :cond_6
    move v4, v1

    .line 2753
    goto :goto_0
.end method

.method private shouldWidgetViewIntercept(FF)Z
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 3980
    const/4 v1, 0x0

    .line 3981
    .local v1, "onWidgetContainer":Z
    const v3, 0x7f0f0371

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;

    .line 3983
    .local v0, "container":Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;
    if-eqz v0, :cond_1

    .line 3984
    const v3, 0x7f0f0372

    invoke-virtual {v0, v3}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3985
    .local v2, "widgetItems":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 3986
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, p2, v3

    if-ltz v3, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, p2, v3

    if-gtz v3, :cond_2

    const/4 v1, 0x1

    .line 3989
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 3990
    invoke-virtual {v0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->onOutsideTouch()V

    .line 3994
    .end local v2    # "widgetItems":Landroid/view/View;
    :cond_1
    return v1

    .line 3986
    .restart local v2    # "widgetItems":Landroid/view/View;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private startClockAnimation(I)V
    .locals 2
    .param p1, "y"    # I

    .prologue
    .line 1027
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockAnimationTarget:I

    if-ne v0, p1, :cond_0

    .line 1054
    :goto_0
    return-void

    .line 1030
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockAnimationTarget:I

    .line 1031
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$9;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$9;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method

.method private startHighlightIconAnimation(Lcom/android/systemui/statusbar/KeyguardAffordanceView;)V
    .locals 8
    .param p1, "icon"    # Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .prologue
    .line 3683
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const-wide/16 v4, 0xc8

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    new-instance v7, Lcom/android/systemui/statusbar/phone/NotificationPanelView$26;

    invoke-direct {v7, p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$26;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/statusbar/KeyguardAffordanceView;)V

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageAlpha(FZJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 3692
    return-void
.end method

.method private startQsSizeChangeAnimation(II)V
    .locals 4
    .param p1, "oldHeight"    # I
    .param p2, "newHeight"    # I

    .prologue
    .line 915
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 916
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 917
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 919
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    .line 920
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 921
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 922
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$7;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 931
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$8;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 937
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 938
    return-void
.end method

.method private trackMovement(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2605
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2606
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastTouchX:F

    .line 2607
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastTouchY:F

    .line 2608
    return-void
.end method

.method private unregisterReceiver()V
    .locals 4

    .prologue
    .line 435
    :try_start_0
    sget-object v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->sBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 436
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->sBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 437
    const/4 v1, 0x0

    sput-object v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->sBroadcastReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    :cond_0
    :goto_0
    return-void

    .line 440
    :catch_0
    move-exception v0

    .line 441
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NotificationPanelView.unregisterReceiver(): exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateClock(FF)V
    .locals 1
    .param p1, "alpha"    # F
    .param p2, "scale"    # F

    .prologue
    .line 1057
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusViewAnimating:Z

    if-nez v0, :cond_0

    .line 1058
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 1060
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setScaleX(F)V

    .line 1061
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setScaleY(F)V

    .line 1062
    return-void
.end method

.method private updateHeader()V
    .locals 1

    .prologue
    .line 2960
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isShadeLockedState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2961
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateHeaderKeyguard()V

    .line 2966
    :goto_0
    return-void

    .line 2963
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateHeaderShade()V

    goto :goto_0
.end method

.method private updateHeaderShade()V
    .locals 3

    .prologue
    .line 2972
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeaderAnimatingIn:Z

    if-nez v1, :cond_0

    .line 2978
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getPeekHeight()F

    move-result v0

    .line 2979
    .local v0, "peekHeight":F
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandedHeight:F

    cmpg-float v1, v1, v0

    if-gtz v1, :cond_1

    .line 2980
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHideHeader:Z

    .line 2981
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandedHeight:F

    sub-float/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setTranslationY(F)V

    .line 2987
    .end local v0    # "peekHeight":F
    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsTranslation(F)V

    .line 2988
    return-void

    .line 2983
    .restart local v0    # "peekHeight":F
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHideHeader:Z

    goto :goto_0
.end method

.method private updateNotificationScrim(F)V
    .locals 4
    .param p1, "height"    # F

    .prologue
    .line 2443
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationScrimWaitDistance:I

    add-int v1, v2, v3

    .line 2444
    .local v1, "startDistance":I
    int-to-float v2, v1

    sub-float v2, p1, v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    sub-int/2addr v3, v1

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 2445
    .local v0, "progress":F
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 2446
    return-void
.end method

.method private updateNotificationTranslucency()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    .line 2910
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getNotificationsTopY()F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getItemHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getBottomStackPeekSize()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCollapseSecondCardPadding()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 2913
    .local v0, "alpha":F
    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v8, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 2914
    float-to-double v2, v0

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v0, v2

    .line 2915
    cmpl-float v2, v0, v6

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLayerType()I

    move-result v2

    if-eq v2, v7, :cond_2

    .line 2916
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2, v7, v9}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2921
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setAlpha(F)V

    .line 2923
    cmpl-float v2, v0, v8

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsStackScrollerTransparent:Z

    .line 2924
    return-void

    .line 2917
    :cond_2
    cmpl-float v2, v0, v6

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLayerType()I

    move-result v2

    if-ne v2, v7, :cond_0

    .line 2919
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2, v1, v9}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private updateOwnerInfoText(I)V
    .locals 7
    .param p1, "statusBarState"    # I

    .prologue
    .line 4225
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isBigFontModelinEasyMode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4248
    :cond_0
    :goto_0
    return-void

    .line 4227
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a008e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 4229
    .local v2, "ownerInfoTextSize":F
    const/high16 v3, 0x3f800000    # 1.0f

    .line 4230
    .local v3, "scale":F
    const v4, 0x7f0f035b

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 4232
    .local v1, "ownerInfo":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 4233
    const/4 v4, 0x5

    if-eq p1, v4, :cond_2

    const/16 v4, 0xa

    if-ne p1, v4, :cond_3

    .line 4235
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a040c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 4237
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 4238
    .local v0, "coverScale":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a040b

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v0, v6}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 4240
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    .line 4243
    .end local v0    # "coverScale":Landroid/util/TypedValue;
    :cond_3
    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_0

    .line 4244
    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    div-float/2addr v5, v3

    mul-float/2addr v5, v2

    invoke-virtual {v1, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0
.end method

.method private updateQsState()V
    .locals 6

    .prologue
    const/4 v4, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2301
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStackScrollerOverscrolling:Z

    if-eqz v3, :cond_7

    :cond_0
    move v0, v2

    .line 2302
    .local v0, "expandVisually":Z
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-nez v3, :cond_8

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsDetailShowing()Z

    move-result v3

    if-nez v3, :cond_8

    move v3, v1

    :goto_1
    invoke-virtual {v5, v3}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setVisibility(I)V

    .line 2304
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    invoke-static {v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->isKeyguardState(I)Z

    move-result v3

    if-nez v3, :cond_9

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionFromOverscroll:Z

    if-eqz v3, :cond_9

    :cond_2
    move v3, v2

    :goto_2
    invoke-virtual {v5, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setScrollingEnabled(Z)V

    .line 2308
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v3, v1}, Lcom/android/systemui/qs/QSPanel;->setVisibility(I)V

    .line 2309
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v3, :cond_a

    if-nez v0, :cond_a

    move v3, v4

    :goto_3
    invoke-virtual {v5, v3}, Lcom/android/systemui/qs/QSContainer;->setVisibility(I)V

    .line 2311
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mEmergencyModeActivated:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isBatteryConservingModeActivated()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v3, :cond_5

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mIsTablet:Z

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isSecure()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2313
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Lcom/android/systemui/qs/QSContainer;->setVisibility(I)V

    .line 2316
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->setTouchEnabled(Z)V

    .line 2318
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsNavbarScrim:Landroid/view/View;

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-nez v5, :cond_b

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v5, :cond_b

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStackScrollerOverscrolling:Z

    if-nez v5, :cond_b

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsScrimEnabled:Z

    if-eqz v5, :cond_b

    :goto_4
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2322
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStackScrollerOverscrolling:Z

    if-nez v1, :cond_6

    .line 2323
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->hideIfNotSimple(Z)V

    .line 2325
    :cond_6
    return-void

    .end local v0    # "expandVisually":Z
    :cond_7
    move v0, v1

    .line 2301
    goto/16 :goto_0

    .restart local v0    # "expandVisually":Z
    :cond_8
    move v3, v4

    .line 2302
    goto/16 :goto_1

    :cond_9
    move v3, v1

    .line 2304
    goto :goto_2

    :cond_a
    move v3, v1

    .line 2309
    goto :goto_3

    :cond_b
    move v1, v4

    .line 2318
    goto :goto_4
.end method

.method private updateTextResources()V
    .locals 0

    .prologue
    .line 825
    return-void
.end method

.method private updateUnlockIcon()V
    .locals 0

    .prologue
    .line 2954
    return-void
.end method


# virtual methods
.method public animateCloseQs()V
    .locals 3

    .prologue
    .line 1129
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    .line 1130
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsAnimatorExpand:Z

    if-nez v1, :cond_0

    .line 1138
    :goto_0
    return-void

    .line 1133
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    .line 1134
    .local v0, "height":F
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1135
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    .line 1137
    .end local v0    # "height":F
    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingSettings(FZ)V

    goto :goto_0
.end method

.method public animateToFullShade(J)V
    .locals 1
    .param p1, "delay"    # J

    .prologue
    .line 1065
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateNextTopPaddingChange:Z

    .line 1066
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->goToFullShade(J)V

    .line 1067
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestLayout()V

    .line 1068
    return-void
.end method

.method public closeQs()V
    .locals 1

    .prologue
    .line 1116
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->cancelAnimation()V

    .line 1117
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    .line 1126
    return-void
.end method

.method public closeQsDetail()V
    .locals 1

    .prologue
    .line 3862
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->closeDetail()V

    .line 3863
    return-void
.end method

.method public disableClockAndClear()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 4121
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 4122
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 4123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsDisableClockAndClear:Z

    .line 4124
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTapTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4125
    return-void
.end method

.method public disableTouchEvent(Z)V
    .locals 0
    .param p1, "disableTouchEvent"    # Z

    .prologue
    .line 4096
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDisableTouchEvent:Z

    .line 4097
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 4279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getIsEnqueuedOccluded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4280
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    const-string v1, "Keyguard is occluded, don\'t need to call dispatchDraw"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4285
    :goto_0
    return-void

    .line 4284
    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1181
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 1182
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getKeyguardOrLockScreenString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1183
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastAnnouncementWasQuickSettings:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastAnnouncementWasQuickSettings:Z

    .line 1184
    :cond_0
    const/4 v0, 0x1

    .line 1187
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v13, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 1380
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1381
    .local v0, "action":I
    const/4 v4, 0x0

    .line 1383
    .local v4, "handled":Z
    if-nez v0, :cond_0

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v8, :cond_0

    .line 1385
    iput-boolean v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDisableExpand:Z

    .line 1387
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->cancelCoverDismissAction()V

    .line 1390
    :cond_0
    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandedHeight:F

    cmpg-float v8, v8, v13

    if-gtz v8, :cond_2

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v8

    iget v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitState:I

    if-eq v8, v11, :cond_2

    move v9, v4

    .line 1565
    :cond_1
    :goto_0
    return v9

    .line 1400
    :cond_2
    sget-boolean v8, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v8, v8, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsInQSEditMode:Z

    if-eqz v8, :cond_3

    .line 1401
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v8, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->dispatchTouchEventToQsEditPanel(Landroid/view/MotionEvent;)V

    .line 1403
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1404
    .local v3, "editPanel":Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v8, v8, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSEditPanel:Lcom/android/systemui/qs/QSEditPanel;

    const v11, 0x7f0f023f

    invoke-virtual {v8, v11}, Lcom/android/systemui/qs/QSEditPanel;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    invoke-virtual {v8, v3}, Landroid/widget/FrameLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 1405
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {v3, v8, v11}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-nez v8, :cond_1

    move v9, v10

    .line 1408
    goto :goto_0

    .line 1412
    .end local v3    # "editPanel":Landroid/graphics/Rect;
    :cond_3
    if-nez v0, :cond_4

    .line 1413
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v8

    iput v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitState:I

    .line 1414
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isBouncerShowing()Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitBouncerState:Z

    .line 1417
    :cond_4
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardState()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 1419
    if-nez v0, :cond_6

    .line 1420
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iput v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitX:F

    .line 1421
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iput v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitY:F

    .line 1422
    sget-object v8, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mDispatchInitX="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitX:F

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mDispatchInitY="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitY:F

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitX:F

    iget v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitY:F

    invoke-direct {p0, v8, v11}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findNotificationView(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v2

    .line 1425
    .local v2, "eView":Lcom/android/systemui/statusbar/ExpandableView;
    if-eqz v2, :cond_6

    .line 1426
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->oldEV:Lcom/android/systemui/statusbar/ExpandableView;

    if-nez v8, :cond_5

    .line 1427
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->oldEV:Lcom/android/systemui/statusbar/ExpandableView;

    .line 1428
    :cond_5
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->newEV:Lcom/android/systemui/statusbar/ExpandableView;

    .line 1429
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->oldEV:Lcom/android/systemui/statusbar/ExpandableView;

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->newEV:Lcom/android/systemui/statusbar/ExpandableView;

    if-ne v8, v11, :cond_11

    move v8, v9

    :goto_1
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isSameNotification:Z

    .line 1430
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->newEV:Lcom/android/systemui/statusbar/ExpandableView;

    iput-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->oldEV:Lcom/android/systemui/statusbar/ExpandableView;

    .line 1435
    .end local v2    # "eView":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_6
    const/4 v8, 0x2

    if-ne v0, v8, :cond_12

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitX:F

    iget v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitY:F

    invoke-direct {p0, v8, v11}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findNotificationView(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v8

    if-nez v8, :cond_7

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitX:F

    iget v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitY:F

    invoke-virtual {p0, v8, v11}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getClearAllview(FF)Z

    move-result v8

    if-eqz v8, :cond_12

    :cond_7
    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    sub-float/2addr v8, v11

    cmpl-float v8, v8, v13

    if-lez v8, :cond_12

    .line 1439
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDisableUpdateNotificationStack:Z

    .line 1447
    :goto_2
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isBouncerShowing()Z

    move-result v8

    if-eqz v8, :cond_d

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitBouncerState:Z

    if-eqz v8, :cond_d

    .line 1448
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v10, v10, v10, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 1450
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBouncerContainer:Landroid/view/View;

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v8, v11}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1451
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    invoke-virtual {p1, v8, v11}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1452
    sget-object v8, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isInBouncerFrame = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitX:F

    iget v13, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitY:F

    invoke-direct {p0, v12, v13}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isInBouncerFrame(FF)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", isInEmergencyButtonBouncerFrame = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitX:F

    iget v13, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitY:F

    invoke-direct {p0, v12, v13}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isInEmergencyButtonBouncerFrame(FF)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitX:F

    iget v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitY:F

    invoke-direct {p0, v8, v11}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isInBouncerFrame(FF)Z

    move-result v5

    .line 1454
    .local v5, "isInBouncer":Z
    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitX:F

    iget v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitY:F

    invoke-direct {p0, v8, v11}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isInEmergencyButtonBouncerFrame(FF)Z

    move-result v6

    .line 1455
    .local v6, "isInEmergencyBouncer":Z
    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitX:F

    iget v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitY:F

    invoke-direct {p0, v8, v11}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findNotificationView(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v8

    if-eqz v8, :cond_13

    move v7, v9

    .line 1456
    .local v7, "isInNotificationView":Z
    :goto_3
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    neg-int v8, v8

    int-to-float v8, v8

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    neg-int v11, v11

    int-to-float v11, v11

    invoke-virtual {p1, v8, v11}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1458
    if-nez v5, :cond_8

    if-nez v6, :cond_8

    if-eqz v7, :cond_9

    :cond_8
    if-eqz v7, :cond_d

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isSameNotification:Z

    if-eqz v8, :cond_d

    .line 1460
    :cond_9
    sget-object v8, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isSameNotification = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isSameNotification:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    if-eqz v7, :cond_a

    .line 1462
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1463
    :cond_a
    if-eq v0, v9, :cond_b

    const/4 v8, 0x3

    if-ne v0, v8, :cond_c

    .line 1464
    :cond_b
    if-eqz v7, :cond_14

    .line 1465
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHideBouncer:Ljava/lang/Runnable;

    const-wide/16 v12, 0x3c

    invoke-virtual {p0, v8, v12, v13}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1470
    :cond_c
    :goto_4
    const/4 v4, 0x1

    .line 1476
    .end local v5    # "isInBouncer":Z
    .end local v6    # "isInEmergencyBouncer":Z
    .end local v7    # "isInNotificationView":Z
    :cond_d
    if-nez v4, :cond_15

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitX:F

    iget v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitY:F

    invoke-direct {p0, v8, v11}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findKeguardMumButtonViews(FF)Z

    move-result v8

    if-nez v8, :cond_15

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitX:F

    iget v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitY:F

    invoke-direct {p0, v8, v11}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findNotificationView(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v8

    if-nez v8, :cond_15

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitX:F

    iget v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitY:F

    invoke-direct {p0, v8, v11}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findMascotRemoteViews(FF)Z

    move-result v8

    if-nez v8, :cond_15

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitX:F

    iget v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitY:F

    invoke-direct {p0, v8, v11}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->shouldWidgetViewIntercept(FF)Z

    move-result v8

    if-eqz v8, :cond_15

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    if-nez v8, :cond_15

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez v8, :cond_15

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitX:F

    iget v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitY:F

    invoke-virtual {p0, v8, v11}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getClearAllview(FF)Z

    move-result v8

    if-nez v8, :cond_15

    .line 1490
    const v8, 0x7f0f0371

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;

    .line 1491
    .local v1, "container":Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v10, v10, v10, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 1492
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v8}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1493
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    invoke-virtual {p1, v8, v11}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1494
    invoke-virtual {v1, p1}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1495
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    neg-int v8, v8

    int-to-float v8, v8

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    neg-int v11, v11

    int-to-float v11, v11

    invoke-virtual {p1, v8, v11}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1496
    const/4 v4, 0x1

    .line 1552
    .end local v1    # "container":Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;
    :cond_e
    :goto_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    invoke-virtual {p0, v8, v11}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getClearAllview(FF)Z

    .line 1553
    if-ne v0, v9, :cond_f

    .line 1554
    sget-boolean v8, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v8, :cond_1d

    .line 1555
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAllLabel:Landroid/widget/TextView;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setPressed(Z)V

    .line 1561
    :cond_f
    :goto_6
    if-nez v4, :cond_10

    .line 1562
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    :cond_10
    move v9, v4

    .line 1565
    goto/16 :goto_0

    .restart local v2    # "eView":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_11
    move v8, v10

    .line 1429
    goto/16 :goto_1

    .line 1441
    .end local v2    # "eView":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_12
    iput-boolean v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDisableUpdateNotificationStack:Z

    goto/16 :goto_2

    .restart local v5    # "isInBouncer":Z
    .restart local v6    # "isInEmergencyBouncer":Z
    :cond_13
    move v7, v10

    .line 1455
    goto/16 :goto_3

    .line 1467
    .restart local v7    # "isInNotificationView":Z
    :cond_14
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->hideBouncerFrame()Z

    goto/16 :goto_4

    .line 1497
    .end local v5    # "isInBouncer":Z
    .end local v6    # "isInEmergencyBouncer":Z
    .end local v7    # "isInNotificationView":Z
    :cond_15
    if-nez v4, :cond_18

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitX:F

    iget v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitY:F

    invoke-direct {p0, v8, v11}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findKeguardMumButtonViews(FF)Z

    move-result v8

    if-nez v8, :cond_18

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitX:F

    iget v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitY:F

    invoke-direct {p0, v8, v11}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findNotificationView(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v8

    if-nez v8, :cond_18

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitX:F

    iget v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitY:F

    invoke-direct {p0, v8, v11}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findMascotRemoteViews(FF)Z

    move-result v8

    if-nez v8, :cond_18

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitX:F

    iget v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitY:F

    invoke-direct {p0, v8, v11}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->shouldPanelIntercept(FF)Z

    move-result v8

    if-eqz v8, :cond_16

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->canSkipBouncer()Z

    move-result v8

    if-nez v8, :cond_18

    sget-boolean v8, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v8, :cond_18

    sget-boolean v8, Lcom/android/systemui/statusbar/Feature;->mIsTablet:Z

    if-nez v8, :cond_18

    :cond_16
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    if-nez v8, :cond_18

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitX:F

    iget v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitY:F

    invoke-virtual {p0, v8, v11}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getClearAllview(FF)Z

    move-result v8

    if-nez v8, :cond_18

    .line 1515
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v8

    if-ne v8, v9, :cond_17

    .line 1518
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v10, v10, v10, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 1519
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBouncerContainer:Landroid/view/View;

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v8, v11}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1520
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    invoke-virtual {p1, v8, v11}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1521
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBouncerContainer:Landroid/view/View;

    invoke-virtual {v8, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1522
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    neg-int v8, v8

    int-to-float v8, v8

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    neg-int v11, v11

    int-to-float v11, v11

    invoke-virtual {p1, v8, v11}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1523
    const/4 v4, 0x1

    goto/16 :goto_5

    .line 1524
    :cond_17
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCoverHolder:Landroid/widget/FrameLayout;

    if-eqz v8, :cond_e

    .line 1527
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v10, v10, v10, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 1528
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCoverHolder:Landroid/widget/FrameLayout;

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v8, v11}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1529
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    invoke-virtual {p1, v8, v11}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1530
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCoverHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v8, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1531
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    neg-int v8, v8

    int-to-float v8, v8

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    neg-int v11, v11

    int-to-float v11, v11

    invoke-virtual {p1, v8, v11}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1532
    const/4 v4, 0x1

    goto/16 :goto_5

    .line 1536
    :cond_18
    if-nez v0, :cond_e

    .line 1537
    sget-object v11, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "!handled - "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-nez v4, :cond_19

    move v8, v9

    :goto_7
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    sget-object v11, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "findNotificationView(mDispatchInitX, mDispatchInitY) == null - "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitX:F

    iget v13, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitY:F

    invoke-direct {p0, v8, v13}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findNotificationView(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v8

    if-nez v8, :cond_1a

    move v8, v9

    :goto_8
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    sget-object v8, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "shouldPanelIntercept(mDispatchInitX, mDispatchInitY) - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitX:F

    iget v13, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitY:F

    invoke-direct {p0, v12, v13}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->shouldPanelIntercept(FF)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    sget-object v8, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "UnlockMethodCache.getInstance(mContext).canSkipBouncer() - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->canSkipBouncer()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    sget-object v11, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "!mQsTracking - "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    if-nez v8, :cond_1b

    move v8, v9

    :goto_9
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    sget-object v11, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "!getClearAllview(mDispatchInitX, mDispatchInitY) - "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitX:F

    iget v13, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitY:F

    invoke-virtual {p0, v8, v13}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getClearAllview(FF)Z

    move-result v8

    if-nez v8, :cond_1c

    move v8, v9

    :goto_a
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_19
    move v8, v10

    .line 1537
    goto/16 :goto_7

    :cond_1a
    move v8, v10

    .line 1538
    goto/16 :goto_8

    :cond_1b
    move v8, v10

    .line 1544
    goto :goto_9

    :cond_1c
    move v8, v10

    .line 1545
    goto :goto_a

    .line 1557
    :cond_1d
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/view/View;

    invoke-virtual {v8, v10}, Landroid/view/View;->setPressed(Z)V

    goto/16 :goto_6
.end method

.method public enableClockAndClear()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4136
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 4137
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 4138
    return-void
.end method

.method public expandWithQs()V
    .locals 1

    .prologue
    .line 1148
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    if-eqz v0, :cond_0

    .line 1149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    .line 1151
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->expand()V

    .line 1152
    return-void
.end method

.method public fling(FZ)V
    .locals 4
    .param p1, "vel"    # F
    .param p2, "expand"    # Z

    .prologue
    .line 1159
    if-nez p2, :cond_0

    .line 1160
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsUpwardFling:Z

    .line 1165
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardState()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isMethodSecure()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1177
    :cond_1
    :goto_0
    return-void

    .line 1171
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    check-cast v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getGestureRecorder()Lcom/android/systemui/statusbar/GestureRecorder;

    move-result-object v0

    .line 1172
    .local v0, "gr":Lcom/android/systemui/statusbar/GestureRecorder;
    if-eqz v0, :cond_3

    .line 1173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fling "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_4

    const-string v1, "open"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifications,v="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/GestureRecorder;->tag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelView;->fling(FZ)V

    goto :goto_0

    .line 1173
    :cond_4
    const-string v1, "closed"

    goto :goto_1
.end method

.method protected flingExpands(FF)Z
    .locals 2
    .param p1, "vel"    # F
    .param p2, "vectorVel"    # F

    .prologue
    .line 1843
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelView;->flingExpands(FF)Z

    move-result v0

    .line 1846
    .local v0, "expands":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 1847
    const/4 v0, 0x1

    .line 1849
    :cond_0
    return v0
.end method

.method public flingSettings(FZI)V
    .locals 3
    .param p1, "vel"    # F
    .param p2, "expand"    # Z
    .param p3, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 2646
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mIsTablet:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->canSkipBouncer()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsStatusBarHidden:Z

    if-eqz v0, :cond_1

    .line 2648
    :cond_0
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    .line 2652
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    .line 2653
    if-eqz p2, :cond_5

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v0, v0

    :goto_2
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    .line 2655
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flingSettings mQsMin:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mQsMax:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mQsEx:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mQsPeek:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2658
    return-void

    .line 2650
    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getExpandedHeight()I

    move-result v0

    add-int/2addr v0, p3

    :goto_3
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getCollapsedHeight()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    add-int/2addr v0, v2

    goto :goto_3

    .line 2652
    :cond_3
    if-eqz p2, :cond_4

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getCollapsedHeight()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    add-int/2addr v0, v1

    goto :goto_1

    .line 2653
    :cond_5
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v0, v0

    goto :goto_2
.end method

.method public flingTopOverscroll(FZ)V
    .locals 2
    .param p1, "velocity"    # F
    .param p2, "open"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1963
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastOverscroll:F

    .line 1964
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    .line 1965
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    move p1, v0

    .end local p1    # "velocity":F
    :cond_0
    if-eqz p2, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingSettings(FZLjava/lang/Runnable;)V

    .line 1974
    return-void

    .line 1965
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected fullyExpandedClearAllVisible()Z
    .locals 1

    .prologue
    .line 3822
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isDismissViewNotGone()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isScrolledToBottom()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized getActivityManager()Landroid/app/ActivityManager;
    .locals 2

    .prologue
    .line 497
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mActivityManager:Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    .line 498
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mActivityManager:Landroid/app/ActivityManager;

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mActivityManager:Landroid/app/ActivityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 497
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAffordanceFalsingFactor()F
    .locals 1

    .prologue
    .line 3794
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isScreenOnComingFromTouch()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3fc00000    # 1.5f

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method protected getCannedFlingDurationFactor()F
    .locals 1

    .prologue
    .line 3813
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v0, :cond_0

    .line 3814
    const v0, 0x3f333333    # 0.7f

    .line 3816
    :goto_0
    return v0

    :cond_0
    const v0, 0x3f19999a    # 0.6f

    goto :goto_0
.end method

.method public getCenterIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .locals 1

    .prologue
    .line 3761
    const/4 v0, 0x0

    return-object v0
.end method

.method public getClearAll()Landroid/view/View;
    .locals 1

    .prologue
    .line 3500
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/view/View;

    return-object v0
.end method

.method protected getClearAllHeight()I
    .locals 1

    .prologue
    .line 3833
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getDismissViewHeight()I

    move-result v0

    return v0
.end method

.method public getClearAllVisibility()Z
    .locals 1

    .prologue
    .line 3219
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getClearAllview(FF)Z
    .locals 9
    .param p1, "mInitialTouchX"    # F
    .param p2, "mInitialTouchY"    # F

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 3467
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_4

    .line 3468
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    int-to-float v4, v7

    .line 3469
    .local v4, "top":F
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    int-to-float v0, v7

    .line 3470
    .local v0, "bottom":F
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getX()F

    move-result v2

    .line 3471
    .local v2, "left":F
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a03d1

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    add-float v3, v2, v7

    .line 3473
    .local v3, "right":F
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v7, :cond_0

    .line 3474
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a02e8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 3475
    .local v1, "height":I
    div-int/lit8 v7, v1, 0x2

    int-to-float v7, v7

    add-float/2addr v0, v7

    .line 3477
    .end local v1    # "height":I
    :cond_0
    cmpl-float v7, p2, v4

    if-ltz v7, :cond_2

    cmpg-float v7, p2, v0

    if-gtz v7, :cond_2

    cmpl-float v7, p1, v2

    if-ltz v7, :cond_2

    cmpg-float v7, p1, v3

    if-gtz v7, :cond_2

    .line 3478
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v7, :cond_1

    .line 3479
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAllLabel:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setPressed(Z)V

    .line 3484
    :goto_0
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAllTouchDown:Z

    .line 3495
    .end local v0    # "bottom":F
    .end local v2    # "left":F
    .end local v3    # "right":F
    .end local v4    # "top":F
    :goto_1
    return v5

    .line 3481
    .restart local v0    # "bottom":F
    .restart local v2    # "left":F
    .restart local v3    # "right":F
    .restart local v4    # "top":F
    :cond_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/view/View;

    invoke-virtual {v7, v5}, Landroid/view/View;->setPressed(Z)V

    .line 3482
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAllLabel:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setPressed(Z)V

    goto :goto_0

    .line 3487
    :cond_2
    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v5, :cond_3

    .line 3488
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAllLabel:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setPressed(Z)V

    :goto_2
    move v5, v6

    .line 3492
    goto :goto_1

    .line 3490
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setPressed(Z)V

    goto :goto_2

    .end local v0    # "bottom":F
    .end local v2    # "left":F
    .end local v3    # "right":F
    .end local v4    # "top":F
    :cond_4
    move v5, v6

    .line 3495
    goto :goto_1
.end method

.method public getHeaderViewCollapsedHeight()I
    .locals 1

    .prologue
    .line 4158
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getCollapsedHeight()I

    move-result v0

    return v0
.end method

.method public getLeftIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .locals 1

    .prologue
    .line 3752
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLeftPreview()Landroid/view/View;
    .locals 1

    .prologue
    .line 3777
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getMaxPanelHeight()I
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 2772
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarMinHeight:I

    .line 2773
    .local v1, "min":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardState()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v4

    if-nez v4, :cond_0

    .line 2775
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getOverExpansionAmount()F

    move-result v5

    add-float/2addr v4, v5

    const v5, 0x40033333    # 2.05f

    mul-float/2addr v4, v5

    float-to-int v2, v4

    .line 2777
    .local v2, "minHeight":I
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2780
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSingleLine:Z

    if-nez v4, :cond_0

    .line 2781
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    sub-int/2addr v1, v4

    .line 2787
    .end local v2    # "minHeight":I
    :cond_0
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandedWhenExpandingStarted:Z

    if-eqz v4, :cond_3

    .line 2789
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->calculatePanelHeightQsExpanded()I

    move-result v4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->calculatePanelHeightShade()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSingleLine:Z

    if-nez v5, :cond_2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    :cond_2
    sub-int v0, v4, v3

    .line 2799
    .local v0, "maxHeight":I
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2800
    return v0

    .line 2794
    .end local v0    # "maxHeight":I
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->calculatePanelHeightShade()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSingleLine:Z

    if-nez v5, :cond_4

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    :cond_4
    sub-int v0, v4, v3

    .restart local v0    # "maxHeight":I
    goto :goto_0
.end method

.method public getMaxTranslationDistance()F
    .locals 4

    .prologue
    .line 3696
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getWidth()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getHeight()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method protected getOverExpansionAmount()F
    .locals 2

    .prologue
    .line 2928
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v0

    return v0
.end method

.method protected getOverExpansionPixels()F
    .locals 2

    .prologue
    .line 2933
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrolledPixels(Z)F

    move-result v0

    return v0
.end method

.method protected getPeekHeight()F
    .locals 1

    .prologue
    .line 3807
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getCollapsedHeight()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getQsContainerHeight()I
    .locals 1

    .prologue
    .line 4162
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSContainer;->getHeight()I

    move-result v0

    return v0
.end method

.method public getRightIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .locals 1

    .prologue
    .line 3768
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRightPreview()Landroid/view/View;
    .locals 1

    .prologue
    .line 3786
    const/4 v0, 0x0

    return-object v0
.end method

.method protected hasConflictingGestures()Z
    .locals 1

    .prologue
    .line 1854
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNotification()Z
    .locals 1

    .prologue
    .line 4421
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->hasNotification()Z

    move-result v0

    return v0
.end method

.method public instantExpand()V
    .locals 1

    .prologue
    .line 3131
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->instantExpand()V

    .line 3132
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setListening(Z)V

    .line 3133
    return-void
.end method

.method protected isBelowLastNotification(F)Z
    .locals 1
    .param p1, "y"    # F

    .prologue
    .line 4153
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLastChildYTranslation()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isCarrierLabelArea(F)Z
    .locals 2
    .param p1, "Y"    # F

    .prologue
    .line 4304
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getBottom()I

    move-result v1

    int-to-float v0, v1

    .line 4305
    .local v0, "bottom":F
    cmpg-float v1, v0, p1

    if-gez v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabelHeight:F

    add-float/2addr v1, v0

    cmpl-float v1, v1, p1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isClearAllVisible()Z
    .locals 1

    .prologue
    .line 3828
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isDismissViewVisible()Z

    move-result v0

    return v0
.end method

.method public isDisableClockAndClear()Z
    .locals 1

    .prologue
    .line 4141
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsDisableClockAndClear:Z

    return v0
.end method

.method public isDozing()Z
    .locals 1

    .prologue
    .line 3915
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    return v0
.end method

.method public isEmptyXArea(F)Z
    .locals 1
    .param p1, "x"    # F

    .prologue
    .line 4361
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLeft()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v0, p1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getRight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v0, p1

    if-gez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getWidth()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isInContentBounds(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1362
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getY()F

    move-result v2

    sub-float v1, p2, v2

    .line 1363
    .local v1, "yTransformed":F
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getX()F

    move-result v0

    .line 1364
    .local v0, "stackScrollerX":F
    const/4 v2, 0x0

    return v2
.end method

.method public isLaunchTransitionFinished()Z
    .locals 1

    .prologue
    .line 3871
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionFinished:Z

    return v0
.end method

.method public isLaunchTransitionRunning()Z
    .locals 1

    .prologue
    .line 3875
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionRunning:Z

    return v0
.end method

.method public isMascotAppRunning()Z
    .locals 5

    .prologue
    .line 482
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getActivityManager()Landroid/app/ActivityManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 484
    .local v2, "processInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 485
    .local v1, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    const-string v3, "com.nttdocomo.android.mascot"

    iget-object v4, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 487
    const/4 v3, 0x1

    .line 493
    .end local v1    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isMascotEnabled()Z
    .locals 2

    .prologue
    .line 446
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mRemoteViews:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isShowHistoryCountAndMascot()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isMascotAppRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 450
    .local v0, "enabled":Z
    :goto_0
    return v0

    .line 446
    .end local v0    # "enabled":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isQsDetailShowing()Z
    .locals 1

    .prologue
    .line 3858
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->isShowingDetail()Z

    move-result v0

    return v0
.end method

.method public isQsExpanded()Z
    .locals 1

    .prologue
    .line 3854
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    return v0
.end method

.method protected isScrolledToBottom()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2759
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardState()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2766
    :cond_0
    :goto_0
    return v0

    .line 2762
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isInSettings()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2763
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isScrolledToBottom()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2766
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->isScrolledToBottom()Z

    move-result v0

    goto :goto_0
.end method

.method protected isTrackingBlocked()Z
    .locals 1

    .prologue
    .line 3838
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isKeyguardState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3839
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDisableUpdateNotificationStack:Z

    .line 3841
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mConflictingQsExpansionGesture:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected loadDimens()V
    .locals 3

    .prologue
    .line 672
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->loadDimens()V

    .line 673
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0355

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationTopPadding:I

    .line 675
    new-instance v0, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 676
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarMinHeight:I

    .line 678
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a04b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAdditionalStatusBarHeightForCover:I

    .line 683
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a03da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    .line 684
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mEmergencyModeActivated:Z

    if-eqz v0, :cond_0

    .line 685
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    .line 687
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0316

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFixedHeight:I

    .line 694
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a035f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationsHeaderCollideDistance:I

    .line 696
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0360

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUnlockMoveDistance:I

    .line 699
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0361

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationScrimWaitDistance:I

    .line 701
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0353

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFalsingThreshold:I

    .line 703
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a03ef

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBrightnessHeight:I

    .line 704
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0413

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQConnectHeight:I

    .line 705
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a047d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExtraMargin:I

    .line 706
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a047e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExtraOverlayedMargin:I

    .line 707
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0349

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLableStartPading:I

    .line 708
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0385

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLableStartPadingForTab:I

    .line 711
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a02e8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabelHeight:F

    .line 713
    return-void
.end method

.method public notifyVisibleChildrenChanged()V
    .locals 2

    .prologue
    .line 3846
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3851
    :goto_0
    return-void

    .line 3849
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mReserveNotificationSpace:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAnimationToSideCancelled()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3644
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionRunning:Z

    .line 3645
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionFinished:Z

    .line 3646
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

    .line 3647
    return-void
.end method

.method public onAnimationToSideEnded()V
    .locals 1

    .prologue
    .line 3634
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionRunning:Z

    .line 3635
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionFinished:Z

    .line 3636
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 3637
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3638
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

    .line 3640
    :cond_0
    return-void
.end method

.method public onAnimationToSideStarted(Z)V
    .locals 3
    .param p1, "rightPage"    # Z

    .prologue
    const/4 v1, 0x1

    .line 3606
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getLayoutDirection()I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, p1

    .line 3607
    .local v0, "start":Z
    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionRunning:Z

    .line 3608
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

    .line 3615
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlockTouches:Z

    .line 3616
    return-void

    .line 3606
    .end local v0    # "start":Z
    :cond_0
    if-nez p1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAnimationToSideStarted(ZFF)V
    .locals 3
    .param p1, "rightPage"    # Z
    .param p2, "translation"    # F
    .param p3, "vel"    # F

    .prologue
    const/4 v1, 0x1

    .line 3620
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getLayoutDirection()I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, p1

    .line 3621
    .local v0, "start":Z
    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionRunning:Z

    .line 3622
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

    .line 3629
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlockTouches:Z

    .line 3630
    return-void

    .line 3620
    .end local v0    # "start":Z
    :cond_0
    if-nez p1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 887
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 889
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mHasOneSideEdge:Z

    if-eqz v0, :cond_1

    .line 890
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_0

    .line 891
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$6;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$6;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    .line 898
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 900
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 3602
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 3553
    sget-object v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    const-string v2, "onConfigurationChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3554
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3556
    const/16 v0, 0x80

    .line 3557
    .local v0, "diff":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOldConfig:Landroid/content/res/Configuration;

    if-eqz v1, :cond_0

    .line 3558
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOldConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    .line 3560
    :cond_0
    sget-object v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newConfig diff : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3561
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOldConfig:Landroid/content/res/Configuration;

    .line 3562
    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 3580
    :goto_0
    return-void

    .line 3568
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateCarrierLabelView()V

    .line 3569
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOwnerInfoRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3570
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOwnerInfoRefreshRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 906
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 908
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mHasOneSideEdge:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 909
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 910
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    .line 912
    :cond_0
    return-void
.end method

.method protected onEdgeClicked(Z)V
    .locals 0
    .param p1, "right"    # Z

    .prologue
    .line 3671
    return-void
.end method

.method public onEmptySpaceClicked(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 4252
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onEmptySpaceClick(F)Z

    .line 4253
    return-void
.end method

.method protected onExpandingFinished()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3104
    sget-object v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    const-string v3, "onExpandingFinished"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3105
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onExpandingFinished()V

    .line 3106
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setBrightnessControllerChangeLayer(Z)V

    .line 3107
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onExpansionStopped()V

    .line 3108
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    .line 3109
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollYOverride:I

    .line 3110
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandedHeight:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 3111
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setListening(Z)V

    .line 3115
    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    .line 3116
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTwoFingerQsExpandPossible:Z

    .line 3119
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsUpwardFling:Z

    .line 3120
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updatePanelState(Z)V

    .line 3121
    return-void

    .line 3113
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setListening(Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 3120
    goto :goto_1
.end method

.method protected onExpandingStarted()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3090
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    const-string v1, "onExpandingStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3091
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onExpandingStarted()V

    .line 3092
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setBrightnessControllerChangeLayer(Z)V

    .line 3093
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onExpansionStarted()V

    .line 3094
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    .line 3095
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandedWhenExpandingStarted:Z

    .line 3096
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v0, :cond_0

    .line 3097
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted()V

    .line 3099
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updatePanelState(Z)V

    .line 3100
    return-void
.end method

.method protected onFinishInflate()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 549
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onFinishInflate()V

    .line 550
    const v5, 0x7f0f0385

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    .line 551
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v5, p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 552
    const v5, 0x7f0f019c

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 554
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->useBigClockWithNoti()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->isSupportNotificationOnCover()Z

    move-result v5

    if-eqz v5, :cond_0

    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->mUseBigClockWithNotiForCover:Z

    if-eqz v5, :cond_5

    .line 556
    :cond_0
    new-instance v5, Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    .line 567
    :cond_1
    :goto_0
    const v5, 0x7f0f024f

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/QSContainer;

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    .line 568
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    const v6, 0x7f0f0256

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSEditDivider:Landroid/view/View;

    .line 569
    const v5, 0x7f0f0250

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/HorizontalScrollView;

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsHsView:Landroid/widget/HorizontalScrollView;

    .line 570
    const v5, 0x7f0f0251

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/QSPanel;

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    .line 571
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    const v6, 0x7f0f0234

    invoke-virtual {v5, v6}, Lcom/android/systemui/qs/QSContainer;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBrightnessView:Landroid/view/View;

    .line 572
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    const v6, 0x7f0f0252

    invoke-virtual {v5, v6}, Lcom/android/systemui/qs/QSContainer;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQConnectView:Landroid/view/View;

    .line 573
    const v5, 0x7f0f0181

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockView:Landroid/widget/TextView;

    .line 575
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMascotView:Landroid/widget/LinearLayout;

    .line 576
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMascotView:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a04b1

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    invoke-direct {v6, v7, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 579
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMascotView:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e0060

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 581
    const v5, 0x7f0f01f8

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    .line 582
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v5, p0}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->setListener(Lcom/android/systemui/statusbar/phone/ObservableScrollView$Listener;)V

    .line 583
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v5, v10}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->setFocusable(Z)V

    .line 584
    const v5, 0x7f0f01f9

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mReserveNotificationSpace:Landroid/view/View;

    .line 585
    const v5, 0x7f0f01f7

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationContainerParent:Landroid/widget/FrameLayout;

    .line 586
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isDCMModel()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 587
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationContainerParent:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMascotView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 589
    :cond_2
    const v5, 0x7f0f035b

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOwnerInfo:Landroid/widget/TextView;

    .line 591
    const v5, 0x7f0f01fa

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 593
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v5, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOnHeightChangedListener(Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;)V

    .line 594
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v5, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverscrollTopChangedListener(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;)V

    .line 595
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v5, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOnEmptySpaceClickListener(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;)V

    .line 596
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setScrollView(Landroid/view/ViewGroup;)V

    .line 597
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsHsView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setHsView(Landroid/widget/HorizontalScrollView;)V

    .line 598
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v5, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setNotificationPanelView(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    .line 599
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x10c000d

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 601
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x10c000f

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFastOutLinearInterpolator:Landroid/view/animation/Interpolator;

    .line 603
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x10c000e

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozeAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 607
    const v5, 0x7f0f01fc

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsNavbarScrim:Landroid/view/View;

    .line 615
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    new-instance v6, Lcom/android/systemui/statusbar/phone/NotificationPanelView$5;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$5;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {v5, v6}, Lcom/android/systemui/qs/QSContainer;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 629
    const v5, 0x7f0f01f5

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBouncerContainer:Landroid/view/View;

    .line 630
    const v5, 0x7f0f0369

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/keyguard/sec/SecKeyguardStatusView;

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSecKeyguardStatusView:Lcom/android/keyguard/sec/SecKeyguardStatusView;

    .line 631
    const v5, 0x7f0f0359

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSecClockHolder:Landroid/view/View;

    .line 632
    const v5, 0x7f0f035a

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSecClockBottom:Landroid/view/View;

    .line 634
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/statusbar/Feature;->hasCocktailBar(Landroid/content/Context;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCocktailBarPresent:Z

    .line 635
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDisplay:Landroid/view/Display;

    .line 637
    const v5, 0x7f0f0078

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationContentsRoot:Landroid/widget/FrameLayout;

    .line 638
    const v5, 0x7f0f007a

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCoverHolder:Landroid/widget/FrameLayout;

    .line 639
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    const v6, 0x7f050061

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCueAnimator:Landroid/view/animation/Animation;

    .line 641
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isDCMModel()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 642
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->unregisterReceiver()V

    .line 643
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->registerReceiver()V

    .line 648
    :cond_3
    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->mSupportLockscreenMumButton:Z

    if-eqz v5, :cond_4

    .line 649
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a02e4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 651
    .local v2, "keyguardHeight":I
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBouncerContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 652
    .local v0, "frameLp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0, v10, v2, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 653
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBouncerContainer:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 655
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 656
    .local v3, "relativeLp":Landroid/view/ViewGroup$LayoutParams;
    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 657
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v5, v3}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 659
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const v6, 0x7f0f019e

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMultiUserButton:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    .line 660
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMultiUserButton:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    if-eqz v5, :cond_4

    .line 661
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMultiUserButton:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 662
    .local v1, "frameLp2":Landroid/view/ViewGroup$MarginLayoutParams;
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 663
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0369

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 664
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMultiUserButton:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v5, v1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 668
    .end local v0    # "frameLp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v1    # "frameLp2":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v2    # "keyguardHeight":I
    .end local v3    # "relativeLp":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    return-void

    .line 558
    :cond_5
    const v5, 0x7f0f01f4

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewStub;

    .line 559
    .local v4, "stub":Landroid/view/ViewStub;
    if-eqz v4, :cond_1

    .line 560
    invoke-virtual {v4}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 561
    const v5, 0x7f0f01a5

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    .line 562
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    if-eqz v5, :cond_1

    .line 563
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public onHeightChanged(Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 1
    .param p1, "view"    # Lcom/android/systemui/statusbar/ExpandableView;

    .prologue
    .line 3532
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v0, :cond_0

    .line 3536
    :goto_0
    return-void

    .line 3535
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestPanelHeightUpdate()V

    goto :goto_0
.end method

.method protected onHeightUpdated(F)V
    .locals 6
    .param p1, "expandedHeight"    # F

    .prologue
    .line 2809
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandedWhenExpandingStarted:Z

    if-eqz v3, :cond_1

    .line 2810
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->positionClockAndNotifications()V

    .line 2814
    :cond_1
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionFromOverscroll:Z

    if-nez v3, :cond_2

    .line 2818
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v3, :cond_3

    .line 2821
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getMaxPanelHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v2, p1, v3

    .line 2832
    .local v2, "t":F
    :goto_0
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v3, v3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getTempQsMaxExpansion()I

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    .line 2835
    .end local v2    # "t":F
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setStackHeight(F)V

    .line 2836
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateHeader()V

    .line 2837
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateUnlockIcon()V

    .line 2838
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateNotificationTranslucency()V

    .line 2842
    return-void

    .line 2826
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getIntrinsicPadding()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getMinStackHeight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v0, v3

    .line 2828
    .local v0, "panelHeightQsCollapsed":F
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->calculatePanelHeightQsExpanded()I

    move-result v3

    int-to-float v1, v3

    .line 2829
    .local v1, "panelHeightQsExpanded":F
    sub-float v3, p1, v0

    sub-float v4, v1, v0

    div-float v2, v3, v4

    .restart local v2    # "t":F
    goto :goto_0
.end method

.method public onIconClicked(Z)V
    .locals 0
    .param p1, "rightIcon"    # Z

    .prologue
    .line 3747
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1215
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlockTouches:Z

    if-eqz v8, :cond_1

    move v7, v6

    .line 1346
    :cond_0
    :goto_0
    return v7

    .line 1221
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->knox_Tap(Landroid/view/MotionEvent;)V

    .line 1225
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->resetDownStates(Landroid/view/MotionEvent;)V

    .line 1226
    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 1227
    .local v2, "pointerIndex":I
    if-gez v2, :cond_2

    .line 1228
    const/4 v2, 0x0

    .line 1229
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    iput v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    .line 1231
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 1232
    .local v4, "x":F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 1233
    .local v5, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 1326
    :cond_3
    :goto_1
    :pswitch_0
    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-nez v8, :cond_f

    .line 1327
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    goto :goto_0

    .line 1235
    :pswitch_1
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIntercepting:Z

    .line 1236
    iput v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    .line 1237
    iput v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    .line 1238
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->initVelocityTracker()V

    .line 1239
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    .line 1240
    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    invoke-direct {p0, v8, v9, v10}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->shouldQuickSettingsIntercept(FFF)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1241
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    invoke-interface {v8, v7}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1243
    :cond_4
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v8, :cond_5

    .line 1244
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted()V

    .line 1245
    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iput v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    .line 1246
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    .line 1247
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIntercepting:Z

    .line 1248
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeLongPressCallback()V

    .line 1253
    :goto_2
    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    invoke-virtual {p0, v8, v9}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getClearAllview(FF)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1254
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAllTouchDown:Z

    goto :goto_1

    .line 1251
    :cond_5
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    goto :goto_2

    .line 1256
    :cond_6
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAllTouchDown:Z

    goto :goto_1

    .line 1260
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 1261
    .local v3, "upPointer":I
    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    if-ne v8, v3, :cond_3

    .line 1263
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    if-eq v8, v3, :cond_7

    move v1, v6

    .line 1264
    .local v1, "newIndex":I
    :goto_3
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    iput v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    .line 1265
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    iput v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    .line 1266
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    iput v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    goto :goto_1

    .end local v1    # "newIndex":I
    :cond_7
    move v1, v7

    .line 1263
    goto :goto_3

    .line 1271
    .end local v3    # "upPointer":I
    :pswitch_3
    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    sub-float v0, v5, v8

    .line 1272
    .local v0, "h":F
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    .line 1273
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    if-eqz v8, :cond_8

    .line 1278
    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    add-float/2addr v8, v0

    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    .line 1279
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    .line 1280
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIntercepting:Z

    goto/16 :goto_0

    .line 1283
    :cond_8
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTouchSlop:I

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_9

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    sub-float v9, v4, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_9

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    invoke-direct {p0, v8, v9, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->shouldQuickSettingsIntercept(FFF)Z

    move-result v8

    if-nez v8, :cond_a

    :cond_9
    sget-boolean v8, Lcom/android/systemui/statusbar/Feature;->mUseAdditionalStatusBarHeightForCover:Z

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isCoverViewShowing()Z

    move-result v8

    if-eqz v8, :cond_3

    cmpl-float v8, v0, v10

    if-lez v8, :cond_3

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAdditionalStatusBarHeightForCover:I

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_3

    .line 1288
    :cond_a
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    if-nez v8, :cond_b

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAdditionalStatusBarHeightForCover:I

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_b

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarMinHeight:I

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_b

    .line 1290
    sget-object v8, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "panel is opened by touching on additional height.....Y = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    :cond_b
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted()V

    .line 1293
    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iput v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    .line 1294
    iput v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    .line 1295
    iput v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    .line 1296
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    .line 1297
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIntercepting:Z

    .line 1298
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeLongPressCallback()V

    goto/16 :goto_0

    .line 1305
    .end local v0    # "h":F
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    .line 1306
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    if-eqz v8, :cond_c

    .line 1307
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_d

    move v8, v7

    :goto_4
    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingQsWithCurrentVelocity(Z)V

    .line 1309
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    .line 1311
    :cond_c
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIntercepting:Z

    .line 1312
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAllTouchDown:Z

    if-eqz v8, :cond_3

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    invoke-virtual {p0, v8, v9}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getClearAllview(FF)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1313
    sget-boolean v8, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v8, :cond_e

    .line 1314
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAllLabel:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->performClick()Z

    .line 1315
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAllLabel:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setPressed(Z)V

    .line 1320
    :goto_5
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAllTouchDown:Z

    goto/16 :goto_1

    :cond_d
    move v8, v6

    .line 1307
    goto :goto_4

    .line 1317
    :cond_e
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->performClick()Z

    .line 1318
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/view/View;

    invoke-virtual {v8, v6}, Landroid/view/View;->setPressed(Z)V

    goto :goto_5

    .line 1330
    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    if-nez v8, :cond_10

    .line 1331
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isShadeLockedState()Z

    move-result v8

    if-eqz v8, :cond_10

    .line 1332
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isBelowLastNotification(F)Z

    move-result v8

    if-eqz v8, :cond_10

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez v8, :cond_10

    .line 1337
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1346
    :cond_10
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isShadeLockedState()Z

    move-result v8

    if-eqz v8, :cond_12

    :goto_6
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    if-nez v8, :cond_0

    :cond_11
    move v7, v6

    goto/16 :goto_0

    :cond_12
    sget-boolean v8, Lcom/android/systemui/statusbar/Feature;->mSupportMumButton:Z

    if-eqz v8, :cond_13

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isUserSwitcherContainerVisible()Z

    move-result v8

    if-nez v8, :cond_11

    :cond_13
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez v8, :cond_11

    goto :goto_6

    .line 1233
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v2, 0x0

    .line 829
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/phone/PanelView;->onLayout(ZIIII)V

    .line 832
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setPivotX(F)V

    .line 836
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    const v3, 0x420a1600

    invoke-virtual {v1, v3}, Landroid/view/View;->setPivotY(F)V

    .line 839
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    .line 842
    .local v0, "oldMaxHeight":I
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    if-nez v1, :cond_0

    .line 843
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v1, :cond_6

    move v1, v2

    :goto_0
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    .line 844
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    if-nez v1, :cond_3

    .line 845
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v1, :cond_2

    :cond_1
    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsStatusBarHidden:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isAllowedSlideStatusBar()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierLockPlusEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_2
    move v1, v2

    :goto_1
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    .line 853
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->positionClockAndNotifications()V

    .line 854
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    if-eqz v1, :cond_8

    .line 855
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    .line 856
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestScrollerTopPaddingUpdate(Z)V

    .line 857
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestPanelHeightUpdate()V

    .line 860
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    if-eq v1, v0, :cond_4

    .line 861
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->startQsSizeChangeAnimation(II)V

    .line 866
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getExpandedHeight()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setStackHeight(F)V

    .line 867
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateHeader()V

    .line 868
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getCollapsedHeight()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateIsSmallScreen(I)V

    .line 876
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_5

    .line 877
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSContainer;->getDesiredHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSContainer;->setHeightOverride(I)V

    .line 880
    :cond_5
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateOwnerInfoText(I)V

    .line 881
    return-void

    .line 843
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getCollapsedHeight()I

    move-result v1

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    add-int/2addr v1, v3

    goto :goto_0

    .line 845
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getCollapsedHeight()I

    move-result v1

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    add-int/2addr v1, v3

    goto :goto_1

    .line 863
    :cond_8
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez v1, :cond_4

    .line 864
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastOverscroll:F

    add-float/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 781
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setPanelEndMagin()V

    .line 782
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelView;->onMeasure(II)V

    .line 784
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollQsView:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsHsView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->isLayoutDirectionRTL()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v0, :cond_0

    .line 786
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsHsView:Landroid/widget/HorizontalScrollView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsHsView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getRight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 787
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollQsView:Z

    .line 789
    :cond_0
    return-void
.end method

.method public onOverscrollTopChanged(FZ)V
    .locals 5
    .param p1, "amount"    # F
    .param p2, "isRubberbanded"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1949
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->cancelAnimation()V

    .line 1950
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    if-nez v1, :cond_0

    .line 1951
    const/4 p1, 0x0

    .line 1953
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_1

    move v0, p1

    .line 1954
    .local v0, "rounded":F
    :goto_0
    cmpl-float v1, v0, v4

    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStackScrollerOverscrolling:Z

    .line 1955
    cmpl-float v1, v0, v4

    if-eqz v1, :cond_3

    :goto_2
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionFromOverscroll:Z

    .line 1956
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastOverscroll:F

    .line 1957
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQsState()V

    .line 1958
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    .line 1959
    return-void

    .end local v0    # "rounded":F
    :cond_1
    move v0, v4

    .line 1953
    goto :goto_0

    .restart local v0    # "rounded":F
    :cond_2
    move v1, v3

    .line 1954
    goto :goto_1

    :cond_3
    move v2, v3

    .line 1955
    goto :goto_2
.end method

.method public onOverscrolled(FFI)V
    .locals 1
    .param p1, "lastTouchX"    # F
    .param p2, "lastTouchY"    # F
    .param p3, "amount"    # I

    .prologue
    .line 1937
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIntercepting:Z

    if-eqz v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->shouldQuickSettingsIntercept(FFF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1939
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    .line 1940
    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted(I)V

    .line 1941
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    .line 1942
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastTouchY:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    .line 1943
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastTouchX:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    .line 1945
    :cond_0
    return-void
.end method

.method public onReset(Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 0
    .param p1, "view"    # Lcom/android/systemui/statusbar/ExpandableView;

    .prologue
    .line 3540
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 3584
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOldLayoutDirection:I

    if-eq p1, v0, :cond_0

    .line 3586
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOldLayoutDirection:I

    .line 3588
    :cond_0
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 7

    .prologue
    const v6, 0x7f0f00eb

    const/4 v5, 0x1

    .line 3950
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getBottomMostNotificationBottom()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setVisibleNotificationBottom(I)V

    .line 3953
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->LOCKSCREEN_CAPTURE_ENABLED:Z

    if-eqz v2, :cond_0

    .line 3955
    sget-object v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onScreenTurnedOn "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3956
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-ne v2, v5, :cond_1

    .line 3957
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 3958
    .local v1, "clockView":Landroid/view/View;
    const v2, 0x7f0f0316

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3967
    .local v0, "bottomView":Landroid/view/View;
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCaptureView:Lcom/android/systemui/keyguard/ViewCaptureUtil;

    if-eqz v2, :cond_0

    .line 3968
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView$28;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$28;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Landroid/view/View;Landroid/view/View;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3977
    .end local v0    # "bottomView":Landroid/view/View;
    .end local v1    # "clockView":Landroid/view/View;
    :cond_0
    return-void

    .line 3959
    :cond_1
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    .line 3960
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 3961
    .restart local v1    # "clockView":Landroid/view/View;
    const v2, 0x7f0f002f

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "bottomView":Landroid/view/View;
    goto :goto_0

    .line 3963
    .end local v0    # "bottomView":Landroid/view/View;
    .end local v1    # "clockView":Landroid/view/View;
    :cond_2
    const/4 v1, 0x0

    .line 3964
    .restart local v1    # "clockView":Landroid/view/View;
    const/4 v0, 0x0

    .restart local v0    # "bottomView":Landroid/view/View;
    goto :goto_0
.end method

.method public onScrollChanged()V
    .locals 1

    .prologue
    .line 3544
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v0, :cond_0

    .line 3545
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestScrollerTopPaddingUpdate(Z)V

    .line 3546
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestPanelHeightUpdate()V

    .line 3548
    :cond_0
    return-void
.end method

.method public onSwipingAborted()V
    .locals 0

    .prologue
    .line 3720
    return-void
.end method

.method public onSwipingStarted(Z)V
    .locals 1
    .param p1, "rightIcon"    # Z

    .prologue
    const/4 v0, 0x1

    .line 3710
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestDisallowInterceptTouchEvent(Z)V

    .line 3711
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOnlyAffordanceInThisMotion:Z

    .line 3712
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    .line 3713
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1721
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

    invoke-virtual {v2, p1}, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1723
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isEdgeGestureBlockedApp()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1724
    :cond_0
    sget-object v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    const-string v2, "The statusBar scroll is not work by multiwindow gesture."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1816
    :cond_1
    :goto_0
    return v0

    .line 1727
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->reset()V

    .line 1732
    :cond_3
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlockTouches:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDisableTouchEvent:Z

    if-nez v2, :cond_4

    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mSupportMumButton:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getUserSetup()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1733
    :cond_4
    sget-object v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "T.E:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlockTouches:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDisableTouchEvent:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getUserSetup()Z

    move-result v4

    if-nez v4, :cond_5

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1734
    goto :goto_0

    :cond_5
    move v0, v1

    .line 1733
    goto :goto_1

    .line 1736
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierLockPlusEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    move v0, v1

    .line 1737
    goto :goto_0

    .line 1740
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->resetDownStates(Landroid/view/MotionEvent;)V

    .line 1747
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOnlyAffordanceInThisMotion:Z

    if-nez v2, :cond_1

    .line 1750
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearX:F

    .line 1751
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearY:F

    .line 1752
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-nez v2, :cond_8

    .line 1753
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearX:F

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearY:F

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getClearAllview(FF)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1754
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAllTouchDown:Z

    .line 1759
    :cond_8
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-eq v2, v5, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-ne v2, v0, :cond_a

    :cond_9
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAllTouchDown:Z

    if-eqz v2, :cond_a

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearX:F

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearY:F

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getClearAllview(FF)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1762
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v2, :cond_13

    .line 1763
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAllLabel:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->performClick()Z

    .line 1764
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAllLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setPressed(Z)V

    .line 1769
    :goto_3
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAllTouchDown:Z

    .line 1772
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getExpandedFraction()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardState()Z

    move-result v2

    if-nez v2, :cond_b

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez v2, :cond_b

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    if-eqz v2, :cond_b

    .line 1777
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    .line 1778
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mConflictingQsExpansionGesture:Z

    .line 1779
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted()V

    .line 1780
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iput v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    .line 1781
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    .line 1782
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    .line 1784
    :cond_b
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandedHeight:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_c

    .line 1785
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->handleQsDown(Landroid/view/MotionEvent;)V

    .line 1787
    :cond_c
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    if-nez v2, :cond_d

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    if-eqz v2, :cond_d

    .line 1788
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsTouch(Landroid/view/MotionEvent;)V

    .line 1789
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mConflictingQsExpansionGesture:Z

    if-eqz v2, :cond_1

    .line 1793
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-eq v2, v5, :cond_e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-ne v2, v0, :cond_f

    .line 1795
    :cond_e
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mConflictingQsExpansionGesture:Z

    .line 1797
    :cond_f
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v1, :cond_10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_10

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandedHeight:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_10

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isEmergencyModeActivated()Z

    move-result v1

    if-nez v1, :cond_10

    .line 1799
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTwoFingerQsExpandPossible:Z

    .line 1803
    :cond_10
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTwoFingerQsExpandPossible:Z

    if-eqz v1, :cond_11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarMinHeight:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_11

    .line 1806
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    .line 1808
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->flipToSettings()V

    .line 1809
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestPanelHeightUpdate()V

    .line 1813
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setListening(Z)V

    .line 1815
    :cond_11
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_0

    .line 1756
    :cond_12
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAllTouchDown:Z

    goto/16 :goto_2

    .line 1766
    :cond_13
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->performClick()Z

    .line 1767
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setPressed(Z)V

    goto/16 :goto_3
.end method

.method protected onTrackingStarted()V
    .locals 1

    .prologue
    .line 3155
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStarted()V

    .line 3156
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    if-eqz v0, :cond_0

    .line 3157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    .line 3166
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v0, :cond_1

    .line 3170
    :cond_1
    return-void
.end method

.method protected onTrackingStopped(Z)V
    .locals 3
    .param p1, "expand"    # Z

    .prologue
    const/4 v2, 0x1

    .line 3505
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStopped(Z)V

    .line 3506
    if-eqz p1, :cond_0

    .line 3507
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrolledPixels(FZZ)V

    .line 3525
    :cond_0
    return-void
.end method

.method public openQs()V
    .locals 1

    .prologue
    .line 1141
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->cancelAnimation()V

    .line 1142
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    if-eqz v0, :cond_0

    .line 1143
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    .line 1145
    :cond_0
    return-void
.end method

.method protected positionClockAndNotifications()V
    .locals 15

    .prologue
    .line 945
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isAddOrRemoveAnimationPending()Z

    move-result v0

    .line 947
    .local v0, "animate":Z
    iget v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    invoke-static {v11}, Lcom/android/systemui/statusbar/BaseStatusBar;->isKeyguardState(I)Z

    move-result v11

    if-nez v11, :cond_1

    .line 948
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getCollapsedHeight()I

    move-result v1

    .line 949
    .local v1, "bottom":I
    iget v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-nez v11, :cond_0

    iget v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    add-int/2addr v11, v1

    iget v12, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationTopPadding:I

    add-int v10, v11, v12

    .line 952
    .local v10, "stackScrollerPadding":I
    :goto_0
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTopPaddingAdjustment:I

    .line 1021
    .end local v1    # "bottom":I
    :goto_1
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v11, v10}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setIntrinsicPadding(I)V

    .line 1022
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestScrollerTopPaddingUpdate(Z)V

    .line 1023
    return-void

    .line 949
    .end local v10    # "stackScrollerPadding":I
    .restart local v1    # "bottom":I
    :cond_0
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getHeight()I

    move-result v11

    iget v12, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationTopPadding:I

    add-int v10, v11, v12

    goto :goto_0

    .line 954
    .end local v1    # "bottom":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0030

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 955
    .local v5, "keyguardStatusViewTopMargin":I
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->startClockAnimation(I)V

    .line 956
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->useBigClockWithNoti()Z

    move-result v11

    if-eqz v11, :cond_a

    iget v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_a

    .line 957
    const v11, 0x7f0f0359

    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSecClockHolder:Landroid/view/View;

    .line 958
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isMobileKeyboardAttached()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a049a

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    :goto_2
    iput v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsNotificationTopPaddingOnKeyguard:I

    .line 969
    sget-boolean v11, Lcom/android/systemui/statusbar/Feature;->mIsTablet:Z

    if-eqz v11, :cond_4

    .line 970
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "lock_screen_clock_size"

    const/4 v13, 0x1

    const/4 v14, -0x2

    invoke-static {v11, v12, v13, v14}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    .line 972
    .local v9, "size":I
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isProfileOn(Landroid/content/Context;)Z

    move-result v4

    .line 973
    .local v4, "isProfileOn":Z
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isEasyModeOn(Landroid/content/Context;)Z

    move-result v2

    .line 974
    .local v2, "isEasyUxOn":Z
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v3

    .line 975
    .local v3, "isEmergencyMode":Z
    const/4 v11, 0x1

    if-eq v2, v11, :cond_2

    const/4 v11, 0x1

    if-ne v3, v11, :cond_3

    .line 976
    :cond_2
    const/4 v9, 0x2

    .line 978
    :cond_3
    if-eqz v4, :cond_6

    if-nez v2, :cond_6

    .line 979
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0499

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsNotificationTopPaddingOnKeyguard:I

    .line 990
    .end local v2    # "isEasyUxOn":Z
    .end local v3    # "isEmergencyMode":Z
    .end local v4    # "isProfileOn":Z
    .end local v9    # "size":I
    :cond_4
    :goto_3
    const/4 v7, 0x0

    .line 991
    .local v7, "mascotHeight":I
    const/4 v8, 0x0

    .line 992
    .local v8, "mascotTopMargin":I
    const/4 v6, 0x0

    .line 994
    .local v6, "mascotBottomMargin":I
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isDCMModel()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 995
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/keyguard/sec/KeyguardProperties;->isDcmLauncher(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isMascotEnabled()Z

    move-result v11

    if-eqz v11, :cond_8

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMascotView:Landroid/widget/LinearLayout;

    if-eqz v11, :cond_8

    .line 997
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a04b1

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 998
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a04b2

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 999
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a04b3

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 1001
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMascotView:Landroid/widget/LinearLayout;

    iget v12, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsNotificationTopPaddingOnKeyguard:I

    add-int/2addr v12, v8

    int-to-float v12, v12

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setY(F)V

    .line 1005
    :goto_4
    iget v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsNotificationTopPaddingOnKeyguard:I

    add-int/2addr v11, v7

    add-int/2addr v11, v8

    add-int v10, v11, v6

    .line 1019
    .end local v6    # "mascotBottomMargin":I
    .end local v7    # "mascotHeight":I
    .end local v8    # "mascotTopMargin":I
    .restart local v10    # "stackScrollerPadding":I
    :goto_5
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTopPaddingAdjustment:I

    goto/16 :goto_1

    .line 958
    .end local v10    # "stackScrollerPadding":I
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0497

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    goto/16 :goto_2

    .line 981
    .restart local v2    # "isEasyUxOn":Z
    .restart local v3    # "isEmergencyMode":Z
    .restart local v4    # "isProfileOn":Z
    .restart local v9    # "size":I
    :cond_6
    if-nez v9, :cond_7

    .line 982
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0498

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsNotificationTopPaddingOnKeyguard:I

    goto :goto_3

    .line 984
    :cond_7
    const/4 v11, 0x2

    if-ne v9, v11, :cond_4

    .line 985
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0499

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsNotificationTopPaddingOnKeyguard:I

    goto :goto_3

    .line 1003
    .end local v2    # "isEasyUxOn":Z
    .end local v3    # "isEmergencyMode":Z
    .end local v4    # "isProfileOn":Z
    .end local v9    # "size":I
    .restart local v6    # "mascotBottomMargin":I
    .restart local v7    # "mascotHeight":I
    .restart local v8    # "mascotTopMargin":I
    :cond_8
    const/16 v11, 0x8

    invoke-direct {p0, v11}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setMascotViewVisible(I)V

    goto :goto_4

    .line 1009
    :cond_9
    iget v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsNotificationTopPaddingOnKeyguard:I

    .restart local v10    # "stackScrollerPadding":I
    goto :goto_5

    .line 1013
    .end local v6    # "mascotBottomMargin":I
    .end local v7    # "mascotHeight":I
    .end local v8    # "mascotTopMargin":I
    .end local v10    # "stackScrollerPadding":I
    :cond_a
    sget-boolean v11, Lcom/android/systemui/statusbar/Feature;->mUseBigClockWithNotiForCover:Z

    if-eqz v11, :cond_b

    .line 1014
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSecKeyguardStatusView:Lcom/android/keyguard/sec/SecKeyguardStatusView;

    invoke-virtual {v11}, Lcom/android/keyguard/sec/SecKeyguardStatusView;->getHeight()I

    move-result v10

    .restart local v10    # "stackScrollerPadding":I
    goto :goto_5

    .line 1016
    .end local v10    # "stackScrollerPadding":I
    :cond_b
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v11

    add-int v10, v5, v11

    .restart local v10    # "stackScrollerPadding":I
    goto :goto_5
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 1687
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->isHandlingTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1691
    :goto_0
    return-void

    .line 1690
    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0
.end method

.method public resetViews()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1101
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionFinished:Z

    .line 1102
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlockTouches:Z

    .line 1103
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUnlockIconActive:Z

    .line 1106
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->resetPreviewView()V

    .line 1107
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->closeQs()V

    .line 1108
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->dismissPopups()V

    .line 1109
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZZ)V

    .line 1111
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setPanelEndMagin()V

    .line 1112
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateCarrierLabelView()V

    .line 1113
    return-void
.end method

.method public setBarState(IZZ)V
    .locals 5
    .param p1, "statusBarState"    # I
    .param p2, "keyguardFadingAway"    # Z
    .param p3, "goingToFullShade"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2041
    invoke-static {p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->isKeyguardState(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->isShadeLockedState(I)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_0
    move v0, v2

    .line 2043
    .local v0, "keyguardShowing":Z
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-nez v3, :cond_1

    if-eqz v0, :cond_1

    .line 2044
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    .line 2045
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsTranslation(F)V

    .line 2046
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setTranslationY(F)V

    .line 2047
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getBottomMostNotificationBottom()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setVisibleNotificationBottom(I)V

    .line 2050
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setKeyguardStatusViewVisibility(IZZ)V

    .line 2053
    if-eqz p3, :cond_6

    .line 2054
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animateKeyguardStatusBarOut()V

    .line 2064
    :goto_1
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    .line 2065
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    .line 2066
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQsState()V

    .line 2067
    if-eqz p3, :cond_2

    .line 2068
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animateHeaderSlidingIn()V

    .line 2071
    :cond_2
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    invoke-static {v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->isKeyguardState(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastAnnouncementWasQuickSettings:Z

    if-nez v3, :cond_3

    .line 2072
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastAnnouncementforShade:Z

    .line 2075
    :cond_3
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    invoke-static {v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->isShadeLockedState(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastAnnouncementWasQuickSettings:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastAnnouncementforShade:Z

    if-nez v1, :cond_4

    .line 2076
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getKeyguardOrLockScreenString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 2077
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastAnnouncementforShade:Z

    .line 2079
    :cond_4
    return-void

    .end local v0    # "keyguardShowing":Z
    :cond_5
    move v0, v1

    .line 2041
    goto :goto_0

    .line 2056
    .restart local v0    # "keyguardShowing":Z
    :cond_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setAlpha(F)V

    .line 2057
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isAppCoverShowing()Z

    move-result v3

    if-nez v3, :cond_7

    sget-boolean v3, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsStatusBarHidden:Z

    if-nez v3, :cond_7

    move v3, v1

    :goto_2
    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setVisibility(I)V

    .line 2060
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->knox_setBarState()V

    goto :goto_1

    .line 2057
    :cond_7
    const/4 v3, 0x4

    goto :goto_2
.end method

.method public setCarrierView(Landroid/widget/TextView;Landroid/view/View;)V
    .locals 3
    .param p1, "carrierView"    # Landroid/widget/TextView;
    .param p2, "clearAll"    # Landroid/view/View;

    .prologue
    .line 3173
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabel:Landroid/widget/TextView;

    .line 3174
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/view/View;

    .line 3178
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 3179
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 3180
    .local v0, "clearAllParent":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 3181
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 3184
    .end local v0    # "clearAllParent":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/view/View;

    const v2, 0x7f0f00e1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAllLabel:Landroid/widget/TextView;

    .line 3185
    return-void
.end method

.method public setDisableClockAndClear(Z)V
    .locals 0
    .param p1, "disable"    # Z

    .prologue
    .line 4145
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsDisableClockAndClear:Z

    .line 4146
    return-void
.end method

.method public setDozing(ZZ)V
    .locals 2
    .param p1, "dozing"    # Z
    .param p2, "animate"    # Z

    .prologue
    .line 3898
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    if-ne p1, v0, :cond_1

    .line 3911
    :cond_0
    :goto_0
    return-void

    .line 3899
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    .line 3900
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    if-eqz v0, :cond_2

    .line 3901
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setVisibility(I)V

    goto :goto_0

    .line 3905
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setVisibility(I)V

    .line 3906
    if-eqz p2, :cond_0

    .line 3907
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animateKeyguardStatusBarIn()V

    goto :goto_0
.end method

.method public setEmergencyMode(Z)V
    .locals 1
    .param p1, "isEm"    # Z

    .prologue
    .line 4086
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mEmergencyModeActivated:Z

    .line 4087
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQsState()V

    .line 4088
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mEmergencyModeActivated:Z

    .line 4089
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateEverything()V

    .line 4090
    return-void
.end method

.method public setEmptyDragAmount(F)V
    .locals 2
    .param p1, "amount"    # F

    .prologue
    .line 3883
    const v0, 0x3f4ccccd    # 0.8f

    .line 3884
    .local v0, "factor":F
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 3885
    const v0, 0x3ecccccd    # 0.4f

    .line 3889
    :cond_0
    :goto_0
    mul-float v1, p1, v0

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mEmptyDragAmount:F

    .line 3890
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->positionClockAndNotifications()V

    .line 3891
    return-void

    .line 3886
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->hasActiveNotifications()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3887
    const v0, 0x3ecccccd    # 0.4f

    goto :goto_0
.end method

.method public setKeyguardUserSwitcher(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)V
    .locals 0
    .param p1, "keyguardUserSwitcher"    # Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    .prologue
    .line 3938
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    .line 3939
    return-void
.end method

.method public setLaunchTransitionEndRunnable(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 3879
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

    .line 3880
    return-void
.end method

.method public setMascotRemoteViews(Landroid/widget/RemoteViews;)V
    .locals 2
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;

    .prologue
    .line 454
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mRemoteViews:Landroid/widget/RemoteViews;

    .line 457
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mRemoteViews:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    .line 458
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isMascotAppRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 459
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mRemoteViews:Landroid/widget/RemoteViews;

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMascotView:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    .line 478
    :goto_0
    return-void

    .line 471
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMascotHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$4;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setMoreNotificationCue(Landroid/view/View;Lcom/android/systemui/statusbar/NotificationOverflowContainer;)V
    .locals 0
    .param p1, "moreNotificationCue"    # Landroid/view/View;
    .param p2, "keyguardIconOverflowContainer"    # Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    .prologue
    .line 3188
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMoreNotificationCue:Landroid/view/View;

    .line 3189
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    .line 3190
    return-void
.end method

.method protected setOverExpansion(FZ)V
    .locals 4
    .param p1, "overExpansion"    # F
    .param p2, "isPixels"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3137
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mConflictingQsExpansionGesture:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    if-eqz v0, :cond_1

    .line 3151
    :cond_0
    :goto_0
    return-void

    .line 3140
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3141
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOnHeightChangedListener(Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;)V

    .line 3142
    if-eqz p2, :cond_2

    .line 3143
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1, v3, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrolledPixels(FZZ)V

    .line 3149
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOnHeightChangedListener(Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;)V

    goto :goto_0

    .line 3146
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1, v3, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    goto :goto_1
.end method

.method public setPeekHeight(I)V
    .locals 0
    .param p1, "peek"    # I

    .prologue
    .line 4082
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    .line 4083
    return-void
.end method

.method public setQsExpandHeight(ZI)V
    .locals 3
    .param p1, "expand"    # Z
    .param p2, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 2633
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mEmergencyModeActivated:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mIsTablet:Z

    if-nez v0, :cond_0

    .line 2634
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    .line 2640
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    .line 2641
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setQsHeight mQsMin:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mQsMax:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mQsEx:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mQsPeek:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2643
    return-void

    .line 2635
    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsStatusBarHidden:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isAllowedSlideStatusBar()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierLockPlusEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2636
    :cond_1
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    goto :goto_0

    .line 2638
    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getExpandedHeight()I

    move-result v0

    add-int/2addr v0, p2

    :goto_2
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getCollapsedHeight()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    add-int/2addr v0, v2

    goto :goto_2

    .line 2640
    :cond_4
    if-eqz p1, :cond_5

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getCollapsedHeight()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    add-int/2addr v0, v1

    goto :goto_1
.end method

.method public setQsExpansionEnabled(Z)V
    .locals 5
    .param p1, "qsExpansionEnabled"    # Z

    .prologue
    .line 1071
    move v0, p1

    .line 1074
    .local v0, "adjustedQsExpansionEnabled":Z
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isCoveredState()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1075
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isAppCoverShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1076
    const/4 v0, 0x0

    .line 1086
    :cond_0
    :goto_0
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKidsModeActivated()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1087
    const/4 v0, 0x0

    .line 1090
    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    .line 1091
    sget-object v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "kids"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKidsModeActivated()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mQsExpansionEnabled:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setClickable(Z)V

    .line 1097
    return-void

    .line 1078
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 1079
    .local v1, "am":Landroid/app/ActivityManager;
    invoke-virtual {v1}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1080
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setQsScrimEnabled(Z)V
    .locals 2
    .param p1, "qsScrimEnabled"    # Z

    .prologue
    .line 3930
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsScrimEnabled:Z

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .line 3931
    .local v0, "changed":Z
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsScrimEnabled:Z

    .line 3932
    if-eqz v0, :cond_0

    .line 3933
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQsState()V

    .line 3935
    :cond_0
    return-void

    .line 3930
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p1, "bar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 544
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 545
    return-void
.end method

.method public setTapped()V
    .locals 1

    .prologue
    .line 1209
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDoubleTapCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDoubleTapCount:I

    .line 1210
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 3867
    const/4 v0, 0x1

    return v0
.end method

.method protected startUnlockHintAnimation()V
    .locals 0

    .prologue
    .line 3675
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->startUnlockHintAnimation()V

    .line 3677
    return-void
.end method

.method public updateCarrierLabelView()V
    .locals 14

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3224
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardState()Z

    move-result v4

    .line 3225
    .local v4, "isKeyGuard":Z
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isShadeLockedState()Z

    move-result v5

    .line 3226
    .local v5, "isShadeLocked":Z
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v11

    if-nez v11, :cond_1

    move v3, v0

    .line 3227
    .local v3, "isShade":Z
    :goto_0
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v11

    const/4 v12, 0x5

    if-ne v11, v12, :cond_2

    move v7, v0

    .line 3229
    .local v7, "isCovered":Z
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3230
    .local v6, "marginParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    .line 3234
    .local v2, "carrierLabelHeight":I
    :goto_2
    const/4 v9, 0x0

    .line 3236
    .local v9, "isCarrierLabelHidden":Z
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    if-eqz v0, :cond_0

    .line 3237
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    invoke-virtual {v0}, Landroid/app/enterprise/knoxcustom/SystemManager;->getLockScreenHiddenItems()I

    move-result v10

    .line 3238
    .local v10, "knoxCustomLockScreenState":I
    and-int/lit8 v0, v10, 0x4

    if-eqz v0, :cond_0

    .line 3239
    const/4 v9, 0x1

    .line 3243
    .end local v10    # "knoxCustomLockScreenState":I
    :cond_0
    move v8, v9

    .line 3247
    .local v8, "isKnoxCustomCarrierLabelHidden":Z
    new-instance v11, Landroid/os/Handler;

    invoke-direct {v11}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;IZZZLandroid/view/ViewGroup$MarginLayoutParams;ZZ)V

    const-wide/16 v12, 0x46

    invoke-virtual {v11, v0, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3438
    return-void

    .end local v2    # "carrierLabelHeight":I
    .end local v3    # "isShade":Z
    .end local v6    # "marginParams":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v7    # "isCovered":Z
    .end local v8    # "isKnoxCustomCarrierLabelHidden":Z
    .end local v9    # "isCarrierLabelHidden":Z
    :cond_1
    move v3, v1

    .line 3226
    goto :goto_0

    .restart local v3    # "isShade":Z
    :cond_2
    move v7, v1

    .line 3227
    goto :goto_1

    .line 3230
    .restart local v6    # "marginParams":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v7    # "isCovered":Z
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a02e8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_2
.end method

.method public updateChildViewVisibilityForNotificationCover(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 4288
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationContentsRoot:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationContentsRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 4289
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationContentsRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4292
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSecKeyguardStatusView:Lcom/android/keyguard/sec/SecKeyguardStatusView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSecKeyguardStatusView:Lcom/android/keyguard/sec/SecKeyguardStatusView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusView;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 4293
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isKeyguardState(I)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->needsShowClockandNotifications()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4294
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSecKeyguardStatusView:Lcom/android/keyguard/sec/SecKeyguardStatusView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/SecKeyguardStatusView;->setVisibility(I)V

    .line 4299
    :cond_1
    :goto_0
    return-void

    .line 4296
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSecKeyguardStatusView:Lcom/android/keyguard/sec/SecKeyguardStatusView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecKeyguardStatusView;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateClearAll(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 3193
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAllVisible:Z

    .line 3194
    return-void
.end method

.method public updateClock(Z)V
    .locals 8
    .param p1, "show"    # Z

    .prologue
    const v7, 0x7f0f0371

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 4013
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->hasNotification()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHasNotification:Z

    .line 4015
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    invoke-static {v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->isKeyguardState(I)Z

    move-result v2

    if-eqz v2, :cond_d

    if-eqz p1, :cond_d

    .line 4016
    sget-object v5, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "There is/are "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHasNotification:Z

    if-eqz v2, :cond_2

    const-string v2, ""

    :goto_0
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "notification(s) "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4017
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->useBigClockWithNoti()Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_4

    .line 4018
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4019
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSecKeyguardStatusView:Lcom/android/keyguard/sec/SecKeyguardStatusView;

    invoke-virtual {v2, v4}, Lcom/android/keyguard/sec/SecKeyguardStatusView;->setVisibility(I)V

    .line 4020
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSecKeyguardStatusView:Lcom/android/keyguard/sec/SecKeyguardStatusView;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHasNotification:Z

    invoke-virtual {v2, v5, v4}, Lcom/android/keyguard/sec/SecKeyguardStatusView;->updateOwnerInfo(ZZ)V

    .line 4021
    const v2, 0x7f0f035a

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSecClockBottom:Landroid/view/View;

    .line 4022
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;

    .line 4023
    .local v1, "widgetContainer":Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;
    if-eqz v1, :cond_0

    .line 4024
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHasNotification:Z

    if-eqz v2, :cond_3

    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->setVisibility(I)V

    .line 4025
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isSupportNotificationOnCover()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseBigClockWithNotiForCover:Z

    if-eqz v2, :cond_1

    .line 4026
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateVisibilityAdaptiveInfo(I)V

    .line 4077
    .end local v1    # "widgetContainer":Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;
    :cond_1
    :goto_2
    return-void

    .line 4016
    :cond_2
    const-string v2, "no "

    goto :goto_0

    .restart local v1    # "widgetContainer":Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;
    :cond_3
    move v2, v4

    .line 4024
    goto :goto_1

    .line 4028
    .end local v1    # "widgetContainer":Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;
    :cond_4
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    const/4 v5, 0x5

    if-ne v2, v5, :cond_a

    .line 4029
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 4031
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4032
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSecKeyguardStatusView:Lcom/android/keyguard/sec/SecKeyguardStatusView;

    invoke-virtual {v2, v3}, Lcom/android/keyguard/sec/SecKeyguardStatusView;->setVisibility(I)V

    .line 4033
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4053
    :cond_5
    :goto_3
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;

    .line 4054
    .restart local v1    # "widgetContainer":Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;
    if-eqz v1, :cond_6

    .line 4055
    invoke-virtual {v1, v3}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->setVisibility(I)V

    .line 4057
    :cond_6
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mSupportMumButton:Z

    if-eqz v2, :cond_1

    .line 4058
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateVisibilityMUMIcon(I)V

    goto :goto_2

    .line 4034
    .end local v1    # "widgetContainer":Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;
    :cond_7
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHasNotification:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isShowNotifications()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 4035
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseBigClockWithNotiForCover:Z

    if-eqz v2, :cond_8

    .line 4036
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4037
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSecKeyguardStatusView:Lcom/android/keyguard/sec/SecKeyguardStatusView;

    invoke-virtual {v2, v4}, Lcom/android/keyguard/sec/SecKeyguardStatusView;->setVisibility(I)V

    .line 4039
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateVisibilityAdaptiveInfo(I)V

    goto :goto_3

    .line 4041
    :cond_8
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSecKeyguardStatusView:Lcom/android/keyguard/sec/SecKeyguardStatusView;

    invoke-virtual {v2, v3}, Lcom/android/keyguard/sec/SecKeyguardStatusView;->setVisibility(I)V

    .line 4042
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 4045
    :cond_9
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4046
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSecKeyguardStatusView:Lcom/android/keyguard/sec/SecKeyguardStatusView;

    invoke-virtual {v2, v4}, Lcom/android/keyguard/sec/SecKeyguardStatusView;->setVisibility(I)V

    .line 4048
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseBigClockWithNotiForCover:Z

    if-eqz v2, :cond_5

    .line 4049
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateVisibilityAdaptiveInfo(I)V

    goto :goto_3

    .line 4061
    .end local v0    # "am":Landroid/app/ActivityManager;
    :cond_a
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHasNotification:Z

    if-eqz v2, :cond_c

    .line 4062
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSecKeyguardStatusView:Lcom/android/keyguard/sec/SecKeyguardStatusView;

    invoke-virtual {v2, v3}, Lcom/android/keyguard/sec/SecKeyguardStatusView;->setVisibility(I)V

    .line 4063
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mEmergencyModeActivated:Z

    if-eqz v2, :cond_b

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    if-eqz v2, :cond_b

    .line 4064
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 4066
    :cond_b
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 4069
    :cond_c
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4070
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSecKeyguardStatusView:Lcom/android/keyguard/sec/SecKeyguardStatusView;

    invoke-virtual {v2, v4}, Lcom/android/keyguard/sec/SecKeyguardStatusView;->setVisibility(I)V

    goto/16 :goto_2

    .line 4074
    :cond_d
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSecKeyguardStatusView:Lcom/android/keyguard/sec/SecKeyguardStatusView;

    invoke-virtual {v2, v3}, Lcom/android/keyguard/sec/SecKeyguardStatusView;->setVisibility(I)V

    .line 4075
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method public updateHeaderKeyguard()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 3051
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardState()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3055
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getNotificationsTopY()F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationsHeaderCollideDistance:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 3064
    .local v0, "alphaNotifications":F
    :goto_0
    const/4 v2, 0x0

    invoke-static {v0, v2, v6}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    .line 3065
    float-to-double v2, v0

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v0, v2

    .line 3066
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    invoke-static {v6, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    sub-float v1, v6, v2

    .line 3072
    .local v1, "alphaQsExpansion":F
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 3073
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v3

    sub-float v3, v6, v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setCoverUiAlpha(F)V

    .line 3078
    :goto_1
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsTranslation(F)V

    .line 3079
    return-void

    .line 3062
    .end local v0    # "alphaNotifications":F
    .end local v1    # "alphaQsExpansion":F
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getNotificationsTopY()F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v2, v3

    .restart local v0    # "alphaNotifications":F
    goto :goto_0

    .line 3075
    .restart local v1    # "alphaQsExpansion":F
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBouncerContainer:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v3

    sub-float v3, v6, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1
.end method

.method public updateMascotView()V
    .locals 3

    .prologue
    .line 506
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMascotView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 507
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isMascotEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 508
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setMascotViewVisible(I)V

    .line 509
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->positionClockAndNotifications()V

    .line 520
    :cond_0
    :goto_0
    return-void

    .line 512
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mRemoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 513
    .local v0, "expand":Landroid/view/View;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMascotView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 514
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 515
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setMascotViewVisible(I)V

    .line 516
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->positionClockAndNotifications()V

    goto :goto_0
.end method

.method public updateNotificationPanelSize(I)V
    .locals 13
    .param p1, "statusBarState"    # I

    .prologue
    const/4 v12, 0x5

    const/4 v10, 0x1

    .line 4166
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationContentsRoot:Landroid/widget/FrameLayout;

    if-nez v9, :cond_1

    .line 4222
    :cond_0
    :goto_0
    return-void

    .line 4169
    :cond_1
    const/4 v3, -0x1

    .line 4170
    .local v3, "layoutWidth":I
    const/4 v2, -0x1

    .line 4171
    .local v2, "layoutHeight":I
    const/4 v1, 0x0

    .line 4172
    .local v1, "layoutGravity":I
    const/high16 v5, 0x3f800000    # 1.0f

    .line 4173
    .local v5, "scaleX":F
    const/high16 v6, 0x3f800000    # 1.0f

    .line 4174
    .local v6, "scaleY":F
    const/4 v7, 0x0

    .line 4176
    .local v7, "statusBarMargin":I
    if-eq p1, v12, :cond_2

    const/16 v9, 0xa

    if-ne p1, v9, :cond_4

    .line 4177
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x7f0e0057

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 4178
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x7f0e0058

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 4179
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x7f0e0059

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 4181
    if-gtz v1, :cond_3

    .line 4182
    const/4 v1, 0x1

    .line 4184
    :cond_3
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 4185
    .local v0, "coverScale":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x7f0a040b

    invoke-virtual {v9, v11, v0, v10}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 4186
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v6

    move v5, v6

    .line 4187
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x7f0e005a

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 4190
    .end local v0    # "coverScale":Landroid/util/TypedValue;
    :cond_4
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationContentsRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 4191
    .local v4, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v9, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-ne v9, v3, :cond_5

    iget v9, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-eq v9, v1, :cond_7

    .line 4192
    :cond_5
    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 4193
    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 4194
    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 4196
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v9, :cond_6

    .line 4197
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v9, v3}, Lcom/android/systemui/qs/QSPanel;->setNotificationPanelWidth(I)V

    .line 4200
    :cond_6
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationContentsRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v9, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4203
    :cond_7
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSecKeyguardStatusView:Lcom/android/keyguard/sec/SecKeyguardStatusView;

    invoke-virtual {v9}, Lcom/android/keyguard/sec/SecKeyguardStatusView;->getScaleX()F

    move-result v9

    cmpl-float v9, v5, v9

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSecKeyguardStatusView:Lcom/android/keyguard/sec/SecKeyguardStatusView;

    invoke-virtual {v9}, Lcom/android/keyguard/sec/SecKeyguardStatusView;->getScaleY()F

    move-result v9

    cmpl-float v9, v6, v9

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSecKeyguardStatusView:Lcom/android/keyguard/sec/SecKeyguardStatusView;

    if-eqz v9, :cond_8

    .line 4205
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateOwnerInfoText(I)V

    .line 4207
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSecKeyguardStatusView:Lcom/android/keyguard/sec/SecKeyguardStatusView;

    invoke-virtual {v9, v5}, Lcom/android/keyguard/sec/SecKeyguardStatusView;->setScaleX(F)V

    .line 4208
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSecKeyguardStatusView:Lcom/android/keyguard/sec/SecKeyguardStatusView;

    invoke-virtual {v9, v6}, Lcom/android/keyguard/sec/SecKeyguardStatusView;->setScaleY(F)V

    .line 4209
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSecKeyguardStatusView:Lcom/android/keyguard/sec/SecKeyguardStatusView;

    if-ne p1, v12, :cond_a

    move v9, v10

    :goto_1
    invoke-virtual {v11, v9}, Lcom/android/keyguard/sec/SecKeyguardStatusView;->setCoverState(Z)V

    .line 4212
    :cond_8
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    if-eqz v9, :cond_9

    .line 4213
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 4214
    .local v8, "statusbarLp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v8, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 4215
    invoke-virtual {v8, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 4218
    .end local v8    # "statusbarLp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_9
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSecKeyguardStatusView:Lcom/android/keyguard/sec/SecKeyguardStatusView;

    if-eqz v9, :cond_0

    .line 4219
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSecKeyguardStatusView:Lcom/android/keyguard/sec/SecKeyguardStatusView;

    invoke-virtual {v9}, Lcom/android/keyguard/sec/SecKeyguardStatusView;->updateLongShadowImageViews()V

    .line 4220
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSecKeyguardStatusView:Lcom/android/keyguard/sec/SecKeyguardStatusView;

    iget-boolean v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHasNotification:Z

    invoke-virtual {v9, v11, v10}, Lcom/android/keyguard/sec/SecKeyguardStatusView;->updateOwnerInfo(ZZ)V

    goto/16 :goto_0

    .line 4209
    :cond_a
    const/4 v9, 0x0

    goto :goto_1
.end method

.method protected updatePanelState(Z)V
    .locals 2
    .param p1, "open"    # Z

    .prologue
    .line 3197
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsFullyOpened:Z

    .line 3198
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mHasOneSideEdge:Z

    if-eqz v0, :cond_0

    .line 3199
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsFullyOpened:Z

    if-eqz v0, :cond_2

    .line 3200
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 3201
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 3207
    :cond_0
    :goto_0
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-nez v0, :cond_1

    .line 3208
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setBrightnessControllerVisivility()V

    .line 3209
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showHideQConnectLayout()V

    .line 3210
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateQSpanelHeight()V

    .line 3212
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateCarrierLabelView()V

    .line 3215
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-nez p1, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setStatusBarFocusable(Z)V

    .line 3216
    return-void

    .line 3203
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 3204
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    goto :goto_0

    .line 3215
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public updateResources()V
    .locals 5

    .prologue
    .line 793
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a02e7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 794
    .local v2, "panelWidth":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0060

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 795
    .local v1, "panelGravity":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 796
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-eq v3, v2, :cond_0

    .line 797
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 798
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 799
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 800
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUpdateHeader:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->post(Ljava/lang/Runnable;)Z

    .line 803
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 804
    .restart local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-eq v3, v2, :cond_1

    .line 805
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 806
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 807
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 810
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 811
    .restart local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-eq v3, v2, :cond_2

    .line 812
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 813
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 814
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 817
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateTextResources()V

    .line 818
    return-void
.end method

.method public updateVisibilityAdaptiveInfo(I)V
    .locals 7
    .param p1, "visibility"    # I

    .prologue
    .line 4310
    const/4 v2, 0x0

    .line 4312
    .local v2, "ownerInfoChanged":Z
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOwnerInfo:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 4313
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled(I)Z

    move-result v3

    .line 4316
    .local v3, "ownerInfoEnabled":Z
    if-eqz v3, :cond_3

    .line 4317
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v1

    .line 4321
    .local v1, "ownerInfo":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 4322
    const/4 v2, 0x1

    .line 4328
    .end local v1    # "ownerInfo":Ljava/lang/String;
    .end local v3    # "ownerInfoEnabled":Z
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    .line 4329
    if-nez p1, :cond_5

    .line 4330
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSecKeyguardStatusView:Lcom/android/keyguard/sec/SecKeyguardStatusView;

    if-eqz v4, :cond_1

    .line 4331
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSecKeyguardStatusView:Lcom/android/keyguard/sec/SecKeyguardStatusView;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHasNotification:Z

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/keyguard/sec/SecKeyguardStatusView;->updateOwnerInfo(ZZ)V

    .line 4338
    :cond_1
    :goto_2
    const v4, 0x7f0f02f8

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 4339
    .local v0, "mAdaptiveInfoArea":Landroid/widget/LinearLayout;
    if-eqz v0, :cond_2

    .line 4340
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4342
    :cond_2
    return-void

    .line 4319
    .end local v0    # "mAdaptiveInfoArea":Landroid/widget/LinearLayout;
    .restart local v3    # "ownerInfoEnabled":Z
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "ownerInfo":Ljava/lang/String;
    goto :goto_0

    .line 4323
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 4324
    const/4 v2, 0x1

    goto :goto_1

    .line 4333
    .end local v1    # "ownerInfo":Ljava/lang/String;
    .end local v3    # "ownerInfoEnabled":Z
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOwnerInfo:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 4334
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method public updateVisibilityMUMIcon(I)V
    .locals 4
    .param p1, "visibility"    # I

    .prologue
    const v3, 0x7f0f019e

    .line 4345
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    if-eqz v2, :cond_0

    .line 4346
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 4347
    .local v0, "mKeyguardMumIcon":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 4348
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 4351
    .end local v0    # "mKeyguardMumIcon":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    if-eqz v2, :cond_1

    .line 4352
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 4353
    .local v1, "mMumIcon":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 4354
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 4357
    .end local v1    # "mMumIcon":Landroid/view/View;
    :cond_1
    return-void
.end method
