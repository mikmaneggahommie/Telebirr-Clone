.class public Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;
.super Ljava/lang/Object;
.source "CenterBarWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$CenterBarGestureListener;,
        Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$GuideView;,
        Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$EdgeArea;
    }
.end annotation


# static fields
.field private static final CENTER_BAR_DRAW_TIMER:I = 0xcf

.field private static final CENTER_BAR_FLING_PROPORTION:I = 0x14

.field private static final CENTER_BAR_FULLSCREEN_PROPORTION:I = 0x5

.field private static final CENTER_BAR_INJECT_INPUT_EVENT:I = 0xce

.field private static final CENTER_BAR_SHOW_BUTTON_POPUP:I = 0xcd

.field private static final CENTER_BAR_SWITCHING_APP_SHOW_MESSAGE:I = 0xcc

.field private static final CENTER_BAR_TIMER_MESSAGE:I = 0xc9

.field private static final CENTER_BAR_TIMER_TIME:I = 0xbb8

.field private static final CENTER_BAR_TOUCH_MARGIN:I = 0x1e

.field private static final DOUBLE_TAP_MIN_TIME:I

.field private static final MAX_TASKS:I = 0x64

.field private static final RESPONSE_AXT9INFO:Ljava/lang/String; = "ResponseAxT9Info"

.field private static final TAG:Ljava/lang/String; = "CenterBarWindow"


# instance fields
.field private final CENTER_BAR_DIRECTION_BL:S

.field private final CENTER_BAR_DIRECTION_BOTTOM:S

.field private final CENTER_BAR_DIRECTION_BR:S

.field private final CENTER_BAR_DIRECTION_LEFT:S

.field private final CENTER_BAR_DIRECTION_RIGHT:S

.field private final CENTER_BAR_DIRECTION_TL:S

.field private final CENTER_BAR_DIRECTION_TOP:S

.field private final CENTER_BAR_DIRECTION_TR:S

.field private final DEBUG:Z

.field private final ESTIMATE_INVALID_VALUE:S

.field private final WINDOW_PORTRAIT_MODE:S

.field private centerBarButtonSoundId:I

.field private mActionCancel:Z

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mAnimationPlaying:Z

.field mAppSwitchingAnimIcon:Landroid/widget/ImageView;

.field private mAvailableAnims:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAvailableButtons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mButtonsPopupWindow:Landroid/widget/PopupWindow;

.field private mCenterBar:Landroid/widget/ImageView;

.field private mCenterBarButtonCloseAnimating:Z

.field private mCenterBarButtonOpenAnimating:Z

.field private mCenterBarButtons:Landroid/view/View;

.field private mCenterBarDirection:I

.field private mCenterBarDockingSize:I

.field mCenterBarEventReceiver:Landroid/content/BroadcastReceiver;

.field private mCenterBarFlingNonQuadRatio:I

.field private mCenterBarFlingProportion:I

.field private mCenterBarFlingSizeH:I

.field private mCenterBarFlingSizeW:I

.field private mCenterBarFrame:Landroid/widget/FrameLayout;

.field private mCenterBarGestureDetector:Landroid/view/GestureDetector;

.field mCenterBarHoverListener:Landroid/view/View$OnHoverListener;

.field private mCenterBarPoint:Landroid/graphics/Point;

.field private mCenterBarSize:I

.field private mCenterbarButtonsContainer:Landroid/widget/LinearLayout;

.field mCloseButton:Landroid/view/View;

.field mCollapseButton:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mCurrentArrangeState:I

.field private mCurrentLanguage:Ljava/lang/String;

.field private mDisplayHeight:I

.field private mDisplayId:I

.field private mDisplayOrientation:I

.field private mDisplayWidth:I

.field private mDoubleTabbed:Z

.field private mDragAndDropHelpPopupDialog:Landroid/app/AlertDialog;

.field mDragAnimIcon:Landroid/widget/ImageView;

.field mDragButton:Landroid/view/View;

.field private mFocusZoneInfo:I

.field mFullAnimIcon:Landroid/widget/ImageView;

.field mFullButton:Landroid/view/View;

.field private mFullSizeDocking:Z

.field private mGuideView:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$GuideView;

.field private mHelpHubVersion:I

.field private mInputMethodChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mIsCenterBarFixed:Z

.field private mIsCenterBarMoved:Z

.field private mIsCenterBarPressed:Z

.field private mIsCrossRect:Z

.field private mIsDragAndDropStart:Z

.field private mIsDragMode:Z

.field private mIsFirst:Z

.field private mIsInLongPress:Z

.field private mIsNewHelpPopup:Z

.field private mIsShowButton:Z

.field private mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

.field private mLastBackgroundLandscape:I

.field private mLastBackgroundPortait:I

.field private mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

.field private mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field private mService:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;

.field private mSoundPool:Landroid/media/SoundPool;

.field mSplitMaxWeight:F

.field mSplitMinWeight:F

.field private mStartCenterBarPoint:Landroid/graphics/Point;

.field mSupportQuadView:Z

.field mSwitchAnimIcon:Landroid/widget/ImageView;

.field mSwitchButton:Landroid/view/View;

.field mTimerHandler:Landroid/os/Handler;

.field private mToastCheck:Z

.field private mTouchEventX:I

.field private mTouchEventY:I

.field mTouchListener:Landroid/view/View$OnTouchListener;

.field private mTouchStartX:I

.field private mTouchStartY:I

.field private mVibrator:Landroid/os/SystemVibrator;

.field private mViewForLayout:Landroid/view/View;

.field private mWM:Landroid/view/IWindowManager;

.field private mWindowCenterBar:Landroid/view/Window;

.field private mWindowManager:Landroid/view/WindowManager;

.field mbExitButton:Z

.field mbSideSyncButton:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 128
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapMinTime()I

    move-result v0

    sput v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->DOUBLE_TAP_MIN_TIME:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;

    .prologue
    .line 246
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 130
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->DEBUG:Z

    .line 132
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-short v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->WINDOW_PORTRAIT_MODE:S

    .line 134
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-short v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->CENTER_BAR_DIRECTION_TOP:S

    .line 135
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-short v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->CENTER_BAR_DIRECTION_BOTTOM:S

    .line 136
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput-short v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->CENTER_BAR_DIRECTION_RIGHT:S

    .line 137
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput-short v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->CENTER_BAR_DIRECTION_LEFT:S

    .line 138
    const/4 v2, 0x4

    move-object/from16 v0, p0

    iput-short v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->CENTER_BAR_DIRECTION_TL:S

    .line 139
    const/4 v2, 0x5

    move-object/from16 v0, p0

    iput-short v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->CENTER_BAR_DIRECTION_TR:S

    .line 140
    const/4 v2, 0x6

    move-object/from16 v0, p0

    iput-short v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->CENTER_BAR_DIRECTION_BL:S

    .line 141
    const/4 v2, 0x7

    move-object/from16 v0, p0

    iput-short v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->CENTER_BAR_DIRECTION_BR:S

    .line 142
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput-short v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->ESTIMATE_INVALID_VALUE:S

    .line 147
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mService:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;

    .line 148
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .line 159
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mStartCenterBarPoint:Landroid/graphics/Point;

    .line 178
    const/16 v2, 0x14

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarFlingProportion:I

    .line 183
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mIsInLongPress:Z

    .line 184
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mToastCheck:Z

    .line 185
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFullSizeDocking:Z

    .line 186
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mActionCancel:Z

    .line 188
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    .line 189
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableAnims:Ljava/util/ArrayList;

    .line 205
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayId:I

    .line 219
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mbExitButton:Z

    .line 220
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mbSideSyncButton:Z

    .line 221
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mSupportQuadView:Z

    .line 223
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mIsCenterBarFixed:Z

    .line 226
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    .line 231
    const v2, 0x7f0202b1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mLastBackgroundLandscape:I

    .line 234
    const v2, 0x7f0202b1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mLastBackgroundPortait:I

    .line 237
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mHelpHubVersion:I

    .line 241
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->centerBarButtonSoundId:I

    .line 244
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCurrentLanguage:Ljava/lang/String;

    .line 323
    new-instance v2, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$1;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mInputMethodChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 342
    new-instance v2, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$2;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarEventReceiver:Landroid/content/BroadcastReceiver;

    .line 367
    new-instance v2, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$3;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 880
    new-instance v2, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$6;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$6;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarHoverListener:Landroid/view/View$OnHoverListener;

    .line 1126
    new-instance v2, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 1891
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarButtonCloseAnimating:Z

    .line 1892
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarButtonOpenAnimating:Z

    .line 2741
    new-instance v2, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$24;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$24;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTimerHandler:Landroid/os/Handler;

    .line 247
    const-string v2, "CenterBarWindow"

    const-string v3, "CenterBarWindow"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    .line 250
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mService:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;

    .line 252
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 253
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mActivityManager:Landroid/app/ActivityManager;

    .line 254
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    const-string v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/SystemVibrator;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mVibrator:Landroid/os/SystemVibrator;

    .line 255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    const-string v3, "multiwindow_facade"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .line 258
    invoke-static {}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getInstance()Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    .line 263
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    .line 264
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarDirection:I

    .line 265
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    .line 266
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBar:Landroid/widget/ImageView;

    .line 267
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchEventX:I

    .line 268
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchEventY:I

    .line 269
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchStartX:I

    .line 270
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchStartY:I

    .line 271
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mIsFirst:Z

    .line 272
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mIsShowButton:Z

    .line 273
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mIsDragMode:Z

    .line 274
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mIsDragAndDropStart:Z

    .line 275
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mIsCenterBarMoved:Z

    .line 276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCurrentArrangeState:I

    .line 277
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a04ea

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    .line 278
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a04ee

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarDockingSize:I

    .line 279
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0064

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarFlingNonQuadRatio:I

    .line 280
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0030

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mIsNewHelpPopup:Z

    .line 281
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mWM:Landroid/view/IWindowManager;

    .line 284
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v18

    .line 285
    .local v18, "pm":Landroid/content/pm/IPackageManager;
    const-string v2, "com.sec.feature.multiwindow.quadview"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mSupportQuadView:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 290
    .end local v18    # "pm":Landroid/content/pm/IPackageManager;
    :goto_0
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 291
    .local v5, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "ResponseAxT9Info"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 292
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mInputMethodChangedReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 294
    new-instance v9, Landroid/content/IntentFilter;

    const-string v2, "com.sec.android.action.ARRANGE_CONTROLL_BAR"

    invoke-direct {v9, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 295
    .local v9, "centerBarArrangeFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarEventReceiver:Landroid/content/BroadcastReceiver;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 298
    new-instance v13, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-direct {v13, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 299
    .local v13, "screenOffFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 303
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.samsung.helphub"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v17

    .line 304
    .local v17, "info":Landroid/content/pm/PackageInfo;
    if-eqz v17, :cond_0

    .line 305
    move-object/from16 v0, v17

    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v2, v2, 0xa

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mHelpHubVersion:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 311
    .end local v17    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_1
    new-instance v2, Landroid/media/SoundPool;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v6}, Landroid/media/SoundPool;-><init>(III)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mSoundPool:Landroid/media/SoundPool;

    .line 312
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mSoundPool:Landroid/media/SoundPool;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    const v4, 0x1100022

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v4, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->centerBarButtonSoundId:I

    .line 314
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCurrentLanguage:Ljava/lang/String;

    .line 316
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getSplitMinWeight()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mSplitMinWeight:F

    .line 317
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getSplitMaxWeight()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mSplitMaxWeight:F

    .line 319
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->makeButtonPopupLayout()V

    .line 320
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->initVariables()V

    .line 321
    return-void

    .line 307
    :catch_0
    move-exception v16

    .line 308
    .local v16, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mHelpHubVersion:I

    goto :goto_1

    .line 286
    .end local v5    # "intentFilter":Landroid/content/IntentFilter;
    .end local v9    # "centerBarArrangeFilter":Landroid/content/IntentFilter;
    .end local v13    # "screenOffFilter":Landroid/content/IntentFilter;
    .end local v16    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    .prologue
    .line 116
    iget v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayOrientation:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Landroid/graphics/Point;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Landroid/view/GestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mIsInLongPress:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mIsInLongPress:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;
    .param p1, "x1"    # I

    .prologue
    .line 116
    iput p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayId:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mIsCrossRect:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mIsCrossRect:Z

    return p1
.end method

.method static synthetic access$1402(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mIsCenterBarPressed:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mIsCenterBarMoved:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mIsCenterBarMoved:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    .prologue
    .line 116
    iget v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchStartX:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;
    .param p1, "x1"    # I

    .prologue
    .line 116
    iput p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchStartX:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    .prologue
    .line 116
    iget v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchStartY:I

    return v0
.end method

.method static synthetic access$1702(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;
    .param p1, "x1"    # I

    .prologue
    .line 116
    iput p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchStartY:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    .prologue
    .line 116
    iget v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCurrentArrangeState:I

    return v0
.end method

.method static synthetic access$1802(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;
    .param p1, "x1"    # I

    .prologue
    .line 116
    iput p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCurrentArrangeState:I

    return p1
.end method

.method static synthetic access$1900(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    .prologue
    .line 116
    iget v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    return v0
.end method

.method static synthetic access$1902(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;
    .param p1, "x1"    # I

    .prologue
    .line 116
    iput p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->updateDisplaySize()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->drawGuideCenterBar(II)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Landroid/graphics/Point;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mStartCenterBarPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mActionCancel:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mActionCancel:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->forceHideInputMethod()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDoubleTabbed:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDoubleTabbed:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;Landroid/graphics/Point;)Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$EdgeArea;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;
    .param p1, "x1"    # Landroid/graphics/Point;

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->getCenterBarEdgeArea(Landroid/graphics/Point;)Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$EdgeArea;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->centerBarFullSizeDocking(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->findCandidateFocus()I

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mIsShowButton:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mIsShowButton:Z

    return p1
.end method

.method static synthetic access$2900()I
    .locals 1

    .prologue
    .line 116
    sget v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->DOUBLE_TAP_MIN_TIME:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    .prologue
    .line 116
    iget v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayWidth:I

    return v0
.end method

.method static synthetic access$3002(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;
    .param p1, "x1"    # I

    .prologue
    .line 116
    iput p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchEventX:I

    return p1
.end method

.method static synthetic access$3102(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;
    .param p1, "x1"    # I

    .prologue
    .line 116
    iput p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchEventY:I

    return p1
.end method

.method static synthetic access$3200(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->setCenterBarPoint()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Landroid/os/SystemVibrator;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mVibrator:Landroid/os/SystemVibrator;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterbarButtonsContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mToastCheck:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->showToastMessage(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->showDragAndDropHelpDialog()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->startDragAndDrop()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Landroid/app/ActivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    .prologue
    .line 116
    iget v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayHeight:I

    return v0
.end method

.method static synthetic access$4000(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->startHideButtonTimer()V

    return-void
.end method

.method static synthetic access$4102(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarButtonOpenAnimating:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->animateCenterBarClose(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$4302(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarButtonCloseAnimating:Z

    return p1
.end method

.method static synthetic access$4400(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableAnims:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->showButtonPopupWindow()V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mIsDragAndDropStart:Z

    return v0
.end method

.method static synthetic access$4702(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mIsDragAndDropStart:Z

    return p1
.end method

.method static synthetic access$4800(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDragAndDropHelpPopupDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->showButtonPopupWindow(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mIsCenterBarFixed:Z

    return v0
.end method

.method private animateCenterBarClose(Landroid/view/View;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1957
    iget-boolean v8, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarButtonCloseAnimating:Z

    if-eqz v8, :cond_1

    .line 1958
    iget-object v8, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterbarButtonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterbarButtonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterbarButtonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v8

    if-nez v8, :cond_1

    .line 2010
    :cond_0
    return-void

    .line 1963
    :cond_1
    iput-boolean v11, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarButtonCloseAnimating:Z

    .line 1964
    iput-boolean v10, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarButtonOpenAnimating:Z

    .line 1966
    const v8, 0x7f0f00d6

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1967
    .local v4, "leftBackground":Landroid/view/View;
    const v8, 0x7f0f00d8

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 1968
    .local v7, "rightBackground":Landroid/view/View;
    const v8, 0x7f0f00d7

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1971
    .local v2, "centerBackground":Landroid/view/View;
    iget-object v8, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    if-ne v8, v11, :cond_3

    .line 1972
    iget-object v8, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    const v9, 0x7f050001

    invoke-static {v8, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 1976
    .local v1, "centerAnim":Landroid/view/animation/Animation;
    :goto_0
    new-instance v8, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$19;

    invoke-direct {v8, p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$19;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V

    invoke-virtual {v1, v8}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1992
    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1993
    invoke-direct {p0, v10, v11}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->getButtonAnimation(ZZ)Landroid/view/animation/TranslateAnimation;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1994
    invoke-direct {p0, v10, v10}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->getButtonAnimation(ZZ)Landroid/view/animation/TranslateAnimation;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1996
    const/4 v3, 0x0

    .line 1997
    .local v3, "left":I
    iget-object v8, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v6, v8, -0x1

    .line 1999
    .local v6, "right":I
    const/4 v5, 0x0

    .line 2001
    .local v5, "offset":I
    :goto_1
    if-gt v3, v6, :cond_0

    .line 2002
    iget-object v8, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    const v9, 0x7f050006

    invoke-static {v8, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2003
    .local v0, "a":Landroid/view/animation/Animation;
    mul-int/lit16 v8, v5, 0xc8

    int-to-long v8, v8

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 2004
    if-eq v3, v6, :cond_2

    .line 2005
    iget-object v8, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2007
    :cond_2
    iget-object v8, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2008
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v5, v5, 0x1

    .line 2009
    goto :goto_1

    .line 1974
    .end local v0    # "a":Landroid/view/animation/Animation;
    .end local v1    # "centerAnim":Landroid/view/animation/Animation;
    .end local v3    # "left":I
    .end local v5    # "offset":I
    .end local v6    # "right":I
    :cond_3
    iget-object v8, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    const v9, 0x7f050002

    invoke-static {v8, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .restart local v1    # "centerAnim":Landroid/view/animation/Animation;
    goto :goto_0
.end method

.method private animateCenterBarOpen(Landroid/view/View;Z)V
    .locals 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "autoCloseAnim"    # Z

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 1895
    iget-boolean v9, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarButtonOpenAnimating:Z

    if-eqz v9, :cond_1

    .line 1896
    iget-object v9, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterbarButtonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterbarButtonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterbarButtonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1954
    :cond_0
    return-void

    .line 1902
    :cond_1
    iput-boolean v12, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarButtonCloseAnimating:Z

    .line 1903
    iput-boolean v11, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarButtonOpenAnimating:Z

    .line 1904
    const v9, 0x7f0f00d6

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 1905
    .local v5, "leftBackground":Landroid/view/View;
    const v9, 0x7f0f00d8

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 1906
    .local v8, "rightBackground":Landroid/view/View;
    const v9, 0x7f0f00d7

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1909
    .local v2, "centerBackground":Landroid/view/View;
    iget-object v9, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    if-ne v9, v11, :cond_3

    .line 1910
    iget-object v9, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    const v10, 0x7f050004

    invoke-static {v9, v10}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 1914
    .local v1, "centerAnim":Landroid/view/animation/Animation;
    :goto_0
    new-instance v9, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$18;

    invoke-direct {v9, p0, p2, p1}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$18;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;ZLandroid/view/View;)V

    invoke-virtual {v1, v9}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1936
    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1937
    invoke-direct {p0, v11, v11}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->getButtonAnimation(ZZ)Landroid/view/animation/TranslateAnimation;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1938
    invoke-direct {p0, v11, v12}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->getButtonAnimation(ZZ)Landroid/view/animation/TranslateAnimation;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1940
    const/4 v4, 0x0

    .line 1941
    .local v4, "left":I
    iget-object v9, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v7, v9, -0x1

    .line 1942
    .local v7, "right":I
    iget-object v9, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    iget-object v10, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    rem-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    add-int/lit8 v3, v9, -0x1

    .line 1943
    .local v3, "closer":I
    iget-object v9, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    rem-int/lit8 v9, v9, 0x2

    if-nez v9, :cond_4

    add-int/lit8 v6, v3, 0x1

    .line 1945
    .local v6, "offset":I
    :goto_1
    if-gt v4, v7, :cond_0

    .line 1946
    iget-object v9, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    const v10, 0x7f050005

    invoke-static {v9, v10}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1947
    .local v0, "a":Landroid/view/animation/Animation;
    mul-int/lit16 v9, v6, 0xc8

    int-to-long v10, v9

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 1948
    if-eq v4, v7, :cond_2

    .line 1949
    iget-object v9, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-virtual {v9, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1951
    :cond_2
    iget-object v9, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-virtual {v9, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1952
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v7, v7, -0x1

    add-int/lit8 v6, v6, -0x1

    .line 1953
    goto :goto_1

    .line 1912
    .end local v0    # "a":Landroid/view/animation/Animation;
    .end local v1    # "centerAnim":Landroid/view/animation/Animation;
    .end local v3    # "closer":I
    .end local v4    # "left":I
    .end local v6    # "offset":I
    .end local v7    # "right":I
    :cond_3
    iget-object v9, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    const v10, 0x7f050003

    invoke-static {v9, v10}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .restart local v1    # "centerAnim":Landroid/view/animation/Animation;
    goto :goto_0

    .restart local v3    # "closer":I
    .restart local v4    # "left":I
    .restart local v7    # "right":I
    :cond_4
    move v6, v3

    .line 1943
    goto :goto_1
.end method

.method private animationCenterBar3Buttons()V
    .locals 25

    .prologue
    .line 2316
    const/16 v16, 0x0

    .line 2317
    .local v16, "translateAnimation":Landroid/view/animation/Animation;
    const/16 v17, 0x0

    .line 2318
    .local v17, "translateAnimation1":Landroid/view/animation/Animation;
    const/16 v18, 0x0

    .line 2319
    .local v18, "translateAnimation2":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a04f6

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v20

    move/from16 v0, v20

    float-to-int v12, v0

    .line 2320
    .local v12, "buttonBgHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a04eb

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v20

    move/from16 v0, v20

    float-to-int v11, v0

    .line 2322
    .local v11, "buttonArrangeMargin":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    move/from16 v21, v0

    div-int/lit8 v21, v21, 0x2

    sub-int v13, v20, v21

    .line 2323
    .local v13, "fromX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    move/from16 v21, v0

    div-int/lit8 v21, v21, 0x2

    sub-int v14, v20, v21

    .line 2325
    .local v14, "fromY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableAnims:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/view/View;

    .line 2326
    .local v19, "v":Landroid/view/View;
    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2329
    .end local v19    # "v":Landroid/view/View;
    :cond_0
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    const v20, 0x3ecccccd    # 0.4f

    const/high16 v21, 0x3f800000    # 1.0f

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v6, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 2331
    .local v6, "alphaAnimation":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayOrientation:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 2332
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 2335
    :cond_1
    new-instance v16, Landroid/view/animation/TranslateAnimation;

    .end local v16    # "translateAnimation":Landroid/view/animation/Animation;
    int-to-float v0, v13

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    mul-int/lit8 v22, v12, 0x3

    div-int/lit8 v22, v22, 0x2

    sub-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    int-to-float v0, v14

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v23, v0

    sub-int v23, v23, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    move/from16 v24, v0

    div-int/lit8 v24, v24, 0x2

    sub-int v23, v23, v24

    add-int v23, v23, v11

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v16

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2337
    .restart local v16    # "translateAnimation":Landroid/view/animation/Animation;
    new-instance v17, Landroid/view/animation/TranslateAnimation;

    .end local v17    # "translateAnimation1":Landroid/view/animation/Animation;
    int-to-float v0, v13

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    div-int/lit8 v22, v12, 0x2

    sub-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    int-to-float v0, v14

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v23, v0

    sub-int v23, v23, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    move/from16 v24, v0

    div-int/lit8 v24, v24, 0x2

    sub-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2339
    .restart local v17    # "translateAnimation1":Landroid/view/animation/Animation;
    new-instance v18, Landroid/view/animation/TranslateAnimation;

    .end local v18    # "translateAnimation2":Landroid/view/animation/Animation;
    int-to-float v0, v13

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    div-int/lit8 v22, v12, 0x2

    add-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    int-to-float v0, v14

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v23, v0

    sub-int v23, v23, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    move/from16 v24, v0

    div-int/lit8 v24, v24, 0x2

    sub-int v23, v23, v24

    add-int v23, v23, v11

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2373
    .restart local v18    # "translateAnimation2":Landroid/view/animation/Animation;
    :cond_2
    :goto_1
    if-nez v16, :cond_9

    .line 2375
    const-string v20, "CenterBarWindow"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "animationCenterBar4Buttons Fail to load translateAnimation mFocusZoneInfo="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2454
    :goto_2
    return-void

    .line 2341
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v20, v0

    const/16 v21, 0xc

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v20, v0

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v20, v0

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 2344
    :cond_4
    new-instance v16, Landroid/view/animation/TranslateAnimation;

    .end local v16    # "translateAnimation":Landroid/view/animation/Animation;
    int-to-float v0, v13

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    mul-int/lit8 v22, v12, 0x3

    div-int/lit8 v22, v22, 0x2

    sub-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    int-to-float v0, v14

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    move/from16 v24, v0

    div-int/lit8 v24, v24, 0x2

    add-int v23, v23, v24

    sub-int v23, v23, v11

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v16

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2346
    .restart local v16    # "translateAnimation":Landroid/view/animation/Animation;
    new-instance v17, Landroid/view/animation/TranslateAnimation;

    .end local v17    # "translateAnimation1":Landroid/view/animation/Animation;
    int-to-float v0, v13

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    div-int/lit8 v22, v12, 0x2

    sub-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    int-to-float v0, v14

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    move/from16 v24, v0

    div-int/lit8 v24, v24, 0x2

    add-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2348
    .restart local v17    # "translateAnimation1":Landroid/view/animation/Animation;
    new-instance v18, Landroid/view/animation/TranslateAnimation;

    .end local v18    # "translateAnimation2":Landroid/view/animation/Animation;
    int-to-float v0, v13

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    div-int/lit8 v22, v12, 0x2

    add-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    int-to-float v0, v14

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    move/from16 v24, v0

    div-int/lit8 v24, v24, 0x2

    add-int v23, v23, v24

    sub-int v23, v23, v11

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v18    # "translateAnimation2":Landroid/view/animation/Animation;
    goto/16 :goto_1

    .line 2352
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    .line 2355
    :cond_6
    new-instance v16, Landroid/view/animation/TranslateAnimation;

    .end local v16    # "translateAnimation":Landroid/view/animation/Animation;
    int-to-float v0, v13

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    sub-int v21, v21, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    sub-int v21, v21, v22

    add-int v21, v21, v11

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    int-to-float v0, v14

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v23, v0

    mul-int/lit8 v24, v12, 0x3

    div-int/lit8 v24, v24, 0x2

    sub-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v16

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2357
    .restart local v16    # "translateAnimation":Landroid/view/animation/Animation;
    new-instance v17, Landroid/view/animation/TranslateAnimation;

    .end local v17    # "translateAnimation1":Landroid/view/animation/Animation;
    int-to-float v0, v13

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    sub-int v21, v21, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    sub-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    int-to-float v0, v14

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v23, v0

    div-int/lit8 v24, v12, 0x2

    sub-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2359
    .restart local v17    # "translateAnimation1":Landroid/view/animation/Animation;
    new-instance v18, Landroid/view/animation/TranslateAnimation;

    .end local v18    # "translateAnimation2":Landroid/view/animation/Animation;
    int-to-float v0, v13

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    sub-int v21, v21, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    sub-int v21, v21, v22

    add-int v21, v21, v11

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    int-to-float v0, v14

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v23, v0

    div-int/lit8 v24, v12, 0x2

    add-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v18    # "translateAnimation2":Landroid/view/animation/Animation;
    goto/16 :goto_1

    .line 2361
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v20, v0

    const/16 v21, 0xc

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v20, v0

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v20, v0

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 2364
    :cond_8
    new-instance v16, Landroid/view/animation/TranslateAnimation;

    .end local v16    # "translateAnimation":Landroid/view/animation/Animation;
    int-to-float v0, v13

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    add-int v21, v21, v22

    sub-int v21, v21, v11

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    int-to-float v0, v14

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v23, v0

    mul-int/lit8 v24, v12, 0x3

    div-int/lit8 v24, v24, 0x2

    sub-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v16

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2366
    .restart local v16    # "translateAnimation":Landroid/view/animation/Animation;
    new-instance v17, Landroid/view/animation/TranslateAnimation;

    .end local v17    # "translateAnimation1":Landroid/view/animation/Animation;
    int-to-float v0, v13

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    add-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    int-to-float v0, v14

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v23, v0

    div-int/lit8 v24, v12, 0x2

    sub-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2368
    .restart local v17    # "translateAnimation1":Landroid/view/animation/Animation;
    new-instance v18, Landroid/view/animation/TranslateAnimation;

    .end local v18    # "translateAnimation2":Landroid/view/animation/Animation;
    int-to-float v0, v13

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    add-int v21, v21, v22

    sub-int v21, v21, v11

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    int-to-float v0, v14

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v23, v0

    div-int/lit8 v24, v12, 0x2

    add-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v18    # "translateAnimation2":Landroid/view/animation/Animation;
    goto/16 :goto_1

    .line 2379
    :cond_9
    new-instance v20, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$20;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$20;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2404
    new-instance v20, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$21;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$21;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2429
    const-wide/16 v20, 0x12c

    move-object/from16 v0, v16

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2430
    const-wide/16 v20, 0x12c

    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2431
    const-wide/16 v20, 0x12c

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x10a0006

    invoke-static/range {v20 .. v21}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x10a0006

    invoke-static/range {v20 .. v21}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x10a0006

    invoke-static/range {v20 .. v21}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2435
    const-wide/16 v20, 0x12c

    move-wide/from16 v0, v20

    invoke-virtual {v6, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2437
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2438
    .local v10, "buttonAnimationSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/AnimationSet;>;"
    new-instance v7, Landroid/view/animation/AnimationSet;

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-direct {v7, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 2439
    .local v7, "animationSet":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2440
    invoke-virtual {v7, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2441
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2443
    new-instance v8, Landroid/view/animation/AnimationSet;

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-direct {v8, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 2444
    .local v8, "animationSet1":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2445
    invoke-virtual {v8, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2446
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2448
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-direct {v9, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 2449
    .local v9, "animationSet2":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2450
    invoke-virtual {v9, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2451
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2453
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->startButtonAnimation(Ljava/util/ArrayList;)V

    goto/16 :goto_2
.end method

.method private animationCenterBar4Buttons()V
    .locals 27

    .prologue
    .line 2457
    const/16 v17, 0x0

    .line 2458
    .local v17, "translateAnimation":Landroid/view/animation/Animation;
    const/16 v18, 0x0

    .line 2459
    .local v18, "translateAnimation1":Landroid/view/animation/Animation;
    const/16 v19, 0x0

    .line 2460
    .local v19, "translateAnimation2":Landroid/view/animation/Animation;
    const/16 v20, 0x0

    .line 2462
    .local v20, "translateAnimation3":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0a04f6

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v13, v0

    .line 2463
    .local v13, "buttonBgHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0a04eb

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v12, v0

    .line 2465
    .local v12, "buttonArrangeMargin":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    move/from16 v23, v0

    div-int/lit8 v23, v23, 0x2

    sub-int v14, v22, v23

    .line 2466
    .local v14, "fromX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    move/from16 v23, v0

    div-int/lit8 v23, v23, 0x2

    sub-int v15, v22, v23

    .line 2468
    .local v15, "fromY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableAnims:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_0

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/view/View;

    .line 2469
    .local v21, "v":Landroid/view/View;
    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2472
    .end local v21    # "v":Landroid/view/View;
    :cond_0
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    const v22, 0x3ecccccd    # 0.4f

    const/high16 v23, 0x3f800000    # 1.0f

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v6, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 2474
    .local v6, "alphaAnimation":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayOrientation:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    .line 2475
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v22, v0

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    .line 2478
    :cond_1
    new-instance v17, Landroid/view/animation/TranslateAnimation;

    .end local v17    # "translateAnimation":Landroid/view/animation/Animation;
    int-to-float v0, v14

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v23, v0

    mul-int/lit8 v24, v13, 0x2

    sub-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    int-to-float v0, v15

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v25, v0

    sub-int v25, v25, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    move/from16 v26, v0

    div-int/lit8 v26, v26, 0x2

    sub-int v25, v25, v26

    add-int v25, v25, v12

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v17

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2480
    .restart local v17    # "translateAnimation":Landroid/view/animation/Animation;
    new-instance v18, Landroid/view/animation/TranslateAnimation;

    .end local v18    # "translateAnimation1":Landroid/view/animation/Animation;
    int-to-float v0, v14

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v23, v0

    sub-int v23, v23, v13

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    int-to-float v0, v15

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v25, v0

    sub-int v25, v25, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    move/from16 v26, v0

    div-int/lit8 v26, v26, 0x2

    sub-int v25, v25, v26

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2482
    .restart local v18    # "translateAnimation1":Landroid/view/animation/Animation;
    new-instance v19, Landroid/view/animation/TranslateAnimation;

    .end local v19    # "translateAnimation2":Landroid/view/animation/Animation;
    int-to-float v0, v14

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    int-to-float v0, v15

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v25, v0

    sub-int v25, v25, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    move/from16 v26, v0

    div-int/lit8 v26, v26, 0x2

    sub-int v25, v25, v26

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2484
    .restart local v19    # "translateAnimation2":Landroid/view/animation/Animation;
    new-instance v20, Landroid/view/animation/TranslateAnimation;

    .end local v20    # "translateAnimation3":Landroid/view/animation/Animation;
    int-to-float v0, v14

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v23, v0

    add-int v23, v23, v13

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    int-to-float v0, v15

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v25, v0

    sub-int v25, v25, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    move/from16 v26, v0

    div-int/lit8 v26, v26, 0x2

    sub-int v25, v25, v26

    add-int v25, v25, v12

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2524
    .restart local v20    # "translateAnimation3":Landroid/view/animation/Animation;
    :cond_2
    :goto_1
    if-nez v17, :cond_9

    .line 2526
    const-string v22, "CenterBarWindow"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "animationCenterBar4Buttons Fail to load translateAnimation mFocusZoneInfo="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2587
    :goto_2
    return-void

    .line 2486
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v22, v0

    const/16 v23, 0xc

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v22, v0

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v22, v0

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    .line 2489
    :cond_4
    new-instance v17, Landroid/view/animation/TranslateAnimation;

    .end local v17    # "translateAnimation":Landroid/view/animation/Animation;
    int-to-float v0, v14

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v23, v0

    mul-int/lit8 v24, v13, 0x2

    sub-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    int-to-float v0, v15

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    move/from16 v26, v0

    div-int/lit8 v26, v26, 0x2

    add-int v25, v25, v26

    sub-int v25, v25, v12

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v17

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2491
    .restart local v17    # "translateAnimation":Landroid/view/animation/Animation;
    new-instance v18, Landroid/view/animation/TranslateAnimation;

    .end local v18    # "translateAnimation1":Landroid/view/animation/Animation;
    int-to-float v0, v14

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v23, v0

    sub-int v23, v23, v13

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    int-to-float v0, v15

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    move/from16 v26, v0

    div-int/lit8 v26, v26, 0x2

    add-int v25, v25, v26

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2493
    .restart local v18    # "translateAnimation1":Landroid/view/animation/Animation;
    new-instance v19, Landroid/view/animation/TranslateAnimation;

    .end local v19    # "translateAnimation2":Landroid/view/animation/Animation;
    int-to-float v0, v14

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    int-to-float v0, v15

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    move/from16 v26, v0

    div-int/lit8 v26, v26, 0x2

    add-int v25, v25, v26

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2495
    .restart local v19    # "translateAnimation2":Landroid/view/animation/Animation;
    new-instance v20, Landroid/view/animation/TranslateAnimation;

    .end local v20    # "translateAnimation3":Landroid/view/animation/Animation;
    int-to-float v0, v14

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v23, v0

    add-int v23, v23, v13

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    int-to-float v0, v15

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    move/from16 v26, v0

    div-int/lit8 v26, v26, 0x2

    add-int v25, v25, v26

    sub-int v25, v25, v12

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v20    # "translateAnimation3":Landroid/view/animation/Animation;
    goto/16 :goto_1

    .line 2499
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v22, v0

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_7

    .line 2502
    :cond_6
    new-instance v17, Landroid/view/animation/TranslateAnimation;

    .end local v17    # "translateAnimation":Landroid/view/animation/Animation;
    int-to-float v0, v14

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v23, v0

    sub-int v23, v23, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    move/from16 v24, v0

    div-int/lit8 v24, v24, 0x2

    sub-int v23, v23, v24

    add-int v23, v23, v12

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    int-to-float v0, v15

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v25, v0

    mul-int/lit8 v26, v13, 0x2

    sub-int v25, v25, v26

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v17

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2504
    .restart local v17    # "translateAnimation":Landroid/view/animation/Animation;
    new-instance v18, Landroid/view/animation/TranslateAnimation;

    .end local v18    # "translateAnimation1":Landroid/view/animation/Animation;
    int-to-float v0, v14

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v23, v0

    sub-int v23, v23, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    move/from16 v24, v0

    div-int/lit8 v24, v24, 0x2

    sub-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    int-to-float v0, v15

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v25, v0

    sub-int v25, v25, v13

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2506
    .restart local v18    # "translateAnimation1":Landroid/view/animation/Animation;
    new-instance v19, Landroid/view/animation/TranslateAnimation;

    .end local v19    # "translateAnimation2":Landroid/view/animation/Animation;
    int-to-float v0, v14

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v23, v0

    sub-int v23, v23, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    move/from16 v24, v0

    div-int/lit8 v24, v24, 0x2

    sub-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    int-to-float v0, v15

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2508
    .restart local v19    # "translateAnimation2":Landroid/view/animation/Animation;
    new-instance v20, Landroid/view/animation/TranslateAnimation;

    .end local v20    # "translateAnimation3":Landroid/view/animation/Animation;
    int-to-float v0, v14

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v23, v0

    sub-int v23, v23, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    move/from16 v24, v0

    div-int/lit8 v24, v24, 0x2

    sub-int v23, v23, v24

    add-int v23, v23, v12

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    int-to-float v0, v15

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v25, v0

    add-int v25, v25, v13

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v20    # "translateAnimation3":Landroid/view/animation/Animation;
    goto/16 :goto_1

    .line 2510
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v22, v0

    const/16 v23, 0xc

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v22, v0

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v22, v0

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    .line 2513
    :cond_8
    new-instance v17, Landroid/view/animation/TranslateAnimation;

    .end local v17    # "translateAnimation":Landroid/view/animation/Animation;
    int-to-float v0, v14

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    move/from16 v24, v0

    div-int/lit8 v24, v24, 0x2

    add-int v23, v23, v24

    sub-int v23, v23, v12

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    int-to-float v0, v15

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v25, v0

    mul-int/lit8 v26, v13, 0x2

    sub-int v25, v25, v26

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v17

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2515
    .restart local v17    # "translateAnimation":Landroid/view/animation/Animation;
    new-instance v18, Landroid/view/animation/TranslateAnimation;

    .end local v18    # "translateAnimation1":Landroid/view/animation/Animation;
    int-to-float v0, v14

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    move/from16 v24, v0

    div-int/lit8 v24, v24, 0x2

    add-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    int-to-float v0, v15

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v25, v0

    sub-int v25, v25, v13

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2517
    .restart local v18    # "translateAnimation1":Landroid/view/animation/Animation;
    new-instance v19, Landroid/view/animation/TranslateAnimation;

    .end local v19    # "translateAnimation2":Landroid/view/animation/Animation;
    int-to-float v0, v14

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    move/from16 v24, v0

    div-int/lit8 v24, v24, 0x2

    add-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    int-to-float v0, v15

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2519
    .restart local v19    # "translateAnimation2":Landroid/view/animation/Animation;
    new-instance v20, Landroid/view/animation/TranslateAnimation;

    .end local v20    # "translateAnimation3":Landroid/view/animation/Animation;
    int-to-float v0, v14

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    move/from16 v24, v0

    div-int/lit8 v24, v24, 0x2

    add-int v23, v23, v24

    sub-int v23, v23, v12

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    int-to-float v0, v15

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v25, v0

    add-int v25, v25, v13

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v20    # "translateAnimation3":Landroid/view/animation/Animation;
    goto/16 :goto_1

    .line 2530
    :cond_9
    new-instance v22, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$22;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$22;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2555
    const-wide/16 v22, 0x12c

    move-object/from16 v0, v17

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2556
    const-wide/16 v22, 0x12c

    move-object/from16 v0, v18

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2557
    const-wide/16 v22, 0x12c

    move-object/from16 v0, v19

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2558
    const-wide/16 v22, 0x12c

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x10a0006

    invoke-static/range {v22 .. v23}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x10a0006

    invoke-static/range {v22 .. v23}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x10a0006

    invoke-static/range {v22 .. v23}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x10a0006

    invoke-static/range {v22 .. v23}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2563
    const-wide/16 v22, 0x12c

    move-wide/from16 v0, v22

    invoke-virtual {v6, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2565
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2566
    .local v11, "buttonAnimationSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/AnimationSet;>;"
    new-instance v7, Landroid/view/animation/AnimationSet;

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-direct {v7, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 2567
    .local v7, "animationSet":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2568
    invoke-virtual {v7, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2569
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2571
    new-instance v8, Landroid/view/animation/AnimationSet;

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-direct {v8, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 2572
    .local v8, "animationSet1":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2573
    invoke-virtual {v8, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2574
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2576
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-direct {v9, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 2577
    .local v9, "animationSet2":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2578
    invoke-virtual {v9, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2579
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2581
    new-instance v10, Landroid/view/animation/AnimationSet;

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-direct {v10, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 2582
    .local v10, "animationSet3":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2583
    invoke-virtual {v10, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2584
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2586
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->startButtonAnimation(Ljava/util/ArrayList;)V

    goto/16 :goto_2
.end method

.method private animationCenterBar5Buttons()V
    .locals 32

    .prologue
    .line 2590
    const/16 v21, 0x0

    .line 2591
    .local v21, "translateAnimation":Landroid/view/animation/Animation;
    const/16 v22, 0x0

    .line 2592
    .local v22, "translateAnimation1":Landroid/view/animation/Animation;
    const/16 v23, 0x0

    .line 2593
    .local v23, "translateAnimation2":Landroid/view/animation/Animation;
    const/16 v24, 0x0

    .line 2594
    .local v24, "translateAnimation3":Landroid/view/animation/Animation;
    const/16 v25, 0x0

    .line 2596
    .local v25, "translateAnimation4":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0a04f6

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v27

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v16, v0

    .line 2597
    .local v16, "buttonBgHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0a04eb

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v27

    move/from16 v0, v27

    float-to-int v13, v0

    .line 2598
    .local v13, "buttonArrangeMargin":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0a04ec

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v27

    move/from16 v0, v27

    float-to-int v14, v0

    .line 2599
    .local v14, "buttonArrangeMargin5b2pL":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0a04f5

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v27

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v17, v0

    .line 2600
    .local v17, "buttonsMargin":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0a0506

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v27

    move/from16 v0, v27

    float-to-int v15, v0

    .line 2602
    .local v15, "buttonArrangeOverlapMargin":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    move/from16 v28, v0

    div-int/lit8 v28, v28, 0x2

    sub-int v18, v27, v28

    .line 2603
    .local v18, "fromX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    move/from16 v28, v0

    div-int/lit8 v28, v28, 0x2

    sub-int v19, v27, v28

    .line 2605
    .local v19, "fromY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableAnims:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_0

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    .line 2606
    .local v26, "v":Landroid/view/View;
    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2609
    .end local v26    # "v":Landroid/view/View;
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayOrientation:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_5

    .line 2610
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v27, v0

    const/16 v28, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v27, v0

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_3

    .line 2613
    :cond_1
    new-instance v21, Landroid/view/animation/TranslateAnimation;

    .end local v21    # "translateAnimation":Landroid/view/animation/Animation;
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v28, v0

    mul-int/lit8 v29, v16, 0x5

    div-int/lit8 v29, v29, 0x2

    sub-int v28, v28, v29

    sub-int v28, v28, v15

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v30, v0

    sub-int v30, v30, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    move/from16 v31, v0

    div-int/lit8 v31, v31, 0x2

    sub-int v30, v30, v31

    add-int v30, v30, v13

    sub-int v30, v30, v17

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, v21

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2615
    .restart local v21    # "translateAnimation":Landroid/view/animation/Animation;
    new-instance v22, Landroid/view/animation/TranslateAnimation;

    .end local v22    # "translateAnimation1":Landroid/view/animation/Animation;
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v28, v0

    mul-int/lit8 v29, v16, 0x3

    div-int/lit8 v29, v29, 0x2

    sub-int v28, v28, v29

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v30, v0

    sub-int v30, v30, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    move/from16 v31, v0

    div-int/lit8 v31, v31, 0x2

    sub-int v30, v30, v31

    add-int v30, v30, v14

    sub-int v30, v30, v17

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, v22

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2617
    .restart local v22    # "translateAnimation1":Landroid/view/animation/Animation;
    new-instance v23, Landroid/view/animation/TranslateAnimation;

    .end local v23    # "translateAnimation2":Landroid/view/animation/Animation;
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v28, v0

    div-int/lit8 v29, v16, 0x2

    sub-int v28, v28, v29

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v30, v0

    sub-int v30, v30, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    move/from16 v31, v0

    div-int/lit8 v31, v31, 0x2

    sub-int v30, v30, v31

    sub-int v30, v30, v17

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, v23

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2619
    .restart local v23    # "translateAnimation2":Landroid/view/animation/Animation;
    new-instance v24, Landroid/view/animation/TranslateAnimation;

    .end local v24    # "translateAnimation3":Landroid/view/animation/Animation;
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v28, v0

    div-int/lit8 v29, v16, 0x2

    add-int v28, v28, v29

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v30, v0

    sub-int v30, v30, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    move/from16 v31, v0

    div-int/lit8 v31, v31, 0x2

    sub-int v30, v30, v31

    add-int v30, v30, v14

    sub-int v30, v30, v17

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, v24

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2621
    .restart local v24    # "translateAnimation3":Landroid/view/animation/Animation;
    new-instance v25, Landroid/view/animation/TranslateAnimation;

    .end local v25    # "translateAnimation4":Landroid/view/animation/Animation;
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v28, v0

    mul-int/lit8 v29, v16, 0x3

    div-int/lit8 v29, v29, 0x2

    add-int v28, v28, v29

    add-int v28, v28, v15

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v30, v0

    sub-int v30, v30, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    move/from16 v31, v0

    div-int/lit8 v31, v31, 0x2

    sub-int v30, v30, v31

    add-int v30, v30, v13

    sub-int v30, v30, v17

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, v25

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2667
    .restart local v25    # "translateAnimation4":Landroid/view/animation/Animation;
    :cond_2
    :goto_1
    if-nez v21, :cond_9

    .line 2669
    const-string v27, "CenterBarWindow"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "animationCenterBar5Buttons Fail to load translateAnimation mFocusZoneInfo="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2739
    :goto_2
    return-void

    .line 2623
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v27, v0

    const/16 v28, 0xc

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v27, v0

    const/16 v28, 0x4

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v27, v0

    const/16 v28, 0x8

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_2

    .line 2626
    :cond_4
    new-instance v21, Landroid/view/animation/TranslateAnimation;

    .end local v21    # "translateAnimation":Landroid/view/animation/Animation;
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v28, v0

    mul-int/lit8 v29, v16, 0x5

    div-int/lit8 v29, v29, 0x2

    sub-int v28, v28, v29

    sub-int v28, v28, v15

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    move/from16 v31, v0

    div-int/lit8 v31, v31, 0x2

    add-int v30, v30, v31

    sub-int v30, v30, v13

    add-int v30, v30, v17

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, v21

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2628
    .restart local v21    # "translateAnimation":Landroid/view/animation/Animation;
    new-instance v22, Landroid/view/animation/TranslateAnimation;

    .end local v22    # "translateAnimation1":Landroid/view/animation/Animation;
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v28, v0

    mul-int/lit8 v29, v16, 0x3

    div-int/lit8 v29, v29, 0x2

    sub-int v28, v28, v29

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    move/from16 v31, v0

    div-int/lit8 v31, v31, 0x2

    add-int v30, v30, v31

    sub-int v30, v30, v14

    add-int v30, v30, v17

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, v22

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2630
    .restart local v22    # "translateAnimation1":Landroid/view/animation/Animation;
    new-instance v23, Landroid/view/animation/TranslateAnimation;

    .end local v23    # "translateAnimation2":Landroid/view/animation/Animation;
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v28, v0

    div-int/lit8 v29, v16, 0x2

    sub-int v28, v28, v29

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    move/from16 v31, v0

    div-int/lit8 v31, v31, 0x2

    add-int v30, v30, v31

    add-int v30, v30, v17

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, v23

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2632
    .restart local v23    # "translateAnimation2":Landroid/view/animation/Animation;
    new-instance v24, Landroid/view/animation/TranslateAnimation;

    .end local v24    # "translateAnimation3":Landroid/view/animation/Animation;
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v28, v0

    div-int/lit8 v29, v16, 0x2

    add-int v28, v28, v29

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    move/from16 v31, v0

    div-int/lit8 v31, v31, 0x2

    add-int v30, v30, v31

    sub-int v30, v30, v14

    add-int v30, v30, v17

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, v24

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2634
    .restart local v24    # "translateAnimation3":Landroid/view/animation/Animation;
    new-instance v25, Landroid/view/animation/TranslateAnimation;

    .end local v25    # "translateAnimation4":Landroid/view/animation/Animation;
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v28, v0

    mul-int/lit8 v29, v16, 0x3

    div-int/lit8 v29, v29, 0x2

    add-int v28, v28, v29

    add-int v28, v28, v15

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    move/from16 v31, v0

    div-int/lit8 v31, v31, 0x2

    add-int v30, v30, v31

    sub-int v30, v30, v13

    add-int v30, v30, v17

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, v25

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v25    # "translateAnimation4":Landroid/view/animation/Animation;
    goto/16 :goto_1

    .line 2638
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v27, v0

    const/16 v28, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v27, v0

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_7

    .line 2641
    :cond_6
    new-instance v21, Landroid/view/animation/TranslateAnimation;

    .end local v21    # "translateAnimation":Landroid/view/animation/Animation;
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v28, v0

    sub-int v28, v28, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    move/from16 v29, v0

    div-int/lit8 v29, v29, 0x2

    sub-int v28, v28, v29

    add-int v28, v28, v13

    sub-int v28, v28, v17

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v30, v0

    mul-int/lit8 v31, v16, 0x5

    div-int/lit8 v31, v31, 0x2

    sub-int v30, v30, v31

    sub-int v30, v30, v15

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, v21

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2643
    .restart local v21    # "translateAnimation":Landroid/view/animation/Animation;
    new-instance v22, Landroid/view/animation/TranslateAnimation;

    .end local v22    # "translateAnimation1":Landroid/view/animation/Animation;
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v28, v0

    sub-int v28, v28, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    move/from16 v29, v0

    div-int/lit8 v29, v29, 0x2

    sub-int v28, v28, v29

    add-int v28, v28, v14

    sub-int v28, v28, v17

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v30, v0

    mul-int/lit8 v31, v16, 0x3

    div-int/lit8 v31, v31, 0x2

    sub-int v30, v30, v31

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, v22

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2645
    .restart local v22    # "translateAnimation1":Landroid/view/animation/Animation;
    new-instance v23, Landroid/view/animation/TranslateAnimation;

    .end local v23    # "translateAnimation2":Landroid/view/animation/Animation;
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v28, v0

    sub-int v28, v28, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    move/from16 v29, v0

    div-int/lit8 v29, v29, 0x2

    sub-int v28, v28, v29

    sub-int v28, v28, v17

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v30, v0

    div-int/lit8 v31, v16, 0x2

    sub-int v30, v30, v31

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, v23

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2647
    .restart local v23    # "translateAnimation2":Landroid/view/animation/Animation;
    new-instance v24, Landroid/view/animation/TranslateAnimation;

    .end local v24    # "translateAnimation3":Landroid/view/animation/Animation;
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v28, v0

    sub-int v28, v28, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    move/from16 v29, v0

    div-int/lit8 v29, v29, 0x2

    sub-int v28, v28, v29

    add-int v28, v28, v14

    sub-int v28, v28, v17

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v30, v0

    div-int/lit8 v31, v16, 0x2

    add-int v30, v30, v31

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, v24

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2649
    .restart local v24    # "translateAnimation3":Landroid/view/animation/Animation;
    new-instance v25, Landroid/view/animation/TranslateAnimation;

    .end local v25    # "translateAnimation4":Landroid/view/animation/Animation;
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v28, v0

    sub-int v28, v28, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    move/from16 v29, v0

    div-int/lit8 v29, v29, 0x2

    sub-int v28, v28, v29

    add-int v28, v28, v13

    sub-int v28, v28, v17

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v30, v0

    mul-int/lit8 v31, v16, 0x3

    div-int/lit8 v31, v31, 0x2

    add-int v30, v30, v31

    add-int v30, v30, v15

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, v25

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v25    # "translateAnimation4":Landroid/view/animation/Animation;
    goto/16 :goto_1

    .line 2651
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v27, v0

    const/16 v28, 0xc

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v27, v0

    const/16 v28, 0x4

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v27, v0

    const/16 v28, 0x8

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_2

    .line 2654
    :cond_8
    new-instance v21, Landroid/view/animation/TranslateAnimation;

    .end local v21    # "translateAnimation":Landroid/view/animation/Animation;
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    move/from16 v29, v0

    div-int/lit8 v29, v29, 0x2

    add-int v28, v28, v29

    sub-int v28, v28, v13

    add-int v28, v28, v17

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v30, v0

    mul-int/lit8 v31, v16, 0x5

    div-int/lit8 v31, v31, 0x2

    sub-int v30, v30, v31

    sub-int v30, v30, v15

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, v21

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2656
    .restart local v21    # "translateAnimation":Landroid/view/animation/Animation;
    new-instance v22, Landroid/view/animation/TranslateAnimation;

    .end local v22    # "translateAnimation1":Landroid/view/animation/Animation;
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    move/from16 v29, v0

    div-int/lit8 v29, v29, 0x2

    add-int v28, v28, v29

    sub-int v28, v28, v14

    add-int v28, v28, v17

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v30, v0

    mul-int/lit8 v31, v16, 0x3

    div-int/lit8 v31, v31, 0x2

    sub-int v30, v30, v31

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, v22

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2658
    .restart local v22    # "translateAnimation1":Landroid/view/animation/Animation;
    new-instance v23, Landroid/view/animation/TranslateAnimation;

    .end local v23    # "translateAnimation2":Landroid/view/animation/Animation;
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    move/from16 v29, v0

    div-int/lit8 v29, v29, 0x2

    add-int v28, v28, v29

    add-int v28, v28, v17

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v30, v0

    div-int/lit8 v31, v16, 0x2

    sub-int v30, v30, v31

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, v23

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2660
    .restart local v23    # "translateAnimation2":Landroid/view/animation/Animation;
    new-instance v24, Landroid/view/animation/TranslateAnimation;

    .end local v24    # "translateAnimation3":Landroid/view/animation/Animation;
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    move/from16 v29, v0

    div-int/lit8 v29, v29, 0x2

    add-int v28, v28, v29

    sub-int v28, v28, v14

    add-int v28, v28, v17

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v30, v0

    div-int/lit8 v31, v16, 0x2

    add-int v30, v30, v31

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, v24

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2662
    .restart local v24    # "translateAnimation3":Landroid/view/animation/Animation;
    new-instance v25, Landroid/view/animation/TranslateAnimation;

    .end local v25    # "translateAnimation4":Landroid/view/animation/Animation;
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    move/from16 v29, v0

    div-int/lit8 v29, v29, 0x2

    add-int v28, v28, v29

    sub-int v28, v28, v13

    add-int v28, v28, v17

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v30, v0

    mul-int/lit8 v31, v16, 0x3

    div-int/lit8 v31, v31, 0x2

    add-int v30, v30, v31

    add-int v30, v30, v15

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, v25

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v25    # "translateAnimation4":Landroid/view/animation/Animation;
    goto/16 :goto_1

    .line 2673
    :cond_9
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    const v27, 0x3ecccccd    # 0.4f

    const/high16 v28, 0x3f800000    # 1.0f

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-direct {v6, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 2674
    .local v6, "alphaAnimation":Landroid/view/animation/Animation;
    new-instance v27, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$23;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$23;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2699
    const-wide/16 v28, 0x12c

    move-object/from16 v0, v21

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2700
    const-wide/16 v28, 0x12c

    move-object/from16 v0, v22

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2701
    const-wide/16 v28, 0x12c

    move-object/from16 v0, v23

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2702
    const-wide/16 v28, 0x12c

    move-object/from16 v0, v24

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2703
    const-wide/16 v28, 0x12c

    move-object/from16 v0, v25

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    const v28, 0x10a0006

    invoke-static/range {v27 .. v28}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v27

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    const v28, 0x10a0006

    invoke-static/range {v27 .. v28}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v27

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    const v28, 0x10a0006

    invoke-static/range {v27 .. v28}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v27

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    const v28, 0x10a0006

    invoke-static/range {v27 .. v28}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    const v28, 0x10a0006

    invoke-static/range {v27 .. v28}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2709
    const-wide/16 v28, 0x12c

    move-wide/from16 v0, v28

    invoke-virtual {v6, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2711
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 2713
    .local v12, "buttonAnimationSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/AnimationSet;>;"
    new-instance v7, Landroid/view/animation/AnimationSet;

    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-direct {v7, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 2714
    .local v7, "animationSet":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2715
    invoke-virtual {v7, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2716
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2718
    new-instance v8, Landroid/view/animation/AnimationSet;

    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-direct {v8, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 2719
    .local v8, "animationSet1":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2720
    invoke-virtual {v8, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2721
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2723
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-direct {v9, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 2724
    .local v9, "animationSet2":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2725
    invoke-virtual {v9, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2726
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2728
    new-instance v10, Landroid/view/animation/AnimationSet;

    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-direct {v10, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 2729
    .local v10, "animationSet3":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2730
    invoke-virtual {v10, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2731
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2733
    new-instance v11, Landroid/view/animation/AnimationSet;

    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-direct {v11, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 2734
    .local v11, "animationSet4":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2735
    invoke-virtual {v11, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2736
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2738
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->startButtonAnimation(Ljava/util/ArrayList;)V

    goto/16 :goto_2
.end method

.method private centerBarFullSizeDocking(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1012
    const/4 v2, 0x0

    .line 1013
    .local v2, "docking":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    float-to-int v4, v6

    .line 1014
    .local v4, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v5, v6

    .line 1015
    .local v5, "y":I
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getArrangeState()I

    move-result v0

    .line 1017
    .local v0, "arrange":I
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getCenterBarPoint(I)Landroid/graphics/Point;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->getCenterBarEdgeArea(Landroid/graphics/Point;)Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$EdgeArea;

    move-result-object v1

    .line 1018
    .local v1, "currentEdge":Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$EdgeArea;
    new-instance v6, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    float-to-int v8, v8

    invoke-direct {v6, v7, v8}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {p0, v6}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->getCenterBarEdgeArea(Landroid/graphics/Point;)Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$EdgeArea;

    move-result-object v3

    .line 1019
    .local v3, "newEdge":Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$EdgeArea;
    if-ne v1, v3, :cond_0

    sget-object v6, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$EdgeArea;->NONE:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$EdgeArea;

    if-ne v1, v6, :cond_1

    .line 1020
    :cond_0
    const/4 v6, 0x0

    .line 1063
    :goto_0
    return v6

    .line 1023
    :cond_1
    const/4 v6, 0x1

    if-gt v0, v6, :cond_2

    iget v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayOrientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    .line 1024
    :cond_2
    iget v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarFlingSizeW:I

    div-int/lit8 v6, v6, 0x2

    if-gt v4, v6, :cond_3

    .line 1025
    const/4 v2, 0x1

    .line 1026
    iget v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayWidth:I

    int-to-double v6, v6

    const-wide v8, 0x3fa999999999999aL    # 0.05

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchEventX:I

    .line 1028
    :cond_3
    iget v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayWidth:I

    iget v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarFlingSizeW:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    if-lt v4, v6, :cond_4

    .line 1029
    const/4 v2, 0x1

    .line 1030
    iget v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayWidth:I

    int-to-double v6, v6

    const-wide v8, 0x3fee666666666666L    # 0.95

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchEventX:I

    .line 1034
    :cond_4
    const/4 v6, 0x1

    if-gt v0, v6, :cond_5

    iget v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayOrientation:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_7

    .line 1035
    :cond_5
    iget v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarFlingSizeH:I

    div-int/lit8 v6, v6, 0x2

    if-gt v5, v6, :cond_6

    .line 1036
    const/4 v2, 0x1

    .line 1037
    iget v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayWidth:I

    int-to-double v6, v6

    const-wide v8, 0x3fa999999999999aL    # 0.05

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchEventY:I

    .line 1039
    :cond_6
    iget v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayHeight:I

    iget v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarFlingSizeH:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    if-lt v5, v6, :cond_7

    .line 1040
    const/4 v2, 0x1

    .line 1041
    iget v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayHeight:I

    int-to-double v6, v6

    const-wide v8, 0x3fee666666666666L    # 0.95

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchEventY:I

    .line 1045
    :cond_7
    if-eqz v2, :cond_a

    .line 1046
    invoke-direct {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->setCenterBarPoint()V

    .line 1047
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->centerControlBarDocking(Z)Z

    .line 1048
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getCenterBarPoint(I)Landroid/graphics/Point;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 1049
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setCenterBarPoint(ILandroid/graphics/Point;)V

    .line 1051
    :cond_8
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v6, v7}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->drawCenterBar(II)V

    .line 1052
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportStyleTransition(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1053
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->isEnableMakePenWindow()Z

    move-result v6

    if-nez v6, :cond_9

    .line 1054
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 1056
    :cond_9
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mVibrator:Landroid/os/SystemVibrator;

    const v7, 0xc369

    const/4 v8, -0x1

    const/4 v9, 0x0

    sget-object v10, Landroid/os/Vibrator$MagnitudeTypes;->MaxMagnitude:Landroid/os/Vibrator$MagnitudeTypes;

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/os/SystemVibrator;->vibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$MagnitudeTypes;)V

    .line 1057
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    new-instance v7, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    float-to-int v9, v9

    invoke-direct {v7, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->findCandidateFocus()I

    move-result v8

    xor-int/lit8 v8, v8, -0x1

    and-int/lit8 v8, v8, 0xf

    const/4 v9, 0x1

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->changeTaskToCascade(Landroid/graphics/Point;IZ)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1058
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-direct {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->findCandidateFocus()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->changeTaskToFull(I)V

    .line 1062
    :cond_a
    iput-boolean v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFullSizeDocking:Z

    move v6, v2

    .line 1063
    goto/16 :goto_0
.end method

.method private checkCenterBarPosition(Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 3
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 583
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getZoneBounds(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 584
    .local v0, "bounds":Landroid/graphics/Rect;
    if-eqz v0, :cond_0

    .line 585
    iget v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 586
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p1, Landroid/graphics/Point;->y:I

    .line 592
    :cond_0
    :goto_0
    return-object p1

    .line 588
    :cond_1
    iget v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 589
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p1, Landroid/graphics/Point;->x:I

    goto :goto_0
.end method

.method private checkFunctionState(Ljava/util/List;Ljava/lang/String;)Z
    .locals 1
    .param p2, "disableFunction"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 2806
    .local p1, "disableFunctionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2807
    const/4 v0, 0x0

    .line 2809
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private clearButtonAnimation()V
    .locals 4

    .prologue
    .line 2824
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableAnims:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 2825
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    goto :goto_0

    .line 2827
    .end local v2    # "v":Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mButtonsPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mButtonsPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2828
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mButtonsPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 2829
    .local v0, "currentAni":Landroid/view/animation/Animation;
    if-eqz v0, :cond_1

    .line 2830
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2831
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 2834
    .end local v0    # "currentAni":Landroid/view/animation/Animation;
    :cond_1
    return-void
.end method

.method private drawGuideCenterBar(II)V
    .locals 10
    .param p1, "positionX"    # I
    .param p2, "positionY"    # I

    .prologue
    const v9, 0x7f0202b2

    const/4 v8, 0x1

    .line 688
    const-string v5, "CenterBarWindow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "drawGuideCenterBar : positionX = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", positionY = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->cancelHideButtonTimer()V

    .line 692
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 693
    .local v1, "guideRect":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a04f0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v2, v5

    .line 695
    .local v2, "guideSize":I
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mGuideView:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$GuideView;

    if-nez v5, :cond_0

    .line 696
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 697
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f04001e

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 698
    .local v3, "guideView":Landroid/view/View;
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    const v6, 0x7f100015

    invoke-direct {v0, v5, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 699
    .local v0, "context":Landroid/view/ContextThemeWrapper;
    new-instance v5, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$GuideView;

    invoke-direct {v5, v0, v3, v9}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$GuideView;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mGuideView:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$GuideView;

    .line 702
    .end local v0    # "context":Landroid/view/ContextThemeWrapper;
    .end local v3    # "guideView":Landroid/view/View;
    .end local v4    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    iget v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCurrentArrangeState:I

    if-le v5, v8, :cond_1

    .line 703
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mGuideView:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$GuideView;

    const v6, 0x7f0202b3

    invoke-virtual {v5, v6}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$GuideView;->setDrawable(I)V

    .line 712
    :goto_0
    div-int/lit8 v5, v2, 0x2

    sub-int v5, p1, v5

    iput v5, v1, Landroid/graphics/Rect;->left:I

    .line 713
    div-int/lit8 v5, v2, 0x2

    sub-int v5, p2, v5

    iput v5, v1, Landroid/graphics/Rect;->top:I

    .line 714
    iget v5, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v2

    iput v5, v1, Landroid/graphics/Rect;->right:I

    .line 715
    iget v5, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v2

    iput v5, v1, Landroid/graphics/Rect;->bottom:I

    .line 717
    const-string v5, "CenterBarWindow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "drawGuideCenterBar : guideRect = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mGuideView:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$GuideView;

    invoke-virtual {v5, v1}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$GuideView;->show(Landroid/graphics/Rect;)V

    .line 719
    return-void

    .line 705
    :cond_1
    iget v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayOrientation:I

    if-ne v5, v8, :cond_2

    .line 706
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mGuideView:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$GuideView;

    invoke-virtual {v5, v9}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$GuideView;->setDrawable(I)V

    goto :goto_0

    .line 708
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mGuideView:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$GuideView;

    const v6, 0x7f0202b4

    invoke-virtual {v5, v6}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$GuideView;->setDrawable(I)V

    goto :goto_0
.end method

.method private findCandidateFocus()I
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/16 v4, 0x8

    .line 1068
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getArrangeState()I

    move-result v0

    .line 1070
    .local v0, "arrange":I
    iget v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_b

    .line 1071
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayWidth:I

    div-int/lit8 v3, v3, 0x2

    if-gt v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayHeight:I

    div-int/lit8 v3, v3, 0x2

    if-gt v2, v3, :cond_2

    .line 1072
    if-eq v0, v4, :cond_0

    if-ne v0, v6, :cond_1

    .line 1073
    :cond_0
    const/16 v1, 0x8

    .line 1123
    .local v1, "zone":I
    :goto_0
    return v1

    .line 1075
    .end local v1    # "zone":I
    :cond_1
    const/16 v1, 0xc

    .restart local v1    # "zone":I
    goto :goto_0

    .line 1077
    .end local v1    # "zone":I
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayWidth:I

    div-int/lit8 v3, v3, 0x2

    if-le v2, v3, :cond_5

    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayHeight:I

    div-int/lit8 v3, v3, 0x2

    if-gt v2, v3, :cond_5

    .line 1078
    if-eq v0, v4, :cond_3

    if-ne v0, v6, :cond_4

    .line 1079
    :cond_3
    const/4 v1, 0x4

    .restart local v1    # "zone":I
    goto :goto_0

    .line 1081
    .end local v1    # "zone":I
    :cond_4
    const/16 v1, 0xc

    .restart local v1    # "zone":I
    goto :goto_0

    .line 1083
    .end local v1    # "zone":I
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayWidth:I

    div-int/lit8 v3, v3, 0x2

    if-lt v2, v3, :cond_8

    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayHeight:I

    div-int/lit8 v3, v3, 0x2

    if-le v2, v3, :cond_8

    .line 1084
    if-eq v0, v4, :cond_6

    if-ne v0, v5, :cond_7

    .line 1085
    :cond_6
    const/4 v1, 0x1

    .restart local v1    # "zone":I
    goto :goto_0

    .line 1087
    .end local v1    # "zone":I
    :cond_7
    const/4 v1, 0x3

    .restart local v1    # "zone":I
    goto :goto_0

    .line 1090
    .end local v1    # "zone":I
    :cond_8
    if-eq v0, v4, :cond_9

    if-ne v0, v5, :cond_a

    .line 1091
    :cond_9
    const/4 v1, 0x2

    .restart local v1    # "zone":I
    goto :goto_0

    .line 1093
    .end local v1    # "zone":I
    :cond_a
    const/4 v1, 0x3

    .restart local v1    # "zone":I
    goto :goto_0

    .line 1097
    .end local v1    # "zone":I
    :cond_b
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayWidth:I

    div-int/lit8 v3, v3, 0x2

    if-gt v2, v3, :cond_e

    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayHeight:I

    div-int/lit8 v3, v3, 0x2

    if-gt v2, v3, :cond_e

    .line 1098
    if-eq v0, v4, :cond_c

    if-ne v0, v6, :cond_d

    .line 1099
    :cond_c
    const/16 v1, 0x8

    .restart local v1    # "zone":I
    goto :goto_0

    .line 1101
    .end local v1    # "zone":I
    :cond_d
    const/16 v1, 0xc

    .restart local v1    # "zone":I
    goto :goto_0

    .line 1103
    .end local v1    # "zone":I
    :cond_e
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayWidth:I

    div-int/lit8 v3, v3, 0x2

    if-le v2, v3, :cond_11

    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayHeight:I

    div-int/lit8 v3, v3, 0x2

    if-gt v2, v3, :cond_11

    .line 1104
    if-eq v0, v4, :cond_f

    if-ne v0, v5, :cond_10

    .line 1105
    :cond_f
    const/4 v1, 0x2

    .restart local v1    # "zone":I
    goto :goto_0

    .line 1107
    .end local v1    # "zone":I
    :cond_10
    const/4 v1, 0x3

    .restart local v1    # "zone":I
    goto :goto_0

    .line 1109
    .end local v1    # "zone":I
    :cond_11
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayWidth:I

    div-int/lit8 v3, v3, 0x2

    if-lt v2, v3, :cond_14

    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayHeight:I

    div-int/lit8 v3, v3, 0x2

    if-le v2, v3, :cond_14

    .line 1110
    if-eq v0, v4, :cond_12

    if-ne v0, v5, :cond_13

    .line 1111
    :cond_12
    const/4 v1, 0x1

    .restart local v1    # "zone":I
    goto/16 :goto_0

    .line 1113
    .end local v1    # "zone":I
    :cond_13
    const/4 v1, 0x3

    .restart local v1    # "zone":I
    goto/16 :goto_0

    .line 1116
    .end local v1    # "zone":I
    :cond_14
    if-eq v0, v4, :cond_15

    if-ne v0, v6, :cond_16

    .line 1117
    :cond_15
    const/4 v1, 0x4

    .restart local v1    # "zone":I
    goto/16 :goto_0

    .line 1119
    .end local v1    # "zone":I
    :cond_16
    const/16 v1, 0xc

    .restart local v1    # "zone":I
    goto/16 :goto_0
.end method

.method private forceHideInputMethod()V
    .locals 1

    .prologue
    .line 1485
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1486
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 1487
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    .line 1489
    :cond_0
    return-void
.end method

.method private getButtonAnimation(ZZ)Landroid/view/animation/TranslateAnimation;
    .locals 12
    .param p1, "open"    # Z
    .param p2, "left"    # Z

    .prologue
    .line 1849
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarButtons:Landroid/view/View;

    const v2, 0x7f0f00d7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 1850
    .local v10, "centerImageView":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 1852
    .local v9, "centerImageParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 1853
    iget v1, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    div-int/lit8 v11, v1, 0x2

    .line 1854
    .local v11, "showposition":I
    if-eqz p1, :cond_1

    .line 1855
    if-eqz p2, :cond_0

    .line 1856
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    int-to-float v2, v11

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1885
    .local v0, "t":Landroid/view/animation/TranslateAnimation;
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 1886
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    const v2, 0x10a0005

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/content/Context;I)V

    .line 1887
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0054

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1888
    return-object v0

    .line 1858
    .end local v0    # "t":Landroid/view/animation/TranslateAnimation;
    :cond_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    neg-int v2, v11

    int-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .restart local v0    # "t":Landroid/view/animation/TranslateAnimation;
    goto :goto_0

    .line 1861
    .end local v0    # "t":Landroid/view/animation/TranslateAnimation;
    :cond_1
    if-eqz p2, :cond_2

    .line 1862
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    int-to-float v4, v11

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1866
    .restart local v0    # "t":Landroid/view/animation/TranslateAnimation;
    :goto_1
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    goto :goto_0

    .line 1864
    .end local v0    # "t":Landroid/view/animation/TranslateAnimation;
    :cond_2
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    neg-int v4, v11

    int-to-float v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .restart local v0    # "t":Landroid/view/animation/TranslateAnimation;
    goto :goto_1

    .line 1869
    .end local v0    # "t":Landroid/view/animation/TranslateAnimation;
    .end local v11    # "showposition":I
    :cond_3
    iget v1, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    div-int/lit8 v11, v1, 0x2

    .line 1870
    .restart local v11    # "showposition":I
    if-eqz p1, :cond_5

    .line 1871
    if-eqz p2, :cond_4

    .line 1872
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    int-to-float v6, v11

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .restart local v0    # "t":Landroid/view/animation/TranslateAnimation;
    goto :goto_0

    .line 1874
    .end local v0    # "t":Landroid/view/animation/TranslateAnimation;
    :cond_4
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    neg-int v6, v11

    int-to-float v6, v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .restart local v0    # "t":Landroid/view/animation/TranslateAnimation;
    goto :goto_0

    .line 1877
    .end local v0    # "t":Landroid/view/animation/TranslateAnimation;
    :cond_5
    if-eqz p2, :cond_6

    .line 1878
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    int-to-float v8, v11

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1882
    .restart local v0    # "t":Landroid/view/animation/TranslateAnimation;
    :goto_2
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    goto/16 :goto_0

    .line 1880
    .end local v0    # "t":Landroid/view/animation/TranslateAnimation;
    :cond_6
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    neg-int v8, v11

    int-to-float v8, v8

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .restart local v0    # "t":Landroid/view/animation/TranslateAnimation;
    goto :goto_2
.end method

.method private getCenterBarEdgeArea(Landroid/graphics/Point;)Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$EdgeArea;
    .locals 1
    .param p1, "p"    # Landroid/graphics/Point;

    .prologue
    .line 921
    sget-object v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$EdgeArea;->NONE:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$EdgeArea;

    return-object v0
.end method

.method private initButtonPopup()V
    .locals 13

    .prologue
    .line 1415
    iget-object v11, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 1416
    iget-object v11, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableAnims:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 1418
    iget-object v11, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mSwitchButton:Landroid/view/View;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1419
    iget-object v11, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDragButton:Landroid/view/View;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1420
    iget-object v11, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportFreeStyleLaunch(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1421
    iget-object v11, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCollapseButton:Landroid/view/View;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1425
    :goto_0
    iget-object v11, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFullButton:Landroid/view/View;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1426
    iget-object v11, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCloseButton:Landroid/view/View;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1450
    const/4 v5, 0x0

    .line 1452
    .local v5, "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    iget-object v11, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v10

    .line 1453
    .local v10, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_0

    .line 1454
    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1455
    .local v9, "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v11, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 1456
    .local v8, "pm":Landroid/content/pm/PackageManager;
    if-eqz v8, :cond_0

    .line 1457
    iget-object v11, v9, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    const/16 v12, 0x80

    invoke-virtual {v8, v11, v12}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 1458
    .local v1, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v1, :cond_0

    .line 1459
    iget-object v11, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v11, :cond_3

    iget-object v11, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v11, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 1460
    .local v4, "applicationMetaData":Landroid/os/Bundle;
    :goto_1
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 1461
    .local v2, "activityMetaData":Landroid/os/Bundle;
    if-eqz v4, :cond_4

    .line 1462
    const-string v11, "com.samsung.android.sdk.multiwindow.disablefunction"

    invoke-virtual {v4, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1463
    .local v3, "applicationFunction":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1464
    new-instance v6, Ljava/util/ArrayList;

    const-string v11, "\\|"

    invoke-virtual {v3, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v6, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5    # "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v6, "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v5, v6

    .line 1479
    .end local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v2    # "activityMetaData":Landroid/os/Bundle;
    .end local v3    # "applicationFunction":Ljava/lang/String;
    .end local v4    # "applicationMetaData":Landroid/os/Bundle;
    .end local v6    # "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    .end local v9    # "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v10    # "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .restart local v5    # "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_2
    const-string v11, "exit"

    invoke-direct {p0, v5, v11}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->checkFunctionState(Ljava/util/List;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 1480
    iget-object v11, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCloseButton:Landroid/view/View;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1482
    :cond_1
    return-void

    .line 1423
    .end local v5    # "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    iget-object v11, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCollapseButton:Landroid/view/View;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1459
    .restart local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .restart local v5    # "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8    # "pm":Landroid/content/pm/PackageManager;
    .restart local v9    # "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    .restart local v10    # "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 1466
    .restart local v2    # "activityMetaData":Landroid/os/Bundle;
    .restart local v4    # "applicationMetaData":Landroid/os/Bundle;
    :cond_4
    if-eqz v2, :cond_0

    .line 1467
    :try_start_1
    const-string v11, "com.samsung.android.sdk.multiwindow.disablefunction"

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1468
    .local v0, "activityFunction":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1469
    new-instance v6, Ljava/util/ArrayList;

    const-string v11, "\\|"

    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v6, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v5    # "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v5, v6

    .end local v6    # "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5    # "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_2

    .line 1475
    .end local v0    # "activityFunction":Ljava/lang/String;
    .end local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v2    # "activityMetaData":Landroid/os/Bundle;
    .end local v4    # "applicationMetaData":Landroid/os/Bundle;
    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    .end local v9    # "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v10    # "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :catch_0
    move-exception v7

    .line 1476
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private makeButtonPopupLayout()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1491
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1492
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f040011

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarButtons:Landroid/view/View;

    .line 1493
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarButtons:Landroid/view/View;

    const v6, 0x7f0f00d9

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterbarButtonsContainer:Landroid/widget/LinearLayout;

    .line 1496
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterbarButtonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/RippleDrawable;

    .line 1497
    .local v3, "ripple":Landroid/graphics/drawable/RippleDrawable;
    if-eqz v3, :cond_0

    .line 1498
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10601aa

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 1499
    .local v0, "color":I
    const v5, 0xffffff

    and-int/2addr v5, v0

    const/high16 v6, 0x66000000

    or-int v0, v5, v6

    .line 1500
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 1504
    .end local v0    # "color":I
    :cond_0
    new-instance v4, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$9;

    invoke-direct {v4, p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$9;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V

    .line 1554
    .local v4, "touchListener":Landroid/view/View$OnTouchListener;
    new-instance v2, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$10;

    invoke-direct {v2, p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$10;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V

    .line 1562
    .local v2, "longClickListener":Landroid/view/View$OnLongClickListener;
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarButtons:Landroid/view/View;

    const v6, 0x7f0f00dc

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCollapseButton:Landroid/view/View;

    .line 1563
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCollapseButton:Landroid/view/View;

    if-eqz v5, :cond_1

    .line 1564
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCollapseButton:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setHoverPopupType(I)V

    .line 1565
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCollapseButton:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1566
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCollapseButton:Landroid/view/View;

    new-instance v6, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$11;

    invoke-direct {v6, p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$11;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1583
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCollapseButton:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1586
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarButtons:Landroid/view/View;

    const v6, 0x7f0f00da

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mSwitchButton:Landroid/view/View;

    .line 1587
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mSwitchButton:Landroid/view/View;

    if-eqz v5, :cond_2

    .line 1588
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mSwitchButton:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setHoverPopupType(I)V

    .line 1589
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mSwitchButton:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1590
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mSwitchButton:Landroid/view/View;

    new-instance v6, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$12;

    invoke-direct {v6, p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$12;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1615
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mSwitchButton:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1617
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarButtons:Landroid/view/View;

    const v6, 0x7f0f00db

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDragButton:Landroid/view/View;

    .line 1618
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDragButton:Landroid/view/View;

    if-eqz v5, :cond_3

    .line 1619
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDragButton:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setHoverPopupType(I)V

    .line 1620
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDragButton:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1621
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDragButton:Landroid/view/View;

    new-instance v6, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$13;

    invoke-direct {v6, p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$13;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1636
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDragButton:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1639
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarButtons:Landroid/view/View;

    const v6, 0x7f0f00dd

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFullButton:Landroid/view/View;

    .line 1640
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFullButton:Landroid/view/View;

    if-eqz v5, :cond_4

    .line 1641
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFullButton:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setHoverPopupType(I)V

    .line 1642
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFullButton:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1643
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFullButton:Landroid/view/View;

    new-instance v6, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$14;

    invoke-direct {v6, p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$14;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1654
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFullButton:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1657
    :cond_4
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarButtons:Landroid/view/View;

    const v6, 0x7f0f00de

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCloseButton:Landroid/view/View;

    .line 1658
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCloseButton:Landroid/view/View;

    if-eqz v5, :cond_5

    .line 1659
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCloseButton:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setHoverPopupType(I)V

    .line 1660
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCloseButton:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1661
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCloseButton:Landroid/view/View;

    new-instance v6, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$15;

    invoke-direct {v6, p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$15;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1695
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCloseButton:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1697
    :cond_5
    return-void
.end method

.method private makeDragAndDropHelpPopupLayout()V
    .locals 15

    .prologue
    const/high16 v14, -0x1000000

    .line 2838
    :try_start_0
    const-string v11, "CenterBarWindow"

    const-string v12, "makeDragAndDropHelpPopLayout()"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2839
    iget-object v11, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    const-string v12, "layout_inflater"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 2840
    .local v3, "layoutInflater":Landroid/view/LayoutInflater;
    const v11, 0x7f040020

    const/4 v12, 0x0

    invoke-virtual {v3, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2841
    .local v1, "dragAndDropHelpPopupView":Landroid/view/View;
    if-nez v1, :cond_0

    .line 2951
    .end local v1    # "dragAndDropHelpPopupView":Landroid/view/View;
    .end local v3    # "layoutInflater":Landroid/view/LayoutInflater;
    :goto_0
    return-void

    .line 2845
    .restart local v1    # "dragAndDropHelpPopupView":Landroid/view/View;
    .restart local v3    # "layoutInflater":Landroid/view/LayoutInflater;
    :cond_0
    new-instance v11, Landroid/app/AlertDialog$Builder;

    iget-object v12, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-direct {v11, v12}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v12, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0b0658

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0b00b7

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$25;

    invoke-direct {v13, p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$25;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V

    invoke-virtual {v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2860
    .local v0, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    :try_start_1
    iget-object v11, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 2861
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const-string v11, "com.android.systemui"

    invoke-virtual {v6, v11}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v7

    .line 2863
    .local v7, "res":Landroid/content/res/Resources;
    const-string v11, "recent_help_body_text_color"

    const-string v12, "color"

    const-string v13, "com.android.systemui"

    invoke-virtual {v7, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 2865
    .local v8, "textColorId":I
    const v11, 0x7f0f010c

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 2868
    .local v9, "textview":Landroid/widget/TextView;
    if-eqz v8, :cond_1

    if-eqz v9, :cond_1

    .line 2869
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    and-int/2addr v11, v14

    if-nez v11, :cond_3

    .line 2870
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    add-int/2addr v11, v14

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2878
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    .end local v7    # "res":Landroid/content/res/Resources;
    .end local v8    # "textColorId":I
    .end local v9    # "textview":Landroid/widget/TextView;
    :cond_1
    :goto_1
    :try_start_2
    iget v11, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mHelpHubVersion:I

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportSimplificationUI(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 2879
    iget-object v11, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b0558

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$26;

    invoke-direct {v12, p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$26;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V

    invoke-virtual {v0, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2913
    :cond_2
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2914
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    iput-object v11, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDragAndDropHelpPopupDialog:Landroid/app/AlertDialog;

    .line 2915
    iget-object v11, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDragAndDropHelpPopupDialog:Landroid/app/AlertDialog;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 2917
    iget-object v11, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDragAndDropHelpPopupDialog:Landroid/app/AlertDialog;

    new-instance v12, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$27;

    invoke-direct {v12, p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$27;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2929
    iget-object v11, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDragAndDropHelpPopupDialog:Landroid/app/AlertDialog;

    new-instance v12, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$28;

    invoke-direct {v12, p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$28;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 2940
    iget-object v11, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDragAndDropHelpPopupDialog:Landroid/app/AlertDialog;

    invoke-virtual {v11}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    .line 2941
    .local v10, "w":Landroid/view/Window;
    const/16 v11, 0x300

    invoke-virtual {v10, v11}, Landroid/view/Window;->addFlags(I)V

    .line 2942
    invoke-virtual {v10}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 2943
    .local v5, "p":Landroid/view/WindowManager$LayoutParams;
    const/16 v11, 0x3e8

    iput v11, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2944
    iget-object v11, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mWindowCenterBar:Landroid/view/Window;

    invoke-virtual {v11}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v11

    iput-object v11, v5, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 2945
    iget-object v11, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDragAndDropHelpPopupDialog:Landroid/app/AlertDialog;

    invoke-virtual {v11}, Landroid/app/AlertDialog;->show()V

    .line 2946
    iget-object v11, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDragAndDropHelpPopupDialog:Landroid/app/AlertDialog;

    invoke-virtual {v11}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 2947
    .local v4, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v11, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x10e0126

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x42c80000    # 100.0f

    div-float/2addr v11, v12

    iput v11, v4, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 2948
    iget-object v11, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDragAndDropHelpPopupDialog:Landroid/app/AlertDialog;

    invoke-virtual {v11}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 2949
    .end local v0    # "dialogBuilder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "dragAndDropHelpPopupView":Landroid/view/View;
    .end local v3    # "layoutInflater":Landroid/view/LayoutInflater;
    .end local v4    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "p":Landroid/view/WindowManager$LayoutParams;
    .end local v10    # "w":Landroid/view/Window;
    :catch_0
    move-exception v11

    goto/16 :goto_0

    .line 2872
    .restart local v0    # "dialogBuilder":Landroid/app/AlertDialog$Builder;
    .restart local v1    # "dragAndDropHelpPopupView":Landroid/view/View;
    .restart local v3    # "layoutInflater":Landroid/view/LayoutInflater;
    .restart local v6    # "pm":Landroid/content/pm/PackageManager;
    .restart local v7    # "res":Landroid/content/res/Resources;
    .restart local v8    # "textColorId":I
    .restart local v9    # "textview":Landroid/widget/TextView;
    :cond_3
    :try_start_3
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 2874
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    .end local v7    # "res":Landroid/content/res/Resources;
    .end local v8    # "textColorId":I
    .end local v9    # "textview":Landroid/widget/TextView;
    :catch_1
    move-exception v2

    .line 2875
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_4
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1
.end method

.method private prepareCenterBarAnimation()Z
    .locals 1

    .prologue
    .line 2312
    const/4 v0, 0x1

    return v0
.end method

.method private setButtonsVisibility(Z)V
    .locals 3
    .param p1, "bAnim"    # Z

    .prologue
    .line 1839
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1840
    .local v1, "v":Landroid/view/View;
    if-eqz p1, :cond_0

    .line 1841
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1843
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1846
    .end local v1    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private setCenterBarPoint()V
    .locals 3

    .prologue
    .line 795
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->checkSealedFixedWindow(Z)V

    .line 798
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchEventX:I

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 799
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchEventY:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 801
    const-string v0, "CenterBarWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCenterBarPoint : mCenterBarPoint = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    return-void
.end method

.method private setHoverMarginOfButtons()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 2292
    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.sec.feature.cocktailbar"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2293
    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 2294
    .local v0, "degrees":I
    const/4 v2, 0x0

    .line 2295
    .local v2, "yOffset":I
    if-ne v0, v1, :cond_0

    .line 2296
    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0507

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 2299
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCloseButton:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2300
    .local v1, "isHoverEnabled":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 2301
    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mSwitchButton:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v4

    neg-int v5, v2

    invoke-virtual {v4, v3, v5}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 2302
    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDragButton:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v4

    neg-int v5, v2

    invoke-virtual {v4, v3, v5}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 2303
    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFullButton:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v4

    neg-int v5, v2

    invoke-virtual {v4, v3, v5}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 2304
    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCloseButton:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v4

    neg-int v5, v2

    invoke-virtual {v4, v3, v5}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 2305
    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCollapseButton:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v4

    neg-int v5, v2

    invoke-virtual {v4, v3, v5}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 2308
    .end local v0    # "degrees":I
    .end local v1    # "isHoverEnabled":Z
    .end local v2    # "yOffset":I
    :cond_1
    return-void

    .restart local v0    # "degrees":I
    .restart local v2    # "yOffset":I
    :cond_2
    move v1, v3

    .line 2299
    goto :goto_0
.end method

.method private setLayoutMarginButtons()V
    .locals 29

    .prologue
    .line 2013
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2014
    .local v3, "btnLayoutMargin":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewGroup$MarginLayoutParams;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_0

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/view/View;

    .line 2015
    .local v25, "v":Landroid/view/View;
    new-instance v26, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2018
    .end local v25    # "v":Landroid/view/View;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0a04eb

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v26

    move/from16 v0, v26

    float-to-int v4, v0

    .line 2019
    .local v4, "buttonArrangeMargin":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0a04ec

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v26

    move/from16 v0, v26

    float-to-int v5, v0

    .line 2020
    .local v5, "buttonArrangeMargin5b2pL":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0a04ed

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v26

    move/from16 v0, v26

    float-to-int v6, v0

    .line 2021
    .local v6, "buttonArrangeMargin5b2pR":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0a0506

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v26

    move/from16 v0, v26

    float-to-int v7, v0

    .line 2022
    .local v7, "buttonArrangeOverlapMargin":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0a04f6

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v26

    move/from16 v0, v26

    float-to-int v8, v0

    .line 2023
    .local v8, "buttonBgHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0a04fa

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v26

    move/from16 v0, v26

    float-to-int v9, v0

    .line 2024
    .local v9, "hoverMargin3b1p":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0a04fb

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v26

    move/from16 v0, v26

    float-to-int v10, v0

    .line 2025
    .local v10, "hoverMargin3b2p":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0a04fc

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v26

    move/from16 v0, v26

    float-to-int v11, v0

    .line 2026
    .local v11, "hoverMargin3b3p":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0a04fd

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v26

    move/from16 v0, v26

    float-to-int v12, v0

    .line 2027
    .local v12, "hoverMargin4b1p":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0a04fe

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v26

    move/from16 v0, v26

    float-to-int v13, v0

    .line 2028
    .local v13, "hoverMargin4b2p":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0a04ff

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v26

    move/from16 v0, v26

    float-to-int v14, v0

    .line 2029
    .local v14, "hoverMargin4b3p":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0a0500

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v26

    move/from16 v0, v26

    float-to-int v15, v0

    .line 2030
    .local v15, "hoverMargin4b4p":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0a0501

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v26

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v16, v0

    .line 2031
    .local v16, "hoverMargin5b1p":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0a0502

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v26

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v17, v0

    .line 2032
    .local v17, "hoverMargin5b2p":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0a0503

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v26

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v18, v0

    .line 2033
    .local v18, "hoverMargin5b3p":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0a0504

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v26

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v19, v0

    .line 2034
    .local v19, "hoverMargin5b4p":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0a0505

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v26

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v20, v0

    .line 2035
    .local v20, "hoverMargin5b5p":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v24

    .line 2036
    .local v24, "size":I
    const/16 v23, 0x0

    .line 2038
    .local v23, "isHoverEnabled":Z
    if-lez v24, :cond_1

    .line 2039
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    if-eqz v26, :cond_5

    const/16 v23, 0x1

    .line 2042
    :cond_1
    :goto_1
    const/16 v26, 0x5

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_d

    .line 2043
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayOrientation:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_8

    .line 2044
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v26, v0

    const/16 v27, 0x3

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_6

    .line 2047
    :cond_2
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, v26

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2048
    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, v26

    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2049
    const/16 v26, 0x3

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, v26

    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2050
    const/16 v26, 0x4

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, v26

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2051
    if-eqz v23, :cond_3

    .line 2052
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    div-int/lit8 v27, v8, 0x2

    sub-int v27, v4, v27

    move-object/from16 v0, v26

    move/from16 v1, v16

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 2053
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    neg-int v0, v8

    move/from16 v27, v0

    div-int/lit8 v27, v27, 0x2

    move-object/from16 v0, v26

    move/from16 v1, v17

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 2054
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x2

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    neg-int v0, v8

    move/from16 v27, v0

    div-int/lit8 v27, v27, 0x2

    move-object/from16 v0, v26

    move/from16 v1, v18

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 2055
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x3

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    neg-int v0, v8

    move/from16 v27, v0

    div-int/lit8 v27, v27, 0x2

    move-object/from16 v0, v26

    move/from16 v1, v19

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 2056
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x4

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    div-int/lit8 v27, v8, 0x2

    sub-int v27, v4, v27

    move-object/from16 v0, v26

    move/from16 v1, v20

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 2072
    :cond_3
    :goto_2
    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, v26

    iput v7, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 2073
    const/16 v26, 0x4

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, v26

    iput v7, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 2286
    :cond_4
    :goto_3
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_4
    move/from16 v0, v21

    move/from16 v1, v24

    if-ge v0, v1, :cond_25

    .line 2287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    new-instance v28, Landroid/widget/LinearLayout$LayoutParams;

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2286
    add-int/lit8 v21, v21, 0x1

    goto :goto_4

    .line 2039
    .end local v21    # "i":I
    :cond_5
    const/16 v23, 0x0

    goto/16 :goto_1

    .line 2058
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v26, v0

    const/16 v27, 0xc

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v26, v0

    const/16 v27, 0x4

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v26, v0

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_3

    .line 2061
    :cond_7
    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, v26

    iput v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2062
    const/16 v26, 0x2

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, v26

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2063
    const/16 v26, 0x3

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, v26

    iput v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2064
    if-eqz v23, :cond_3

    .line 2065
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    neg-int v0, v4

    move/from16 v27, v0

    move-object/from16 v0, v26

    move/from16 v1, v16

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 2066
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v17

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 2067
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x2

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v18

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 2068
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x3

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v19

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 2069
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x4

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    neg-int v0, v4

    move/from16 v27, v0

    move-object/from16 v0, v26

    move/from16 v1, v20

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    goto/16 :goto_2

    .line 2075
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v26, v0

    const/16 v27, 0x3

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_b

    .line 2078
    :cond_9
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, v26

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 2079
    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, v26

    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 2080
    const/16 v26, 0x3

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, v26

    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 2081
    const/16 v26, 0x4

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, v26

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 2082
    if-eqz v23, :cond_a

    .line 2083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    div-int/lit8 v27, v8, 0x2

    add-int v27, v27, v4

    sub-int v28, v16, v8

    invoke-virtual/range {v26 .. v28}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 2084
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    div-int/lit8 v27, v8, 0x2

    sub-int v28, v17, v8

    invoke-virtual/range {v26 .. v28}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 2085
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x2

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    div-int/lit8 v27, v8, 0x2

    sub-int v28, v18, v8

    invoke-virtual/range {v26 .. v28}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 2086
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x3

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    div-int/lit8 v27, v8, 0x2

    sub-int v28, v19, v8

    invoke-virtual/range {v26 .. v28}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 2087
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x4

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    div-int/lit8 v27, v8, 0x2

    add-int v27, v27, v4

    sub-int v28, v20, v8

    invoke-virtual/range {v26 .. v28}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 2103
    :cond_a
    :goto_5
    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, v26

    iput v7, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2104
    const/16 v26, 0x4

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, v26

    iput v7, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto/16 :goto_3

    .line 2089
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v26, v0

    const/16 v27, 0xc

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v26, v0

    const/16 v27, 0x4

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v26, v0

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_a

    .line 2092
    :cond_c
    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, v26

    iput v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 2093
    const/16 v26, 0x2

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, v26

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 2094
    const/16 v26, 0x3

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, v26

    iput v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 2095
    if-eqz v23, :cond_a

    .line 2096
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    div-int/lit8 v27, v8, 0x2

    sub-int v27, v27, v4

    sub-int v28, v16, v8

    invoke-virtual/range {v26 .. v28}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 2097
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    div-int/lit8 v27, v8, 0x2

    sub-int v28, v17, v8

    invoke-virtual/range {v26 .. v28}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 2098
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x2

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    div-int/lit8 v27, v8, 0x2

    sub-int v28, v18, v8

    invoke-virtual/range {v26 .. v28}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 2099
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x3

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    div-int/lit8 v27, v8, 0x2

    sub-int v28, v19, v8

    invoke-virtual/range {v26 .. v28}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 2100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x4

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    div-int/lit8 v27, v8, 0x2

    sub-int v27, v27, v4

    sub-int v28, v20, v8

    invoke-virtual/range {v26 .. v28}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    goto/16 :goto_5

    .line 2106
    :cond_d
    const/16 v26, 0x4

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_15

    .line 2107
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayOrientation:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_11

    .line 2108
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v26, v0

    const/16 v27, 0x3

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_e

    .line 2109
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, v26

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2110
    const/16 v26, 0x3

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, v26

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2111
    if-eqz v23, :cond_4

    .line 2112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    div-int/lit8 v27, v8, 0x2

    sub-int v27, v4, v27

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v12, v1}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 2113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    neg-int v0, v8

    move/from16 v27, v0

    div-int/lit8 v27, v27, 0x2

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v13, v1}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 2114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x2

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    neg-int v0, v8

    move/from16 v27, v0

    div-int/lit8 v27, v27, 0x2

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v14, v1}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 2115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x3

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    div-int/lit8 v27, v8, 0x2

    sub-int v27, v4, v27

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v15, v1}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    goto/16 :goto_3

    .line 2117
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v26, v0

    const/16 v27, 0xc

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_f

    .line 2118
    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, v26

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2119
    const/16 v26, 0x2

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, v26

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2120
    if-eqz v23, :cond_4

    .line 2121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    neg-int v0, v4

    move/from16 v27, v0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v12, v1}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 2122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v13, v1}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 2123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x2

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v14, v1}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 2124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x3

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    neg-int v0, v4

    move/from16 v27, v0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v15, v1}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    goto/16 :goto_3

    .line 2126
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v26, v0

    const/16 v27, 0x4

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v26, v0

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_4

    .line 2130
    :cond_10
    if-eqz v23, :cond_4

    .line 2131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    neg-int v0, v8

    move/from16 v27, v0

    div-int/lit8 v27, v27, 0x2

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v12, v1}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 2132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    neg-int v0, v8

    move/from16 v27, v0

    div-int/lit8 v27, v27, 0x2

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v13, v1}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 2133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x2

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    neg-int v0, v8

    move/from16 v27, v0

    div-int/lit8 v27, v27, 0x2

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v14, v1}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 2134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x3

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    neg-int v0, v8

    move/from16 v27, v0

    div-int/lit8 v27, v27, 0x2

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v15, v1}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    goto/16 :goto_3

    .line 2138
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v26, v0

    const/16 v27, 0x3

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_12

    .line 2139
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, v26

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 2140
    const/16 v26, 0x3

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, v26

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 2141
    if-eqz v23, :cond_4

    .line 2142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    div-int/lit8 v27, v8, 0x2

    add-int v27, v27, v4

    sub-int v28, v12, v8

    invoke-virtual/range {v26 .. v28}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 2143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    div-int/lit8 v27, v8, 0x2

    sub-int v28, v13, v8

    invoke-virtual/range {v26 .. v28}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 2144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x2

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    div-int/lit8 v27, v8, 0x2

    sub-int v28, v14, v8

    invoke-virtual/range {v26 .. v28}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 2145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x3

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    div-int/lit8 v27, v8, 0x2

    add-int v27, v27, v4

    sub-int v28, v15, v8

    invoke-virtual/range {v26 .. v28}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    goto/16 :goto_3

    .line 2147
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v26, v0

    const/16 v27, 0xc

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_13

    .line 2148
    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, v26

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 2149
    const/16 v26, 0x2

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, v26

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 2150
    if-eqz v23, :cond_4

    .line 2151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    div-int/lit8 v27, v8, 0x2

    sub-int v27, v27, v4

    sub-int v28, v12, v8

    invoke-virtual/range {v26 .. v28}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 2152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    div-int/lit8 v27, v8, 0x2

    sub-int v28, v13, v8

    invoke-virtual/range {v26 .. v28}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 2153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x2

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    div-int/lit8 v27, v8, 0x2

    sub-int v28, v14, v8

    invoke-virtual/range {v26 .. v28}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 2154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x3

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    div-int/lit8 v27, v8, 0x2

    sub-int v27, v27, v4

    sub-int v28, v15, v8

    invoke-virtual/range {v26 .. v28}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    goto/16 :goto_3

    .line 2156
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v26, v0

    const/16 v27, 0x4

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v26, v0

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_4

    .line 2160
    :cond_14
    if-eqz v23, :cond_4

    .line 2161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    neg-int v0, v8

    move/from16 v27, v0

    div-int/lit8 v27, v27, 0x2

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v12, v1}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 2162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    neg-int v0, v8

    move/from16 v27, v0

    div-int/lit8 v27, v27, 0x2

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v13, v1}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 2163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x2

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    neg-int v0, v8

    move/from16 v27, v0

    div-int/lit8 v27, v27, 0x2

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v14, v1}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 2164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x3

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    neg-int v0, v8

    move/from16 v27, v0

    div-int/lit8 v27, v27, 0x2

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v15, v1}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    goto/16 :goto_3

    .line 2168
    :cond_15
    const/16 v26, 0x3

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_1d

    .line 2169
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayOrientation:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_19

    .line 2170
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v26, v0

    const/16 v27, 0x3

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_16

    .line 2171
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, v26

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2172
    const/16 v26, 0x2

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, v26

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2173
    if-eqz v23, :cond_4

    .line 2174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    div-int/lit8 v27, v8, 0x2

    sub-int v27, v4, v27

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v9, v1}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 2175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    neg-int v0, v8

    move/from16 v27, v0

    div-int/lit8 v27, v27, 0x2

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v10, v1}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 2176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x2

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    div-int/lit8 v27, v8, 0x2

    sub-int v27, v4, v27

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v11, v1}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    goto/16 :goto_3

    .line 2178
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v26, v0

    const/16 v27, 0xc

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_17

    .line 2179
    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, v26

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2180
    if-eqz v23, :cond_4

    .line 2181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    neg-int v0, v4

    move/from16 v27, v0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v9, v1}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 2182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v10, v1}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 2183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x2

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    neg-int v0, v4

    move/from16 v27, v0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v11, v1}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    goto/16 :goto_3

    .line 2185
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v26, v0

    const/16 v27, 0x4

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v26, v0

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_4

    .line 2189
    :cond_18
    if-eqz v23, :cond_4

    .line 2190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    neg-int v0, v8

    move/from16 v27, v0

    div-int/lit8 v27, v27, 0x2

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v9, v1}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 2191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    neg-int v0, v8

    move/from16 v27, v0

    div-int/lit8 v27, v27, 0x2

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v10, v1}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 2192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x2

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    neg-int v0, v8

    move/from16 v27, v0

    div-int/lit8 v27, v27, 0x2

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v11, v1}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    goto/16 :goto_3

    .line 2196
    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v26, v0

    const/16 v27, 0x3

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1a

    .line 2197
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, v26

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 2198
    const/16 v26, 0x2

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, v26

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 2199
    if-eqz v23, :cond_4

    .line 2200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    div-int/lit8 v27, v8, 0x2

    add-int v27, v27, v4

    sub-int v28, v9, v8

    invoke-virtual/range {v26 .. v28}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 2201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    div-int/lit8 v27, v8, 0x2

    sub-int v28, v10, v8

    invoke-virtual/range {v26 .. v28}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 2202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x2

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    div-int/lit8 v27, v8, 0x2

    add-int v27, v27, v4

    sub-int v28, v11, v8

    invoke-virtual/range {v26 .. v28}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    goto/16 :goto_3

    .line 2204
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v26, v0

    const/16 v27, 0xc

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1b

    .line 2205
    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, v26

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 2206
    if-eqz v23, :cond_4

    .line 2207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    div-int/lit8 v27, v8, 0x2

    sub-int v27, v27, v4

    sub-int v28, v9, v8

    invoke-virtual/range {v26 .. v28}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 2208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    div-int/lit8 v27, v8, 0x2

    sub-int v28, v10, v8

    invoke-virtual/range {v26 .. v28}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 2209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x2

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    div-int/lit8 v27, v8, 0x2

    sub-int v27, v27, v4

    sub-int v28, v11, v8

    invoke-virtual/range {v26 .. v28}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    goto/16 :goto_3

    .line 2211
    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v26, v0

    const/16 v27, 0x4

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v26, v0

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_4

    .line 2215
    :cond_1c
    if-eqz v23, :cond_4

    .line 2216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    neg-int v0, v8

    move/from16 v27, v0

    div-int/lit8 v27, v27, 0x2

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v9, v1}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 2217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    neg-int v0, v8

    move/from16 v27, v0

    div-int/lit8 v27, v27, 0x2

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v10, v1}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 2218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x2

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    neg-int v0, v8

    move/from16 v27, v0

    div-int/lit8 v27, v27, 0x2

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v11, v1}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    goto/16 :goto_3

    .line 2223
    :cond_1d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayOrientation:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_21

    .line 2224
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v26, v0

    const/16 v27, 0x3

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1e

    .line 2225
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, v26

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2226
    const/16 v26, 0x3

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, v26

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2227
    if-eqz v23, :cond_4

    .line 2228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    div-int/lit8 v27, v8, 0x2

    sub-int v27, v4, v27

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v12, v1}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 2229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    neg-int v0, v8

    move/from16 v27, v0

    div-int/lit8 v27, v27, 0x2

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v13, v1}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 2230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x2

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    neg-int v0, v8

    move/from16 v27, v0

    div-int/lit8 v27, v27, 0x2

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v14, v1}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 2231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x3

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    div-int/lit8 v27, v8, 0x2

    sub-int v27, v4, v27

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v15, v1}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    goto/16 :goto_3

    .line 2233
    :cond_1e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v26, v0

    const/16 v27, 0xc

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1f

    .line 2234
    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, v26

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2235
    const/16 v26, 0x2

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, v26

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2236
    if-eqz v23, :cond_4

    .line 2237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    neg-int v0, v4

    move/from16 v27, v0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v12, v1}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 2238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v13, v1}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 2239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x2

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v14, v1}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 2240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x3

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    neg-int v0, v4

    move/from16 v27, v0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v15, v1}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    goto/16 :goto_3

    .line 2242
    :cond_1f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v26, v0

    const/16 v27, 0x4

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v26, v0

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_4

    .line 2246
    :cond_20
    if-eqz v23, :cond_4

    .line 2247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    neg-int v0, v8

    move/from16 v27, v0

    div-int/lit8 v27, v27, 0x2

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v12, v1}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 2248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    neg-int v0, v8

    move/from16 v27, v0

    div-int/lit8 v27, v27, 0x2

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v13, v1}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 2249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x2

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    neg-int v0, v8

    move/from16 v27, v0

    div-int/lit8 v27, v27, 0x2

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v14, v1}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 2250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x3

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    neg-int v0, v8

    move/from16 v27, v0

    div-int/lit8 v27, v27, 0x2

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v15, v1}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    goto/16 :goto_3

    .line 2254
    :cond_21
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v26, v0

    const/16 v27, 0x3

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_22

    .line 2255
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, v26

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 2256
    const/16 v26, 0x3

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, v26

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 2257
    if-eqz v23, :cond_4

    .line 2258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    div-int/lit8 v27, v8, 0x2

    add-int v27, v27, v4

    sub-int v28, v12, v8

    invoke-virtual/range {v26 .. v28}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 2259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    div-int/lit8 v27, v8, 0x2

    sub-int v28, v13, v8

    invoke-virtual/range {v26 .. v28}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 2260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x2

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    div-int/lit8 v27, v8, 0x2

    sub-int v28, v14, v8

    invoke-virtual/range {v26 .. v28}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 2261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x3

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    div-int/lit8 v27, v8, 0x2

    add-int v27, v27, v4

    sub-int v28, v15, v8

    invoke-virtual/range {v26 .. v28}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    goto/16 :goto_3

    .line 2263
    :cond_22
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v26, v0

    const/16 v27, 0xc

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_23

    .line 2264
    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, v26

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 2265
    const/16 v26, 0x2

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, v26

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 2266
    if-eqz v23, :cond_4

    .line 2267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    div-int/lit8 v27, v8, 0x2

    sub-int v27, v27, v4

    sub-int v28, v12, v8

    invoke-virtual/range {v26 .. v28}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 2268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    div-int/lit8 v27, v8, 0x2

    sub-int v28, v13, v8

    invoke-virtual/range {v26 .. v28}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 2269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x2

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    div-int/lit8 v27, v8, 0x2

    sub-int v28, v14, v8

    invoke-virtual/range {v26 .. v28}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 2270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x3

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    div-int/lit8 v27, v8, 0x2

    sub-int v27, v27, v4

    sub-int v28, v15, v8

    invoke-virtual/range {v26 .. v28}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    goto/16 :goto_3

    .line 2272
    :cond_23
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v26, v0

    const/16 v27, 0x4

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    move/from16 v26, v0

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_4

    .line 2276
    :cond_24
    if-eqz v23, :cond_4

    .line 2277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    neg-int v0, v8

    move/from16 v27, v0

    div-int/lit8 v27, v27, 0x2

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v12, v1}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 2278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    neg-int v0, v8

    move/from16 v27, v0

    div-int/lit8 v27, v27, 0x2

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v13, v1}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 2279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x2

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    neg-int v0, v8

    move/from16 v27, v0

    div-int/lit8 v27, v27, 0x2

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v14, v1}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 2280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x3

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v26

    neg-int v0, v8

    move/from16 v27, v0

    div-int/lit8 v27, v27, 0x2

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v15, v1}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    goto/16 :goto_3

    .line 2289
    .restart local v21    # "i":I
    :cond_25
    return-void
.end method

.method private showButtonPopupWindow()V
    .locals 1

    .prologue
    .line 1729
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->showButtonPopupWindow(Z)V

    .line 1730
    return-void
.end method

.method private showButtonPopupWindow(Z)V
    .locals 23
    .param p1, "autoCloseAnim"    # Z

    .prologue
    .line 1738
    invoke-static {}, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->getSealedState()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1836
    :cond_0
    :goto_0
    return-void

    .line 1744
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mButtonsPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mButtonsPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1747
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDoubleTabbed:Z

    if-nez v3, :cond_0

    .line 1750
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mIsInLongPress:Z

    if-nez v3, :cond_0

    .line 1753
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getFocusedZone()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    .line 1754
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    if-eqz v3, :cond_0

    .line 1757
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mIsCenterBarFixed:Z

    if-eqz v3, :cond_3

    .line 1758
    const-string v3, "CenterBarWindow"

    const-string v4, "CenterBarWindow is fixed! skip showing centerbarbutton "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1762
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->prepareCenterBarAnimation()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1766
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mSoundPool:Landroid/media/SoundPool;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->centerBarButtonSoundId:I

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual/range {v3 .. v9}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 1768
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->initButtonPopup()V

    .line 1771
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarButtons:Landroid/view/View;

    const v4, 0x7f0f00d6

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .line 1772
    .local v19, "leftImageView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarButtons:Landroid/view/View;

    const v4, 0x7f0f00d8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .line 1773
    .local v22, "rightImageView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarButtons:Landroid/view/View;

    const v4, 0x7f0f00d7

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 1774
    .local v15, "centerImageView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarButtons:Landroid/view/View;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    .line 1775
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    .line 1776
    .local v14, "centerImageParams":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterbarButtonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1777
    .local v16, "containerParams":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    .line 1778
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterbarButtonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v3

    move-object/from16 v0, v16

    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    move-object/from16 v0, v16

    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1785
    :goto_1
    new-instance v3, Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarButtons:Landroid/view/View;

    const/4 v5, -0x2

    const/4 v6, -0x2

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mButtonsPopupWindow:Landroid/widget/PopupWindow;

    .line 1786
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mButtonsPopupWindow:Landroid/widget/PopupWindow;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setAttachedInDecor(Z)V

    .line 1788
    const/16 v20, 0x0

    .line 1789
    .local v20, "posX":I
    const/16 v21, 0x0

    .line 1790
    .local v21, "posY":I
    const/16 v17, 0x0

    .line 1791
    .local v17, "gravity":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a04f5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v13, v3

    .line 1792
    .local v13, "buttonsMargin":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a04f6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v11, v3

    .line 1795
    .local v11, "buttonBgHeight":I
    new-instance v12, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$16;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$16;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V

    .line 1811
    .local v12, "buttonHoverListener":Landroid/view/View$OnHoverListener;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 1812
    .local v10, "b":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1813
    invoke-virtual {v10, v12}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    goto :goto_2

    .line 1781
    .end local v10    # "b":Landroid/view/View;
    .end local v11    # "buttonBgHeight":I
    .end local v12    # "buttonHoverListener":Landroid/view/View$OnHoverListener;
    .end local v13    # "buttonsMargin":I
    .end local v17    # "gravity":I
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v20    # "posX":I
    .end local v21    # "posY":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterbarButtonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, v16

    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    move-object/from16 v0, v16

    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    .line 1817
    .restart local v11    # "buttonBgHeight":I
    .restart local v12    # "buttonHoverListener":Landroid/view/View$OnHoverListener;
    .restart local v13    # "buttonsMargin":I
    .restart local v17    # "gravity":I
    .restart local v18    # "i$":Ljava/util/Iterator;
    .restart local v20    # "posX":I
    .restart local v21    # "posY":I
    :cond_6
    const/16 v17, 0x11

    .line 1818
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->setHoverMarginOfButtons()V

    .line 1820
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mButtonsPopupWindow:Landroid/widget/PopupWindow;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 1821
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mButtonsPopupWindow:Landroid/widget/PopupWindow;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1822
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mButtonsPopupWindow:Landroid/widget/PopupWindow;

    new-instance v4, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$17;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$17;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 1832
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mButtonsPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mWindowCenterBar:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    move/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1833
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mIsShowButton:Z

    .line 1835
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarButtons:Landroid/view/View;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v3, v1}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->animateCenterBarOpen(Landroid/view/View;Z)V

    goto/16 :goto_0
.end method

.method private showDragAndDropHelpDialog()V
    .locals 2

    .prologue
    .line 2956
    invoke-static {}, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->getSealedState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2964
    :goto_0
    return-void

    .line 2960
    :cond_0
    const-string v0, "CenterBarWindow"

    const-string v1, "showDragAndDropHelpDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2962
    invoke-direct {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->makeDragAndDropHelpPopupLayout()V

    .line 2963
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->hideButtonsPopupWindow(Z)V

    goto :goto_0
.end method

.method private showToastMessage(Landroid/view/View;)V
    .locals 13
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v12, 0x35

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 1700
    const/4 v7, 0x2

    new-array v3, v7, [I

    .line 1701
    .local v3, "screenPos":[I
    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v4, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1702
    .local v4, "screenWidth":I
    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v1, v7, Landroid/util/DisplayMetrics;->density:F

    .line 1703
    .local v1, "density":F
    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1705
    aget v7, v3, v10

    iget-object v8, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a04e8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v3, v10

    .line 1706
    iget-boolean v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mToastCheck:Z

    if-eqz v7, :cond_0

    .line 1726
    :goto_0
    return-void

    .line 1709
    :cond_0
    iput-boolean v10, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mToastCheck:Z

    .line 1711
    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v7, v8, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1713
    .local v0, "cheatSheet":Landroid/widget/Toast;
    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 1714
    .local v2, "layoutInflater":Landroid/view/LayoutInflater;
    const v7, 0x7f04005b

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 1715
    .local v6, "toastView":Landroid/view/View;
    invoke-virtual {v0, v6}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 1716
    const v7, 0x7f0f021d

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1717
    .local v5, "toastTxt":Landroid/widget/TextView;
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1719
    iget v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayOrientation:I

    if-ne v7, v10, :cond_1

    .line 1720
    float-to-int v7, v1

    mul-int/lit8 v7, v7, 0x5

    sub-int v7, v4, v7

    aget v8, v3, v11

    sub-int/2addr v7, v8

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    aget v8, v3, v10

    invoke-virtual {v0, v12, v7, v8}, Landroid/widget/Toast;->setGravity(III)V

    .line 1725
    :goto_1
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1722
    :cond_1
    aget v7, v3, v11

    sub-int v7, v4, v7

    aget v8, v3, v10

    invoke-virtual {v0, v12, v7, v8}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_1
.end method

.method private startButtonAnimation(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/animation/AnimationSet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2813
    .local p1, "animatinSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/AnimationSet;>;"
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableAnims:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p1, :cond_0

    .line 2814
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableAnims:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 2815
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableAnims:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2816
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2817
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableAnims:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2816
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2821
    .end local v0    # "N":I
    .end local v1    # "index":I
    :cond_0
    return-void
.end method

.method private startDragAndDrop()V
    .locals 4

    .prologue
    .line 2974
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2975
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.systemui"

    const-string v2, "com.android.systemui.multiwindow.centerbarwindow.SmartClipDragDrop"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2976
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 2977
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->hideButtonsPopupWindow(Z)V

    .line 2978
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    const-string v2, "SPLW"

    const-string v3, "DRAGCONTENT"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2981
    return-void
.end method

.method private startHideButtonTimer()V
    .locals 2

    .prologue
    const/16 v1, 0xc9

    .line 1390
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTimerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1391
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTimerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1392
    :cond_0
    return-void
.end method

.method private updateDisplaySize()V
    .locals 2

    .prologue
    .line 334
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 335
    .local v0, "displaySize":Landroid/graphics/Point;
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v1, :cond_0

    .line 336
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 337
    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayWidth:I

    .line 338
    iget v1, v0, Landroid/graphics/Point;->y:I

    iput v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayHeight:I

    .line 340
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelHideButtonTimer()V
    .locals 2

    .prologue
    const/16 v1, 0xc9

    .line 1395
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTimerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1396
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTimerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1397
    :cond_0
    return-void
.end method

.method public centerControlBarDocking(Z)Z
    .locals 8
    .param p1, "checkAll"    # Z

    .prologue
    const/4 v7, 0x1

    .line 805
    const-string v4, "CenterBarWindow"

    const-string v5, "centerControlBarDocking"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    const/4 v3, 0x0

    .line 808
    .local v3, "result":Z
    iget v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarDockingSize:I

    iget v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    div-int/lit8 v5, v5, 0x2

    add-int v1, v4, v5

    .line 809
    .local v1, "dockingRange":I
    const/4 v2, 0x0

    .line 810
    .local v2, "dockingWidth":I
    const/4 v0, 0x0

    .line 812
    .local v0, "dockingHeight":I
    iget v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayOrientation:I

    if-ne v4, v7, :cond_6

    .line 813
    iget v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarFlingSizeW:I

    .line 814
    iget v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayHeight:I

    mul-int/lit8 v4, v4, 0x5

    div-int/lit8 v0, v4, 0x64

    .line 820
    :goto_0
    if-nez p1, :cond_0

    iget v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayOrientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 821
    :cond_0
    iget v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchEventY:I

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->getIndicatorSize()I

    move-result v5

    add-int/2addr v5, v0

    if-gt v4, v5, :cond_7

    .line 822
    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->getIndicatorSize()I

    move-result v5

    add-int/2addr v5, v0

    iput v5, v4, Landroid/graphics/Point;->y:I

    .line 823
    const/4 v3, 0x1

    .line 834
    :cond_1
    :goto_1
    if-nez p1, :cond_2

    iget v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayOrientation:I

    if-ne v4, v7, :cond_5

    .line 835
    :cond_2
    iget v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchEventX:I

    if-gt v4, v2, :cond_3

    .line 836
    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iput v2, v4, Landroid/graphics/Point;->x:I

    .line 837
    const/4 v3, 0x1

    .line 839
    :cond_3
    iget v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchEventX:I

    iget v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayWidth:I

    sub-int/2addr v5, v2

    if-lt v4, v5, :cond_4

    .line 840
    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayWidth:I

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Point;->x:I

    .line 841
    const/4 v3, 0x1

    .line 843
    :cond_4
    iget v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchEventX:I

    iget v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayWidth:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v5, v1

    if-lt v4, v5, :cond_5

    iget v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchEventX:I

    iget v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayWidth:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v1

    if-gt v4, v5, :cond_5

    .line 845
    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayWidth:I

    div-int/lit8 v5, v5, 0x2

    iput v5, v4, Landroid/graphics/Point;->x:I

    .line 846
    const/4 v3, 0x1

    .line 850
    :cond_5
    return v3

    .line 816
    :cond_6
    iget v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayWidth:I

    mul-int/lit8 v4, v4, 0x5

    div-int/lit8 v2, v4, 0x64

    .line 817
    iget v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarFlingSizeH:I

    goto :goto_0

    .line 824
    :cond_7
    iget v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchEventY:I

    iget v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayHeight:I

    sub-int/2addr v5, v0

    if-lt v4, v5, :cond_8

    .line 825
    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayHeight:I

    sub-int/2addr v5, v0

    iput v5, v4, Landroid/graphics/Point;->y:I

    .line 826
    const/4 v3, 0x1

    goto :goto_1

    .line 827
    :cond_8
    iget v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchEventY:I

    iget v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->getIndicatorSize()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->getIndicatorSize()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v5, v1

    if-lt v4, v5, :cond_1

    iget v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchEventY:I

    iget v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->getIndicatorSize()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->getIndicatorSize()I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v5, v1

    if-gt v4, v5, :cond_1

    .line 829
    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->getIndicatorSize()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->getIndicatorSize()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Point;->y:I

    .line 830
    const/4 v3, 0x1

    goto/16 :goto_1
.end method

.method public checkFixedBoundsForDimLayer()Z
    .locals 9

    .prologue
    const v8, 0x3f4ccccd    # 0.8f

    const v7, 0x3e4ccccd    # 0.2f

    const/4 v5, 0x1

    .line 854
    iget v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayWidth:I

    int-to-float v6, v6

    mul-float/2addr v6, v7

    float-to-int v3, v6

    .line 855
    .local v3, "MIN_FIXED_WIDTH":I
    iget v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayWidth:I

    int-to-float v6, v6

    mul-float/2addr v6, v8

    float-to-int v1, v6

    .line 857
    .local v1, "MAX_FIXED_WIDTH":I
    iget v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayHeight:I

    int-to-float v6, v6

    mul-float/2addr v6, v7

    float-to-int v2, v6

    .line 858
    .local v2, "MIN_FIXED_HEIGHT":I
    iget v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayHeight:I

    int-to-float v6, v6

    mul-float/2addr v6, v8

    float-to-int v0, v6

    .line 860
    .local v0, "MAX_FIXED_HEIGHT":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " / CenterBarPoint = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    invoke-virtual {v7}, Landroid/graphics/Point;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 861
    .local v4, "detailLog":Ljava/lang/String;
    iget v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayOrientation:I

    if-ne v6, v5, :cond_1

    .line 862
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / MIN_FIXED_HEIGHT="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / MAX_FIXED_HEIGHT="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 863
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    if-ge v2, v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    if-gt v0, v6, :cond_1

    .line 864
    :cond_0
    const-string v6, "CenterBarWindow"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "true, CenterBarPoint is out of fixed bonunds for DimLayer in Portrait Mode / "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    :goto_0
    return v5

    .line 868
    :cond_1
    iget v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayOrientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 869
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / MIN_FIXED_WIDTH="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / MAX_FIXED_WIDTH="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 870
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    if-ge v3, v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    if-gt v1, v6, :cond_3

    .line 871
    :cond_2
    const-string v6, "CenterBarWindow"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "true, CenterBarPoint is out of fixed bonunds for DimLayer in LandScape Mode / "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 876
    :cond_3
    const-string v5, "CenterBarWindow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "false, CenterBarPoint is in fixed bonunds for DimLayer"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public checkSealedFixedWindow(Z)V
    .locals 5
    .param p1, "forceUpdate"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2990
    invoke-static {}, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->getSealedState()Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz p1, :cond_3

    .line 2991
    :cond_0
    const/16 v4, 0x1b9

    invoke-static {v4}, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->getKnoxSealedMultiWindowFixedState(I)I

    move-result v4

    if-ne v4, v2, :cond_4

    move v0, v2

    .line 2992
    .local v0, "sealedMultiWindowFixed":Z
    :goto_0
    const/16 v4, 0x1ba

    invoke-static {v4}, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->getKnoxSealedMultiWindowFixedState(I)I

    move-result v1

    .line 2993
    .local v1, "splitPercentage":I
    if-nez v0, :cond_1

    .line 2994
    const/16 v1, 0x32

    .line 2996
    :cond_1
    if-nez v0, :cond_2

    if-eqz p1, :cond_3

    .line 2997
    :cond_2
    iget v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayOrientation:I

    if-ne v4, v2, :cond_5

    .line 2998
    iget v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayHeight:I

    mul-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x64

    iput v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchEventY:I

    .line 2999
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchEventY:I

    iput v4, v2, Landroid/graphics/Point;->y:I

    .line 3000
    iget v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayWidth:I

    mul-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x64

    iput v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchEventX:I

    .line 3001
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchEventX:I

    iput v4, v2, Landroid/graphics/Point;->x:I

    .line 3008
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setCenterBarPoint(ILandroid/graphics/Point;)V

    .line 3009
    const-string v2, "CenterBarWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sealed Fixed mode - centre bar position ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3012
    .end local v0    # "sealedMultiWindowFixed":Z
    .end local v1    # "splitPercentage":I
    :cond_3
    return-void

    :cond_4
    move v0, v3

    .line 2991
    goto :goto_0

    .line 3003
    .restart local v0    # "sealedMultiWindowFixed":Z
    .restart local v1    # "splitPercentage":I
    :cond_5
    iget v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayWidth:I

    mul-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x64

    iput v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchEventX:I

    .line 3004
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchEventX:I

    iput v4, v2, Landroid/graphics/Point;->x:I

    .line 3005
    iget v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayHeight:I

    mul-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x64

    iput v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchEventY:I

    .line 3006
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchEventY:I

    iput v4, v2, Landroid/graphics/Point;->y:I

    goto :goto_1
.end method

.method public drawCenterBar(II)V
    .locals 6
    .param p1, "positionX"    # I
    .param p2, "positionY"    # I

    .prologue
    .line 596
    const-string v3, "CenterBarWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "drawCenterBar : positionX = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", positionY = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBar:Landroid/widget/ImageView;

    if-nez v3, :cond_0

    .line 598
    const-string v3, "CenterBarWindow"

    const-string v4, "CenterBar is null, so return."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    :goto_0
    return-void

    .line 610
    :cond_0
    iget-boolean v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mIsCenterBarPressed:Z

    invoke-virtual {p0, v3}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->setImageToImageView(Z)V

    .line 612
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->setCenterBarViewsVisibility(I)V

    .line 613
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mWindowCenterBar:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 614
    .local v0, "centerBarLayout":Landroid/view/WindowManager$LayoutParams;
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a04ef

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 616
    .local v2, "transparentMargin":I
    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    div-int/lit8 v3, v3, 0x2

    sub-int v3, p1, v3

    if-gtz v3, :cond_1

    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    div-int/lit8 v3, v3, 0x2

    sub-int p1, v3, v2

    .line 617
    :cond_1
    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, p1

    iget v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayWidth:I

    if-lt v3, v4, :cond_2

    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayWidth:I

    iget v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    add-int p1, v3, v2

    .line 618
    :cond_2
    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    div-int/lit8 v3, v3, 0x2

    sub-int v3, p2, v3

    if-gtz v3, :cond_3

    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    div-int/lit8 v3, v3, 0x2

    sub-int p2, v3, v2

    .line 619
    :cond_3
    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, p2

    iget v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayHeight:I

    if-lt v3, v4, :cond_4

    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayHeight:I

    iget v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    add-int p2, v3, v2

    .line 621
    :cond_4
    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    div-int/lit8 v3, v3, 0x2

    sub-int v3, p1, v3

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 622
    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    div-int/lit8 v3, v3, 0x2

    sub-int v3, p2, v3

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 624
    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 625
    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 626
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mWindowCenterBar:Landroid/view/Window;

    invoke-virtual {v3, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 628
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mWindowCenterBar:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 629
    :catch_0
    move-exception v1

    .line 630
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public drawCenterBarButton(II)V
    .locals 2
    .param p1, "positionX"    # I
    .param p2, "positionY"    # I

    .prologue
    .line 730
    const-string v0, "CenterBarWindow"

    const-string v1, "drawCenterBarButton"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->drawCenterBar(II)V

    .line 733
    invoke-direct {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->showButtonPopupWindow()V

    .line 734
    invoke-direct {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->startHideButtonTimer()V

    .line 735
    return-void
.end method

.method public drawDragAndDrop()V
    .locals 2

    .prologue
    .line 549
    const-string v0, "CenterBarWindow"

    const-string v1, "Draw drag and drop center bar image"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mIsDragMode:Z

    .line 553
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBar:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 554
    const-string v0, "CenterBarWindow"

    const-string v1, "CenterBar is null, so return."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :goto_0
    return-void

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a04f6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    .line 559
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->drawCenterBar(II)V

    .line 560
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBar:Landroid/widget/ImageView;

    const v1, 0x7f0202bc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 561
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBar:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 562
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBar:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0
.end method

.method public forceCloseSplitedApplication(I)V
    .locals 5
    .param p1, "zoneInfo"    # I

    .prologue
    const/4 v4, 0x1

    .line 1401
    const-string v1, "CenterBarWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forceCloseSplitedApplication zoneInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 1404
    .local v0, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v4, :cond_0

    .line 1405
    iget v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    if-ne v1, p1, :cond_0

    .line 1407
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mActivityManager:Landroid/app/ActivityManager;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/app/ActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V

    .line 1412
    :cond_0
    return-void
.end method

.method public getCenterBarPoint()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 789
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method public getFocusedZoneInfo()I
    .locals 1

    .prologue
    .line 770
    iget v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    return v0
.end method

.method public getFullSizeDockingState()Z
    .locals 1

    .prologue
    .line 1008
    iget-boolean v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFullSizeDocking:Z

    return v0
.end method

.method public getIndicatorSize()I
    .locals 1

    .prologue
    .line 2771
    const/4 v0, 0x0

    return v0
.end method

.method public hideButtonsPopupWindow(Z)V
    .locals 4
    .param p1, "needAnim"    # Z

    .prologue
    const/4 v3, 0x0

    .line 738
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mButtonsPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_0

    .line 739
    invoke-direct {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->clearButtonAnimation()V

    .line 740
    if-eqz p1, :cond_1

    .line 741
    iget-boolean v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mIsShowButton:Z

    if-eqz v2, :cond_0

    .line 742
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarButtons:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->animateCenterBarClose(Landroid/view/View;)V

    .line 743
    iput-boolean v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mIsShowButton:Z

    .line 755
    :cond_0
    :goto_0
    return-void

    .line 746
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableAnims:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 747
    .local v1, "v":Landroid/view/View;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 749
    .end local v1    # "v":Landroid/view/View;
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->setCenterBarViewsVisibility(I)V

    .line 750
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mButtonsPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 751
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mButtonsPopupWindow:Landroid/widget/PopupWindow;

    .line 752
    iput-boolean v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mIsShowButton:Z

    goto :goto_0
.end method

.method public hideDragAndDropHelpDialog()V
    .locals 1

    .prologue
    .line 2967
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDragAndDropHelpPopupDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDragAndDropHelpPopupDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2968
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDragAndDropHelpPopupDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2970
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDragAndDropHelpPopupDialog:Landroid/app/AlertDialog;

    .line 2971
    return-void
.end method

.method public hideGuideCenterBar()V
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mGuideView:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$GuideView;

    if-eqz v0, :cond_0

    .line 723
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mGuideView:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$GuideView;

    invoke-virtual {v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$GuideView;->dismiss()V

    .line 725
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mGuideView:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$GuideView;

    .line 726
    return-void
.end method

.method public initCenterBarButtonAnim()V
    .locals 4

    .prologue
    .line 995
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTimerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$7;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1005
    return-void
.end method

.method public initCenterBarIfNeed()V
    .locals 12

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 941
    const/4 v4, 0x0

    .line 942
    .local v4, "level":I
    iget-object v10, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v10}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getArrangeState()I

    move-result v5

    .line 943
    .local v5, "mode":I
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 945
    .local v2, "displaySize":Landroid/graphics/Point;
    iget-object v10, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-nez v5, :cond_2

    .line 946
    const/4 v4, 0x0

    .line 954
    :goto_0
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v1

    .line 955
    .local v1, "display":Landroid/view/Display;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 956
    :cond_0
    iget v10, v2, Landroid/graphics/Point;->x:I

    if-lez v10, :cond_1

    iget v10, v2, Landroid/graphics/Point;->y:I

    if-gtz v10, :cond_3

    .line 991
    .end local v1    # "display":Landroid/view/Display;
    :cond_1
    :goto_1
    return-void

    .line 947
    :cond_2
    iget-object v10, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-ne v5, v8, :cond_1

    iget-boolean v10, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mSupportQuadView:Z

    if-eqz v10, :cond_1

    .line 948
    const/4 v4, 0x1

    goto :goto_0

    .line 961
    .restart local v1    # "display":Landroid/view/Display;
    :cond_3
    const/4 v0, 0x0

    .line 962
    .local v0, "changed":Z
    iget v10, v2, Landroid/graphics/Point;->x:I

    iget v11, v2, Landroid/graphics/Point;->y:I

    if-le v10, v11, :cond_9

    move v3, v8

    .line 963
    .local v3, "isLand":Z
    :goto_2
    iget-object v10, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    int-to-float v10, v10

    iget v11, v2, Landroid/graphics/Point;->x:I

    int-to-float v11, v11

    div-float v6, v10, v11

    .line 964
    .local v6, "xAxis":F
    iget-object v10, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    iget v11, v2, Landroid/graphics/Point;->y:I

    int-to-float v11, v11

    div-float v7, v10, v11

    .line 966
    .local v7, "yAxis":F
    if-eqz v3, :cond_4

    if-eqz v4, :cond_5

    :cond_4
    if-nez v3, :cond_a

    if-ne v4, v8, :cond_a

    .line 968
    :cond_5
    iget v8, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mSplitMinWeight:F

    cmpg-float v8, v6, v8

    if-lez v8, :cond_6

    iget v8, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mSplitMaxWeight:F

    cmpl-float v8, v6, v8

    if-ltz v8, :cond_7

    .line 969
    :cond_6
    iget-object v8, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v10, v2, Landroid/graphics/Point;->x:I

    div-int/lit8 v10, v10, 0x2

    iput v10, v8, Landroid/graphics/Point;->x:I

    .line 970
    const/4 v0, 0x1

    .line 982
    :cond_7
    :goto_3
    invoke-virtual {p0, v9}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->checkSealedFixedWindow(Z)V

    .line 985
    if-eqz v0, :cond_8

    .line 986
    iget-object v8, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v10, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    invoke-virtual {v8, v9, v10}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setCenterBarPoint(ILandroid/graphics/Point;)V

    .line 987
    iget-object v8, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    iget-object v10, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v8, v10}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->drawCenterBar(II)V

    .line 990
    :cond_8
    iput-boolean v9, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFullSizeDocking:Z

    goto :goto_1

    .end local v3    # "isLand":Z
    .end local v6    # "xAxis":F
    .end local v7    # "yAxis":F
    :cond_9
    move v3, v9

    .line 962
    goto :goto_2

    .line 974
    .restart local v3    # "isLand":Z
    .restart local v6    # "xAxis":F
    .restart local v7    # "yAxis":F
    :cond_a
    iget v8, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mSplitMinWeight:F

    cmpg-float v8, v7, v8

    if-lez v8, :cond_b

    iget v8, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mSplitMaxWeight:F

    cmpl-float v8, v7, v8

    if-ltz v8, :cond_7

    .line 975
    :cond_b
    iget-object v8, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v10, v2, Landroid/graphics/Point;->y:I

    div-int/lit8 v10, v10, 0x2

    iput v10, v8, Landroid/graphics/Point;->y:I

    .line 976
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public initCenterBarPoint(Landroid/view/Display;)V
    .locals 4
    .param p1, "display"    # Landroid/view/Display;

    .prologue
    const/4 v3, 0x0

    .line 928
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 929
    .local v0, "displaySize":Landroid/graphics/Point;
    if-nez p1, :cond_0

    .line 930
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object p1

    .line 932
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 933
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->x:I

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 934
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->y:I

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 935
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setCenterBarPoint(ILandroid/graphics/Point;)V

    .line 936
    return-void
.end method

.method public initVariables()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 406
    invoke-direct {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->updateDisplaySize()V

    .line 408
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportQuadView(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 409
    iget v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarFlingNonQuadRatio:I

    iput v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarFlingProportion:I

    .line 412
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayOrientation:I

    .line 414
    iget v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayOrientation:I

    if-ne v1, v4, :cond_2

    .line 415
    iget v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayWidth:I

    iget v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarFlingProportion:I

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x64

    iput v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarFlingSizeW:I

    .line 416
    iget v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayHeight:I

    mul-int/lit8 v1, v1, 0x14

    div-int/lit8 v1, v1, 0x64

    iput v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarFlingSizeH:I

    .line 423
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 424
    .local v0, "centerBarPoint":Landroid/graphics/Point;
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v1, v3}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getCenterBarPoint(I)Landroid/graphics/Point;

    move-result-object v0

    .line 425
    if-nez v0, :cond_3

    .line 444
    :goto_1
    return-void

    .line 418
    .end local v0    # "centerBarPoint":Landroid/graphics/Point;
    :cond_2
    iget v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 419
    iget v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayWidth:I

    mul-int/lit8 v1, v1, 0x14

    div-int/lit8 v1, v1, 0x64

    iput v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarFlingSizeW:I

    .line 420
    iget v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayHeight:I

    iget v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarFlingProportion:I

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x64

    iput v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarFlingSizeH:I

    goto :goto_0

    .line 429
    .restart local v0    # "centerBarPoint":Landroid/graphics/Point;
    :cond_3
    iput-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    .line 430
    iget v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayOrientation:I

    if-ne v1, v4, :cond_4

    .line 431
    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchEventX:I

    .line 432
    iget v1, v0, Landroid/graphics/Point;->y:I

    iput v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchEventY:I

    .line 439
    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->checkSealedFixedWindow(Z)V

    .line 443
    const-string v1, "CenterBarWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initVariables centerBarPoint = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,mTouchEventX ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchEventX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,mTouchEventY ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchEventY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 434
    :cond_4
    iget v1, v0, Landroid/graphics/Point;->y:I

    iput v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchEventY:I

    .line 435
    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchEventX:I

    goto :goto_2
.end method

.method public makeCenterBarImageViews()V
    .locals 2

    .prologue
    .line 494
    const-string v0, "CenterBarWindow"

    const-string v1, "makeCenterBarImageViews"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBar:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mViewForLayout:Landroid/view/View;

    const v1, 0x7f0f00d3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBar:Landroid/widget/ImageView;

    .line 498
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->setCenterBarViewsVisibility(I)V

    .line 499
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBar:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 500
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBar:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 502
    :cond_0
    return-void
.end method

.method public makeCenterBarLayout()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 458
    const-string v1, "CenterBarWindow"

    const-string v2, "makeCenterBarLayout"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mWindowCenterBar:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 461
    .local v0, "centerBarLayout":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 462
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 463
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 464
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 465
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 466
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 467
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MultiWindowTrayService/CenterBar "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 468
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    .line 469
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    .line 470
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 472
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mWindowCenterBar:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 473
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mWindowCenterBar:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 474
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mWindowCenterBar:Landroid/view/Window;

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 475
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mViewForLayout:Landroid/view/View;

    const v2, 0x7f0f00d2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarFrame:Landroid/widget/FrameLayout;

    .line 477
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarFrame:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$4;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 483
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarFrame:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$5;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 489
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->makeCenterBarImageViews()V

    .line 490
    invoke-virtual {p0, v3}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->setImageToImageView(Z)V

    .line 491
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 10
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v9, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 1254
    const-string v3, "CenterBarWindow"

    const-string v4, "onConfigurationChanged"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    iget v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayOrientation:I

    if-eq v3, v4, :cond_c

    .line 1257
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTimerHandler:Landroid/os/Handler;

    const/16 v4, 0xcc

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1258
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTimerHandler:Landroid/os/Handler;

    const/16 v4, 0xcc

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1260
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->updateDisplaySize()V

    .line 1261
    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayOrientation:I

    .line 1262
    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayOrientation:I

    if-ne v3, v8, :cond_4

    .line 1263
    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayWidth:I

    iget v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarFlingProportion:I

    mul-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x64

    iput v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarFlingSizeW:I

    .line 1264
    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayHeight:I

    mul-int/lit8 v3, v3, 0x14

    div-int/lit8 v3, v3, 0x64

    iput v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarFlingSizeH:I

    .line 1270
    :cond_1
    :goto_0
    const-string v3, "CenterBarWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onConfigurationChanged : mDisplayOrientation = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayOrientation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarDirection:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 1273
    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarDirection:I

    if-nez v3, :cond_5

    .line 1274
    iput v9, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarDirection:I

    .line 1284
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    if-nez v3, :cond_8

    .line 1334
    :cond_3
    :goto_2
    return-void

    .line 1266
    :cond_4
    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayOrientation:I

    if-ne v3, v7, :cond_1

    .line 1267
    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayWidth:I

    mul-int/lit8 v3, v3, 0x14

    div-int/lit8 v3, v3, 0x64

    iput v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarFlingSizeW:I

    .line 1268
    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayHeight:I

    iget v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarFlingProportion:I

    mul-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x64

    iput v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarFlingSizeH:I

    goto :goto_0

    .line 1275
    :cond_5
    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarDirection:I

    if-ne v3, v8, :cond_6

    .line 1276
    iput v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarDirection:I

    goto :goto_1

    .line 1277
    :cond_6
    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarDirection:I

    if-ne v3, v7, :cond_7

    .line 1278
    iput v8, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarDirection:I

    goto :goto_1

    .line 1279
    :cond_7
    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarDirection:I

    if-ne v3, v9, :cond_2

    .line 1280
    iput v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarDirection:I

    goto :goto_1

    .line 1288
    :cond_8
    const/4 v2, 0x0

    .line 1289
    .local v2, "point":Landroid/graphics/Point;
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v3, v6}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getCenterBarPoint(I)Landroid/graphics/Point;

    move-result-object v2

    .line 1291
    if-eqz v2, :cond_9

    .line 1292
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v4, v2, Landroid/graphics/Point;->x:I

    iget v5, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Point;->set(II)V

    .line 1293
    iget v3, v2, Landroid/graphics/Point;->x:I

    iput v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchEventX:I

    .line 1294
    iget v3, v2, Landroid/graphics/Point;->y:I

    iput v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchEventY:I

    .line 1295
    const-string v3, "CenterBarWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onConfigurationChanged point = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    :cond_9
    invoke-virtual {p0, v6}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->checkSealedFixedWindow(Z)V

    .line 1302
    invoke-virtual {p0, v6}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->setImageToImageView(Z)V

    .line 1303
    invoke-virtual {p0, v6}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->hideButtonsPopupWindow(Z)V

    .line 1305
    iget-boolean v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mIsShowButton:Z

    if-nez v3, :cond_e

    .line 1307
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mWM:Landroid/view/IWindowManager;

    invoke-interface {v3}, Landroid/view/IWindowManager;->isNavigationBarVisible()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1308
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTimerHandler:Landroid/os/Handler;

    const/16 v4, 0xcf

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1309
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTimerHandler:Landroid/os/Handler;

    const/16 v4, 0xcf

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1311
    :cond_a
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTimerHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTimerHandler:Landroid/os/Handler;

    const/16 v5, 0xcf

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v6, 0x12c

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1321
    :goto_3
    iget-boolean v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mIsDragMode:Z

    if-eqz v3, :cond_b

    .line 1322
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->drawDragAndDrop()V

    .line 1324
    :cond_b
    iput-boolean v8, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mActionCancel:Z

    .line 1325
    invoke-direct {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->makeButtonPopupLayout()V

    .line 1328
    .end local v2    # "point":Landroid/graphics/Point;
    :cond_c
    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1329
    .local v1, "locale":Ljava/util/Locale;
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCurrentLanguage:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCurrentLanguage:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1330
    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCurrentLanguage:Ljava/lang/String;

    .line 1331
    invoke-direct {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->makeButtonPopupLayout()V

    goto/16 :goto_2

    .line 1313
    .end local v1    # "locale":Ljava/util/Locale;
    .restart local v2    # "point":Landroid/graphics/Point;
    :cond_d
    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->drawCenterBar(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 1315
    :catch_0
    move-exception v0

    .line 1316
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 1319
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_e
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->drawCenterBarButton(II)V

    goto :goto_3
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2775
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarEventReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 2777
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 2780
    :goto_0
    iput-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarEventReceiver:Landroid/content/BroadcastReceiver;

    .line 2782
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mInputMethodChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 2784
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mInputMethodChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2787
    :goto_1
    iput-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mInputMethodChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 2789
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 2791
    :try_start_2
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2794
    :goto_2
    iput-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 2798
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->cancelHideButtonTimer()V

    .line 2800
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_3

    .line 2801
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 2803
    :cond_3
    return-void

    .line 2792
    :catch_0
    move-exception v0

    goto :goto_2

    .line 2785
    :catch_1
    move-exception v0

    goto :goto_1

    .line 2778
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 1338
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 1337
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;
    .param p2, "arg1"    # Landroid/view/MotionEvent;
    .param p3, "arg2"    # F
    .param p4, "arg3"    # F

    .prologue
    .line 1340
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 1336
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 1339
    const/4 v0, 0x0

    return v0
.end method

.method public refreshWindow(I)V
    .locals 1
    .param p1, "arrageMode"    # I

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBar:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 396
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->setCenterBarViewsVisibility(I)V

    .line 398
    :cond_0
    return-void
.end method

.method public removeDragAndDrop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 566
    const-string v0, "CenterBarWindow"

    const-string v1, "Remove drag and drop center bar image"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    iput-boolean v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mIsDragMode:Z

    .line 570
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBar:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 571
    const-string v0, "CenterBarWindow"

    const-string v1, "CenterBar is null, so return."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    :goto_0
    return-void

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a04ea

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    .line 575
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v0, v2}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getCenterBarPoint(I)Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    .line 576
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->drawCenterBar(II)V

    .line 577
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBar:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 578
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBar:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 579
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBar:Landroid/widget/ImageView;

    const v1, 0x7f0202b1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public resetVariables(I)V
    .locals 3
    .param p1, "arrageMode"    # I

    .prologue
    const/4 v2, 0x0

    .line 447
    const-string v0, "CenterBarWindow"

    const-string v1, "resetVariables"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBar:Landroid/widget/ImageView;

    .line 450
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarDirection:I

    .line 451
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mIsFirst:Z

    .line 452
    iput-boolean v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mIsShowButton:Z

    .line 453
    iput v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchStartX:I

    .line 454
    iput v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchStartY:I

    .line 455
    return-void
.end method

.method public setCenterBarViewsVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 785
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBar:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 786
    return-void
.end method

.method public setFocusedZoneInfo(I)V
    .locals 3
    .param p1, "focusZoneInfo"    # I

    .prologue
    const/4 v1, 0x0

    .line 758
    if-eqz p1, :cond_0

    .line 759
    iget v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    if-eq v2, p1, :cond_1

    const/4 v0, 0x1

    .line 760
    .local v0, "focusZoneChanged":Z
    :goto_0
    iput p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    .line 762
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBar:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mIsShowButton:Z

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 764
    invoke-virtual {p0, v1}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->hideButtonsPopupWindow(Z)V

    .line 767
    .end local v0    # "focusZoneChanged":Z
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 759
    goto :goto_0
.end method

.method public setImageToImageView(Z)V
    .locals 8
    .param p1, "isPress"    # Z

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const v5, 0x7f0202b1

    .line 505
    const-string v3, "CenterBarWindow"

    const-string v4, "setImageToImageView"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mWindowCenterBar:Landroid/view/Window;

    if-nez v3, :cond_1

    .line 546
    :cond_0
    :goto_0
    return-void

    .line 509
    :cond_1
    iget-boolean v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mIsDragMode:Z

    if-eqz v3, :cond_2

    .line 510
    const-string v3, "CenterBarWindow"

    const-string v4, "Drag mode. Do not set ImageView."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 514
    :cond_2
    iget-boolean v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAnimationPlaying:Z

    if-nez v3, :cond_0

    .line 520
    const/4 v2, 0x1

    .line 521
    .local v2, "visible":Z
    iget-boolean v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mIsCenterBarFixed:Z

    if-eqz v3, :cond_3

    .line 522
    const/4 v2, 0x0

    .line 525
    :cond_3
    invoke-static {}, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->getSealedState()Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x1b9

    invoke-static {v3}, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->getKnoxSealedMultiWindowFixedState(I)I

    move-result v3

    if-ne v3, v6, :cond_4

    .line 527
    const/4 v2, 0x0

    .line 531
    :cond_4
    if-nez v2, :cond_5

    .line 532
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mWindowCenterBar:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 534
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mWindowCenterBar:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 535
    new-array v0, v7, [Landroid/graphics/drawable/Drawable;

    .line 536
    .local v0, "layersLand":[Landroid/graphics/drawable/Drawable;
    new-array v1, v7, [Landroid/graphics/drawable/Drawable;

    .line 539
    .local v1, "layersPort":[Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v0, v6

    .line 540
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v6

    .line 541
    iput v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mLastBackgroundPortait:I

    .line 542
    iput v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mLastBackgroundLandscape:I

    .line 544
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBar:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setView(Landroid/view/View;)V
    .locals 2
    .param p1, "viewForLayout"    # Landroid/view/View;

    .prologue
    .line 401
    const-string v0, "CenterBarWindow"

    const-string v1, "setView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iput-object p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mViewForLayout:Landroid/view/View;

    .line 403
    return-void
.end method

.method public setWindow(Landroid/view/Window;I)V
    .locals 4
    .param p1, "window"    # Landroid/view/Window;
    .param p2, "arrageMode"    # I

    .prologue
    .line 375
    const-string v0, "CenterBarWindow"

    const-string v1, "setWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iput-object p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mWindowCenterBar:Landroid/view/Window;

    .line 379
    const-string v0, "CenterBarWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWindow : mDisplayWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mDisplayHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const-string v0, "CenterBarWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWindow : mDisplayOrientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const-string v0, "CenterBarWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CenterBarWindow : mTouchEventX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchEventX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mTouchEventY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchEventY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-boolean v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mIsFirst:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 384
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$CenterBarGestureListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$CenterBarGestureListener;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarGestureDetector:Landroid/view/GestureDetector;

    .line 385
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mIsFirst:Z

    .line 388
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->makeCenterBarLayout()V

    .line 389
    invoke-direct {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->setCenterBarPoint()V

    .line 391
    iget v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchEventX:I

    iget v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchEventY:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->drawCenterBar(II)V

    .line 392
    return-void
.end method

.method public updateCenterBarPoint(Landroid/graphics/Point;)V
    .locals 2
    .param p1, "centerPoint"    # Landroid/graphics/Point;

    .prologue
    .line 774
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 775
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->y:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 778
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->checkSealedFixedWindow(Z)V

    .line 779
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->drawCenterBar(II)V

    .line 782
    return-void
.end method
