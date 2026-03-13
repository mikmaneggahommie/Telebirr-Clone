.class public Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;
.super Landroid/widget/RelativeLayout;
.source "StatusBarHeaderView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
.implements Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;
    }
.end annotation


# static fields
.field public static final MULTI_LINE:Z = false

.field static final TAG:Ljava/lang/String; = "StatusBarHeaderView"


# instance fields
.field private mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

.field private mAlarmShowing:Z

.field private mAmPm:Landroid/widget/TextView;

.field private mAvatarCollapsedScaleFactor:F

.field private mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private mBatteryLevel:Landroid/widget/TextView;

.field private mCaptureValues:Z

.field private final mClipBounds:Landroid/graphics/Rect;

.field private mClock:Landroid/view/View;

.field private mClockClickListener:Landroid/view/View$OnClickListener;

.field private mClockCollapsedScaleFactor:F

.field private mClockCollapsedSize:I

.field private mClockExpandedSize:I

.field private mClockMarginBottomCollapsed:I

.field private mClockMarginBottomExpanded:I

.field private mCollapsedHeight:I

.field private final mCollapsedValues:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

.field private mCurrentT:F

.field private final mCurrentValues:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

.field private mDateCollapsed:Landroid/widget/TextView;

.field private mDateCollapsedOnlyDate:Landroid/widget/TextView;

.field private mDateExpanded:Landroid/widget/TextView;

.field private mDateGroup:Landroid/view/View;

.field private mDivider:Landroid/view/View;

.field private mEmergencyCallsOnly:Landroid/widget/TextView;

.field public mEmergencyModeActivated:Z

.field private mExpanded:Z

.field private mExpandedHeight:I

.field private final mExpandedValues:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

.field private mListening:Z

.field private mMultiUserAvatar:Landroid/widget/ImageView;

.field private mMultiUserCollapsedMargin:I

.field private mMultiUserExpandedMargin:I

.field private mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

.field private mMultiUserSwitchEndMargin:I

.field private mMultiUserSwitchWidthCollapsed:I

.field private mMultiUserSwitchWidthExpanded:I

.field private mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

.field private mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

.field private mQSEditButton:Landroid/widget/TextView;

.field private mQSPanel:Lcom/android/systemui/qs/QSPanel;

.field private mQsDetailHeader:Landroid/view/View;

.field private mQsDetailHeaderProgress:Landroid/widget/ImageView;

.field private mQsDetailHeaderSwitch:Landroid/widget/Switch;

.field private mQsDetailHeaderTitle:Landroid/widget/TextView;

.field private mQsEditMode:Z

.field private final mQsPanelCallback:Lcom/android/systemui/qs/QSPanel$Callback;

.field private mRealTimeHeight:F

.field private mShowEmergencyCallsOnly:Z

.field private mShowingDetail:Z

.field private mSignalCluster:Landroid/view/View;

.field private mSignalClusterDetached:Z

.field private mStatusIcons:Landroid/view/View;

.field private mSystemIcons:Landroid/widget/LinearLayout;

.field private mSystemIconsContainer:Landroid/view/ViewGroup;

.field private mSystemIconsSuperContainer:Landroid/view/View;

.field private mTime:Landroid/widget/TextView;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 160
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 137
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClipBounds:Landroid/graphics/Rect;

    .line 141
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCollapsedValues:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

    .line 142
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpandedValues:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

    .line 143
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCurrentValues:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

    .line 151
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQsEditMode:Z

    .line 153
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mEmergencyModeActivated:Z

    .line 885
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQsPanelCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    .line 992
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$5;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockClickListener:Landroid/view/View$OnClickListener;

    .line 161
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;F)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;
    .param p1, "x1"    # F

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setClipping(F)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQsDetailHeaderSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQsDetailHeaderProgress:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClock:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateGroup:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQsDetailHeader:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mShowingDetail:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQsDetailHeaderTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateAmPmTranslation()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateDateCollapsedTranslation()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClipBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;

    return-object v0
.end method

.method private applyAlpha(Landroid/view/View;F)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "alpha"    # F

    .prologue
    .line 765
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 774
    :cond_0
    :goto_0
    return-void

    .line 768
    :cond_1
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_2

    .line 769
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 771
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 772
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method private applyLayoutValues(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;)V
    .locals 5
    .param p1, "values"    # Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 777
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->timeScale:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleX(F)V

    .line 778
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->timeScale:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleY(F)V

    .line 779
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClock:Landroid/view/View;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->clockY:F

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClock:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 780
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateGroup:Landroid/view/View;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->dateY:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 782
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->avatarScale:F

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 783
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->avatarScale:F

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 784
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->avatarX:F

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setX(F)V

    .line 785
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->avatarY:F

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    .line 786
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_3

    .line 787
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->batteryX:F

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getRight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 791
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->batteryY:F

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 792
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v0, :cond_5

    .line 793
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_4

    .line 794
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 800
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 810
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mEmergencyCallsOnly:Landroid/widget/TextView;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->emergencyCallsOnlyAlpha:F

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->applyAlpha(Landroid/view/View;F)V

    .line 811
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mShowingDetail:Z

    if-nez v0, :cond_1

    .line 815
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateExpanded:Landroid/widget/TextView;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->dateExpandedAlpha:F

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->applyAlpha(Landroid/view/View;F)V

    .line 816
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateCollapsed:Landroid/widget/TextView;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->dateCollapsedAlpha:F

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->applyAlpha(Landroid/view/View;F)V

    .line 817
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateCollapsedOnlyDate:Landroid/widget/TextView;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->dateCollapsedAlpha:F

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->applyAlpha(Landroid/view/View;F)V

    .line 822
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mBatteryLevel:Landroid/widget/TextView;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->batteryLevelAlpha:F

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->applyAlpha(Landroid/view/View;F)V

    .line 824
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->signalClusterAlpha:F

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->applyAlpha(Landroid/view/View;F)V

    .line 825
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-nez v0, :cond_2

    .line 826
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setScaleX(F)V

    .line 827
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setScaleY(F)V

    .line 829
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateAmPmTranslation()V

    .line 831
    return-void

    .line 789
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->batteryX:F

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    goto/16 :goto_0

    .line 797
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    goto/16 :goto_1

    .line 803
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 804
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 805
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_2
.end method

.method private captureLayoutValues(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;)V
    .locals 4
    .param p1, "target"    # Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 725
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->timeScale:F

    .line 726
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClock:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v0, v0

    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->clockY:F

    .line 727
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateGroup:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->dateY:F

    .line 728
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mEmergencyCallsOnly:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getAlphaForVisibility(Landroid/view/View;)F

    move-result v0

    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->emergencyCallsOnlyAlpha:F

    .line 730
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateExpanded:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getAlphaForVisibility(Landroid/view/View;)F

    move-result v0

    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->dateExpandedAlpha:F

    .line 731
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mShowDateOnlyOnStatusBarHeader:Z

    if-eqz v0, :cond_3

    .line 732
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateCollapsedOnlyDate:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getAlphaForVisibility(Landroid/view/View;)F

    move-result v0

    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->dateCollapsedAlpha:F

    .line 743
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_4

    .line 744
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v0, v0

    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->batteryX:F

    .line 750
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v0, v0

    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->batteryY:F

    .line 751
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mBatteryLevel:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getAlphaForVisibility(Landroid/view/View;)F

    move-result v0

    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->batteryLevelAlpha:F

    .line 756
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalClusterDetached:Z

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    iput v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->signalClusterAlpha:F

    .line 757
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-nez v0, :cond_1

    const/high16 v2, 0x42b40000    # 90.0f

    :cond_1
    iput v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->settingsRotation:F

    .line 758
    return-void

    .line 725
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockCollapsedScaleFactor:F

    goto :goto_0

    .line 734
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateCollapsed:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getAlphaForVisibility(Landroid/view/View;)F

    move-result v0

    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->dateCollapsedAlpha:F

    goto :goto_1

    .line 747
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v0, v0

    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->batteryX:F

    goto :goto_2
.end method

.method private getAlphaForVisibility(Landroid/view/View;)F
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 761
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPackageInstalled(Ljava/lang/String;)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1001
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1003
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1004
    .local v1, "info":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    .line 1005
    const-string v4, "StatusBarHeaderView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : return true"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    const/4 v3, 0x1

    .line 1013
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :goto_0
    return v3

    .line 1008
    .restart local v1    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    const-string v4, "StatusBarHeaderView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : return false"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1011
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 1012
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private loadDimens()V
    .locals 2

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a02e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCollapsedHeight:I

    .line 292
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a02e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpandedHeight:I

    .line 294
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0367

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserExpandedMargin:I

    .line 296
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0368

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserCollapsedMargin:I

    .line 298
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a036d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockMarginBottomExpanded:I

    .line 301
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a03be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitchEndMargin:I

    .line 302
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0373

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitchWidthCollapsed:I

    .line 304
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0374

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitchWidthExpanded:I

    .line 306
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0376

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAvatarCollapsedScaleFactor:F

    .line 309
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a037c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockCollapsedSize:I

    .line 310
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a037d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockExpandedSize:I

    .line 311
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockCollapsedSize:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockExpandedSize:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockCollapsedScaleFactor:F

    .line 313
    return-void
.end method

.method private reattachSignalCluster()V
    .locals 3

    .prologue
    .line 437
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 438
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIcons:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 439
    return-void
.end method

.method private requestCaptureValues()V
    .locals 1

    .prologue
    .line 286
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCaptureValues:Z

    .line 287
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->requestLayout()V

    .line 288
    return-void
.end method

.method private setClipping(F)V
    .locals 5
    .param p1, "height"    # F

    .prologue
    .line 617
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getPaddingLeft()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    float-to-int v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 618
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setClipBounds(Landroid/graphics/Rect;)V

    .line 619
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->invalidateOutline()V

    .line 620
    return-void
.end method

.method private startBatteryActivity()V
    .locals 3

    .prologue
    .line 687
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.POWER_USAGE_SUMMARY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    .line 689
    return-void
.end method

.method private startSettingsActivity()V
    .locals 3

    .prologue
    .line 682
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    .line 684
    return-void
.end method

.method private updateAmPmTranslation()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 481
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getLayoutDirection()I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    .line 482
    .local v0, "rtl":Z
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAmPm:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    mul-int/2addr v1, v3

    int-to-float v1, v1

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getScaleX()F

    move-result v4

    sub-float/2addr v3, v4

    mul-float/2addr v1, v3

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 483
    return-void

    .line 481
    .end local v0    # "rtl":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 482
    .restart local v0    # "rtl":Z
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private updateAvatarScale()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 464
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 465
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 470
    return-void
.end method

.method private updateClickTargets()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 514
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mSupportMumButton:Z

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setClickable(Z)V

    .line 516
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setFocusable(Z)V

    .line 522
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 523
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 525
    return-void

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setClickable(Z)V

    .line 520
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setFocusable(Z)V

    goto :goto_0
.end method

.method private updateClockCollapsedMargin()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 275
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 276
    .local v3, "res":Landroid/content/res/Resources;
    const v4, 0x7f0a036e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 277
    .local v2, "padding":I
    const v4, 0x7f0a0372

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 279
    .local v1, "largePadding":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->fontScale:F

    const v5, 0x3fa66666    # 1.3f

    invoke-static {v4, v6, v5}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v4

    sub-float/2addr v4, v6

    const v5, 0x3e999998    # 0.29999995f

    div-float v0, v4, v5

    .line 281
    .local v0, "largeFactor":F
    sub-float v4, v6, v0

    int-to-float v5, v2

    mul-float/2addr v4, v5

    int-to-float v5, v1

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockMarginBottomCollapsed:I

    .line 282
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->requestLayout()V

    .line 283
    return-void
.end method

.method private updateClockLp()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 528
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v3, :cond_3

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockMarginBottomExpanded:I

    .line 531
    .local v2, "marginBottom":I
    :goto_0
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mIsTablet:Z

    if-eqz v3, :cond_0

    .line 532
    const/4 v2, 0x0

    .line 533
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateGroup:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 534
    .local v1, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    if-eq v2, v3, :cond_1

    .line 535
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 536
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateGroup:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 538
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClock:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 539
    .local v0, "clocklp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getVisibility()I

    move-result v3

    if-ne v3, v4, :cond_2

    .line 540
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getVisibility()I

    move-result v3

    if-ne v3, v4, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0370

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 544
    :cond_2
    return-void

    .line 528
    .end local v0    # "clocklp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2    # "marginBottom":I
    :cond_3
    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockMarginBottomCollapsed:I

    goto :goto_0

    .line 540
    .restart local v0    # "clocklp":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v1    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v2    # "marginBottom":I
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a036f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_1
.end method

.method private updateClockScale()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 473
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockExpandedSize:I

    int-to-float v0, v0

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 474
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setScaleX(F)V

    .line 475
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setScaleY(F)V

    .line 476
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateAmPmTranslation()V

    .line 478
    return-void

    .line 473
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockCollapsedSize:I

    int-to-float v0, v0

    goto :goto_0
.end method

.method private updateDateCollapsedTranslation()V
    .locals 7

    .prologue
    const/4 v3, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    .line 486
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getLayoutDirection()I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    .line 487
    .local v0, "rtl":Z
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateCollapsed:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    move v2, v1

    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getWidth()I

    move-result v5

    mul-int/2addr v2, v5

    int-to-float v2, v2

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getScaleX()F

    move-result v5

    sub-float v5, v6, v5

    mul-float/2addr v2, v5

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 488
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateCollapsedOnlyDate:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    mul-int/2addr v1, v3

    int-to-float v1, v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getScaleX()F

    move-result v3

    sub-float v3, v6, v3

    mul-float/2addr v1, v3

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 489
    return-void

    .line 486
    .end local v0    # "rtl":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0    # "rtl":Z
    :cond_1
    move v2, v3

    .line 487
    goto :goto_1

    :cond_2
    move v1, v3

    .line 488
    goto :goto_2
.end method

.method private updateEditButtonVisibility()V
    .locals 2

    .prologue
    .line 566
    const v1, 0x7f0f038a

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 571
    .local v0, "editButtonGroup":Landroid/view/ViewGroup;
    return-void
.end method

.method private updateHeights()V
    .locals 3

    .prologue
    .line 372
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQsEditMode:Z

    if-nez v2, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpandedHeight:I

    .line 373
    .local v0, "height":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 374
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v2, v0, :cond_0

    .line 375
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 376
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 378
    :cond_0
    return-void

    .line 372
    .end local v0    # "height":I
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCollapsedHeight:I

    goto :goto_0
.end method

.method private updateLayoutValues(F)V
    .locals 3
    .param p1, "t"    # F

    .prologue
    .line 609
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCaptureValues:Z

    if-eqz v0, :cond_0

    .line 614
    :goto_0
    return-void

    .line 612
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCurrentValues:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCollapsedValues:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpandedValues:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->interpoloate(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;F)V

    .line 613
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCurrentValues:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->applyLayoutValues(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;)V

    goto :goto_0
.end method

.method private updateListeners()V
    .locals 1

    .prologue
    .line 453
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mListening:Z

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->addStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    .line 455
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/NextAlarmController;->addStateChangedCallback(Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;)V

    .line 460
    :goto_0
    return-void

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->removeStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    .line 458
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/NextAlarmController;->removeStateChangedCallback(Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;)V

    goto :goto_0
.end method

.method private updateMultiUserSwitch()V
    .locals 4

    .prologue
    .line 576
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v3, :cond_2

    .line 577
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserExpandedMargin:I

    .line 578
    .local v1, "marginEnd":I
    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitchWidthExpanded:I

    .line 583
    .local v2, "width":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 584
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v3

    if-ne v1, v3, :cond_0

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-eq v3, v2, :cond_1

    .line 585
    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 586
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 587
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 589
    :cond_1
    return-void

    .line 580
    .end local v0    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v1    # "marginEnd":I
    .end local v2    # "width":I
    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserCollapsedMargin:I

    .line 581
    .restart local v1    # "marginEnd":I
    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitchWidthCollapsed:I

    .restart local v2    # "width":I
    goto :goto_0
.end method

.method private updateSettingButtonMarginEnd()V
    .locals 5

    .prologue
    .line 548
    const v3, 0x7f0f038f

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 549
    .local v2, "settingButtonGroup":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 551
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mSupportMumButton:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mEmergencyModeActivated:Z

    if-eqz v3, :cond_0

    .line 552
    const/4 v1, 0x0

    .line 561
    .local v1, "marginEnd":I
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 562
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 563
    return-void

    .line 554
    .end local v1    # "marginEnd":I
    :cond_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mEmergencyModeActivated:Z

    if-eqz v3, :cond_1

    .line 555
    const/4 v1, 0x0

    .restart local v1    # "marginEnd":I
    goto :goto_0

    .line 557
    .end local v1    # "marginEnd":I
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a04b6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .restart local v1    # "marginEnd":I
    :goto_1
    goto :goto_0

    .end local v1    # "marginEnd":I
    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitchEndMargin:I

    goto :goto_1
.end method

.method private updateSignalClusterDetachment()V
    .locals 3

    .prologue
    .line 425
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    .line 426
    .local v0, "detached":Z
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalClusterDetached:Z

    if-eq v0, v1, :cond_0

    .line 427
    if-eqz v0, :cond_1

    .line 428
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 433
    :cond_0
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalClusterDetached:Z

    .line 434
    return-void

    .line 430
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->reattachSignalCluster()V

    goto :goto_0
.end method

.method private updateSystemIconsLayoutParams()V
    .locals 4

    .prologue
    const/16 v3, 0x10

    .line 442
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 443
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getId()I

    move-result v1

    .line 446
    .local v1, "rule":I
    invoke-virtual {v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v2

    aget v2, v2, v3

    if-eq v1, v2, :cond_0

    .line 447
    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 448
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 450
    :cond_0
    return-void
.end method

.method private updateVisibilities()V
    .locals 5

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 382
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v0, :cond_5

    .line 383
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mShowDateOnlyOnStatusBarHeader:Z

    if-eqz v0, :cond_4

    .line 384
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateCollapsed:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 385
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateExpanded:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 386
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateCollapsedOnlyDate:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 387
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClock:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 402
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setMumButtonVisibility()V

    .line 411
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mIsMocha:Z

    if-eqz v0, :cond_1

    .line 412
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClock:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAlarmShowing:Z

    if-eqz v0, :cond_8

    move v0, v3

    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 416
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQsDetailHeader:Landroid/view/View;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mShowingDetail:Z

    if-eqz v4, :cond_2

    move v3, v1

    :cond_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 417
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 418
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateSignalClusterDetachment()V

    .line 420
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mEmergencyCallsOnly:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mShowEmergencyCallsOnly:Z

    if-eqz v0, :cond_9

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 421
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mBatteryLevel:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v3, :cond_a

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 422
    return-void

    .line 389
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateCollapsed:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 390
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateExpanded:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 391
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateCollapsedOnlyDate:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 392
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClock:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 395
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateCollapsed:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 396
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateExpanded:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 397
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDivider:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mEmergencyModeActivated:Z

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mShowEditIcon:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isCoverViewShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    move v0, v2

    :goto_4
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 399
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateCollapsedOnlyDate:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_7
    move v0, v1

    .line 397
    goto :goto_4

    :cond_8
    move v0, v1

    .line 412
    goto :goto_1

    :cond_9
    move v0, v2

    .line 420
    goto :goto_2

    :cond_a
    move v1, v2

    .line 421
    goto :goto_3
.end method


# virtual methods
.method public attachSystemIcons(Landroid/widget/LinearLayout;)V
    .locals 2
    .param p1, "systemIcons"    # Landroid/widget/LinearLayout;

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 624
    const v0, 0x7f0f020e

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mStatusIcons:Landroid/view/View;

    .line 625
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 626
    const v0, 0x7f0f0210

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    .line 631
    :goto_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIcons:Landroid/widget/LinearLayout;

    .line 632
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateVisibilities()V

    .line 633
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mStatusIcons:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mStatusIcons:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 636
    :cond_0
    return-void

    .line 628
    :cond_1
    const v0, 0x7f0f03d7

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    goto :goto_0
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .prologue
    .line 722
    return-void
.end method

.method public getCollapsedHeight()I
    .locals 1

    .prologue
    .line 329
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCollapsedHeight:I

    return v0
.end method

.method public getExpandedHeight()I
    .locals 1

    .prologue
    .line 333
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQsEditMode:Z

    if-eqz v0, :cond_0

    .line 334
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCollapsedHeight:I

    .line 336
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpandedHeight:I

    goto :goto_0
.end method

.method public getRealTimeHeight()F
    .locals 1

    .prologue
    .line 1025
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQsEditMode:Z

    if-eqz v0, :cond_0

    .line 1026
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCollapsedHeight:I

    int-to-float v0, v0

    .line 1028
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mRealTimeHeight:F

    goto :goto_0
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 6
    .param p1, "level"    # I
    .param p2, "pluggedIn"    # Z
    .param p3, "charging"    # Z

    .prologue
    .line 493
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v1

    int-to-double v2, p1

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 494
    .local v0, "percentage":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mBatteryLevel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 670
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 671
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->startBatteryActivity()V

    .line 679
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const v4, 0x7f0a0381

    const v3, 0x7f0a037d

    const v2, 0x7f0a030a

    .line 251
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 252
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mBatteryLevel:Landroid/widget/TextView;

    const v1, 0x7f0a03a1

    invoke-static {v0, v1}, Lcom/android/systemui/Utils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 253
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mEmergencyCallsOnly:Landroid/widget/TextView;

    const v1, 0x7f0a0380

    invoke-static {v0, v1}, Lcom/android/systemui/Utils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 255
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateCollapsed:Landroid/widget/TextView;

    const v1, 0x7f0a037e

    invoke-static {v0, v1}, Lcom/android/systemui/Utils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 256
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateCollapsedOnlyDate:Landroid/widget/TextView;

    invoke-static {v0, v4}, Lcom/android/systemui/Utils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 257
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateExpanded:Landroid/widget/TextView;

    invoke-static {v0, v4}, Lcom/android/systemui/Utils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 259
    const v0, 0x1020016

    invoke-static {p0, v0, v2}, Lcom/android/systemui/Utils;->updateFontSize(Landroid/view/View;II)V

    .line 260
    const v0, 0x1020017

    invoke-static {p0, v0, v2}, Lcom/android/systemui/Utils;->updateFontSize(Landroid/view/View;II)V

    .line 262
    const v0, 0x7f0f0383

    invoke-static {p0, v0, v3}, Lcom/android/systemui/Utils;->updateFontSize(Landroid/view/View;II)V

    .line 264
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mEmergencyCallsOnly:Landroid/widget/TextView;

    const v1, 0x104028f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 266
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a037c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockCollapsedSize:I

    .line 267
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockExpandedSize:I

    .line 268
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockCollapsedSize:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockExpandedSize:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockCollapsedScaleFactor:F

    .line 272
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 165
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 166
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mUserManager:Landroid/os/UserManager;

    .line 168
    const v0, 0x7f0f01a0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    .line 169
    const v0, 0x7f0f01a1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsContainer:Landroid/view/ViewGroup;

    .line 170
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    const v0, 0x7f0f0388

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateGroup:Landroid/view/View;

    .line 172
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateGroup:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 173
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mShowDateOnlyOnStatusBarHeader:Z

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateGroup:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateGroup:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 178
    :cond_1
    const v0, 0x7f0f0180

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClock:Landroid/view/View;

    .line 179
    const v0, 0x7f0f0381

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;

    .line 180
    const v0, 0x7f0f0382

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAmPm:Landroid/widget/TextView;

    .line 181
    const v0, 0x7f0f019e

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    .line 182
    const v0, 0x7f0f019f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;

    .line 183
    const v0, 0x7f0f0392

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateCollapsed:Landroid/widget/TextView;

    .line 184
    const v0, 0x7f0f0391

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateCollapsedOnlyDate:Landroid/widget/TextView;

    .line 185
    const v0, 0x7f0f0393

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateExpanded:Landroid/widget/TextView;

    .line 186
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v0, :cond_2

    .line 187
    const v0, 0x7f0f038b

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQSEditButton:Landroid/widget/TextView;

    .line 188
    const v0, 0x7f0f0256

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDivider:Landroid/view/View;

    .line 192
    :cond_2
    const v0, 0x7f0f0394

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQsDetailHeader:Landroid/view/View;

    .line 193
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQsDetailHeader:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 194
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQsDetailHeader:Landroid/view/View;

    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQsDetailHeaderTitle:Landroid/widget/TextView;

    .line 195
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQsDetailHeader:Landroid/view/View;

    const v1, 0x1020017

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQsDetailHeaderSwitch:Landroid/widget/Switch;

    .line 196
    const v0, 0x7f0f0395

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQsDetailHeaderProgress:Landroid/widget/ImageView;

    .line 197
    const v0, 0x7f0f0390

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mEmergencyCallsOnly:Landroid/widget/TextView;

    .line 198
    const v0, 0x7f0f01a2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mBatteryLevel:Landroid/widget/TextView;

    .line 201
    const v0, 0x7f0f03d7

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    .line 202
    const v0, 0x7f0f020d

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIcons:Landroid/widget/LinearLayout;

    .line 203
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->loadDimens()V

    .line 204
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateVisibilities()V

    .line 207
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mSupportMumButton:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mIsMocha:Z

    if-nez v0, :cond_3

    .line 208
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateSettingButtonMarginEnd()V

    .line 210
    :cond_3
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 225
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$2;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 231
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->requestCaptureValues()V

    .line 232
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 236
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 237
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCaptureValues:Z

    if-eqz v0, :cond_0

    .line 238
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpandedValues:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->captureLayoutValues(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;)V

    .line 243
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCaptureValues:Z

    .line 247
    :cond_0
    return-void

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCollapsedValues:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->captureLayoutValues(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;)V

    goto :goto_0
.end method

.method public onNextAlarmChanged(Landroid/app/AlarmManager$AlarmClockInfo;)V
    .locals 1
    .param p1, "nextAlarm"    # Landroid/app/AlarmManager$AlarmClockInfo;

    .prologue
    .line 504
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    .line 505
    if-eqz p1, :cond_0

    .line 508
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAlarmShowing:Z

    .line 509
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateEverything()V

    .line 510
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->requestCaptureValues()V

    .line 511
    return-void
.end method

.method public onPowerSaveChanged()V
    .locals 0

    .prologue
    .line 500
    return-void
.end method

.method public onSystemIconsDetached()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 639
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalClusterDetached:Z

    if-eqz v0, :cond_0

    .line 640
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->reattachSignalCluster()V

    .line 641
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalClusterDetached:Z

    .line 643
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mStatusIcons:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 644
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mStatusIcons:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 646
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 647
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 648
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 649
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 650
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 652
    :cond_2
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mStatusIcons:Landroid/view/View;

    .line 653
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    .line 654
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIcons:Landroid/widget/LinearLayout;

    .line 655
    return-void
.end method

.method public setActivityStarter(Lcom/android/systemui/statusbar/phone/ActivityStarter;)V
    .locals 0
    .param p1, "activityStarter"    # Lcom/android/systemui/statusbar/phone/ActivityStarter;

    .prologue
    .line 316
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

    .line 317
    return-void
.end method

.method public setBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 1
    .param p1, "bar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 1019
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 1021
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setPhoneStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 1022
    return-void
.end method

.method public setBatteryController(Lcom/android/systemui/statusbar/policy/BatteryController;)V
    .locals 1
    .param p1, "batteryController"    # Lcom/android/systemui/statusbar/policy/BatteryController;

    .prologue
    .line 320
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 321
    const v0, 0x7f0f0212

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/BatteryMeterView;->setBatteryController(Lcom/android/systemui/statusbar/policy/BatteryController;)V

    .line 322
    return-void
.end method

.method public setExpanded(Z)V
    .locals 2
    .param p1, "expanded"    # Z

    .prologue
    .line 348
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eq p1, v1, :cond_1

    const/4 v0, 0x1

    .line 349
    .local v0, "changed":Z
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    .line 350
    if-eqz v0, :cond_0

    .line 351
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateEverything()V

    .line 353
    :cond_0
    return-void

    .line 348
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setExpansion(F)V
    .locals 4
    .param p1, "t"    # F

    .prologue
    .line 592
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-nez v1, :cond_0

    .line 593
    const/4 p1, 0x0

    .line 595
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCurrentT:F

    .line 596
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCollapsedHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpandedHeight:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCollapsedHeight:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float v0, v1, v2

    .line 597
    .local v0, "height":F
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCollapsedHeight:I

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 598
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCollapsedHeight:I

    int-to-float v0, v1

    .line 600
    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpandedHeight:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    .line 601
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpandedHeight:I

    int-to-float v0, v1

    .line 603
    :cond_2
    const/high16 v1, 0x3f000000    # 0.5f

    sub-float v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setRealTimeHeight(F)V

    .line 604
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setClipping(F)V

    .line 606
    return-void
.end method

.method public setListening(Z)V
    .locals 1
    .param p1, "listening"    # Z

    .prologue
    .line 340
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mListening:Z

    if-ne p1, v0, :cond_0

    .line 345
    :goto_0
    return-void

    .line 343
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mListening:Z

    .line 344
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateListeners()V

    goto :goto_0
.end method

.method public setMumButtonVisibility()V
    .locals 12

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 1046
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v9

    const/16 v10, 0x64

    if-ge v9, v10, :cond_2

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v9

    if-lez v9, :cond_2

    const/4 v3, 0x1

    .line 1048
    .local v3, "isNotOwner":Z
    :goto_0
    const/4 v1, 0x0

    .line 1049
    .local v1, "hasGuestModeInitialized":Z
    const/4 v0, 0x0

    .line 1050
    .local v0, "exceptionUserCount":I
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v9}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v6

    .line 1051
    .local v6, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 1052
    .local v4, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1053
    const/4 v1, 0x1

    .line 1054
    add-int/lit8 v0, v0, 0x1

    .line 1056
    :cond_1
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1057
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "exceptionUserCount":I
    .end local v1    # "hasGuestModeInitialized":Z
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "isNotOwner":Z
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    .end local v6    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_2
    move v3, v7

    .line 1046
    goto :goto_0

    .line 1061
    .restart local v0    # "exceptionUserCount":I
    .restart local v1    # "hasGuestModeInitialized":Z
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "isNotOwner":Z
    .restart local v6    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_3
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v9}, Landroid/os/UserManager;->getUserCount()I

    move-result v5

    .line 1063
    .local v5, "userCount":I
    const-string v9, "StatusBarHeaderView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "userCount "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", exceptionUserCount : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    sget-boolean v9, Lcom/android/systemui/statusbar/Feature;->mSupportMumButton:Z

    if-eqz v9, :cond_5

    .line 1065
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_4

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mEmergencyModeActivated:Z

    if-eqz v9, :cond_6

    .line 1066
    :cond_4
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setVisibility(I)V

    .line 1074
    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateSettingButtonMarginEnd()V

    .line 1075
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateEditButtonVisibility()V

    .line 1076
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateClockLp()V

    .line 1077
    return-void

    .line 1069
    :cond_6
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    if-nez v3, :cond_7

    add-int/lit8 v10, v0, 0x1

    if-gt v5, v10, :cond_7

    if-nez v1, :cond_7

    sget-boolean v10, Lcom/android/systemui/statusbar/Feature;->mIsTablet:Z

    if-eqz v10, :cond_8

    :cond_7
    :goto_3
    invoke-virtual {v9, v7}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setVisibility(I)V

    goto :goto_2

    :cond_8
    move v7, v8

    goto :goto_3
.end method

.method public setNextAlarmController(Lcom/android/systemui/statusbar/policy/NextAlarmController;)V
    .locals 0
    .param p1, "nextAlarmController"    # Lcom/android/systemui/statusbar/policy/NextAlarmController;

    .prologue
    .line 325
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    .line 326
    return-void
.end method

.method public setQSPanel(Lcom/android/systemui/qs/QSPanel;)V
    .locals 1
    .param p1, "qsp"    # Lcom/android/systemui/qs/QSPanel;

    .prologue
    .line 692
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    .line 699
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setQsPanel(Lcom/android/systemui/qs/QSPanel;)V

    .line 700
    return-void
.end method

.method public setQsEditMode(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 1036
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQsEditMode:Z

    .line 1037
    return-void
.end method

.method public setRealTimeHeight(F)V
    .locals 0
    .param p1, "mRealTimeHeight"    # F

    .prologue
    .line 1032
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mRealTimeHeight:F

    .line 1033
    return-void
.end method

.method public setShowEmergencyCallsOnly(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 708
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mShowEmergencyCallsOnly:Z

    if-eq p1, v1, :cond_1

    const/4 v0, 0x1

    .line 709
    .local v0, "changed":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 710
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mShowEmergencyCallsOnly:Z

    .line 711
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v1, :cond_0

    .line 712
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateEverything()V

    .line 713
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->requestCaptureValues()V

    .line 716
    :cond_0
    return-void

    .line 708
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setUserInfoController(Lcom/android/systemui/statusbar/policy/UserInfoController;)V
    .locals 1
    .param p1, "userInfoController"    # Lcom/android/systemui/statusbar/policy/UserInfoController;

    .prologue
    .line 658
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$3;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/policy/UserInfoController;->addListener(Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;)V

    .line 664
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 704
    const/4 v0, 0x1

    return v0
.end method

.method public updateEverything()V
    .locals 2

    .prologue
    .line 356
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateHeights()V

    .line 357
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateVisibilities()V

    .line 358
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateSystemIconsLayoutParams()V

    .line 359
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateClickTargets()V

    .line 360
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mIsMocha:Z

    if-eqz v0, :cond_0

    .line 361
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateMultiUserSwitch()V

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v0, :cond_1

    .line 363
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->setExpanded(Z)V

    .line 367
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateClockLp()V

    .line 368
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->requestCaptureValues()V

    .line 369
    return-void
.end method
