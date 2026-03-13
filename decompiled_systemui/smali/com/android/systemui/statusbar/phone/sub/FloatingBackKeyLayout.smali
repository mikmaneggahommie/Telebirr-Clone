.class public Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;
.super Landroid/widget/FrameLayout;
.source "FloatingBackKeyLayout.java"


# static fields
.field public static final POSITION_LEFT_BOTTOM:I = 0x1

.field public static final POSITION_LEFT_TOP:I = 0x0

.field public static final POSITION_RIGHT_BOTTOM:I = 0x3

.field public static final POSITION_RIGHT_TOP:I = 0x2

.field public static final STATE_DISAPPEAR:I = 0x4

.field public static final STATE_EXPAND:I = 0x3

.field public static final STATE_HIDE:I = 0x0

.field public static final STATE_MOVE:I = 0x2

.field public static final STATE_OPEN:I = 0x1


# instance fields
.field private isDimmed:Z

.field private mButtonSize:I

.field private mCurOrientation:I

.field private mDeviceType:I

.field private mDimmedTimeOut:Ljava/lang/Runnable;

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mExpandX:I

.field private mExpandY:I

.field private mFlagToCutGhostTouch:Z

.field private mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;

.field private mFloatingBackExpanded:Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;

.field private mFloatingBackLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mFloatingBackTouchListener:Landroid/view/View$OnTouchListener;

.field private mFloatingKeyVisibility:Z

.field private mHandler:Landroid/os/Handler;

.field private mInitX:I

.field private mInitY:I

.field private mIsEnabled:Z

.field private mIsMoveStarted:Z

.field private mLastConfigOrientation:I

.field mLastX:I

.field mLastY:I

.field private mNeedToRotationChange:Z

.field private mOldOrientation:I

.field private mOldXForRoatation:I

.field private mOldYForRoatation:I

.field private mPosition:I

.field private mSContextListener:Landroid/hardware/scontext/SContextListener;

.field private mSContextManager:Landroid/hardware/scontext/SContextManager;

.field private mSavedOrientation:I

.field private mState:I

.field private mSubBar:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;

.field private mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mWindowManager:Landroid/view/WindowManagerImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 264
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 265
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 269
    invoke-direct {p0, p1, p2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    iput v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mState:I

    .line 65
    iput v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mPosition:I

    .line 91
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFlagToCutGhostTouch:Z

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 94
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mIsEnabled:Z

    .line 95
    iput v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDeviceType:I

    .line 97
    new-instance v0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$1;-><init>(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    .line 141
    new-instance v0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$2;-><init>(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBackLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 150
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mIsMoveStarted:Z

    .line 152
    new-instance v0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$3;-><init>(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBackTouchListener:Landroid/view/View$OnTouchListener;

    .line 300
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingKeyVisibility:Z

    .line 385
    iput v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mLastConfigOrientation:I

    .line 584
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->isDimmed:Z

    .line 597
    new-instance v0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$7;-><init>(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDimmedTimeOut:Ljava/lang/Runnable;

    .line 626
    iput v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mLastX:I

    .line 627
    iput v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mLastY:I

    .line 666
    iput v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldOrientation:I

    .line 667
    iput v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mSavedOrientation:I

    .line 668
    iput v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mCurOrientation:I

    .line 670
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mNeedToRotationChange:Z

    .line 270
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mState:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mState:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBackExpanded:Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mCurOrientation:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->changeRotation(IZ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mSavedOrientation:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mSavedOrientation:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->expand()V

    return-void
.end method

.method static synthetic access$1402(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->isDimmed:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)Lcom/android/systemui/statusbar/policy/KeyButtonView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDimmedTimeOut:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mInitX:I

    return v0
.end method

.method static synthetic access$1802(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mInitX:I

    return p1
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mInitY:I

    return v0
.end method

.method static synthetic access$1902(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mInitY:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFlagToCutGhostTouch:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFlagToCutGhostTouch:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->isLeft()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->open()V

    return-void
.end method

.method static synthetic access$2302(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mIsMoveStarted:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->beginMoving(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->updateWindowParams()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDisplayWidth:I

    return v0
.end method

.method static synthetic access$2700(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDisplayHeight:I

    return v0
.end method

.method static synthetic access$2802(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mPosition:I

    return p1
.end method

.method static synthetic access$2900(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)Landroid/view/WindowManagerImpl;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowManager:Landroid/view/WindowManagerImpl;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->addMovedWindow()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldXForRoatation:I

    return p1
.end method

.method static synthetic access$3100(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->dimmedAnim()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->die()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mExpandX:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldYForRoatation:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mExpandY:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldOrientation:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldOrientation:I

    return p1
.end method

.method static synthetic access$902(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mNeedToRotationChange:Z

    return p1
.end method

.method private addExpandedWindow()V
    .locals 7

    .prologue
    const/4 v1, -0x1

    .line 446
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBackExpanded:Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mExpandX:I

    iget v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mExpandY:I

    iget v5, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mPosition:I

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->setKeysPosition(IIIZ)V

    .line 448
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7e8

    const/16 v4, 0x328

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 456
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 457
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 458
    const v1, 0x3f19999a    # 0.6f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 459
    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 460
    const-string v1, "Floating Back Expanded"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 461
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 463
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBackExpanded:Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->isAttachedToWindow()Z

    move-result v1

    if-nez v1, :cond_0

    .line 464
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowManager:Landroid/view/WindowManagerImpl;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBackExpanded:Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;

    invoke-virtual {v1, v2, v0}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 465
    :cond_0
    return-void
.end method

.method private addMovedWindow()V
    .locals 6

    .prologue
    const/4 v1, -0x1

    .line 468
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7e8

    const/16 v4, 0x328

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 476
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 477
    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 478
    const-string v1, "Floating Back Expanded"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 479
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 481
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBackExpanded:Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->isAttachedToWindow()Z

    move-result v1

    if-nez v1, :cond_0

    .line 482
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowManager:Landroid/view/WindowManagerImpl;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBackExpanded:Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;

    invoke-virtual {v1, v2, v0}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 483
    :cond_0
    return-void
.end method

.method private appearAnim()V
    .locals 4

    .prologue
    .line 643
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setVisibility(I)V

    .line 644
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 645
    .local v0, "alpha":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0xe9

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 646
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 647
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mState:I

    .line 648
    return-void
.end method

.method private beginMoving(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 496
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBackExpanded:Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->setMoveStart(Z)V

    .line 498
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mExpandX:I

    .line 499
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mExpandY:I

    .line 500
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mIsMoveStarted:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBackExpanded:Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->isAttachedToWindow()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFlagToCutGhostTouch:Z

    if-nez v1, :cond_0

    .line 501
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 502
    .local v0, "alpha":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 503
    new-instance v1, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$6;-><init>(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 523
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 526
    .end local v0    # "alpha":Landroid/view/animation/AlphaAnimation;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBackExpanded:Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mExpandX:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mExpandY:I

    iget v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mPosition:I

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->setKeysPosition(IIIZ)V

    .line 527
    return-void
.end method

.method private changeRotation(IZ)V
    .locals 4
    .param p1, "rotation"    # I
    .param p2, "isDisappeared"    # Z

    .prologue
    const/4 v3, -0x1

    .line 673
    const-string v0, "SubPhoneStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeRotation  mNeedToRotationChange =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mNeedToRotationChange:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    if-eqz p2, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mLastY:I

    if-eq v0, v3, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mLastX:I

    if-eq v0, v3, :cond_1

    .line 686
    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldOrientation:I

    sub-int/2addr v0, p1

    packed-switch v0, :pswitch_data_0

    .line 780
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 690
    :pswitch_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDisplayHeight:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldYForRoatation:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mLastX:I

    .line 692
    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldXForRoatation:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mLastY:I

    .line 693
    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mLastX:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldXForRoatation:I

    .line 694
    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mLastY:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldYForRoatation:I

    goto :goto_0

    .line 699
    :pswitch_2
    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldYForRoatation:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mLastX:I

    .line 700
    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDisplayWidth:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldXForRoatation:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mLastY:I

    .line 702
    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mLastX:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldXForRoatation:I

    .line 703
    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mLastY:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldYForRoatation:I

    goto :goto_0

    .line 708
    :pswitch_3
    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDisplayWidth:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldXForRoatation:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mLastX:I

    .line 710
    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDisplayHeight:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldYForRoatation:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mLastY:I

    .line 712
    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mLastX:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldXForRoatation:I

    .line 713
    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mLastY:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldYForRoatation:I

    goto :goto_0

    .line 719
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mNeedToRotationChange:Z

    if-eqz v0, :cond_0

    .line 734
    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldOrientation:I

    sub-int/2addr v0, p1

    packed-switch v0, :pswitch_data_1

    .line 765
    :goto_1
    :pswitch_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->updateWindowParams()V

    .line 766
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->updatePosition()V

    .line 768
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBackExpanded:Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBackExpanded:Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 769
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFlagToCutGhostTouch:Z

    .line 770
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$9;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$9;-><init>(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 778
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mNeedToRotationChange:Z

    goto/16 :goto_0

    .line 738
    :pswitch_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDisplayHeight:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldYForRoatation:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 740
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldXForRoatation:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 741
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldXForRoatation:I

    .line 742
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldYForRoatation:I

    goto :goto_1

    .line 747
    :pswitch_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldYForRoatation:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 748
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDisplayWidth:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldXForRoatation:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 750
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldXForRoatation:I

    .line 751
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldYForRoatation:I

    goto/16 :goto_1

    .line 756
    :pswitch_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDisplayWidth:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldXForRoatation:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 758
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDisplayHeight:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldYForRoatation:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 760
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldXForRoatation:I

    .line 761
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldYForRoatation:I

    goto/16 :goto_1

    .line 686
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch

    .line 734
    :pswitch_data_1
    .packed-switch -0x3
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method private createLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 8

    .prologue
    const v7, 0x7f0a04c5

    const/4 v6, -0x1

    const/4 v1, -0x2

    .line 422
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7e8

    const/16 v4, 0x328

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 430
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 431
    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 432
    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mLastX:I

    if-eq v1, v6, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mLastX:I

    :goto_0
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 434
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldXForRoatation:I

    .line 435
    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mLastY:I

    if-eq v1, v6, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mLastY:I

    :goto_1
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 438
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldYForRoatation:I

    .line 439
    const-string v1, "Floating Back Key"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 440
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 442
    return-object v0

    .line 432
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    goto :goto_0

    .line 435
    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDisplayHeight:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v1, v2

    goto :goto_1
.end method

.method private die()V
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBackExpanded:Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBackExpanded:Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->die()V

    .line 632
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mLastX:I

    .line 633
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mLastY:I

    .line 639
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowManager:Landroid/view/WindowManagerImpl;

    invoke-virtual {v0, p0}, Landroid/view/WindowManagerImpl;->removeView(Landroid/view/View;)V

    .line 640
    return-void
.end method

.method private dimmedAnim()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 587
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->isDimmed:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mState:I

    if-ne v1, v4, :cond_0

    .line 588
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 590
    .local v0, "animatorX":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 591
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 593
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->isDimmed:Z

    .line 595
    .end local v0    # "animatorX":Landroid/animation/ObjectAnimator;
    :cond_0
    return-void

    .line 588
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data
.end method

.method private expand()V
    .locals 2

    .prologue
    .line 486
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mState:I

    .line 487
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setVisibility(I)V

    .line 489
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mExpandX:I

    .line 490
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mExpandY:I

    .line 492
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->addExpandedWindow()V

    .line 493
    return-void
.end method

.method private hide()V
    .locals 0

    .prologue
    .line 543
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->hideAnim()V

    .line 544
    return-void
.end method

.method private hideAnim()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 565
    const/4 v0, -0x1

    .line 566
    .local v0, "dest":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDisplayHeight:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDisplayWidth:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDisplayHeight:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_0

    .line 569
    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDisplayHeight:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v2, v2, 0x2

    sub-int v0, v1, v2

    .line 571
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2, v4}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->moveToPositionAnim(IIZZ)V

    .line 572
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldXForRoatation:I

    .line 573
    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldYForRoatation:I

    .line 581
    :goto_0
    iput v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mState:I

    .line 582
    return-void

    .line 575
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->isLeft()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    neg-int v1, v1

    div-int/lit8 v0, v1, 0x2

    .line 577
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-direct {p0, v1, v0, v4, v4}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->moveToPositionAnim(IIZZ)V

    .line 578
    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldXForRoatation:I

    .line 579
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldYForRoatation:I

    goto :goto_0

    .line 575
    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDisplayWidth:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v2, v2, 0x2

    sub-int v0, v1, v2

    goto :goto_1
.end method

.method private isLeft()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 547
    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mPosition:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mPosition:I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveToPositionAnim(IIZZ)V
    .locals 2
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "port"    # Z
    .param p4, "reverse"    # Z

    .prologue
    .line 245
    if-eqz p3, :cond_0

    .line 246
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 252
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->updateWindowParams()V

    .line 253
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setAlpha(F)V

    .line 255
    return-void

    .line 247
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->isLeft()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0
.end method

.method private open()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 530
    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 531
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->appearAnim()V

    .line 537
    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->isDimmed:Z

    .line 538
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDimmedTimeOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 539
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDimmedTimeOut:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 540
    return-void

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setVisibility(I)V

    .line 534
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setAlpha(F)V

    .line 535
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mState:I

    goto :goto_0
.end method

.method private openAnim()V
    .locals 4

    .prologue
    const v3, 0x7f0a04c5

    .line 551
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->isLeft()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v0, v2

    iget v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    :goto_0
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 559
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->updateWindowParams()V

    .line 561
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mState:I

    .line 562
    return-void

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    goto :goto_0
.end method

.method private updatePosition()V
    .locals 2

    .prologue
    .line 656
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDisplayWidth:I

    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_1

    .line 657
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDisplayHeight:I

    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_0

    const/4 v0, 0x3

    :goto_0
    iput v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mPosition:I

    .line 663
    :goto_1
    return-void

    .line 657
    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    .line 660
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDisplayHeight:I

    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_2
    iput v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mPosition:I

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private updateWindowParams()V
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowManager:Landroid/view/WindowManagerImpl;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowManager:Landroid/view/WindowManagerImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, p0, v1}, Landroid/view/WindowManagerImpl;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    :cond_0
    return-void
.end method


# virtual methods
.method public collapseAndRemoveExpandedWindow()V
    .locals 4

    .prologue
    .line 331
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->open()V

    .line 333
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$5;-><init>(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 340
    return-void
.end method

.method public disappear()V
    .locals 4

    .prologue
    .line 605
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 606
    .local v0, "alpha":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0xe9

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 607
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 608
    new-instance v1, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$8;-><init>(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 623
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mState:I

    .line 624
    return-void
.end method

.method public hideAndRemoveExpandedWindow()V
    .locals 4

    .prologue
    .line 318
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->hide()V

    .line 320
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$4;-><init>(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 328
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 279
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mIsEnabled:Z

    if-eqz v1, :cond_0

    .line 280
    new-instance v0, Landroid/hardware/scontext/SContextAutoRotationAttribute;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDeviceType:I

    invoke-direct {v0, v1}, Landroid/hardware/scontext/SContextAutoRotationAttribute;-><init>(I)V

    .line 281
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    const/4 v3, 0x6

    invoke-virtual {v1, v2, v3, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    .line 284
    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->createLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 285
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->updateWindowParams()V

    .line 286
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->updatePosition()V

    .line 288
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mState:I

    .line 289
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setVisibility(I)V

    .line 290
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingKeyVisibility:Z

    if-eqz v1, :cond_2

    .line 291
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mSubBar:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;

    if-eqz v1, :cond_1

    .line 292
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mSubBar:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->setFloatingKeyVisible(Z)V

    .line 294
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->open()V

    .line 298
    :goto_0
    return-void

    .line 296
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->die()V

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v2, 0x1

    .line 388
    const-string v3, "SubPhoneStatusBar"

    const-string v4, "onConfigurationChanged  FLOATINGBACKKEYLAYOUT "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v3, :cond_1

    .line 397
    iget v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mLastConfigOrientation:I

    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v3, v4, :cond_0

    .line 398
    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mLastConfigOrientation:I

    .line 399
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mNeedToRotationChange:Z

    .line 401
    :cond_0
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v1

    .line 402
    .local v1, "dm":Landroid/hardware/display/DisplayManagerGlobal;
    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 404
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mState:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    :goto_0
    invoke-direct {p0, v3, v2}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->changeRotation(IZ)V

    .line 405
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mCurOrientation:I

    iput v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mOldOrientation:I

    .line 407
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDisplayHeight:I

    .line 408
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDisplayWidth:I

    .line 418
    .end local v0    # "display":Landroid/view/Display;
    .end local v1    # "dm":Landroid/hardware/display/DisplayManagerGlobal;
    :cond_1
    return-void

    .line 404
    .restart local v0    # "display":Landroid/view/Display;
    .restart local v1    # "dm":Landroid/hardware/display/DisplayManagerGlobal;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mSubBar:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mSubBar:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->setFloatingKeyVisible(Z)V

    .line 311
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mIsEnabled:Z

    if-eqz v0, :cond_1

    .line 312
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    .line 315
    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 7

    .prologue
    .line 344
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 346
    const v4, 0x7f0f00fb

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    .line 347
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f04001c

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBackExpanded:Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;

    .line 349
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBackExpanded:Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;

    invoke-virtual {v4, p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->setFloatingBackKeyLayout(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)V

    .line 351
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 353
    .local v2, "drawableBack":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c00aa

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 356
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBackLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 357
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBackTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 359
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mHandler:Landroid/os/Handler;

    .line 361
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManagerImpl;

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowManager:Landroid/view/WindowManagerImpl;

    .line 362
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v1

    .line 363
    .local v1, "dm":Landroid/hardware/display/DisplayManagerGlobal;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 364
    .local v0, "display":Landroid/view/Display;
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowManager:Landroid/view/WindowManagerImpl;

    invoke-virtual {v4, v0}, Landroid/view/WindowManagerImpl;->createPresentationWindowManager(Landroid/view/Display;)Landroid/view/WindowManagerImpl;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowManager:Landroid/view/WindowManagerImpl;

    .line 366
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDisplayHeight:I

    .line 367
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDisplayWidth:I

    .line 369
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a04c6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mButtonSize:I

    .line 372
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 373
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const-string v4, "com.sec.feature.sensorhub"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 374
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mContext:Landroid/content/Context;

    const-string v5, "scontext"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/scontext/SContextManager;

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 375
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v4, :cond_0

    .line 376
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mIsEnabled:Z

    .line 379
    :cond_0
    return-void
.end method

.method public setFloatingKeyVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 302
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingKeyVisibility:Z

    .line 303
    return-void
.end method

.method public setMenuVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 651
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBackExpanded:Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBackExpanded:Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->setMenuVisible(Z)V

    .line 653
    :cond_0
    return-void
.end method

.method public setSubBar(Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;)V
    .locals 0
    .param p1, "bar"    # Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;

    .prologue
    .line 382
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mSubBar:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;

    .line 383
    return-void
.end method
