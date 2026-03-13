.class public Lcom/android/systemui/qs/QSEditPanel;
.super Landroid/widget/FrameLayout;
.source "QSEditPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;,
        Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;,
        Lcom/android/systemui/qs/QSEditPanel$MessageObject;,
        Lcom/android/systemui/qs/QSEditPanel$TileRecord;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "QSEditPanel"

.field private static final TAG_ACTIVE:I = 0x0

.field private static final TAG_AVAILABLE:I = 0x1

.field private static mDiagnosticLogs:Z


# instance fields
.field private final FIRST_AVAILABLE_BUTTON_ID:I

.field private final MAX_ACTIVE_BUTTONS_TABLET:I

.field private final MAX_ACTIVE_BUTTONS_ZERO:I

.field private final MSG_HANDLE_ACTION_DROP:I

.field private final MSG_HANDLE_ANIMATE_BUTTONS_ACTIVE_TO_AVAILABLE:I

.field private final MSG_HANDLE_ANIMATE_BUTTONS_AVAILABLE_TO_ACTIVE:I

.field private final MSG_HANDLE_ANIMATE_BUTTONS_EMPTY_ACTIVE_TO_AVAILABLE:I

.field private final MSG_HANDLE_ANIMATE_BUTTONS_EMPTY_AVAILABLE_TO_ACTIVE:I

.field private final MSG_HANDLE_ANIMATE_BUTTONS_EMPTY_SAME_AREA:I

.field private final MSG_HANDLE_ANIMATE_BUTTONS_LEFT:I

.field private final MSG_HANDLE_ANIMATE_BUTTONS_RIGHT:I

.field private final MSG_HANDLE_ANIMATE_MAX_ACTIVE_TO_AVAILABLE:I

.field private final MSG_HANDLE_ANIMATE_MAX_AVAILABLE_TO_ACTIVE:I

.field private final MSG_HANDLE_POST_ONCONFIGURATIONCHANGED:I

.field private final MSG_HANDLE_POST_REFRESH_VIEW:I

.field private final MSG_HANDLE_UPDATE_VIEW_STATE:I

.field protected REORDERING_REORDER_REPOSITION_DURATION:I

.field protected SCROLLVIEW_ANIMATION_DURATION:I

.field private mActiveAppsMaxNum:I

.field private mActiveAppsMinNum:I

.field private mActiveAppsNum:I

.field private mActiveButtonContainer:Landroid/widget/FrameLayout;

.field private mActiveContainerParent:Landroid/widget/LinearLayout;

.field private mActiveTileCount:I

.field private mAnimMaxActiveToAvailable:Landroid/animation/AnimatorSet;

.field private mAnimMaxAvailableToActive:Landroid/animation/AnimatorSet;

.field private mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

.field private mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

.field private mAvailableButtonContainer:Landroid/widget/FrameLayout;

.field private mAvailableContainerParent:Landroid/widget/LinearLayout;

.field private mAvailableTileCount:I

.field private mCellHeight:I

.field private mCellWidth:I

.field private final mContentObserver:Landroid/database/ContentObserver;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCrossIconWidth:I

.field private mCurrentOrientation:I

.field private mDefaultDisplay:Landroid/view/Display;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDragStart:Z

.field private mEditSummary:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mHorizontalGap:I

.field private mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

.field private mIconMarginTop:I

.field private mIconWidth:I

.field private mIdxGap:I

.field private mIsActiveAdded:Z

.field private mIsDroppedOnView:Z

.field private mLocale:Ljava/util/Locale;

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mLongClickedBg:Landroid/view/View;

.field private mLongClickedIdx:I

.field private mLongClickedView:Landroid/widget/FrameLayout;

.field private mMaxActiveToAvailableEnabled:Z

.field private mNumColumns:I

.field private mPrvLongClickedBg:Landroid/view/View;

.field private mQconnectCheckBox:Landroid/widget/CompoundButton;

.field private mQconnectGroup:Landroid/widget/LinearLayout;

.field private mRecords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/qs/QSEditPanel$TileRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollContainer:Landroid/widget/ScrollView;

.field private mSfinderCheckBox:Landroid/widget/CompoundButton;

.field private mSfinderGroup:Landroid/widget/LinearLayout;

.field private mStartLongClickedIdx:I

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mToast:Landroid/widget/Toast;

.field private mTouchedIdx:I

.field private mVerticalGap:I

.field mfakePanelDragListener:Landroid/view/View$OnDragListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1298
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/qs/QSEditPanel;->mDiagnosticLogs:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 306
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/QSEditPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 307
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v7, 0xe

    const/4 v6, -0x2

    const/16 v5, 0xa

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 310
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveAppsMinNum:I

    .line 89
    iput v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveAppsMaxNum:I

    .line 91
    iput v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveAppsNum:I

    .line 93
    iput v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    .line 101
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mRecords:Ljava/util/HashMap;

    .line 103
    iput-boolean v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mDragStart:Z

    .line 109
    iput v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mTouchedIdx:I

    .line 115
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mCurrentOrientation:I

    .line 117
    iput v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveTileCount:I

    .line 119
    iput v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mAvailableTileCount:I

    .line 121
    iput-boolean v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mIsActiveAdded:Z

    .line 123
    const/16 v1, 0x64

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->MSG_HANDLE_UPDATE_VIEW_STATE:I

    .line 125
    const/16 v1, 0x65

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->MSG_HANDLE_ANIMATE_BUTTONS_LEFT:I

    .line 127
    const/16 v1, 0x66

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->MSG_HANDLE_ANIMATE_BUTTONS_RIGHT:I

    .line 129
    const/16 v1, 0x67

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->MSG_HANDLE_ANIMATE_BUTTONS_ACTIVE_TO_AVAILABLE:I

    .line 131
    const/16 v1, 0x68

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->MSG_HANDLE_ANIMATE_BUTTONS_AVAILABLE_TO_ACTIVE:I

    .line 133
    const/16 v1, 0x69

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->MSG_HANDLE_ANIMATE_BUTTONS_EMPTY_SAME_AREA:I

    .line 135
    const/16 v1, 0x6a

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->MSG_HANDLE_ANIMATE_BUTTONS_EMPTY_ACTIVE_TO_AVAILABLE:I

    .line 137
    const/16 v1, 0x6b

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->MSG_HANDLE_ANIMATE_BUTTONS_EMPTY_AVAILABLE_TO_ACTIVE:I

    .line 139
    const/16 v1, 0x6c

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->MSG_HANDLE_ANIMATE_MAX_AVAILABLE_TO_ACTIVE:I

    .line 141
    const/16 v1, 0x6d

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->MSG_HANDLE_ANIMATE_MAX_ACTIVE_TO_AVAILABLE:I

    .line 143
    const/16 v1, 0x6e

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->MSG_HANDLE_ACTION_DROP:I

    .line 145
    const/16 v1, 0x6f

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->MSG_HANDLE_POST_REFRESH_VIEW:I

    .line 147
    const/16 v1, 0x70

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->MSG_HANDLE_POST_ONCONFIGURATIONCHANGED:I

    .line 150
    iput v5, p0, Lcom/android/systemui/qs/QSEditPanel;->MAX_ACTIVE_BUTTONS_ZERO:I

    .line 152
    iput v7, p0, Lcom/android/systemui/qs/QSEditPanel;->MAX_ACTIVE_BUTTONS_TABLET:I

    .line 154
    const/16 v1, 0x65

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->FIRST_AVAILABLE_BUTTON_ID:I

    .line 169
    const/16 v1, 0x258

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->SCROLLVIEW_ANIMATION_DURATION:I

    .line 172
    const/16 v1, 0x118

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->REORDERING_REORDER_REPOSITION_DURATION:I

    .line 255
    new-instance v1, Lcom/android/systemui/qs/QSEditPanel$1;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/qs/QSEditPanel$1;-><init>(Lcom/android/systemui/qs/QSEditPanel;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    .line 1079
    new-instance v1, Lcom/android/systemui/qs/QSEditPanel$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSEditPanel$6;-><init>(Lcom/android/systemui/qs/QSEditPanel;)V

    iput-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 1137
    iput-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mPrvLongClickedBg:Landroid/view/View;

    .line 1139
    iput-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedBg:Landroid/view/View;

    .line 1157
    iput-boolean v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mIsDroppedOnView:Z

    .line 1159
    new-instance v1, Lcom/android/systemui/qs/QSEditPanel$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSEditPanel$7;-><init>(Lcom/android/systemui/qs/QSEditPanel;)V

    iput-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mfakePanelDragListener:Landroid/view/View$OnDragListener;

    .line 1324
    iput-boolean v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mMaxActiveToAvailableEnabled:Z

    .line 1896
    iput-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mLocale:Ljava/util/Locale;

    .line 1928
    new-instance v1, Lcom/android/systemui/qs/QSEditPanel$8;

    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/qs/QSEditPanel$8;-><init>(Lcom/android/systemui/qs/QSEditPanel;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mContentObserver:Landroid/database/ContentObserver;

    .line 311
    iput-object p1, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    .line 312
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 313
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mContentResolver:Landroid/content/ContentResolver;

    .line 314
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 315
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mDefaultDisplay:Landroid/view/Display;

    .line 316
    const v1, 0x7f0e004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveAppsMinNum:I

    .line 317
    const v1, 0x7f0e004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveAppsMaxNum:I

    .line 318
    const v1, 0x7f0a0445

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mCellWidth:I

    .line 319
    const v1, 0x7f0a0446

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mCellHeight:I

    .line 320
    const v1, 0x7f0a02ee

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mIconWidth:I

    .line 321
    const v1, 0x7f0a044c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mCrossIconWidth:I

    .line 322
    const v1, 0x7f0a02f9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mIconMarginTop:I

    .line 323
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mIsTablet:Z

    if-eqz v1, :cond_0

    .line 324
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "notification_panel_active_number_of_apps"

    invoke-static {v1, v2, v7, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveAppsNum:I

    .line 328
    :goto_0
    new-instance v1, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-direct {v1, p0, v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;-><init>(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$1;)V

    iput-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    .line 329
    new-instance v1, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-direct {v1, p0, v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;-><init>(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$1;)V

    iput-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    .line 331
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/qs/QSEditPanel;->mDiagnosticLogs:Z

    .line 333
    return-void

    .line 326
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "notification_panel_active_number_of_apps"

    invoke-static {v1, v2, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveAppsNum:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;
    .param p1, "x1"    # Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSEditPanel;->handleAnimateLeft(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;
    .param p1, "x1"    # Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSEditPanel;->handleAnimateRight(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/QSEditPanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->handleDelayedOnConfigurationChanged()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/QSEditPanel;)Landroid/widget/CompoundButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mSfinderCheckBox:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/QSEditPanel;)Landroid/widget/CompoundButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mQconnectCheckBox:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/qs/QSEditPanel;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;
    .param p1, "x1"    # Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSEditPanel;->handleAnimateActiveToAvailable(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/systemui/qs/QSEditPanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->prepareViewsToAnimate()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/systemui/qs/QSEditPanel;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/systemui/qs/QSEditPanel;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;
    .param p1, "x1"    # Landroid/widget/FrameLayout;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedView:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/systemui/qs/QSEditPanel;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 79
    iget v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedIdx:I

    return v0
.end method

.method static synthetic access$2202(Lcom/android/systemui/qs/QSEditPanel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;
    .param p1, "x1"    # I

    .prologue
    .line 79
    iput p1, p0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedIdx:I

    return p1
.end method

.method static synthetic access$2300(Lcom/android/systemui/qs/QSEditPanel;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/systemui/qs/QSEditPanel;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 79
    iget v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/systemui/qs/QSEditPanel;)Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/systemui/qs/QSEditPanel;)Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/systemui/qs/QSEditPanel;ILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/ArrayList;
    .param p3, "x3"    # Ljava/util/ArrayList;

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/QSEditPanel;->showWhiteCircle(ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/systemui/qs/QSEditPanel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mDragStart:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/android/systemui/qs/QSEditPanel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSEditPanel;->mDragStart:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/systemui/qs/QSEditPanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->refreshViews()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;
    .param p1, "x1"    # Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSEditPanel;->handleAnimateAvailableToActive(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/systemui/qs/QSEditPanel;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 79
    iget v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mTouchedIdx:I

    return v0
.end method

.method static synthetic access$3202(Lcom/android/systemui/qs/QSEditPanel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;
    .param p1, "x1"    # I

    .prologue
    .line 79
    iput p1, p0, Lcom/android/systemui/qs/QSEditPanel;->mTouchedIdx:I

    return p1
.end method

.method static synthetic access$3300(Lcom/android/systemui/qs/QSEditPanel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mIsDroppedOnView:Z

    return v0
.end method

.method static synthetic access$3302(Lcom/android/systemui/qs/QSEditPanel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSEditPanel;->mIsDroppedOnView:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/android/systemui/qs/QSEditPanel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->showToastPopup()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/android/systemui/qs/QSEditPanel;Ljava/util/ArrayList;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # I

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSEditPanel;->isEmptyPanel(Ljava/util/ArrayList;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/android/systemui/qs/QSEditPanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->animateViews()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/systemui/qs/QSEditPanel;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/systemui/qs/QSEditPanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->scrollPanleViews()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/systemui/qs/QSEditPanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->animateEmptyPanelViews()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;
    .param p1, "x1"    # Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSEditPanel;->handleAnimateEmptySameArea(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V

    return-void
.end method

.method static synthetic access$4002(Lcom/android/systemui/qs/QSEditPanel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;
    .param p1, "x1"    # I

    .prologue
    .line 79
    iput p1, p0, Lcom/android/systemui/qs/QSEditPanel;->mStartLongClickedIdx:I

    return p1
.end method

.method static synthetic access$4102(Lcom/android/systemui/qs/QSEditPanel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSEditPanel;->mMaxActiveToAvailableEnabled:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;
    .param p1, "x1"    # Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSEditPanel;->handleAnimateEmptyActiveToAvailable(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;
    .param p1, "x1"    # Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSEditPanel;->handleAnimateEmptyAvailableToActive(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;
    .param p1, "x1"    # Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSEditPanel;->handleAnimateMaxAvailableToActive(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;
    .param p1, "x1"    # Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSEditPanel;->handleAnimateMaxActiveToAvailable(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/QSEditPanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->handleActionDropView()V

    return-void
.end method

.method private addBackgroundButtonViews(IILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/FrameLayout;)V
    .locals 20
    .param p1, "mode"    # I
    .param p2, "totalPanelLines"    # I
    .param p5, "container"    # Landroid/widget/FrameLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/FrameLayout;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/widget/FrameLayout;",
            ")V"
        }
    .end annotation

    .prologue
    .line 896
    .local p3, "overlayedLayoutList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/FrameLayout;>;"
    .local p4, "panelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v17, "QSEditPanel"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "addBackgroundButtonViews() mode="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", mNumColumns="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", totalPanelLines="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "layout_inflater"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 899
    .local v7, "inflater":Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    .line 900
    .local v2, "columnNumber":I
    const/4 v15, 0x0

    .line 901
    .local v15, "rowNumber":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    move/from16 v17, v0

    mul-int v16, v17, p2

    .line 902
    .local v16, "totalPanelNum":I
    if-nez p1, :cond_3

    const/4 v5, 0x0

    .line 903
    .local v5, "gap":I
    :goto_0
    const/4 v6, 0x0

    .line 904
    .local v6, "idx":I
    const v13, 0x7f040069

    .line 905
    .local v13, "panelFakeViewLayouId":I
    const v14, 0x7f040072

    .line 906
    .local v14, "panelOverlayedViewLayouId":I
    const/4 v6, 0x0

    :goto_1
    move/from16 v0, v16

    if-ge v6, v0, :cond_8

    .line 907
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v7, v13, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    .line 908
    .local v4, "fakePanel":Landroid/widget/FrameLayout;
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v7, v14, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout;

    .line 909
    .local v12, "overLayedView":Landroid/widget/FrameLayout;
    const v17, 0x7f0f025d

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 910
    .local v8, "longClickedRoundBg":Landroid/widget/ImageView;
    const v17, 0x7f0f025e

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 912
    .local v3, "crossIcon":Landroid/view/View;
    add-int v17, v6, v5

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 915
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v17, -0x2

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v10, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 916
    .local v10, "lpFake":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    move/from16 v17, v0

    div-int v17, v2, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mCellHeight:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mVerticalGap:I

    move/from16 v19, v0

    add-int v18, v18, v19

    mul-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 917
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mCellHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v10, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 918
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mCellWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mHorizontalGap:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v10, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 920
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    move/from16 v17, v0

    rem-int v17, v2, v17

    iget v0, v10, Landroid/widget/FrameLayout$LayoutParams;->width:I

    move/from16 v18, v0

    mul-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mHorizontalGap:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    sub-int v17, v17, v18

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 921
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v6}, Lcom/android/systemui/qs/QSEditPanel;->isEmptyPanel(Ljava/util/ArrayList;I)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 922
    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 935
    :cond_0
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mfakePanelDragListener:Landroid/view/View$OnDragListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 938
    invoke-virtual {v8}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 939
    .local v9, "lp":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mCellWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mIconWidth:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    div-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 940
    invoke-virtual {v12, v8, v9}, Landroid/widget/FrameLayout;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 943
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v17, -0x2

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v11, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 944
    .local v11, "lpOverlayed":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mCellWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mHorizontalGap:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mHorizontalGap:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mCrossIconWidth:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    div-int/lit8 v18, v18, 0x2

    sub-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v11, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 946
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    move/from16 v17, v0

    rem-int v17, v2, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mCellWidth:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mHorizontalGap:I

    move/from16 v19, v0

    add-int v18, v18, v19

    mul-int v17, v17, v18

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 947
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    move/from16 v17, v0

    div-int v17, v2, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mCellHeight:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mVerticalGap:I

    move/from16 v19, v0

    add-int v18, v18, v19

    mul-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v11, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 949
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    move/from16 v17, v0

    div-int v17, v2, v17

    add-int/lit8 v18, p2, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mCellHeight:I

    move/from16 v17, v0

    :goto_3
    move/from16 v0, v17

    iput v0, v11, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 951
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mCurrentOrientation:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v17

    if-nez v17, :cond_1

    .line 952
    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->height:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0a044e

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v11, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 954
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mCurrentOrientation:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v17

    if-nez v17, :cond_2

    .line 955
    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->height:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0a044f

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v11, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 958
    :cond_2
    move-object/from16 v0, p5

    invoke-virtual {v0, v12, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 959
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 961
    move-object/from16 v0, p5

    invoke-virtual {v0, v4, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 962
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 964
    add-int/lit8 v2, v2, 0x1

    .line 906
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 902
    .end local v3    # "crossIcon":Landroid/view/View;
    .end local v4    # "fakePanel":Landroid/widget/FrameLayout;
    .end local v5    # "gap":I
    .end local v6    # "idx":I
    .end local v8    # "longClickedRoundBg":Landroid/widget/ImageView;
    .end local v9    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v10    # "lpFake":Landroid/widget/FrameLayout$LayoutParams;
    .end local v11    # "lpOverlayed":Landroid/widget/FrameLayout$LayoutParams;
    .end local v12    # "overLayedView":Landroid/widget/FrameLayout;
    .end local v13    # "panelFakeViewLayouId":I
    .end local v14    # "panelOverlayedViewLayouId":I
    :cond_3
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    goto/16 :goto_0

    .line 925
    .restart local v3    # "crossIcon":Landroid/view/View;
    .restart local v4    # "fakePanel":Landroid/widget/FrameLayout;
    .restart local v5    # "gap":I
    .restart local v6    # "idx":I
    .restart local v8    # "longClickedRoundBg":Landroid/widget/ImageView;
    .restart local v10    # "lpFake":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v12    # "overLayedView":Landroid/widget/FrameLayout;
    .restart local v13    # "panelFakeViewLayouId":I
    .restart local v14    # "panelOverlayedViewLayouId":I
    :cond_4
    add-int/lit8 v17, v15, 0x1

    rem-int v17, v17, p2

    if-eqz v17, :cond_5

    if-nez p1, :cond_6

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_6

    .line 926
    :cond_5
    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 929
    :cond_6
    add-int/lit8 v17, v2, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    move/from16 v18, v0

    rem-int v17, v17, v18

    if-nez v17, :cond_0

    if-eqz v2, :cond_0

    .line 930
    add-int/lit8 v15, v15, 0x1

    .line 931
    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 949
    .restart local v9    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v11    # "lpOverlayed":Landroid/widget/FrameLayout$LayoutParams;
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mCellHeight:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mVerticalGap:I

    move/from16 v18, v0

    add-int v17, v17, v18

    goto/16 :goto_3

    .line 967
    .end local v3    # "crossIcon":Landroid/view/View;
    .end local v4    # "fakePanel":Landroid/widget/FrameLayout;
    .end local v8    # "longClickedRoundBg":Landroid/widget/ImageView;
    .end local v9    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v10    # "lpFake":Landroid/widget/FrameLayout$LayoutParams;
    .end local v11    # "lpOverlayed":Landroid/widget/FrameLayout$LayoutParams;
    .end local v12    # "overLayedView":Landroid/widget/FrameLayout;
    :cond_8
    return-void
.end method

.method private addForegroundButtonViews(IILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/FrameLayout;)V
    .locals 28
    .param p1, "mode"    # I
    .param p2, "totalPanelLines"    # I
    .param p5, "container"    # Landroid/widget/FrameLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/FrameLayout;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/widget/FrameLayout;",
            ")V"
        }
    .end annotation

    .prologue
    .line 797
    .local p3, "panelLayoutList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/FrameLayout;>;"
    .local p4, "panelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v24, "QSEditPanel"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "addForegroundButtonViews() mode="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", mNumColumns="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", totalPanelLines="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const-string v25, "layout_inflater"

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/LayoutInflater;

    .line 800
    .local v10, "inflater":Landroid/view/LayoutInflater;
    const/4 v5, 0x0

    .line 801
    .local v5, "columnNumber":I
    const/16 v20, 0x0

    .line 802
    .local v20, "rowNumber":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    move/from16 v24, v0

    mul-int v23, v24, p2

    .line 803
    .local v23, "totalPanelNum":I
    if-nez p1, :cond_0

    const/4 v8, 0x0

    .line 804
    .local v8, "gap":I
    :goto_0
    const/4 v9, 0x0

    .line 806
    .local v9, "idx":I
    const v17, 0x7f040071

    .line 807
    .local v17, "panelViewLayouId":I
    const/4 v9, 0x0

    :goto_1
    move/from16 v0, v23

    if-ge v9, v0, :cond_7

    .line 808
    const/16 v24, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/FrameLayout;

    .line 809
    .local v15, "panelView":Landroid/widget/FrameLayout;
    const v24, 0x7f0f0259

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/FrameLayout;

    .line 810
    .local v16, "panelViewFocus":Landroid/widget/FrameLayout;
    const v24, 0x7f0f025a

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 811
    .local v12, "panel":Landroid/widget/LinearLayout;
    const v24, 0x7f0f025b

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 812
    .local v13, "panelImageView":Landroid/widget/ImageView;
    sget-boolean v24, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->grayScaleModeEnabled:Z

    if-eqz v24, :cond_1

    const v24, 0x7f020754

    :goto_2
    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 815
    const v24, 0x7f0f025c

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 817
    .local v14, "panelTextView":Landroid/widget/TextView;
    add-int v24, v9, v8

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 819
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v9}, Lcom/android/systemui/qs/QSEditPanel;->isEmptyPanel(Ljava/util/ArrayList;I)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 820
    const/16 v24, 0x4

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 821
    const/16 v24, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 864
    :goto_3
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v24, -0x2

    const/16 v25, -0x2

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v11, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 865
    .local v11, "lp":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mCellWidth:I

    move/from16 v24, v0

    move/from16 v0, v24

    iput v0, v11, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 867
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    move/from16 v24, v0

    rem-int v24, v5, v24

    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->width:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mHorizontalGap:I

    move/from16 v26, v0

    add-int v25, v25, v26

    mul-int v24, v24, v25

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 868
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    move/from16 v24, v0

    div-int v24, v5, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mCellHeight:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mVerticalGap:I

    move/from16 v26, v0

    add-int v25, v25, v26

    mul-int v24, v24, v25

    move/from16 v0, v24

    iput v0, v11, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 869
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mCellHeight:I

    move/from16 v24, v0

    move/from16 v0, v24

    iput v0, v11, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 871
    move-object/from16 v0, p5

    invoke-virtual {v0, v15, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 872
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 874
    add-int/lit8 v5, v5, 0x1

    .line 807
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 803
    .end local v8    # "gap":I
    .end local v9    # "idx":I
    .end local v11    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v12    # "panel":Landroid/widget/LinearLayout;
    .end local v13    # "panelImageView":Landroid/widget/ImageView;
    .end local v14    # "panelTextView":Landroid/widget/TextView;
    .end local v15    # "panelView":Landroid/widget/FrameLayout;
    .end local v16    # "panelViewFocus":Landroid/widget/FrameLayout;
    .end local v17    # "panelViewLayouId":I
    :cond_0
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    goto/16 :goto_0

    .line 812
    .restart local v8    # "gap":I
    .restart local v9    # "idx":I
    .restart local v12    # "panel":Landroid/widget/LinearLayout;
    .restart local v13    # "panelImageView":Landroid/widget/ImageView;
    .restart local v15    # "panelView":Landroid/widget/FrameLayout;
    .restart local v16    # "panelViewFocus":Landroid/widget/FrameLayout;
    .restart local v17    # "panelViewLayouId":I
    :cond_1
    const v24, 0x7f020751

    goto/16 :goto_2

    .line 823
    .restart local v14    # "panelTextView":Landroid/widget/TextView;
    :cond_2
    const/16 v21, 0x0

    .line 825
    .local v21, "tempTR":Lcom/android/systemui/qs/QSEditPanel$TileRecord;
    if-nez p1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v9, v0, :cond_3

    .line 826
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mRecords:Ljava/util/HashMap;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "tempTR":Lcom/android/systemui/qs/QSEditPanel$TileRecord;
    check-cast v21, Lcom/android/systemui/qs/QSEditPanel$TileRecord;

    .line 828
    .restart local v21    # "tempTR":Lcom/android/systemui/qs/QSEditPanel$TileRecord;
    :cond_3
    const/16 v24, 0x1

    move/from16 v0, p1

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v9, v0, :cond_4

    .line 829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mRecords:Ljava/util/HashMap;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "tempTR":Lcom/android/systemui/qs/QSEditPanel$TileRecord;
    check-cast v21, Lcom/android/systemui/qs/QSEditPanel$TileRecord;

    .line 831
    .restart local v21    # "tempTR":Lcom/android/systemui/qs/QSEditPanel$TileRecord;
    :cond_4
    if-eqz v21, :cond_5

    .line 832
    move-object/from16 v0, v21

    iput-object v15, v0, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->viewContainer:Landroid/widget/FrameLayout;

    .line 833
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->state:Lcom/android/systemui/qs/QSTile$State;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v13}, Lcom/android/systemui/qs/QSTileView;->handleIconStateChanged(Lcom/android/systemui/qs/QSTile$State;Landroid/view/View;)V

    .line 834
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->state:Lcom/android/systemui/qs/QSTile$State;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mCellWidth:I

    move/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v14, v2}, Lcom/android/systemui/qs/QSTileView;->handleTextStateChanged(Lcom/android/systemui/qs/QSTile$State;Landroid/view/View;I)V

    .line 837
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->contentDesc:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 838
    move-object/from16 v18, v21

    .line 840
    .local v18, "r":Lcom/android/systemui/qs/QSEditPanel$TileRecord;
    new-instance v24, Lcom/android/systemui/qs/QSEditPanel$5;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/qs/QSEditPanel$5;-><init>(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$TileRecord;)V

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 849
    .end local v18    # "r":Lcom/android/systemui/qs/QSEditPanel$TileRecord;
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/qs/QSEditPanel;->getTileBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v22

    .line 850
    .local v22, "tileBackground":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v22

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    move/from16 v24, v0

    if-eqz v24, :cond_6

    .line 851
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mCellWidth:I

    move/from16 v24, v0

    div-int/lit8 v6, v24, 0x2

    .line 852
    .local v6, "cx":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mIconMarginTop:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mIconWidth:I

    move/from16 v25, v0

    div-int/lit8 v25, v25, 0x2

    add-int v7, v24, v25

    .line 853
    .local v7, "cy":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mIconWidth:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const v25, 0x3ef5c28f    # 0.48f

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v19, v0

    .line 854
    .local v19, "rad":I
    sub-int v24, v6, v19

    sub-int v25, v7, v19

    add-int v26, v6, v19

    add-int v27, v7, v19

    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 855
    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 858
    .end local v6    # "cx":I
    .end local v7    # "cy":I
    .end local v19    # "rad":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 860
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, p1

    invoke-direct {v0, v1, v9, v2}, Lcom/android/systemui/qs/QSEditPanel;->setForegroundButtonViewId(Landroid/widget/FrameLayout;II)V

    goto/16 :goto_3

    .line 876
    .end local v12    # "panel":Landroid/widget/LinearLayout;
    .end local v13    # "panelImageView":Landroid/widget/ImageView;
    .end local v14    # "panelTextView":Landroid/widget/TextView;
    .end local v15    # "panelView":Landroid/widget/FrameLayout;
    .end local v16    # "panelViewFocus":Landroid/widget/FrameLayout;
    .end local v21    # "tempTR":Lcom/android/systemui/qs/QSEditPanel$TileRecord;
    .end local v22    # "tileBackground":Landroid/graphics/drawable/Drawable;
    :cond_7
    return-void
.end method

.method private addTile(Lcom/android/systemui/qs/QSTile;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 568
    .local p1, "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    new-instance v1, Lcom/android/systemui/qs/QSEditPanel$TileRecord;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/systemui/qs/QSEditPanel$TileRecord;-><init>(Lcom/android/systemui/qs/QSEditPanel$1;)V

    .line 569
    .local v1, "r":Lcom/android/systemui/qs/QSEditPanel$TileRecord;
    iput-object p1, v1, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    .line 570
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Lcom/android/systemui/qs/QSTile;->createTileView(Landroid/content/Context;)Lcom/android/systemui/qs/QSTileView;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    .line 571
    invoke-virtual {p1}, Lcom/android/systemui/qs/QSTile;->getState()Lcom/android/systemui/qs/QSTile$State;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/qs/QSTile$State;->contentDescription:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->contentDesc:Ljava/lang/String;

    .line 572
    invoke-virtual {p1}, Lcom/android/systemui/qs/QSTile;->getState()Lcom/android/systemui/qs/QSTile$State;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->label:Ljava/lang/String;

    .line 573
    invoke-virtual {p1}, Lcom/android/systemui/qs/QSTile;->getState()Lcom/android/systemui/qs/QSTile$State;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->state:Lcom/android/systemui/qs/QSTile$State;

    .line 574
    new-instance v0, Lcom/android/systemui/qs/QSEditPanel$4;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSEditPanel$4;-><init>(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$TileRecord;)V

    .line 619
    .local v0, "callback":Lcom/android/systemui/qs/QSTile$Callback;
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/QSEditPanel;->addTileRecord(Lcom/android/systemui/qs/QSEditPanel$TileRecord;)V

    .line 620
    iget-object v2, v1, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v2, v0}, Lcom/android/systemui/qs/QSTile;->setEditCallback(Lcom/android/systemui/qs/QSTile$Callback;)V

    .line 621
    return-void
.end method

.method private addTileRecord(Lcom/android/systemui/qs/QSEditPanel$TileRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/systemui/qs/QSEditPanel$TileRecord;

    .prologue
    .line 624
    iget-object v1, p1, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Tile"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 625
    .local v0, "tileName":Ljava/lang/String;
    iget v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveTileCount:I

    iget v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveAppsNum:I

    if-ge v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mIsActiveAdded:Z

    if-nez v1, :cond_2

    .line 626
    iput-object v0, p1, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->key:Ljava/lang/String;

    .line 627
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mRecords:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v1}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 629
    iget v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveTileCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveTileCount:I

    .line 633
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mIsActiveAdded:Z

    if-eqz v1, :cond_1

    .line 634
    iput-object v0, p1, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->key:Ljava/lang/String;

    .line 635
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mRecords:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v1}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 637
    iget v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mAvailableTileCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mAvailableTileCount:I

    .line 639
    :cond_1
    return-void

    .line 630
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mIsActiveAdded:Z

    if-nez v1, :cond_0

    .line 631
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mIsActiveAdded:Z

    goto :goto_0
.end method

.method private animateEmptyPanelViews()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/16 v10, 0x6b

    const/16 v9, 0x6a

    const/16 v8, 0x69

    .line 1462
    iget v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedIdx:I

    .line 1463
    .local v1, "longClickedIdx":I
    iget v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    if-lt v1, v7, :cond_1

    .line 1464
    iget v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    sub-int/2addr v1, v7

    .line 1465
    const/4 v0, 0x1

    .line 1470
    .local v0, "fromArea":I
    :goto_0
    iget v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mTouchedIdx:I

    .line 1471
    .local v6, "touchedIdx":I
    iget v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    if-lt v6, v7, :cond_2

    .line 1472
    iget v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    sub-int/2addr v6, v7

    .line 1473
    const/4 v5, 0x1

    .line 1478
    .local v5, "toArea":I
    :goto_1
    if-ne v6, v1, :cond_3

    if-ne v5, v0, :cond_3

    .line 1514
    :cond_0
    :goto_2
    return-void

    .line 1467
    .end local v0    # "fromArea":I
    .end local v5    # "toArea":I
    .end local v6    # "touchedIdx":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "fromArea":I
    goto :goto_0

    .line 1475
    .restart local v6    # "touchedIdx":I
    :cond_2
    const/4 v5, 0x0

    .restart local v5    # "toArea":I
    goto :goto_1

    .line 1481
    :cond_3
    if-nez v5, :cond_8

    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v7}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1482
    .local v4, "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_3
    if-ne v5, v0, :cond_4

    invoke-direct {p0, v4, v6}, Lcom/android/systemui/qs/QSEditPanel;->isEmptyPanel(Ljava/util/ArrayList;I)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-direct {p0, v4, v1}, Lcom/android/systemui/qs/QSEditPanel;->isEmptyPanel(Ljava/util/ArrayList;I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1486
    :cond_4
    if-ne v5, v0, :cond_5

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-eq v1, v7, :cond_0

    .line 1490
    :cond_5
    new-instance v3, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    const/4 v7, 0x0

    invoke-direct {v3, p0, v7}, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;-><init>(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$1;)V

    .line 1491
    .local v3, "msgObj":Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;
    iput v0, v3, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->mode:I

    .line 1492
    iput v1, v3, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->longClickedIdx:I

    .line 1493
    iput v6, v3, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->touchedIdx:I

    .line 1494
    const/4 v2, 0x0

    .line 1495
    .local v2, "msg":Landroid/os/Message;
    if-ne v0, v5, :cond_9

    .line 1496
    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1497
    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 1499
    :cond_6
    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v8, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1513
    :cond_7
    :goto_4
    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 1481
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "msgObj":Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;
    .end local v4    # "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_8
    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v7}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    goto :goto_3

    .line 1501
    .restart local v2    # "msg":Landroid/os/Message;
    .restart local v3    # "msgObj":Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;
    .restart local v4    # "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_9
    if-nez v0, :cond_b

    if-ne v5, v11, :cond_b

    .line 1502
    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1503
    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 1505
    :cond_a
    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v9, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    goto :goto_4

    .line 1506
    :cond_b
    if-ne v0, v11, :cond_7

    if-nez v5, :cond_7

    .line 1507
    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1508
    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 1510
    :cond_c
    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v10, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    goto :goto_4
.end method

.method private animateScrollViews(II)V
    .locals 7
    .param p1, "currentPositionY"    # I
    .param p2, "destinationY"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1449
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1450
    .local v0, "anim":Landroid/animation/AnimatorSet;
    new-array v1, v6, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mScrollContainer:Landroid/widget/ScrollView;

    const-string v3, "scrollY"

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput p1, v4, v5

    aput p2, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1451
    iget v1, p0, Lcom/android/systemui/qs/QSEditPanel;->SCROLLVIEW_ANIMATION_DURATION:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1452
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1453
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mScrollContainer:Landroid/widget/ScrollView;

    invoke-virtual {v1, v5, p2}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 1454
    return-void
.end method

.method private animateViews()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/16 v12, 0x68

    const/16 v11, 0x67

    const/16 v10, 0x66

    const/16 v9, 0x65

    .line 1521
    iget v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedIdx:I

    .line 1522
    .local v1, "longClickedIdx":I
    iget v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    if-lt v1, v8, :cond_0

    .line 1523
    iget v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    sub-int/2addr v1, v8

    .line 1524
    const/4 v0, 0x1

    .line 1529
    .local v0, "fromArea":I
    :goto_0
    iget v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mTouchedIdx:I

    .line 1530
    .local v7, "touchedIdx":I
    iget v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    if-lt v7, v8, :cond_1

    .line 1531
    iget v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    sub-int/2addr v7, v8

    .line 1532
    const/4 v6, 0x1

    .line 1536
    .local v6, "toArea":I
    :goto_1
    if-ne v7, v1, :cond_2

    if-ne v6, v0, :cond_2

    .line 1574
    :goto_2
    return-void

    .line 1526
    .end local v0    # "fromArea":I
    .end local v6    # "toArea":I
    .end local v7    # "touchedIdx":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "fromArea":I
    goto :goto_0

    .line 1534
    .restart local v7    # "touchedIdx":I
    :cond_1
    const/4 v6, 0x0

    .restart local v6    # "toArea":I
    goto :goto_1

    .line 1539
    :cond_2
    if-nez v6, :cond_5

    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v8}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v5

    .line 1540
    .local v5, "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_3
    if-nez v6, :cond_6

    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v8}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1541
    .local v4, "overlayedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/FrameLayout;>;"
    :goto_4
    invoke-direct {p0, v7, v5, v4}, Lcom/android/systemui/qs/QSEditPanel;->showWhiteCircle(ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1542
    new-instance v3, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    const/4 v8, 0x0

    invoke-direct {v3, p0, v8}, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;-><init>(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$1;)V

    .line 1543
    .local v3, "msgObj":Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;
    iput v0, v3, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->mode:I

    .line 1544
    iput v1, v3, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->longClickedIdx:I

    .line 1545
    iput v7, v3, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->touchedIdx:I

    .line 1546
    const/4 v2, 0x0

    .line 1548
    .local v2, "msg":Landroid/os/Message;
    if-ne v0, v6, :cond_9

    .line 1549
    if-ge v7, v1, :cond_7

    .line 1550
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1551
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 1553
    :cond_3
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v10, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1573
    :cond_4
    :goto_5
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 1539
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "msgObj":Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;
    .end local v4    # "overlayedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/FrameLayout;>;"
    .end local v5    # "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v8}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v5

    goto :goto_3

    .line 1540
    .restart local v5    # "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v8}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    goto :goto_4

    .line 1555
    .restart local v2    # "msg":Landroid/os/Message;
    .restart local v3    # "msgObj":Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;
    .restart local v4    # "overlayedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/FrameLayout;>;"
    :cond_7
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1556
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 1558
    :cond_8
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v9, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    goto :goto_5

    .line 1561
    :cond_9
    if-nez v0, :cond_b

    if-ne v6, v13, :cond_b

    .line 1562
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1563
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 1565
    :cond_a
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v11, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    goto :goto_5

    .line 1566
    :cond_b
    if-ne v0, v13, :cond_4

    if-nez v6, :cond_4

    .line 1567
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v12}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 1568
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 1570
    :cond_c
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v12, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    goto :goto_5
.end method

.method private clean()V
    .locals 1

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1132
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1133
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1134
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1135
    return-void
.end method

.method private getTileBackground()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 1061
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    const v2, 0x7f0202ec

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1062
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    return-object v0
.end method

.method private handleActionDropView()V
    .locals 2

    .prologue
    .line 1239
    const-string v0, "QSEditPanel"

    const-string v1, "handleActionDropView()"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSEditPanel;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1242
    const-string v0, "QSEditPanel"

    const-string v1, "handleActionDropView() invisible, so return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    :goto_0
    return-void

    .line 1246
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->saveButtonLists()V

    .line 1247
    sget-boolean v0, Lcom/android/systemui/qs/QSEditPanel;->mDiagnosticLogs:Z

    if-eqz v0, :cond_1

    .line 1248
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->sendDiagnosticLogs()V

    .line 1250
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->refreshViews()V

    goto :goto_0
.end method

.method private handleAnimateActiveToAvailable(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    .locals 17
    .param p1, "msg"    # Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    .prologue
    .line 1667
    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->mode:I

    .line 1668
    .local v7, "mode":I
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->longClickedIdx:I

    .line 1669
    .local v4, "longClickedIndex":I
    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->touchedIdx:I

    .line 1671
    .local v9, "touchedIndex":I
    const-string v10, "QSEditPanel"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleAnimateActiveToAvailable() mode="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", longClickedIndex="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", touchedIndex="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1674
    .local v2, "anim":Landroid/animation/AnimatorSet;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    .line 1675
    .local v6, "longClickedView":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1676
    .local v5, "longClickedString":Ljava/lang/String;
    move v3, v4

    .local v3, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ge v3, v10, :cond_0

    .line 1677
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    add-int/lit8 v11, v3, 0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 1678
    .local v8, "nextView":Landroid/view/View;
    const/4 v10, 0x1

    new-array v11, v10, [Landroid/animation/Animator;

    const/4 v12, 0x0

    const-string v13, "x"

    const/4 v10, 0x2

    new-array v14, v10, [F

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    add-int/lit8 v16, v3, 0x1

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    aput v10, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    aput v10, v14, v15

    invoke-static {v8, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v11, v12

    invoke-virtual {v2, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1679
    const/4 v10, 0x1

    new-array v11, v10, [Landroid/animation/Animator;

    const/4 v12, 0x0

    const-string v13, "y"

    const/4 v10, 0x2

    new-array v14, v10, [F

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    add-int/lit8 v16, v3, 0x1

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    aput v10, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    aput v10, v14, v15

    invoke-static {v8, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v11, v12

    invoke-virtual {v2, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1676
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 1681
    .end local v8    # "nextView":Landroid/view/View;
    :cond_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v3, v10, -0x1

    :goto_1
    if-le v3, v9, :cond_1

    .line 1682
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    add-int/lit8 v11, v3, -0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 1683
    .restart local v8    # "nextView":Landroid/view/View;
    const/4 v10, 0x1

    new-array v11, v10, [Landroid/animation/Animator;

    const/4 v12, 0x0

    const-string v13, "x"

    const/4 v10, 0x2

    new-array v14, v10, [F

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    add-int/lit8 v16, v3, -0x1

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    aput v10, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    aput v10, v14, v15

    invoke-static {v8, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v11, v12

    invoke-virtual {v2, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1684
    const/4 v10, 0x1

    new-array v11, v10, [Landroid/animation/Animator;

    const/4 v12, 0x0

    const-string v13, "y"

    const/4 v10, 0x2

    new-array v14, v10, [F

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    add-int/lit8 v16, v3, -0x1

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    aput v10, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    aput v10, v14, v15

    invoke-static {v8, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v11, v12

    invoke-virtual {v2, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1681
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_1

    .line 1686
    .end local v8    # "nextView":Landroid/view/View;
    :cond_1
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui/qs/QSEditPanel;->REORDERING_REORDER_REPOSITION_DURATION:I

    int-to-long v10, v10

    invoke-virtual {v2, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1687
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 1688
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1689
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v11}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1690
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1691
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v9, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1692
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v9, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1693
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    add-int/2addr v10, v9

    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedIdx:I

    .line 1694
    return-void
.end method

.method private handleAnimateAvailableToActive(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    .locals 17
    .param p1, "msg"    # Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    .prologue
    .line 1700
    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->mode:I

    .line 1701
    .local v7, "mode":I
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->longClickedIdx:I

    .line 1702
    .local v4, "longClickedIndex":I
    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->touchedIdx:I

    .line 1704
    .local v9, "touchedIndex":I
    const-string v10, "QSEditPanel"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleAnimateAvailableToActive() mode="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", longClickedIndex="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", touchedIndex="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1707
    .local v2, "anim":Landroid/animation/AnimatorSet;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    .line 1708
    .local v6, "longClickedView":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1709
    .local v5, "longClickedString":Ljava/lang/String;
    move v3, v4

    .local v3, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ge v3, v10, :cond_0

    .line 1710
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    add-int/lit8 v11, v3, 0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 1711
    .local v8, "nextView":Landroid/view/View;
    const/4 v10, 0x1

    new-array v11, v10, [Landroid/animation/Animator;

    const/4 v12, 0x0

    const-string v13, "x"

    const/4 v10, 0x2

    new-array v14, v10, [F

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    add-int/lit8 v16, v3, 0x1

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    aput v10, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    aput v10, v14, v15

    invoke-static {v8, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v11, v12

    invoke-virtual {v2, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1712
    const/4 v10, 0x1

    new-array v11, v10, [Landroid/animation/Animator;

    const/4 v12, 0x0

    const-string v13, "y"

    const/4 v10, 0x2

    new-array v14, v10, [F

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    add-int/lit8 v16, v3, 0x1

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    aput v10, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    aput v10, v14, v15

    invoke-static {v8, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v11, v12

    invoke-virtual {v2, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1709
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 1714
    .end local v8    # "nextView":Landroid/view/View;
    :cond_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v3, v10, -0x1

    :goto_1
    if-le v3, v9, :cond_1

    .line 1715
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    add-int/lit8 v11, v3, -0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 1716
    .restart local v8    # "nextView":Landroid/view/View;
    const/4 v10, 0x1

    new-array v11, v10, [Landroid/animation/Animator;

    const/4 v12, 0x0

    const-string v13, "x"

    const/4 v10, 0x2

    new-array v14, v10, [F

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    add-int/lit8 v16, v3, -0x1

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    aput v10, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    aput v10, v14, v15

    invoke-static {v8, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v11, v12

    invoke-virtual {v2, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1717
    const/4 v10, 0x1

    new-array v11, v10, [Landroid/animation/Animator;

    const/4 v12, 0x0

    const-string v13, "y"

    const/4 v10, 0x2

    new-array v14, v10, [F

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    add-int/lit8 v16, v3, -0x1

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    aput v10, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    aput v10, v14, v15

    invoke-static {v8, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v11, v12

    invoke-virtual {v2, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1714
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_1

    .line 1719
    .end local v8    # "nextView":Landroid/view/View;
    :cond_1
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui/qs/QSEditPanel;->REORDERING_REORDER_REPOSITION_DURATION:I

    int-to-long v10, v10

    invoke-virtual {v2, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1720
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 1721
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1722
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v11}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1723
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1724
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v9, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1725
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v9, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1726
    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedIdx:I

    .line 1727
    return-void
.end method

.method private handleAnimateEmptyActiveToAvailable(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    .locals 14
    .param p1, "msg"    # Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1608
    iget v3, p1, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->mode:I

    .line 1609
    .local v3, "mode":I
    iget v2, p1, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->longClickedIdx:I

    .line 1610
    .local v2, "longClickedIndex":I
    iget v5, p1, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->touchedIdx:I

    .line 1612
    .local v5, "touchedIndex":I
    const-string v6, "QSEditPanel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleAnimateEmptyActiveToAvailable() mode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", longClickedIndex="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", touchedIndex="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1615
    .local v0, "anim":Landroid/animation/AnimatorSet;
    move v1, v2

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_0

    .line 1616
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 1617
    .local v4, "nextView":Landroid/view/View;
    new-array v7, v12, [Landroid/animation/Animator;

    const-string v8, "x"

    new-array v9, v13, [F

    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    add-int/lit8 v10, v1, 0x1

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    aput v6, v9, v11

    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    aput v6, v9, v12

    invoke-static {v4, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v7, v11

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1618
    new-array v7, v12, [Landroid/animation/Animator;

    const-string v8, "y"

    new-array v9, v13, [F

    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    add-int/lit8 v10, v1, 0x1

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    aput v6, v9, v11

    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    aput v6, v9, v12

    invoke-static {v4, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v7, v11

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1615
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1620
    .end local v4    # "nextView":Landroid/view/View;
    :cond_0
    iget v6, p0, Lcom/android/systemui/qs/QSEditPanel;->REORDERING_REORDER_REPOSITION_DURATION:I

    int-to-long v6, v6

    invoke-virtual {v0, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1621
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1622
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-le v2, v6, :cond_1

    .line 1623
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .line 1625
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v7}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v8}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1626
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v7}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v8}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1627
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v7}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1628
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v8}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-direct {p0, v6, v7, v8}, Lcom/android/systemui/qs/QSEditPanel;->showWhiteCircle(ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1629
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedIdx:I

    .line 1630
    return-void
.end method

.method private handleAnimateEmptyAvailableToActive(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    .locals 14
    .param p1, "msg"    # Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1580
    iget v3, p1, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->mode:I

    .line 1581
    .local v3, "mode":I
    iget v2, p1, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->longClickedIdx:I

    .line 1582
    .local v2, "longClickedIndex":I
    iget v5, p1, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->touchedIdx:I

    .line 1584
    .local v5, "touchedIndex":I
    const-string v6, "QSEditPanel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleAnimateEmptyAvailableToActive() mode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", longClickedIndex="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", touchedIndex="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1587
    .local v0, "anim":Landroid/animation/AnimatorSet;
    move v1, v2

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_0

    .line 1588
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 1589
    .local v4, "nextView":Landroid/view/View;
    new-array v7, v12, [Landroid/animation/Animator;

    const-string v8, "x"

    new-array v9, v13, [F

    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    add-int/lit8 v10, v1, 0x1

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    aput v6, v9, v11

    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    aput v6, v9, v12

    invoke-static {v4, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v7, v11

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1590
    new-array v7, v12, [Landroid/animation/Animator;

    const-string v8, "y"

    new-array v9, v13, [F

    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    add-int/lit8 v10, v1, 0x1

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    aput v6, v9, v11

    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    aput v6, v9, v12

    invoke-static {v4, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v7, v11

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1587
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1592
    .end local v4    # "nextView":Landroid/view/View;
    :cond_0
    iget v6, p0, Lcom/android/systemui/qs/QSEditPanel;->REORDERING_REORDER_REPOSITION_DURATION:I

    int-to-long v6, v6

    invoke-virtual {v0, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1593
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1594
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-le v2, v6, :cond_1

    .line 1595
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .line 1597
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v7}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v8}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1598
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v7}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v8}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1599
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v7}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1600
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v8}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-direct {p0, v6, v7, v8}, Lcom/android/systemui/qs/QSEditPanel;->showWhiteCircle(ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1601
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedIdx:I

    .line 1602
    return-void
.end method

.method private handleAnimateEmptySameArea(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    .locals 18
    .param p1, "msg"    # Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    .prologue
    .line 1636
    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->mode:I

    .line 1637
    .local v7, "mode":I
    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->longClickedIdx:I

    .line 1638
    .local v6, "longClickedIndex":I
    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->touchedIdx:I

    .line 1640
    .local v11, "touchedIndex":I
    const-string v12, "QSEditPanel"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handleAnimateEmptySameArea() mode="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", longClickedIndex="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", touchedIndex="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    if-nez v7, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v5

    .line 1643
    .local v5, "layoutList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/FrameLayout;>;"
    :goto_0
    if-nez v7, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    .line 1644
    .local v10, "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    if-nez v7, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1645
    .local v3, "childRect":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    :goto_2
    if-nez v7, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v9

    .line 1646
    .local v9, "overlayedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/FrameLayout;>;"
    :goto_3
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1647
    .local v2, "anim":Landroid/animation/AnimatorSet;
    move v4, v6

    .local v4, "i":I
    :goto_4
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ge v4, v12, :cond_4

    .line 1648
    add-int/lit8 v12, v4, 0x1

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 1649
    .local v8, "nextView":Landroid/view/View;
    const/4 v12, 0x1

    new-array v13, v12, [Landroid/animation/Animator;

    const/4 v14, 0x0

    const-string v15, "x"

    const/4 v12, 0x2

    new-array v0, v12, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    add-int/lit8 v12, v4, 0x1

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    aput v12, v16, v17

    const/16 v17, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    aput v12, v16, v17

    move-object/from16 v0, v16

    invoke-static {v8, v15, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    aput-object v12, v13, v14

    invoke-virtual {v2, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1650
    const/4 v12, 0x1

    new-array v13, v12, [Landroid/animation/Animator;

    const/4 v14, 0x0

    const-string v15, "y"

    const/4 v12, 0x2

    new-array v0, v12, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    add-int/lit8 v12, v4, 0x1

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    aput v12, v16, v17

    const/16 v17, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    aput v12, v16, v17

    move-object/from16 v0, v16

    invoke-static {v8, v15, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    aput-object v12, v13, v14

    invoke-virtual {v2, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1647
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1642
    .end local v2    # "anim":Landroid/animation/AnimatorSet;
    .end local v3    # "childRect":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    .end local v4    # "i":I
    .end local v5    # "layoutList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/FrameLayout;>;"
    .end local v8    # "nextView":Landroid/view/View;
    .end local v9    # "overlayedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/FrameLayout;>;"
    .end local v10    # "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v5

    goto/16 :goto_0

    .line 1643
    .restart local v5    # "layoutList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/FrameLayout;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    goto/16 :goto_1

    .line 1644
    .restart local v10    # "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v3

    goto/16 :goto_2

    .line 1645
    .restart local v3    # "childRect":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v9

    goto/16 :goto_3

    .line 1652
    .restart local v2    # "anim":Landroid/animation/AnimatorSet;
    .restart local v4    # "i":I
    .restart local v9    # "overlayedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/FrameLayout;>;"
    :cond_4
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/qs/QSEditPanel;->REORDERING_REORDER_REPOSITION_DURATION:I

    int-to-long v12, v12

    invoke-virtual {v2, v12, v13}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1653
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 1654
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-le v6, v12, :cond_5

    .line 1655
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v6, v12, -0x1

    .line 1657
    :cond_5
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v5, v12, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1658
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1659
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v9}, Lcom/android/systemui/qs/QSEditPanel;->showWhiteCircle(ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1660
    if-nez v7, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    :goto_5
    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedIdx:I

    .line 1661
    return-void

    .line 1660
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    add-int/2addr v12, v13

    goto :goto_5
.end method

.method private handleAnimateLeft(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    .locals 19
    .param p1, "msg"    # Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    .prologue
    .line 1733
    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->mode:I

    .line 1734
    .local v9, "mode":I
    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->longClickedIdx:I

    .line 1735
    .local v6, "longClickedIndex":I
    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->touchedIdx:I

    .line 1737
    .local v12, "touchedIndex":I
    const-string v13, "QSEditPanel"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleAnimateLeft() mode="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", longClickedIndex="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", touchedIndex="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1739
    if-nez v9, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v13}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v5

    .line 1740
    .local v5, "layoutList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/FrameLayout;>;"
    :goto_0
    if-nez v9, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v13}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v11

    .line 1741
    .local v11, "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    if-nez v9, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v13}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1742
    .local v3, "childRect":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    :goto_2
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1743
    .local v2, "anim":Landroid/animation/AnimatorSet;
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    .line 1744
    .local v8, "longClickedView":Landroid/widget/FrameLayout;
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1745
    .local v7, "longClickedString":Ljava/lang/String;
    move v4, v6

    .local v4, "i":I
    :goto_3
    if-ge v4, v12, :cond_3

    .line 1746
    add-int/lit8 v13, v4, 0x1

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 1747
    .local v10, "nextView":Landroid/view/View;
    const/4 v13, 0x1

    new-array v14, v13, [Landroid/animation/Animator;

    const/4 v15, 0x0

    const-string v16, "x"

    const/4 v13, 0x2

    new-array v0, v13, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    add-int/lit8 v13, v4, 0x1

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    int-to-float v13, v13

    aput v13, v17, v18

    const/16 v18, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    int-to-float v13, v13

    aput v13, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v10, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v14, v15

    invoke-virtual {v2, v14}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1748
    const/4 v13, 0x1

    new-array v14, v13, [Landroid/animation/Animator;

    const/4 v15, 0x0

    const-string v16, "y"

    const/4 v13, 0x2

    new-array v0, v13, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    add-int/lit8 v13, v4, 0x1

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    aput v13, v17, v18

    const/16 v18, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    aput v13, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v10, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v14, v15

    invoke-virtual {v2, v14}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1745
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1739
    .end local v2    # "anim":Landroid/animation/AnimatorSet;
    .end local v3    # "childRect":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    .end local v4    # "i":I
    .end local v5    # "layoutList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/FrameLayout;>;"
    .end local v7    # "longClickedString":Ljava/lang/String;
    .end local v8    # "longClickedView":Landroid/widget/FrameLayout;
    .end local v10    # "nextView":Landroid/view/View;
    .end local v11    # "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v13}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v5

    goto/16 :goto_0

    .line 1740
    .restart local v5    # "layoutList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/FrameLayout;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v13}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v11

    goto/16 :goto_1

    .line 1741
    .restart local v11    # "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v13}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v3

    goto/16 :goto_2

    .line 1750
    .restart local v2    # "anim":Landroid/animation/AnimatorSet;
    .restart local v3    # "childRect":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    .restart local v4    # "i":I
    .restart local v7    # "longClickedString":Ljava/lang/String;
    .restart local v8    # "longClickedView":Landroid/widget/FrameLayout;
    :cond_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/qs/QSEditPanel;->REORDERING_REORDER_REPOSITION_DURATION:I

    int-to-long v14, v13

    invoke-virtual {v2, v14, v15}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1751
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 1752
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1753
    invoke-virtual {v5, v12, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1754
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1755
    invoke-virtual {v11, v12, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1756
    if-nez v9, :cond_4

    .end local v12    # "touchedIndex":I
    :goto_4
    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedIdx:I

    .line 1757
    return-void

    .line 1756
    .restart local v12    # "touchedIndex":I
    :cond_4
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    add-int/2addr v12, v13

    goto :goto_4
.end method

.method private handleAnimateMaxActiveToAvailable(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    .locals 19
    .param p1, "msg"    # Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    .prologue
    .line 1849
    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->mode:I

    .line 1850
    .local v8, "mode":I
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->longClickedIdx:I

    .line 1851
    .local v4, "longClickedIndex":I
    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->touchedIdx:I

    .line 1852
    .local v11, "touchedIndex":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lt v11, v12, :cond_0

    .line 1853
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v11, v12, -0x1

    .line 1855
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lt v4, v12, :cond_1

    .line 1856
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v4, v12, -0x1

    .line 1858
    :cond_1
    const-string v12, "QSEditPanel"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handleAnimateMaxActiveToAvailable() mode="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", longClickedIndex="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", touchedIndex="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1860
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1861
    .local v2, "anim":Landroid/animation/AnimatorSet;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    .line 1862
    .local v6, "longClickedView":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1863
    .local v5, "longClickedString":Ljava/lang/String;
    move v3, v4

    .local v3, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ge v3, v12, :cond_2

    .line 1864
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    add-int/lit8 v13, v3, 0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 1865
    .local v9, "nextView":Landroid/view/View;
    const/4 v12, 0x1

    new-array v13, v12, [Landroid/animation/Animator;

    const/4 v14, 0x0

    const-string v15, "x"

    const/4 v12, 0x2

    new-array v0, v12, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    add-int/lit8 v18, v3, 0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    aput v12, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    aput v12, v16, v17

    move-object/from16 v0, v16

    invoke-static {v9, v15, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    aput-object v12, v13, v14

    invoke-virtual {v2, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1866
    const/4 v12, 0x1

    new-array v13, v12, [Landroid/animation/Animator;

    const/4 v14, 0x0

    const-string v15, "y"

    const/4 v12, 0x2

    new-array v0, v12, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    add-int/lit8 v18, v3, 0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    aput v12, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    aput v12, v16, v17

    move-object/from16 v0, v16

    invoke-static {v9, v15, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    aput-object v12, v13, v14

    invoke-virtual {v2, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1863
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 1868
    .end local v9    # "nextView":Landroid/view/View;
    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v11, :cond_3

    .line 1869
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    add-int/lit8 v13, v3, 0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 1870
    .restart local v9    # "nextView":Landroid/view/View;
    const/4 v12, 0x1

    new-array v13, v12, [Landroid/animation/Animator;

    const/4 v14, 0x0

    const-string v15, "x"

    const/4 v12, 0x2

    new-array v0, v12, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    add-int/lit8 v18, v3, 0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    aput v12, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    aput v12, v16, v17

    move-object/from16 v0, v16

    invoke-static {v9, v15, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    aput-object v12, v13, v14

    invoke-virtual {v2, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1871
    const/4 v12, 0x1

    new-array v13, v12, [Landroid/animation/Animator;

    const/4 v14, 0x0

    const-string v15, "y"

    const/4 v12, 0x2

    new-array v0, v12, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    add-int/lit8 v18, v3, 0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    aput v12, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    aput v12, v16, v17

    move-object/from16 v0, v16

    invoke-static {v9, v15, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    aput-object v12, v13, v14

    invoke-virtual {v2, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1868
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 1873
    .end local v9    # "nextView":Landroid/view/View;
    :cond_3
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/qs/QSEditPanel;->REORDERING_REORDER_REPOSITION_DURATION:I

    int-to-long v12, v12

    invoke-virtual {v2, v12, v13}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1874
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/qs/QSEditPanel;->mAnimMaxActiveToAvailable:Landroid/animation/AnimatorSet;

    .line 1875
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mAnimMaxAvailableToActive:Landroid/animation/AnimatorSet;

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mAnimMaxAvailableToActive:Landroid/animation/AnimatorSet;

    invoke-virtual {v12}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1876
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mAnimMaxAvailableToActive:Landroid/animation/AnimatorSet;

    invoke-virtual {v12}, Landroid/animation/AnimatorSet;->end()V

    .line 1878
    :cond_4
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 1879
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    .line 1880
    .local v10, "targetView":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mAvailableButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v12, v10}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1881
    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 1882
    .local v7, "lp":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v13}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    iput v12, v7, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1883
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v13}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    iput v12, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1884
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mActiveButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v12, v10, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1886
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1887
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v13}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v14}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1888
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1889
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v13}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1890
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v11, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1891
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v11, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1892
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v13}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12, v13}, Lcom/android/systemui/qs/QSEditPanel;->showWhiteCircle(ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1893
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    add-int/2addr v12, v11

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedIdx:I

    .line 1894
    return-void
.end method

.method private handleAnimateMaxAvailableToActive(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    .locals 19
    .param p1, "msg"    # Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    .prologue
    .line 1794
    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->mode:I

    .line 1795
    .local v8, "mode":I
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->longClickedIdx:I

    .line 1796
    .local v4, "longClickedIndex":I
    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->touchedIdx:I

    .line 1797
    .local v11, "touchedIndex":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lt v11, v12, :cond_0

    .line 1798
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v11, v12, -0x1

    .line 1800
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lt v4, v12, :cond_1

    .line 1801
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v4, v12, -0x1

    .line 1803
    :cond_1
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1805
    .local v2, "anim":Landroid/animation/AnimatorSet;
    const-string v12, "QSEditPanel"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handleAnimateMaxAvailableToActive() mode="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", longClickedIndex="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", touchedIndex="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    .line 1808
    .local v6, "longClickedView":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1809
    .local v5, "longClickedString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ge v11, v12, :cond_2

    .line 1810
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v3, v12, -0x1

    .local v3, "i":I
    :goto_0
    if-le v3, v11, :cond_2

    .line 1811
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    add-int/lit8 v13, v3, -0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 1812
    .local v9, "nextView":Landroid/view/View;
    const/4 v12, 0x1

    new-array v13, v12, [Landroid/animation/Animator;

    const/4 v14, 0x0

    const-string v15, "x"

    const/4 v12, 0x2

    new-array v0, v12, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    add-int/lit8 v18, v3, -0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    aput v12, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    aput v12, v16, v17

    move-object/from16 v0, v16

    invoke-static {v9, v15, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    aput-object v12, v13, v14

    invoke-virtual {v2, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1813
    const/4 v12, 0x1

    new-array v13, v12, [Landroid/animation/Animator;

    const/4 v14, 0x0

    const-string v15, "y"

    const/4 v12, 0x2

    new-array v0, v12, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    add-int/lit8 v18, v3, -0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    aput v12, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    aput v12, v16, v17

    move-object/from16 v0, v16

    invoke-static {v9, v15, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    aput-object v12, v13, v14

    invoke-virtual {v2, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1810
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_0

    .line 1816
    .end local v3    # "i":I
    .end local v9    # "nextView":Landroid/view/View;
    :cond_2
    move v3, v4

    .restart local v3    # "i":I
    :goto_1
    if-lez v3, :cond_3

    .line 1817
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    add-int/lit8 v13, v3, -0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 1818
    .restart local v9    # "nextView":Landroid/view/View;
    const/4 v12, 0x1

    new-array v13, v12, [Landroid/animation/Animator;

    const/4 v14, 0x0

    const-string v15, "x"

    const/4 v12, 0x2

    new-array v0, v12, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    add-int/lit8 v18, v3, -0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    aput v12, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    aput v12, v16, v17

    move-object/from16 v0, v16

    invoke-static {v9, v15, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    aput-object v12, v13, v14

    invoke-virtual {v2, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1819
    const/4 v12, 0x1

    new-array v13, v12, [Landroid/animation/Animator;

    const/4 v14, 0x0

    const-string v15, "y"

    const/4 v12, 0x2

    new-array v0, v12, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    add-int/lit8 v18, v3, -0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    aput v12, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    aput v12, v16, v17

    move-object/from16 v0, v16

    invoke-static {v9, v15, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    aput-object v12, v13, v14

    invoke-virtual {v2, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1816
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_1

    .line 1821
    .end local v9    # "nextView":Landroid/view/View;
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v13}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    .line 1822
    .local v10, "targetView":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mActiveButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v12, v10}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1823
    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 1824
    .local v7, "lp":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    iput v12, v7, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1825
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    iput v12, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1826
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mAvailableButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v12, v10, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1827
    const/4 v12, 0x1

    new-array v12, v12, [Landroid/animation/Animator;

    const/4 v13, 0x0

    const-string v14, "x"

    const/4 v15, 0x2

    new-array v15, v15, [F

    const/16 v16, 0x0

    iget v0, v7, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    aput v17, v15, v16

    const/16 v16, 0x1

    iget v0, v7, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    aput v17, v15, v16

    invoke-static {v10, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v2, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1828
    const/4 v12, 0x1

    new-array v12, v12, [Landroid/animation/Animator;

    const/4 v13, 0x0

    const-string v14, "y"

    const/4 v15, 0x2

    new-array v15, v15, [F

    const/16 v16, 0x0

    iget v0, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    aput v17, v15, v16

    const/16 v16, 0x1

    iget v0, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    aput v17, v15, v16

    invoke-static {v10, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v2, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1829
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/qs/QSEditPanel;->REORDERING_REORDER_REPOSITION_DURATION:I

    int-to-long v12, v12

    invoke-virtual {v2, v12, v13}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1830
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/qs/QSEditPanel;->mAnimMaxAvailableToActive:Landroid/animation/AnimatorSet;

    .line 1831
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mAnimMaxActiveToAvailable:Landroid/animation/AnimatorSet;

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mAnimMaxActiveToAvailable:Landroid/animation/AnimatorSet;

    invoke-virtual {v12}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1832
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mAnimMaxActiveToAvailable:Landroid/animation/AnimatorSet;

    invoke-virtual {v12}, Landroid/animation/AnimatorSet;->end()V

    .line 1834
    :cond_4
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 1835
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1836
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v14}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v15}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1837
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1838
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v14}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v15}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1839
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v11, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1840
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v11, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1841
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v13}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12, v13}, Lcom/android/systemui/qs/QSEditPanel;->showWhiteCircle(ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1842
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedIdx:I

    .line 1843
    return-void
.end method

.method private handleAnimateRight(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    .locals 19
    .param p1, "msg"    # Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    .prologue
    .line 1763
    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->mode:I

    .line 1764
    .local v9, "mode":I
    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->longClickedIdx:I

    .line 1765
    .local v6, "longClickedIndex":I
    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->touchedIdx:I

    .line 1767
    .local v12, "touchedIndex":I
    const-string v13, "QSEditPanel"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleAnimateRight() mode="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", longClickedIndex="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", touchedIndex="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    if-nez v9, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v13}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v5

    .line 1770
    .local v5, "layoutList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/FrameLayout;>;"
    :goto_0
    if-nez v9, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v13}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v11

    .line 1771
    .local v11, "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    if-nez v9, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v13}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1772
    .local v3, "childRect":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    :goto_2
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1774
    .local v2, "anim":Landroid/animation/AnimatorSet;
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    .line 1775
    .local v8, "longClickedView":Landroid/widget/FrameLayout;
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1776
    .local v7, "longClickedString":Ljava/lang/String;
    move v4, v6

    .local v4, "i":I
    :goto_3
    if-le v4, v12, :cond_3

    .line 1777
    add-int/lit8 v13, v4, -0x1

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 1778
    .local v10, "nextView":Landroid/view/View;
    const/4 v13, 0x1

    new-array v14, v13, [Landroid/animation/Animator;

    const/4 v15, 0x0

    const-string v16, "x"

    const/4 v13, 0x2

    new-array v0, v13, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    add-int/lit8 v13, v4, -0x1

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    int-to-float v13, v13

    aput v13, v17, v18

    const/16 v18, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    int-to-float v13, v13

    aput v13, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v10, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v14, v15

    invoke-virtual {v2, v14}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1779
    const/4 v13, 0x1

    new-array v14, v13, [Landroid/animation/Animator;

    const/4 v15, 0x0

    const-string v16, "y"

    const/4 v13, 0x2

    new-array v0, v13, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    add-int/lit8 v13, v4, -0x1

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    aput v13, v17, v18

    const/16 v18, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    aput v13, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v10, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v14, v15

    invoke-virtual {v2, v14}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1776
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 1769
    .end local v2    # "anim":Landroid/animation/AnimatorSet;
    .end local v3    # "childRect":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    .end local v4    # "i":I
    .end local v5    # "layoutList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/FrameLayout;>;"
    .end local v7    # "longClickedString":Ljava/lang/String;
    .end local v8    # "longClickedView":Landroid/widget/FrameLayout;
    .end local v10    # "nextView":Landroid/view/View;
    .end local v11    # "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v13}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v5

    goto/16 :goto_0

    .line 1770
    .restart local v5    # "layoutList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/FrameLayout;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v13}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v11

    goto/16 :goto_1

    .line 1771
    .restart local v11    # "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v13}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v3

    goto/16 :goto_2

    .line 1781
    .restart local v2    # "anim":Landroid/animation/AnimatorSet;
    .restart local v3    # "childRect":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    .restart local v4    # "i":I
    .restart local v7    # "longClickedString":Ljava/lang/String;
    .restart local v8    # "longClickedView":Landroid/widget/FrameLayout;
    :cond_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/qs/QSEditPanel;->REORDERING_REORDER_REPOSITION_DURATION:I

    int-to-long v14, v13

    invoke-virtual {v2, v14, v15}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1782
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 1783
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1784
    invoke-virtual {v5, v12, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1785
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1786
    invoke-virtual {v11, v12, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1787
    if-nez v9, :cond_4

    .end local v12    # "touchedIndex":I
    :goto_4
    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedIdx:I

    .line 1788
    return-void

    .line 1787
    .restart local v12    # "touchedIndex":I
    :cond_4
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    add-int/2addr v12, v13

    goto :goto_4
.end method

.method private handleDelayedOnConfigurationChanged()V
    .locals 2

    .prologue
    .line 1922
    const-string v0, "QSEditPanel"

    const-string v1, "handleDelayedOnConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1923
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->updateLayoutParams()V

    .line 1924
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->refreshViews()V

    .line 1925
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->refreshSfinderQConnectEditLayout()V

    .line 1926
    return-void
.end method

.method private isEmptyPanel(Ljava/util/ArrayList;I)Z
    .locals 2
    .param p2, "idx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 1072
    .local p1, "notificationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1073
    .local v0, "value":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, p2, :cond_0

    .line 1074
    const/4 v0, 0x1

    .line 1076
    :cond_0
    return v0
.end method

.method public static isMobileKeygboardConnected(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 2024
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2025
    .local v0, "conf":Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSuportMobileKeyboard()Z
    .locals 2

    .prologue
    .line 2020
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private prepareViewsToAnimate()V
    .locals 5

    .prologue
    .line 1105
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->clean()V

    .line 1106
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 1107
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1108
    .local v2, "panelView":Landroid/view/View;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1109
    .local v3, "rect":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 1110
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 1111
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1113
    .end local v2    # "panelView":Landroid/view/View;
    .end local v3    # "rect":Landroid/graphics/Rect;
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 1114
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1115
    .restart local v2    # "panelView":Landroid/view/View;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1116
    .restart local v3    # "rect":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 1117
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 1118
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1113
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1120
    .end local v2    # "panelView":Landroid/view/View;
    .end local v3    # "rect":Landroid/graphics/Rect;
    :cond_1
    const/4 v0, 0x0

    :goto_2
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 1121
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1122
    .local v1, "original":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1120
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1124
    .end local v1    # "original":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    :goto_3
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 1125
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1126
    .restart local v1    # "original":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1124
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1128
    .end local v1    # "original":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private refreshBackgroundViews()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 759
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    div-int v2, v0, v1

    .line 760
    .local v2, "notiPanelLines":I
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    if-ne v0, v1, :cond_0

    .line 761
    add-int/lit8 v2, v2, 0x1

    .line 763
    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mCurrentOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    if-ne v2, v9, :cond_1

    .line 764
    add-int/lit8 v2, v2, 0x1

    .line 766
    :cond_1
    iget v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    mul-int/2addr v0, v2

    iput v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    .line 768
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveButtonContainer:Landroid/widget/FrameLayout;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/qs/QSEditPanel;->addBackgroundButtonViews(IILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/FrameLayout;)V

    .line 770
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    div-int v5, v0, v1

    .line 771
    .local v5, "availBtnlLines":I
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_2

    .line 772
    add-int/lit8 v5, v5, 0x1

    .line 774
    :cond_2
    if-nez v5, :cond_3

    .line 775
    const/4 v5, 0x1

    .line 778
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mAvailableButtonContainer:Landroid/widget/FrameLayout;

    move-object v3, p0

    move v4, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/qs/QSEditPanel;->addBackgroundButtonViews(IILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/FrameLayout;)V

    .line 779
    return-void

    .line 759
    .end local v2    # "notiPanelLines":I
    .end local v5    # "availBtnlLines":I
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    div-int/2addr v0, v1

    add-int/lit8 v2, v0, 0x1

    goto/16 :goto_0

    .line 770
    .restart local v2    # "notiPanelLines":I
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    div-int/2addr v0, v1

    add-int/lit8 v5, v0, 0x1

    goto :goto_1
.end method

.method private refreshForegroundViews()V
    .locals 10

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x0

    const/4 v9, 0x1

    .line 730
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    rem-int/2addr v0, v3

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    div-int v2, v0, v3

    .line 731
    .local v2, "notiPanelLines":I
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    if-ne v0, v3, :cond_0

    .line 732
    add-int/lit8 v2, v2, 0x1

    .line 734
    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mCurrentOrientation:I

    if-ne v0, v6, :cond_1

    if-ne v2, v9, :cond_1

    .line 735
    add-int/lit8 v2, v2, 0x1

    .line 737
    :cond_1
    iget v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    mul-int/2addr v0, v2

    iput v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    .line 739
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveButtonContainer:Landroid/widget/FrameLayout;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/qs/QSEditPanel;->addForegroundButtonViews(IILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/FrameLayout;)V

    .line 741
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    rem-int/2addr v0, v3

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    div-int v5, v0, v3

    .line 742
    .local v5, "availBtnlLines":I
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    rem-int/2addr v0, v3

    if-nez v0, :cond_2

    .line 743
    add-int/lit8 v5, v5, 0x1

    .line 745
    :cond_2
    if-nez v5, :cond_3

    .line 746
    const/4 v5, 0x1

    .line 748
    :cond_3
    iget v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mCurrentOrientation:I

    if-eq v0, v6, :cond_5

    .line 749
    if-ne v5, v9, :cond_8

    move v0, v9

    :goto_2
    if-ne v5, v6, :cond_4

    move v1, v9

    :cond_4
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/qs/QSEditPanel;->updateHelpTextPosition(ZZ)V

    .line 751
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mAvailableButtonContainer:Landroid/widget/FrameLayout;

    move-object v3, p0

    move v4, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/qs/QSEditPanel;->addForegroundButtonViews(IILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/FrameLayout;)V

    .line 752
    return-void

    .line 730
    .end local v2    # "notiPanelLines":I
    .end local v5    # "availBtnlLines":I
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    div-int/2addr v0, v3

    add-int/lit8 v2, v0, 0x1

    goto/16 :goto_0

    .line 741
    .restart local v2    # "notiPanelLines":I
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    div-int/2addr v0, v3

    add-int/lit8 v5, v0, 0x1

    goto :goto_1

    .restart local v5    # "availBtnlLines":I
    :cond_8
    move v0, v1

    .line 749
    goto :goto_2
.end method

.method private refreshSfinderQConnectEditLayout()V
    .locals 7

    .prologue
    const v6, 0x7f0c0082

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 358
    const v2, 0x7f0f0247

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSEditPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 359
    .local v1, "qsEditQconnectSfinderLayoutParent":Landroid/widget/LinearLayout;
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->showHideQConnectEditLayout()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 360
    const-string v2, "QSEditPanel"

    const-string v3, "refreshViews setVisibility(View.VISIBLE)"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 362
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mSfinderCheckBox:Landroid/widget/CompoundButton;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSEditPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 363
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mQconnectCheckBox:Landroid/widget/CompoundButton;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSEditPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 365
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSEditPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b041d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 366
    .local v0, "checkBoxText":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mSfinderCheckBox:Landroid/widget/CompoundButton;

    invoke-virtual {v2, v0}, Landroid/widget/CompoundButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 367
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSEditPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b041f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 368
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mQconnectCheckBox:Landroid/widget/CompoundButton;

    invoke-virtual {v2, v0}, Landroid/widget/CompoundButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 370
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sfinderchecked"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 371
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mSfinderCheckBox:Landroid/widget/CompoundButton;

    invoke-virtual {v2, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 376
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "qconnectchecked"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 377
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mQconnectCheckBox:Landroid/widget/CompoundButton;

    invoke-virtual {v2, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 384
    .end local v0    # "checkBoxText":Ljava/lang/String;
    :goto_1
    return-void

    .line 373
    .restart local v0    # "checkBoxText":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mSfinderCheckBox:Landroid/widget/CompoundButton;

    invoke-virtual {v2, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    .line 379
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mQconnectCheckBox:Landroid/widget/CompoundButton;

    invoke-virtual {v2, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_1

    .line 382
    .end local v0    # "checkBoxText":Ljava/lang/String;
    :cond_2
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method private refreshViews()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 667
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 668
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 669
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 670
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 671
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 672
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mAvailableButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 673
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 674
    .local v4, "res":Landroid/content/res/Resources;
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    .line 675
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mAvailableButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    .line 678
    const v6, 0x7f020312

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 679
    .local v0, "activeAreaBg":Landroid/graphics/drawable/Drawable;
    const/16 v6, 0x42

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 680
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveContainerParent:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 682
    const v6, 0x7f0e000f

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    .line 683
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mAvailableContainerParent:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 684
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const v6, 0x7f0a02e7

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 685
    .local v1, "displayWidth":I
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mDefaultDisplay:Landroid/view/Display;

    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v6, v7}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 686
    const/4 v6, -0x1

    if-ne v1, v6, :cond_0

    .line 687
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 689
    :cond_0
    iget v6, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int v6, v1, v6

    iget v7, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int v5, v6, v7

    .line 691
    .local v5, "width":I
    const v6, 0x7f0a0454

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 692
    .local v3, "qsEditPanelButtonContainerMargin":I
    iget v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    iget v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mCellWidth:I

    mul-int/2addr v6, v7

    sub-int v6, v5, v6

    mul-int/lit8 v7, v3, 0x2

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    add-int/lit8 v7, v7, -0x1

    div-int/2addr v6, v7

    iput v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mHorizontalGap:I

    .line 693
    const v6, 0x7f0a0447

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mVerticalGap:I

    .line 695
    iget v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mHorizontalGap:I

    if-gez v6, :cond_1

    .line 696
    iput v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mHorizontalGap:I

    .line 699
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->refreshForegroundViews()V

    .line 700
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->refreshBackgroundViews()V

    .line 701
    invoke-direct {p0, v8}, Lcom/android/systemui/qs/QSEditPanel;->setFocus(I)V

    .line 702
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/android/systemui/qs/QSEditPanel;->setFocus(I)V

    .line 704
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->clean()V

    .line 705
    return-void
.end method

.method private saveButtonLists()V
    .locals 3

    .prologue
    .line 1254
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v2}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1255
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v2}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1256
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v2}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1257
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v2}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1258
    .local v1, "original":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v2}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1256
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1260
    .end local v1    # "original":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v2}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1261
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v2}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1262
    .restart local v1    # "original":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v2}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1260
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1264
    .end local v1    # "original":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private scrollPanleViews()V
    .locals 13

    .prologue
    .line 1391
    iget-object v10, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1394
    .local v3, "res":Landroid/content/res/Resources;
    iget v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mStartLongClickedIdx:I

    .line 1395
    .local v2, "longClickedIdx":I
    iget v10, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    if-lt v2, v10, :cond_1

    .line 1396
    const/4 v1, 0x1

    .line 1401
    .local v1, "fromArea":I
    :goto_0
    iget v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mTouchedIdx:I

    .line 1402
    .local v8, "touchedIdx":I
    iget v10, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    if-lt v8, v10, :cond_2

    .line 1403
    const/4 v7, 0x1

    .line 1408
    .local v7, "toArea":I
    :goto_1
    iget-object v10, p0, Lcom/android/systemui/qs/QSEditPanel;->mScrollContainer:Landroid/widget/ScrollView;

    invoke-virtual {v10}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    .line 1409
    .local v4, "scrollViewheight":I
    iget-object v10, p0, Lcom/android/systemui/qs/QSEditPanel;->mScrollContainer:Landroid/widget/ScrollView;

    invoke-virtual {v10}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v5

    .line 1410
    .local v5, "scrollY":I
    const v10, 0x7f0a0446

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1411
    .local v0, "buttonHeight":I
    const v10, 0x7f0a0458

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    const v11, 0x7f0a044a

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    add-int v6, v10, v11

    .line 1413
    .local v6, "summaryTextHeight":I
    const-string v10, "QSEditPanel"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "scrollPanleViews() longClickedIdx : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " touchedIdx : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " scrollY : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    const-string v10, "QSEditPanel"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "scrollPanleViews() fromArea : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " toArea : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    div-int/lit8 v10, v0, 0x3

    sub-int v9, v0, v10

    .line 1417
    .local v9, "twoThirdsOfHeight":I
    if-ne v1, v7, :cond_6

    .line 1418
    if-nez v1, :cond_4

    if-nez v1, :cond_4

    .line 1419
    if-ltz v8, :cond_3

    const/4 v10, 0x4

    if-gt v8, v10, :cond_3

    .line 1420
    const/4 v10, 0x0

    invoke-direct {p0, v5, v10}, Lcom/android/systemui/qs/QSEditPanel;->animateScrollViews(II)V

    .line 1446
    :cond_0
    :goto_2
    return-void

    .line 1398
    .end local v0    # "buttonHeight":I
    .end local v1    # "fromArea":I
    .end local v4    # "scrollViewheight":I
    .end local v5    # "scrollY":I
    .end local v6    # "summaryTextHeight":I
    .end local v7    # "toArea":I
    .end local v8    # "touchedIdx":I
    .end local v9    # "twoThirdsOfHeight":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "fromArea":I
    goto/16 :goto_0

    .line 1405
    .restart local v8    # "touchedIdx":I
    :cond_2
    const/4 v7, 0x0

    .restart local v7    # "toArea":I
    goto/16 :goto_1

    .line 1421
    .restart local v0    # "buttonHeight":I
    .restart local v4    # "scrollViewheight":I
    .restart local v5    # "scrollY":I
    .restart local v6    # "summaryTextHeight":I
    .restart local v9    # "twoThirdsOfHeight":I
    :cond_3
    const/4 v10, 0x5

    if-lt v8, v10, :cond_0

    const/16 v10, 0x9

    if-gt v8, v10, :cond_0

    if-le v5, v9, :cond_0

    .line 1422
    invoke-direct {p0, v5, v9}, Lcom/android/systemui/qs/QSEditPanel;->animateScrollViews(II)V

    goto :goto_2

    .line 1424
    :cond_4
    const/4 v10, 0x1

    if-ne v1, v10, :cond_0

    const/4 v10, 0x1

    if-ne v1, v10, :cond_0

    .line 1425
    const/16 v10, 0xf

    if-lt v8, v10, :cond_5

    const/16 v10, 0x13

    if-gt v8, v10, :cond_5

    if-eqz v5, :cond_5

    .line 1426
    invoke-direct {p0, v5, v9}, Lcom/android/systemui/qs/QSEditPanel;->animateScrollViews(II)V

    goto :goto_2

    .line 1427
    :cond_5
    const/16 v10, 0x13

    if-le v8, v10, :cond_0

    .line 1428
    add-int v10, v0, v6

    invoke-direct {p0, v5, v10}, Lcom/android/systemui/qs/QSEditPanel;->animateScrollViews(II)V

    goto :goto_2

    .line 1432
    :cond_6
    if-nez v1, :cond_8

    const/4 v10, 0x1

    if-ne v7, v10, :cond_8

    .line 1433
    const/16 v10, 0xf

    if-lt v8, v10, :cond_7

    const/16 v10, 0x13

    if-gt v8, v10, :cond_7

    if-nez v5, :cond_7

    .line 1434
    invoke-direct {p0, v5, v9}, Lcom/android/systemui/qs/QSEditPanel;->animateScrollViews(II)V

    goto :goto_2

    .line 1435
    :cond_7
    const/16 v10, 0x13

    if-le v8, v10, :cond_0

    .line 1436
    add-int v10, v0, v6

    invoke-direct {p0, v5, v10}, Lcom/android/systemui/qs/QSEditPanel;->animateScrollViews(II)V

    goto :goto_2

    .line 1438
    :cond_8
    const/4 v10, 0x1

    if-ne v1, v10, :cond_0

    if-nez v7, :cond_0

    .line 1439
    if-ltz v8, :cond_9

    const/4 v10, 0x4

    if-gt v8, v10, :cond_9

    if-eqz v5, :cond_9

    .line 1440
    const/4 v10, 0x0

    invoke-direct {p0, v5, v10}, Lcom/android/systemui/qs/QSEditPanel;->animateScrollViews(II)V

    goto :goto_2

    .line 1441
    :cond_9
    const/4 v10, 0x5

    if-lt v8, v10, :cond_0

    const/16 v10, 0x9

    if-gt v8, v10, :cond_0

    if-eqz v5, :cond_0

    .line 1442
    invoke-direct {p0, v5, v9}, Lcom/android/systemui/qs/QSEditPanel;->animateScrollViews(II)V

    goto :goto_2
.end method

.method private sendDiagnosticLogs()V
    .locals 6

    .prologue
    .line 1268
    const/4 v0, 0x0

    .line 1269
    .local v0, "buttonName":Ljava/lang/String;
    iget v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mTouchedIdx:I

    .line 1270
    .local v2, "dropIdx":I
    iget v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    if-lt v2, v4, :cond_3

    .line 1271
    iget v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    sub-int/2addr v2, v4

    .line 1272
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 1295
    :cond_0
    :goto_0
    return-void

    .line 1275
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v2, v4, :cond_2

    .line 1276
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .line 1279
    :cond_2
    const/4 v3, 0x1

    .line 1280
    .local v3, "toArea":I
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "buttonName":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 1293
    .restart local v0    # "buttonName":Ljava/lang/String;
    :goto_1
    const/4 v4, 0x2

    new-array v1, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "MOVETOACTIVE"

    aput-object v5, v1, v4

    const/4 v4, 0x1

    const-string v5, "MOVETOAVAILABLE"

    aput-object v5, v1, v4

    .line 1294
    .local v1, "diagnosticMessage":[Ljava/lang/String;
    aget-object v4, v1, v3

    invoke-direct {p0, v4, v0}, Lcom/android/systemui/qs/QSEditPanel;->sendLogs(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1282
    .end local v1    # "diagnosticMessage":[Ljava/lang/String;
    .end local v3    # "toArea":I
    :cond_3
    const/4 v3, 0x0

    .line 1283
    .restart local v3    # "toArea":I
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 1286
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v2, v4, :cond_4

    .line 1287
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .line 1290
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "buttonName":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "buttonName":Ljava/lang/String;
    goto :goto_1
.end method

.method private sendLogs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/String;

    .prologue
    .line 1301
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1302
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v2, "app_id"

    const-string v3, "com.android.systemui.statusbar.policy.quicksetting"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1303
    const-string v2, "MOVETOACTIVE"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1304
    const-string v2, "feature"

    const-string v3, "QS01"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1312
    :cond_0
    :goto_0
    const-string v2, "extra"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1315
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1316
    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1317
    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1318
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1319
    return-void

    .line 1305
    .end local v1    # "i":Landroid/content/Intent;
    :cond_1
    const-string v2, "MOVETOAVAILABLE"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1306
    const-string v2, "feature"

    const-string v3, "QS02"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1307
    :cond_2
    const-string v2, "QCONNECT"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1308
    const-string v2, "feature"

    const-string v3, "QS08"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1309
    :cond_3
    const-string v2, "SFINDER"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1310
    const-string v2, "feature"

    const-string v3, "QS07"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setFocus(I)V
    .locals 10
    .param p1, "mode"    # I

    .prologue
    const/16 v9, 0x65

    const v8, 0x7f0f0240

    .line 970
    const/4 v0, 0x0

    .line 971
    .local v0, "childCount":I
    const/4 v1, 0x0

    .line 975
    .local v1, "diff":I
    if-nez p1, :cond_2

    .line 976
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v5}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 977
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveButtonContainer:Landroid/widget/FrameLayout;

    .line 978
    .local v4, "parent":Landroid/widget/FrameLayout;
    const/4 v1, 0x0

    .line 993
    :cond_0
    :goto_0
    const-string v5, "QSEditPanel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setFocus() childCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 996
    add-int v5, v2, v1

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 998
    .local v3, "mFocusableChild":Landroid/widget/FrameLayout;
    if-nez v3, :cond_3

    .line 1043
    .end local v3    # "mFocusableChild":Landroid/widget/FrameLayout;
    :cond_1
    return-void

    .line 980
    .end local v2    # "i":I
    .end local v4    # "parent":Landroid/widget/FrameLayout;
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v5}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 981
    const/16 v1, 0x65

    .line 982
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mAvailableButtonContainer:Landroid/widget/FrameLayout;

    .line 984
    .restart local v4    # "parent":Landroid/widget/FrameLayout;
    if-nez v0, :cond_0

    .line 985
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->showHideQConnectEditLayout()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 986
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mSfinderCheckBox:Landroid/widget/CompoundButton;

    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/CompoundButton;->setNextFocusUpId(I)V

    .line 987
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mQconnectCheckBox:Landroid/widget/CompoundButton;

    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/CompoundButton;->setNextFocusUpId(I)V

    .line 988
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mQconnectCheckBox:Landroid/widget/CompoundButton;

    invoke-virtual {v5, v8}, Landroid/widget/CompoundButton;->setNextFocusDownId(I)V

    .line 989
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mQconnectCheckBox:Landroid/widget/CompoundButton;

    invoke-virtual {v5, v8}, Landroid/widget/CompoundButton;->setNextFocusDownId(I)V

    goto :goto_0

    .line 1002
    .restart local v2    # "i":I
    .restart local v3    # "mFocusableChild":Landroid/widget/FrameLayout;
    :cond_3
    const/4 v5, 0x1

    if-lt v2, v5, :cond_4

    .line 1003
    add-int v5, v2, v1

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setNextFocusLeftId(I)V

    .line 1012
    :goto_2
    add-int/lit8 v5, v2, 0x1

    if-ge v5, v0, :cond_6

    .line 1013
    add-int v5, v2, v1

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setNextFocusRightId(I)V

    .line 1021
    :goto_3
    iget v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    add-int/2addr v5, v2

    if-ge v5, v0, :cond_8

    .line 1022
    iget v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    add-int/2addr v5, v2

    add-int/2addr v5, v1

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setNextFocusDownId(I)V

    .line 1034
    :goto_4
    iget v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    sub-int v5, v2, v5

    if-ltz v5, :cond_b

    .line 1035
    add-int v5, v2, v1

    iget v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    sub-int/2addr v5, v6

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setNextFocusUpId(I)V

    .line 994
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 1005
    :cond_4
    if-nez p1, :cond_5

    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v5}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 1006
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v5}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x65

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setNextFocusLeftId(I)V

    goto :goto_2

    .line 1008
    :cond_5
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v5}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setNextFocusLeftId(I)V

    goto :goto_2

    .line 1015
    :cond_6
    if-nez p1, :cond_7

    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v5}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_7

    .line 1016
    invoke-virtual {v3, v9}, Landroid/widget/FrameLayout;->setNextFocusRightId(I)V

    goto :goto_3

    .line 1018
    :cond_7
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setNextFocusRightId(I)V

    goto :goto_3

    .line 1024
    :cond_8
    if-nez p1, :cond_9

    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v5}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_9

    .line 1025
    invoke-virtual {v3, v9}, Landroid/widget/FrameLayout;->setNextFocusDownId(I)V

    goto :goto_4

    .line 1027
    :cond_9
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->showHideQConnectEditLayout()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1028
    const v5, 0x7f0f0249

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setNextFocusDownId(I)V

    goto :goto_4

    .line 1030
    :cond_a
    invoke-virtual {v3, v8}, Landroid/widget/FrameLayout;->setNextFocusDownId(I)V

    goto :goto_4

    .line 1037
    :cond_b
    if-nez p1, :cond_c

    .line 1038
    invoke-virtual {v3, v8}, Landroid/widget/FrameLayout;->setNextFocusUpId(I)V

    goto :goto_5

    .line 1040
    :cond_c
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v5}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setNextFocusUpId(I)V

    goto/16 :goto_5
.end method

.method private setForegroundButtonViewId(Landroid/widget/FrameLayout;II)V
    .locals 1
    .param p1, "panelViewFocus"    # Landroid/widget/FrameLayout;
    .param p2, "idx"    # I
    .param p3, "mode"    # I

    .prologue
    .line 1047
    if-nez p3, :cond_0

    .line 1048
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setId(I)V

    .line 1052
    :goto_0
    return-void

    .line 1050
    :cond_0
    add-int/lit8 v0, p2, 0x65

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setId(I)V

    goto :goto_0
.end method

.method private showHideQConnectEditLayout()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 340
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/enterprise/kioskmode/KioskMode;->isKioskModeEnabled()Z

    move-result v2

    .line 341
    .local v2, "isKioskEnabled":Z
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getCurrentUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 342
    .local v0, "currentUserId":I
    const/4 v1, 0x0

    .line 345
    .local v1, "isEmergencyMode":Z
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "emergency_mode"

    invoke-static {v5, v6, v4, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v3, :cond_2

    move v1, v3

    .line 346
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowSFinderQConnectView:Z

    if-eqz v5, :cond_0

    if-nez v1, :cond_0

    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->mShowSFinderQConnectQSB:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isCoveredState()Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz v2, :cond_1

    .line 351
    :cond_0
    const-string v3, "QSEditPanel"

    const-string v5, "showHideQConnectEditLayout should be hide"

    invoke-static {v3, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 355
    :cond_1
    return v3

    :cond_2
    move v1, v4

    .line 345
    goto :goto_0
.end method

.method private showToastPopup()Z
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/16 v12, 0x6d

    const/16 v11, 0x6c

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1331
    iget v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedIdx:I

    .line 1332
    .local v2, "longClickedIdx":I
    iget v9, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    if-lt v2, v9, :cond_2

    .line 1333
    iget v9, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    sub-int/2addr v2, v9

    .line 1334
    const/4 v1, 0x1

    .line 1339
    .local v1, "fromArea":I
    :goto_0
    iget v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mTouchedIdx:I

    .line 1340
    .local v0, "dropIdx":I
    iget v9, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    if-lt v0, v9, :cond_3

    .line 1341
    iget v9, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    sub-int/2addr v0, v9

    .line 1342
    const/4 v6, 0x1

    .line 1347
    .local v6, "toArea":I
    :goto_1
    iget-object v9, p0, Lcom/android/systemui/qs/QSEditPanel;->mToast:Landroid/widget/Toast;

    if-nez v9, :cond_0

    .line 1348
    iget-object v9, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    const-string v10, ""

    invoke-static {v9, v10, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    iput-object v9, p0, Lcom/android/systemui/qs/QSEditPanel;->mToast:Landroid/widget/Toast;

    .line 1350
    :cond_0
    if-nez v1, :cond_4

    if-ne v6, v8, :cond_4

    iget v9, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveAppsMinNum:I

    iget-object v10, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v9, v10, :cond_4

    .line 1351
    iget-object v9, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    const v10, 0x7f0b05b1

    new-array v8, v8, [Ljava/lang/Object;

    iget v11, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveAppsMinNum:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v7

    invoke-virtual {v9, v10, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1352
    .local v3, "message":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mToast:Landroid/widget/Toast;

    invoke-virtual {v8, v3}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 1353
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mToast:Landroid/widget/Toast;

    invoke-virtual {v8, v7}, Landroid/widget/Toast;->setDuration(I)V

    .line 1354
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mToast:Landroid/widget/Toast;

    invoke-virtual {v8}, Landroid/widget/Toast;->setShowForAllUsers()V

    .line 1355
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mToast:Landroid/widget/Toast;

    invoke-virtual {v8}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->isShown()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1356
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mToast:Landroid/widget/Toast;

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 1386
    .end local v3    # "message":Ljava/lang/String;
    :cond_1
    :goto_2
    return v7

    .line 1336
    .end local v0    # "dropIdx":I
    .end local v1    # "fromArea":I
    .end local v6    # "toArea":I
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "fromArea":I
    goto :goto_0

    .line 1344
    .restart local v0    # "dropIdx":I
    :cond_3
    const/4 v6, 0x0

    .restart local v6    # "toArea":I
    goto :goto_1

    .line 1359
    :cond_4
    if-ne v1, v8, :cond_6

    if-nez v6, :cond_6

    iget v9, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveAppsMaxNum:I

    iget-object v10, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-gt v9, v10, :cond_6

    .line 1360
    new-instance v5, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    invoke-direct {v5, p0, v13}, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;-><init>(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$1;)V

    .line 1361
    .local v5, "msgObj":Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;
    iput v1, v5, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->mode:I

    .line 1362
    iput v2, v5, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->longClickedIdx:I

    .line 1363
    iput v0, v5, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->touchedIdx:I

    .line 1364
    const/4 v4, 0x0

    .line 1365
    .local v4, "msg":Landroid/os/Message;
    iget-object v9, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1366
    iget-object v9, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 1368
    :cond_5
    iget-object v9, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v11, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1369
    iget-object v9, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1370
    iput-boolean v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mMaxActiveToAvailableEnabled:Z

    goto :goto_2

    .line 1372
    .end local v4    # "msg":Landroid/os/Message;
    .end local v5    # "msgObj":Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;
    :cond_6
    iget-boolean v9, p0, Lcom/android/systemui/qs/QSEditPanel;->mMaxActiveToAvailableEnabled:Z

    if-eqz v9, :cond_8

    if-nez v1, :cond_8

    if-ne v6, v8, :cond_8

    iget v9, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveAppsMaxNum:I

    iget-object v10, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-gt v9, v10, :cond_8

    .line 1373
    new-instance v5, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    invoke-direct {v5, p0, v13}, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;-><init>(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$1;)V

    .line 1374
    .restart local v5    # "msgObj":Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;
    iput v1, v5, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->mode:I

    .line 1375
    iput v2, v5, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->longClickedIdx:I

    .line 1376
    iput v0, v5, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->touchedIdx:I

    .line 1377
    const/4 v4, 0x0

    .line 1378
    .restart local v4    # "msg":Landroid/os/Message;
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v12}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1379
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 1381
    :cond_7
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v12, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1382
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1383
    iput-boolean v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mMaxActiveToAvailableEnabled:Z

    goto :goto_2

    .end local v4    # "msg":Landroid/os/Message;
    .end local v5    # "msgObj":Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;
    :cond_8
    move v7, v8

    .line 1386
    goto :goto_2
.end method

.method private showWhiteCircle(ILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/FrameLayout;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1143
    .local p2, "toList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, "overLayedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/FrameLayout;>;"
    if-eqz p2, :cond_0

    invoke-direct {p0, p2, p1}, Lcom/android/systemui/qs/QSEditPanel;->isEmptyPanel(Ljava/util/ArrayList;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1144
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 1146
    :cond_0
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const v1, 0x7f0f025d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedBg:Landroid/view/View;

    .line 1148
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mPrvLongClickedBg:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1149
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mPrvLongClickedBg:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1151
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedBg:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1152
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedBg:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1153
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedBg:Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mPrvLongClickedBg:Landroid/view/View;

    .line 1155
    :cond_2
    return-void
.end method

.method private updateHelpTextPosition(ZZ)V
    .locals 5
    .param p1, "oneLine"    # Z
    .param p2, "twoLines"    # Z

    .prologue
    const v4, 0x7f0a044b

    const v3, 0x7f0a044a

    .line 708
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 709
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mAvailableContainerParent:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 710
    .local v0, "lpmAvailableParent":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 711
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 712
    :cond_0
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 715
    :cond_1
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mIsTablet:Z

    if-eqz v2, :cond_2

    .line 716
    if-eqz p1, :cond_3

    .line 717
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 722
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mAvailableContainerParent:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 723
    return-void

    .line 718
    :cond_3
    if-eqz p2, :cond_2

    .line 719
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_0
.end method

.method private updateLayoutParams()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1950
    iget-object v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1951
    .local v2, "res":Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mAvailableContainerParent:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1952
    .local v1, "lpmAvailableParent":Landroid/widget/LinearLayout$LayoutParams;
    const v3, 0x7f0a044a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1953
    iget-object v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mAvailableContainerParent:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1954
    iget-object v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveContainerParent:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1955
    .local v0, "lpmActiveParent":Landroid/widget/LinearLayout$LayoutParams;
    const v3, 0x7f0a0449

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1956
    iget-object v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveContainerParent:Landroid/widget/LinearLayout;

    const v4, 0x7f0a0448

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v3, v5, v5, v5, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1957
    iget-object v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveContainerParent:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1958
    return-void
.end method

.method private updateTextResources()V
    .locals 4

    .prologue
    .line 1938
    new-instance v1, Lcom/android/systemui/qs/QSEditPanel$9;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSEditPanel$9;-><init>(Lcom/android/systemui/qs/QSEditPanel;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/systemui/qs/QSEditPanel;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1944
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1945
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mEditSummary:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    .line 1946
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mEditSummary:Landroid/widget/TextView;

    const v2, 0x7f0b05b0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1947
    return-void
.end method


# virtual methods
.method protected handleUpdateViewChangeState(Lcom/android/systemui/qs/QSEditPanel$MessageObject;)V
    .locals 6
    .param p1, "msg"    # Lcom/android/systemui/qs/QSEditPanel$MessageObject;

    .prologue
    .line 645
    const/4 v2, 0x0

    .line 647
    .local v2, "viewToUpdate":Landroid/view/View;
    const-string v3, "QSEditPanel"

    const-string v4, "handleUpdateViewChangeState()"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    iget-object v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mRecords:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/android/systemui/qs/QSEditPanel$MessageObject;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 650
    iget-object v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mRecords:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/android/systemui/qs/QSEditPanel$MessageObject;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QSEditPanel$TileRecord;

    iget-object v2, v3, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->viewContainer:Landroid/widget/FrameLayout;

    .line 651
    :cond_0
    if-eqz v2, :cond_1

    .line 652
    const v3, 0x7f0f025b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 653
    .local v0, "panelImageView":Landroid/widget/ImageView;
    const v3, 0x7f0f025c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 655
    .local v1, "panelTextView":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mRecords:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/android/systemui/qs/QSEditPanel$MessageObject;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QSEditPanel$TileRecord;

    iget-object v4, p1, Lcom/android/systemui/qs/QSEditPanel$MessageObject;->state:Lcom/android/systemui/qs/QSTile$State;

    iput-object v4, v3, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->state:Lcom/android/systemui/qs/QSTile$State;

    .line 656
    iget-object v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mRecords:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/android/systemui/qs/QSEditPanel$MessageObject;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QSEditPanel$TileRecord;

    iget-object v4, p1, Lcom/android/systemui/qs/QSEditPanel$MessageObject;->state:Lcom/android/systemui/qs/QSTile$State;

    iget-object v4, v4, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->label:Ljava/lang/String;

    .line 658
    iget-object v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mRecords:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/android/systemui/qs/QSEditPanel$MessageObject;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QSEditPanel$TileRecord;

    iget-object v3, v3, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    iget-object v4, p1, Lcom/android/systemui/qs/QSEditPanel$MessageObject;->state:Lcom/android/systemui/qs/QSTile$State;

    iget v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mCellWidth:I

    invoke-virtual {v3, v4, v1, v5}, Lcom/android/systemui/qs/QSTileView;->handleTextStateChanged(Lcom/android/systemui/qs/QSTile$State;Landroid/view/View;I)V

    .line 660
    iget-object v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mRecords:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/android/systemui/qs/QSEditPanel$MessageObject;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QSEditPanel$TileRecord;

    iget-object v4, p1, Lcom/android/systemui/qs/QSEditPanel$MessageObject;->state:Lcom/android/systemui/qs/QSTile$State;

    iget-object v4, v4, Lcom/android/systemui/qs/QSTile$State;->contentDescription:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->contentDesc:Ljava/lang/String;

    .line 661
    iget-object v3, p1, Lcom/android/systemui/qs/QSEditPanel$MessageObject;->state:Lcom/android/systemui/qs/QSTile$State;

    iget-object v3, v3, Lcom/android/systemui/qs/QSTile$State;->contentDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 662
    iget-object v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mRecords:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/android/systemui/qs/QSEditPanel$MessageObject;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QSEditPanel$TileRecord;

    iget-object v3, v3, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    iget-object v4, p1, Lcom/android/systemui/qs/QSEditPanel$MessageObject;->state:Lcom/android/systemui/qs/QSTile$State;

    invoke-virtual {v3, v4, v0}, Lcom/android/systemui/qs/QSTileView;->handleIconStateChanged(Lcom/android/systemui/qs/QSTile$State;Landroid/view/View;)V

    .line 664
    .end local v0    # "panelImageView":Landroid/widget/ImageView;
    .end local v1    # "panelTextView":Landroid/widget/TextView;
    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 387
    const-string v0, "QSEditPanel"

    const-string v1, "onAttachedToWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 389
    const v0, 0x7f0f0245

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSEditPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mAvailableButtonContainer:Landroid/widget/FrameLayout;

    .line 390
    const v0, 0x7f0f0243

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSEditPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveButtonContainer:Landroid/widget/FrameLayout;

    .line 391
    const v0, 0x7f0f0242

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSEditPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveContainerParent:Landroid/widget/LinearLayout;

    .line 392
    const v0, 0x7f0f0244

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSEditPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mAvailableContainerParent:Landroid/widget/LinearLayout;

    .line 394
    const v0, 0x7f0f0241

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSEditPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mScrollContainer:Landroid/widget/ScrollView;

    .line 396
    const v0, 0x7f0f0246

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSEditPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mEditSummary:Landroid/widget/TextView;

    .line 397
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mCurrentOrientation:I

    .line 398
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mLocale:Ljava/util/Locale;

    .line 399
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_panel_active_app_list"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 401
    const v0, 0x7f0f0249

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSEditPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mSfinderCheckBox:Landroid/widget/CompoundButton;

    .line 402
    const v0, 0x7f0f024d

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSEditPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mQconnectCheckBox:Landroid/widget/CompoundButton;

    .line 403
    const v0, 0x7f0f0248

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSEditPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mSfinderGroup:Landroid/widget/LinearLayout;

    .line 404
    const v0, 0x7f0f024c

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSEditPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mQconnectGroup:Landroid/widget/LinearLayout;

    .line 406
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mSfinderGroup:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mSfinderGroup:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/systemui/qs/QSEditPanel$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSEditPanel$2;-><init>(Lcom/android/systemui/qs/QSEditPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mQconnectGroup:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 442
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mQconnectGroup:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/systemui/qs/QSEditPanel$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSEditPanel$3;-><init>(Lcom/android/systemui/qs/QSEditPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 475
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/16 v4, 0x70

    .line 1900
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1901
    const-string v0, "QSEditPanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged() - newConfig.orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / mCurrentOrientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mCurrentOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1903
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mLocale:Ljava/util/Locale;

    .line 1904
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->updateTextResources()V

    .line 1906
    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mCurrentOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_2

    .line 1907
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mCurrentOrientation:I

    .line 1909
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1910
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1913
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSEditPanel;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 1914
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->handleDelayedOnConfigurationChanged()V

    .line 1919
    :cond_2
    :goto_0
    return-void

    .line 1916
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 1067
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1068
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1069
    return-void
.end method

.method public resetPanel()V
    .locals 8

    .prologue
    const/16 v7, 0x67

    const/16 v6, 0x66

    const/16 v5, 0x65

    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 503
    const-string v0, "QSEditPanel"

    const-string v1, "resetPanel()"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mIsTablet:Z

    if-eqz v0, :cond_c

    .line 506
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "notification_panel_active_number_of_apps"

    const/16 v2, 0xe

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveAppsNum:I

    .line 511
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSEditPanel;->setTiles(Ljava/util/Collection;)V

    .line 514
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->refreshViews()V

    .line 515
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->refreshSfinderQConnectEditLayout()V

    .line 517
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 518
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 520
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 521
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 523
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 524
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 526
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 527
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 529
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 530
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 532
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 533
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 535
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 536
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 538
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 539
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 541
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 542
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 544
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 545
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 549
    :cond_a
    invoke-static {}, Lcom/android/systemui/qs/QSEditPanel;->isSuportMobileKeyboard()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel;->isMobileKeygboardConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 550
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mScrollContainer:Landroid/widget/ScrollView;

    invoke-virtual {v0, v4, v4}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 553
    :cond_b
    return-void

    .line 508
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "notification_panel_active_number_of_apps"

    const/16 v2, 0xa

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveAppsNum:I

    goto/16 :goto_0
.end method

.method public saveAppslist()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, -0x2

    .line 1962
    const-string v0, ""

    .line 1966
    .local v0, "activeApps":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x5

    if-ge v4, v5, :cond_1

    .line 1967
    const-string v4, "QSEditPanel"

    const-string v5, "invalid mArrayActiveList.  do not saveAppslist()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2012
    :cond_0
    :goto_0
    return-void

    .line 1971
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 1972
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1973
    .local v2, "convertPanelString":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1974
    .local v1, "activeContent":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1971
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1976
    .end local v1    # "activeContent":Ljava/lang/String;
    .end local v2    # "convertPanelString":Ljava/lang/String;
    :cond_2
    const-string v4, "QSEditPanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveAppslist() -  activeApps: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    const/4 v3, 0x0

    :goto_2
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 1978
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1979
    .restart local v2    # "convertPanelString":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1980
    .restart local v1    # "activeContent":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1977
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1982
    .end local v1    # "activeContent":Ljava/lang/String;
    .end local v2    # "convertPanelString":Ljava/lang/String;
    :cond_3
    const-string v4, "QSEditPanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveAppslist() -  totalButtons: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1984
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "notification_panel_active_number_of_apps"

    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1987
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "notification_panel_active_app_list"

    invoke-static {v4, v5, v0, v7}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1991
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mIsTablet:Z

    if-eqz v4, :cond_5

    .line 1992
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "notification_panel_active_number_of_apps"

    const/16 v6, 0xe

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveAppsNum:I

    .line 1997
    :goto_3
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->showHideQConnectEditLayout()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1998
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mSfinderCheckBox:Landroid/widget/CompoundButton;

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    if-ne v4, v8, :cond_6

    .line 1999
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sfinderchecked"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2003
    :goto_4
    sget-boolean v4, Lcom/android/systemui/qs/QSEditPanel;->mDiagnosticLogs:Z

    if-eqz v4, :cond_4

    const-string v5, "SFINDER"

    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mSfinderCheckBox:Landroid/widget/CompoundButton;

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "enable"

    :goto_5
    invoke-direct {p0, v5, v4}, Lcom/android/systemui/qs/QSEditPanel;->sendLogs(Ljava/lang/String;Ljava/lang/String;)V

    .line 2005
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mQconnectCheckBox:Landroid/widget/CompoundButton;

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    if-ne v4, v8, :cond_8

    .line 2006
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "qconnectchecked"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2010
    :goto_6
    sget-boolean v4, Lcom/android/systemui/qs/QSEditPanel;->mDiagnosticLogs:Z

    if-eqz v4, :cond_0

    const-string v5, "QCONNECT"

    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mQconnectCheckBox:Landroid/widget/CompoundButton;

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "enable"

    :goto_7
    invoke-direct {p0, v5, v4}, Lcom/android/systemui/qs/QSEditPanel;->sendLogs(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1994
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "notification_panel_active_number_of_apps"

    const/16 v6, 0xa

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveAppsNum:I

    goto :goto_3

    .line 2001
    :cond_6
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sfinderchecked"

    invoke-static {v4, v5, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_4

    .line 2003
    :cond_7
    const-string v4, "disable"

    goto :goto_5

    .line 2008
    :cond_8
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "qconnectchecked"

    invoke-static {v4, v5, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_6

    .line 2010
    :cond_9
    const-string v4, "disable"

    goto :goto_7
.end method

.method public setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V
    .locals 0
    .param p1, "host"    # Lcom/android/systemui/statusbar/phone/QSTileHost;

    .prologue
    .line 336
    iput-object p1, p0, Lcom/android/systemui/qs/QSEditPanel;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    .line 337
    return-void
.end method

.method public setStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p1, "bar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 2015
    iput-object p1, p0, Lcom/android/systemui/qs/QSEditPanel;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 2016
    return-void
.end method

.method public setTiles(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "tiles":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/systemui/qs/QSTile<*>;>;"
    const/4 v3, 0x0

    .line 556
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mRecords:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 557
    iput v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveTileCount:I

    .line 558
    iput v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mAvailableTileCount:I

    .line 559
    iput-boolean v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mIsActiveAdded:Z

    .line 560
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v2}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 561
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v2}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 562
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSTile;

    .line 563
    .local v1, "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/QSEditPanel;->addTile(Lcom/android/systemui/qs/QSTile;)V

    goto :goto_0

    .line 565
    .end local v1    # "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    :cond_0
    return-void
.end method

.method public updateViews()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x64

    .line 478
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v5}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 479
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 480
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mRecords:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/QSEditPanel$TileRecord;

    .line 482
    .local v4, "tileRecord":Lcom/android/systemui/qs/QSEditPanel$TileRecord;
    new-instance v2, Lcom/android/systemui/qs/QSEditPanel$MessageObject;

    invoke-direct {v2, p0, v8}, Lcom/android/systemui/qs/QSEditPanel$MessageObject;-><init>(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$1;)V

    .line 483
    .local v2, "msgObj":Lcom/android/systemui/qs/QSEditPanel$MessageObject;
    iget-object v5, v4, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->key:Ljava/lang/String;

    iput-object v5, v2, Lcom/android/systemui/qs/QSEditPanel$MessageObject;->key:Ljava/lang/String;

    .line 484
    iget-object v5, v4, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSTile;->getState()Lcom/android/systemui/qs/QSTile$State;

    move-result-object v5

    iput-object v5, v2, Lcom/android/systemui/qs/QSEditPanel$MessageObject;->state:Lcom/android/systemui/qs/QSTile$State;

    .line 485
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v7, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 486
    .local v1, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 479
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 490
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "msgObj":Lcom/android/systemui/qs/QSEditPanel$MessageObject;
    .end local v4    # "tileRecord":Lcom/android/systemui/qs/QSEditPanel$TileRecord;
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v5}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 491
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    .line 492
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mRecords:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/QSEditPanel$TileRecord;

    .line 493
    .restart local v4    # "tileRecord":Lcom/android/systemui/qs/QSEditPanel$TileRecord;
    new-instance v2, Lcom/android/systemui/qs/QSEditPanel$MessageObject;

    invoke-direct {v2, p0, v8}, Lcom/android/systemui/qs/QSEditPanel$MessageObject;-><init>(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$1;)V

    .line 494
    .restart local v2    # "msgObj":Lcom/android/systemui/qs/QSEditPanel$MessageObject;
    iget-object v5, v4, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->key:Ljava/lang/String;

    iput-object v5, v2, Lcom/android/systemui/qs/QSEditPanel$MessageObject;->key:Ljava/lang/String;

    .line 495
    iget-object v5, v4, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSTile;->getState()Lcom/android/systemui/qs/QSTile$State;

    move-result-object v5

    iput-object v5, v2, Lcom/android/systemui/qs/QSEditPanel$MessageObject;->state:Lcom/android/systemui/qs/QSTile$State;

    .line 496
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v7, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 497
    .restart local v1    # "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 491
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 499
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "msgObj":Lcom/android/systemui/qs/QSEditPanel$MessageObject;
    .end local v4    # "tileRecord":Lcom/android/systemui/qs/QSEditPanel$TileRecord;
    :cond_1
    return-void
.end method
