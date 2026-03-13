.class public Lcom/android/systemui/volume/VolumeDialog;
.super Ljava/lang/Object;
.source "VolumeDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/VolumeDialog$Callback;,
        Lcom/android/systemui/volume/VolumeDialog$VolumeRow;,
        Lcom/android/systemui/volume/VolumeDialog$Accessibility;,
        Lcom/android/systemui/volume/VolumeDialog$VolumeSeekBarChangeListener;,
        Lcom/android/systemui/volume/VolumeDialog$CustomDialog;,
        Lcom/android/systemui/volume/VolumeDialog$H;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final UPDATE_ANIMATION_DURATION:I = 0x50

.field private static final USER_ATTEMPT_GRACE_PERIOD:J = 0x3e8L

.field private static final WAIT_FOR_RIPPLE:I = 0xc8


# instance fields
.field private final mAccessibility:Lcom/android/systemui/volume/VolumeDialog$Accessibility;

.field private final mActiveSliderTint:Landroid/content/res/ColorStateList;

.field private mActiveStream:I

.field private mAutomute:Z

.field private mCallback:Lcom/android/systemui/volume/VolumeDialog$Callback;

.field private final mClickExpand:Landroid/view/View$OnClickListener;

.field private final mClickSettings:Landroid/view/View$OnClickListener;

.field private mCollapseTime:J

.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/android/systemui/volume/VolumeDialogController;

.field private final mControllerCallbackH:Lcom/android/systemui/volume/VolumeDialogController$Callbacks;

.field private final mDialog:Lcom/android/systemui/volume/VolumeDialog$CustomDialog;

.field private final mDialogContentView:Landroid/view/ViewGroup;

.field private final mDialogView:Landroid/view/ViewGroup;

.field private final mDynamic:Landroid/util/SparseBooleanArray;

.field private final mExpandButton:Landroid/widget/ImageButton;

.field private final mExpandButtonAnimationDuration:I

.field private mExpandButtonAnimationRunning:Z

.field private mExpandButtonRes:I

.field private mExpanded:Z

.field private final mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

.field private final mInactiveSliderTint:Landroid/content/res/ColorStateList;

.field private final mKeyguard:Landroid/app/KeyguardManager;

.field private final mLayoutTransition:Landroid/animation/LayoutTransition;

.field private final mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

.field private mPendingRecheckAll:Z

.field private mPendingStateChanged:Z

.field private final mRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/volume/VolumeDialog$VolumeRow;",
            ">;"
        }
    .end annotation
.end field

.field private mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

.field private final mSafetyWarningLock:Ljava/lang/Object;

.field private final mSettingsButton:Landroid/view/View;

.field private mShowHeaders:Z

.field private mShowing:Z

.field private mSilentMode:Z

.field private final mSpTexts:Lcom/android/systemui/volume/SpTexts;

.field private mState:Lcom/android/systemui/volume/VolumeDialogController$State;

.field private final mZenFooter:Lcom/android/systemui/volume/ZenFooter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    const-class v0, Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/Util;->logTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/VolumeDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/systemui/volume/VolumeDialogController;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/volume/VolumeDialog$Callback;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowType"    # I
    .param p3, "controller"    # Lcom/android/systemui/volume/VolumeDialogController;
    .param p4, "zenModeController"    # Lcom/android/systemui/statusbar/policy/ZenModeController;
    .param p5, "callback"    # Lcom/android/systemui/volume/VolumeDialog$Callback;

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Lcom/android/systemui/volume/VolumeDialog$H;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/VolumeDialog$H;-><init>(Lcom/android/systemui/volume/VolumeDialog;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mRows:Ljava/util/List;

    .line 105
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mDynamic:Landroid/util/SparseBooleanArray;

    .line 110
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mSafetyWarningLock:Ljava/lang/Object;

    .line 111
    new-instance v0, Lcom/android/systemui/volume/VolumeDialog$Accessibility;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/volume/VolumeDialog$Accessibility;-><init>(Lcom/android/systemui/volume/VolumeDialog;Lcom/android/systemui/volume/VolumeDialog$1;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mAccessibility:Lcom/android/systemui/volume/VolumeDialog$Accessibility;

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowHeaders:Z

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mAutomute:Z

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mSilentMode:Z

    .line 855
    new-instance v0, Lcom/android/systemui/volume/VolumeDialog$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/VolumeDialog$8;-><init>(Lcom/android/systemui/volume/VolumeDialog;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mControllerCallbackH:Lcom/android/systemui/volume/VolumeDialogController$Callbacks;

    .line 926
    new-instance v0, Lcom/android/systemui/volume/VolumeDialog$9;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/VolumeDialog$9;-><init>(Lcom/android/systemui/volume/VolumeDialog;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mClickExpand:Landroid/view/View$OnClickListener;

    .line 936
    new-instance v0, Lcom/android/systemui/volume/VolumeDialog$10;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/VolumeDialog$10;-><init>(Lcom/android/systemui/volume/VolumeDialog;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mClickSettings:Landroid/view/View$OnClickListener;

    .line 133
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    .line 134
    iput-object p3, p0, Lcom/android/systemui/volume/VolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    .line 135
    iput-object p5, p0, Lcom/android/systemui/volume/VolumeDialog;->mCallback:Lcom/android/systemui/volume/VolumeDialog$Callback;

    .line 136
    new-instance v0, Lcom/android/systemui/volume/SpTexts;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/SpTexts;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mSpTexts:Lcom/android/systemui/volume/SpTexts;

    .line 137
    const-string v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mKeyguard:Landroid/app/KeyguardManager;

    .line 139
    new-instance v0, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;-><init>(Lcom/android/systemui/volume/VolumeDialog;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialog:Lcom/android/systemui/volume/VolumeDialog$CustomDialog;

    .line 141
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialog:Lcom/android/systemui/volume/VolumeDialog$CustomDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    .line 142
    .local v8, "window":Landroid/view/Window;
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/view/Window;->requestFeature(I)Z

    .line 143
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v8, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 144
    const/4 v0, 0x2

    invoke-virtual {v8, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 145
    const v0, 0x10c0128

    invoke-virtual {v8, v0}, Landroid/view/Window;->addFlags(I)V

    .line 151
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialog:Lcom/android/systemui/volume/VolumeDialog$CustomDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;->setCanceledOnTouchOutside(Z)V

    .line 152
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 153
    .local v7, "res":Landroid/content/res/Resources;
    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 154
    .local v6, "lp":Landroid/view/WindowManager$LayoutParams;
    iput p2, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 155
    const/4 v0, -0x3

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 156
    const-class v0, Lcom/android/systemui/volume/VolumeDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 157
    const/16 v0, 0x31

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 158
    const v0, 0x7f0a04df

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 159
    const/16 v0, 0x30

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 160
    const/4 v0, -0x1

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 161
    invoke-virtual {v8, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 162
    const/16 v0, 0x30

    invoke-virtual {v8, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 164
    const v0, 0x7f0c0031

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumeDialog;->loadColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mActiveSliderTint:Landroid/content/res/ColorStateList;

    .line 165
    const v0, 0x7f0c00b8

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumeDialog;->loadColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mInactiveSliderTint:Landroid/content/res/ColorStateList;

    .line 166
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialog:Lcom/android/systemui/volume/VolumeDialog$CustomDialog;

    const v1, 0x7f0400d2

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;->setContentView(I)V

    .line 167
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialog:Lcom/android/systemui/volume/VolumeDialog$CustomDialog;

    const v1, 0x7f0f03f8

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    .line 168
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialog:Lcom/android/systemui/volume/VolumeDialog$CustomDialog;

    const v1, 0x7f0f03fa

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    .line 169
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    const v1, 0x7f0f03f9

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    .line 170
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mClickExpand:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->updateWindowWidthH()V

    .line 172
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->updateExpandButtonH()V

    .line 173
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mLayoutTransition:Landroid/animation/LayoutTransition;

    .line 174
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mLayoutTransition:Landroid/animation/LayoutTransition;

    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/animation/LayoutTransition;->setDuration(J)V

    .line 175
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 176
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogMotion;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialog:Lcom/android/systemui/volume/VolumeDialog$CustomDialog;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    new-instance v5, Lcom/android/systemui/volume/VolumeDialog$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/volume/VolumeDialog$1;-><init>(Lcom/android/systemui/volume/VolumeDialog;)V

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/volume/VolumeDialogMotion;-><init>(Landroid/app/Dialog;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;Lcom/android/systemui/volume/VolumeDialogMotion$Callback;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    .line 192
    const/4 v0, 0x2

    const v1, 0x7f0201ab

    const v2, 0x7f0201ac

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/volume/VolumeDialog;->addRow(IIIZ)V

    .line 194
    const/4 v0, 0x3

    const v1, 0x7f0201a4

    const v2, 0x7f0201a7

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/volume/VolumeDialog;->addRow(IIIZ)V

    .line 196
    const/4 v0, 0x4

    const v1, 0x7f02019d

    const v2, 0x7f02019e

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/volume/VolumeDialog;->addRow(IIIZ)V

    .line 198
    const/4 v0, 0x0

    const v1, 0x7f0201b1

    const v2, 0x7f0201b1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/volume/VolumeDialog;->addRow(IIIZ)V

    .line 200
    const/4 v0, 0x6

    const v1, 0x7f02019f

    const v2, 0x7f02019f

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/volume/VolumeDialog;->addRow(IIIZ)V

    .line 202
    const/4 v0, 0x1

    const v1, 0x7f0201af

    const v2, 0x7f0201b0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/volume/VolumeDialog;->addRow(IIIZ)V

    .line 205
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialog:Lcom/android/systemui/volume/VolumeDialog$CustomDialog;

    const v1, 0x7f0f03ff

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mSettingsButton:Landroid/view/View;

    .line 206
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mSettingsButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mClickSettings:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    const v0, 0x7f0e005e

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButtonAnimationDuration:I

    .line 208
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialog:Lcom/android/systemui/volume/VolumeDialog$CustomDialog;

    const v1, 0x7f0f0400

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/ZenFooter;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mZenFooter:Lcom/android/systemui/volume/ZenFooter;

    .line 209
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mZenFooter:Lcom/android/systemui/volume/ZenFooter;

    invoke-virtual {v0, p4}, Lcom/android/systemui/volume/ZenFooter;->init(Lcom/android/systemui/statusbar/policy/ZenModeController;)V

    .line 211
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mAccessibility:Lcom/android/systemui/volume/VolumeDialog$Accessibility;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialog$Accessibility;->init()V

    .line 213
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mControllerCallbackH:Lcom/android/systemui/volume/VolumeDialogController$Callbacks;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    invoke-virtual {p3, v0, v1}, Lcom/android/systemui/volume/VolumeDialogController;->addCallback(Lcom/android/systemui/volume/VolumeDialogController$Callbacks;Landroid/os/Handler;)V

    .line 214
    invoke-virtual {p3}, Lcom/android/systemui/volume/VolumeDialogController;->getState()V

    .line 215
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/volume/VolumeDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mPendingStateChanged:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/volume/VolumeDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialog;->mPendingStateChanged:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialog$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/volume/VolumeDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController$State;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/systemui/volume/VolumeDialog;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialog;->setExpandedH(Z)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/systemui/volume/VolumeDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButtonAnimationRunning:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/android/systemui/volume/VolumeDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButtonAnimationRunning:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/systemui/volume/VolumeDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->updateExpandButtonH()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/volume/VolumeDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mPendingRecheckAll:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/volume/VolumeDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialog;->mPendingRecheckAll:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/android/systemui/volume/VolumeDialog;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mSafetyWarningLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/android/systemui/volume/VolumeDialog;Lcom/android/systemui/volume/SafetyWarningDialog;)Lcom/android/systemui/volume/SafetyWarningDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;
    .param p1, "x1"    # Lcom/android/systemui/volume/SafetyWarningDialog;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    return-object p1
.end method

.method static synthetic access$4000(Lcom/android/systemui/volume/VolumeDialog;Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;
    .param p1, "x1"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialog;->recheckH(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/systemui/volume/VolumeDialog;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;
    .param p1, "x1"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialog;->showH(I)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/systemui/volume/VolumeDialog;Lcom/android/systemui/volume/VolumeDialogController$State;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;
    .param p1, "x1"    # Lcom/android/systemui/volume/VolumeDialogController$State;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialog;->onStateChangedH(Lcom/android/systemui/volume/VolumeDialogController$State;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/systemui/volume/VolumeDialog;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/systemui/volume/VolumeDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->updateWindowWidthH()V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/SpTexts;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mSpTexts:Lcom/android/systemui/volume/SpTexts;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/ZenFooter;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mZenFooter:Lcom/android/systemui/volume/ZenFooter;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/systemui/volume/VolumeDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mSilentMode:Z

    return v0
.end method

.method static synthetic access$4800(Lcom/android/systemui/volume/VolumeDialog;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;
    .param p1, "x1"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialog;->showSafetyWarningH(I)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/systemui/volume/VolumeDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanded:Z

    return v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/android/systemui/volume/VolumeDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialog$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mCallback:Lcom/android/systemui/volume/VolumeDialog$Callback;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/systemui/volume/VolumeDialog;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mSettingsButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/systemui/volume/VolumeDialog;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialog;->setStreamImportantH(IZ)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/systemui/volume/VolumeDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->updateDialogBottomMarginH()V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialogMotion;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    return-object v0
.end method

.method static synthetic access$5500(Landroid/widget/SeekBar;I)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/SeekBar;
    .param p1, "x1"    # I

    .prologue
    .line 87
    invoke-static {p0, p1}, Lcom/android/systemui/volume/VolumeDialog;->getImpliedLevel(Landroid/widget/SeekBar;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/volume/VolumeDialog;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/volume/VolumeDialog;Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog;
    .param p1, "x1"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialog;->repositionExpandAnim(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V

    return-void
.end method

.method private addRow(IIIZ)V
    .locals 7
    .param p1, "stream"    # I
    .param p2, "iconRes"    # I
    .param p3, "iconMuteRes"    # I
    .param p4, "important"    # Z

    .prologue
    .line 259
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/volume/VolumeDialog;->initRow(IIIZ)Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    move-result-object v2

    .line 260
    .local v2, "row":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 261
    new-instance v3, Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 262
    .local v3, "v":Landroid/view/View;
    const/high16 v4, 0x1020000

    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    .line 263
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a04de

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 265
    .local v0, "h":I
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v1, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 267
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v3, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 268
    invoke-static {v2, v3}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$402(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Landroid/view/View;)Landroid/view/View;

    .line 270
    .end local v0    # "h":I
    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "v":Landroid/view/View;
    :cond_0
    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$900(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/volume/VolumeDialog$2;

    invoke-direct {v5, p0, v2}, Lcom/android/systemui/volume/VolumeDialog$2;-><init>(Lcom/android/systemui/volume/VolumeDialog;Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 291
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$700(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 292
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    return-void
.end method

.method private computeTimeoutH()I
    .locals 2

    .prologue
    const/16 v0, 0x1388

    .line 458
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mAccessibility:Lcom/android/systemui/volume/VolumeDialog$Accessibility;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialog$Accessibility;->access$1100(Lcom/android/systemui/volume/VolumeDialog$Accessibility;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x4e20

    .line 462
    :cond_0
    :goto_0
    return v0

    .line 459
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-nez v1, :cond_0

    .line 460
    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanded:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButtonAnimationRunning:Z

    if-nez v1, :cond_0

    .line 461
    iget v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mActiveStream:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    const/16 v0, 0x5dc

    goto :goto_0

    .line 462
    :cond_2
    const/16 v0, 0xbb8

    goto :goto_0
.end method

.method private findRow(I)Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    .locals 3
    .param p1, "stream"    # I

    .prologue
    .line 309
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .line 310
    .local v1, "row":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1000(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 312
    .end local v1    # "row":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getActiveRow()Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    .locals 4

    .prologue
    .line 300
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .line 301
    .local v1, "row":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1000(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v2

    iget v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mActiveStream:I

    if-ne v2, v3, :cond_0

    .line 305
    .end local v1    # "row":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mRows:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    move-object v1, v2

    goto :goto_0
.end method

.method private getConservativeCollapseDuration()J
    .locals 2

    .prologue
    .line 503
    iget v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButtonAnimationDuration:I

    mul-int/lit8 v0, v0, 0x3

    int-to-long v0, v0

    return-wide v0
.end method

.method private static getImpliedLevel(Landroid/widget/SeekBar;I)I
    .locals 5
    .param p0, "seekBar"    # Landroid/widget/SeekBar;
    .param p1, "progress"    # I

    .prologue
    .line 344
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    .line 345
    .local v1, "m":I
    div-int/lit8 v3, v1, 0x64

    add-int/lit8 v2, v3, -0x1

    .line 346
    .local v2, "n":I
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 348
    .local v0, "level":I
    :goto_0
    return v0

    .line 346
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

.method private initRow(IIIZ)Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    .locals 4
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
    const/4 v3, 0x0

    .line 353
    new-instance v0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    invoke-direct {v0, v3}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;-><init>(Lcom/android/systemui/volume/VolumeDialog$1;)V

    .line 354
    .local v0, "row":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    invoke-static {v0, p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1002(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;I)I

    .line 355
    invoke-static {v0, p2}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1302(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;I)I

    .line 356
    invoke-static {v0, p3}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1402(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;I)I

    .line 357
    invoke-static {v0, p4}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1502(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Z)Z

    .line 358
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialog:Lcom/android/systemui/volume/VolumeDialog$CustomDialog;

    invoke-virtual {v1}, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400d3

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$702(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Landroid/view/View;)Landroid/view/View;

    .line 359
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$700(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 360
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$700(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0f03fc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1602(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 361
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mSpTexts:Lcom/android/systemui/volume/SpTexts;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1600(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/SpTexts;->add(Landroid/widget/TextView;)I

    .line 362
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$700(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0f03fe

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1702(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Landroid/widget/SeekBar;)Landroid/widget/SeekBar;

    .line 363
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1700(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/volume/VolumeDialog$VolumeSeekBarChangeListener;

    invoke-direct {v2, p0, v0, v3}, Lcom/android/systemui/volume/VolumeDialog$VolumeSeekBarChangeListener;-><init>(Lcom/android/systemui/volume/VolumeDialog;Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Lcom/android/systemui/volume/VolumeDialog$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 366
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$700(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/volume/VolumeDialog$3;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/volume/VolumeDialog$3;-><init>(Lcom/android/systemui/volume/VolumeDialog;Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 390
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$700(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0f03fd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1902(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;

    .line 391
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1900(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 392
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1900(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/volume/VolumeDialog$4;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/systemui/volume/VolumeDialog$4;-><init>(Lcom/android/systemui/volume/VolumeDialog;Lcom/android/systemui/volume/VolumeDialog$VolumeRow;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 419
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$700(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0f03ff

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$902(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;

    .line 420
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$900(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mClickSettings:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 421
    return-object v0
.end method

.method private isAttached()Z
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

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

.method private isVisibleH(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Z)Z
    .locals 1
    .param p1, "row"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    .param p2, "isActive"    # Z

    .prologue
    .line 557
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanded:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$700(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanded:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1500(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p2, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanded:Z

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
    .line 218
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method private onStateChangedH(Lcom/android/systemui/volume/VolumeDialogController$State;)V
    .locals 10
    .param p1, "state"    # Lcom/android/systemui/volume/VolumeDialogController$State;

    .prologue
    const/4 v9, 0x1

    .line 606
    iget-object v6, p0, Lcom/android/systemui/volume/VolumeDialog;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-virtual {v6}, Lcom/android/systemui/volume/VolumeDialogMotion;->isAnimating()Z

    move-result v0

    .line 607
    .local v0, "animating":Z
    sget-boolean v6, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/systemui/volume/VolumeDialog;->TAG:Ljava/lang/String;

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

    .line 608
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    .line 609
    if-eqz v0, :cond_1

    .line 610
    iput-boolean v9, p0, Lcom/android/systemui/volume/VolumeDialog;->mPendingStateChanged:Z

    .line 634
    :goto_0
    return-void

    .line 613
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/volume/VolumeDialog;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->clear()V

    .line 615
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v6, p1, Lcom/android/systemui/volume/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v1, v6, :cond_4

    .line 616
    iget-object v6, p1, Lcom/android/systemui/volume/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 617
    .local v5, "stream":I
    iget-object v6, p1, Lcom/android/systemui/volume/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    .line 618
    .local v4, "ss":Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    iget-boolean v6, v4, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->dynamic:Z

    if-nez v6, :cond_3

    .line 615
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 619
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/volume/VolumeDialog;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v5, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 620
    invoke-direct {p0, v5}, Lcom/android/systemui/volume/VolumeDialog;->findRow(I)Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    move-result-object v6

    if-nez v6, :cond_2

    .line 621
    const v6, 0x7f0201a9

    const v7, 0x7f0201aa

    invoke-direct {p0, v5, v6, v7, v9}, Lcom/android/systemui/volume/VolumeDialog;->addRow(IIIZ)V

    goto :goto_2

    .line 625
    .end local v4    # "ss":Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    .end local v5    # "stream":I
    :cond_4
    iget v6, p0, Lcom/android/systemui/volume/VolumeDialog;->mActiveStream:I

    iget v7, p1, Lcom/android/systemui/volume/VolumeDialogController$State;->activeStream:I

    if-eq v6, v7, :cond_5

    .line 626
    iget v6, p1, Lcom/android/systemui/volume/VolumeDialogController$State;->activeStream:I

    iput v6, p0, Lcom/android/systemui/volume/VolumeDialog;->mActiveStream:I

    .line 627
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->updateRowsH()V

    .line 628
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialog;->rescheduleTimeoutH()V

    .line 630
    :cond_5
    iget-object v6, p0, Lcom/android/systemui/volume/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .line 631
    .local v3, "row":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    invoke-direct {p0, v3}, Lcom/android/systemui/volume/VolumeDialog;->updateVolumeRowH(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V

    goto :goto_3

    .line 633
    .end local v3    # "row":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->updateFooterH()V

    goto :goto_0
.end method

.method private prepareForCollapse()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 507
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    invoke-virtual {v0, v4}, Lcom/android/systemui/volume/VolumeDialog$H;->removeMessages(I)V

    .line 508
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mCollapseTime:J

    .line 509
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->updateDialogBottomMarginH()V

    .line 510
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->getConservativeCollapseDuration()J

    move-result-wide v2

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/systemui/volume/VolumeDialog$H;->sendEmptyMessageDelayed(IJ)Z

    .line 511
    return-void
.end method

.method private recheckH(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V
    .locals 5
    .param p1, "row"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .prologue
    .line 811
    if-nez p1, :cond_1

    .line 812
    sget-boolean v2, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/systemui/volume/VolumeDialog;->TAG:Ljava/lang/String;

    const-string v3, "recheckH ALL"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->trimObsoleteH()V

    .line 814
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .line 815
    .local v1, "r":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumeDialog;->updateVolumeRowH(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V

    goto :goto_0

    .line 818
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "r":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    :cond_1
    sget-boolean v2, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/systemui/volume/VolumeDialog;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recheckH "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1000(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialog;->updateVolumeRowH(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V

    .line 821
    :cond_3
    return-void
.end method

.method private repositionExpandAnim(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V
    .locals 7
    .param p1, "row"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .prologue
    .line 316
    const/4 v4, 0x2

    new-array v0, v4, [I

    .line 317
    .local v0, "loc":[I
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$900(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->getLocationInWindow([I)V

    .line 318
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 319
    .local v1, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v4, 0x0

    aget v4, v0, v4

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int v2, v4, v5

    .line 320
    .local v2, "x":I
    const/4 v4, 0x1

    aget v4, v0, v4

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int v3, v4, v5

    .line 321
    .local v3, "y":I
    sget-boolean v4, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/systemui/volume/VolumeDialog;->TAG:Ljava/lang/String;

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

    .line 322
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    int-to-float v5, v2

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setTranslationX(F)V

    .line 323
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    int-to-float v5, v3

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setTranslationY(F)V

    .line 324
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 325
    return-void
.end method

.method private setExpandedH(Z)V
    .locals 6
    .param p1, "expanded"    # Z

    .prologue
    .line 514
    iget-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanded:Z

    if-ne v2, p1, :cond_0

    .line 541
    :goto_0
    return-void

    .line 515
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanded:Z

    .line 516
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->isAttached()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButtonAnimationRunning:Z

    .line 517
    sget-boolean v2, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/systemui/volume/VolumeDialog;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setExpandedH "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanded:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButtonAnimationRunning:Z

    if-eqz v2, :cond_2

    .line 519
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->prepareForCollapse()V

    .line 521
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->updateRowsH()V

    .line 522
    iget-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButtonAnimationRunning:Z

    if-eqz v2, :cond_3

    .line 523
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 524
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    instance-of v2, v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v2, :cond_3

    .line 526
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 528
    .local v0, "avd":Landroid/graphics/drawable/AnimatedVectorDrawable;
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 529
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 530
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    new-instance v3, Lcom/android/systemui/volume/VolumeDialog$6;

    invoke-direct {v3, p0}, Lcom/android/systemui/volume/VolumeDialog$6;-><init>(Lcom/android/systemui/volume/VolumeDialog;)V

    iget v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButtonAnimationDuration:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/systemui/volume/VolumeDialog$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 540
    .end local v0    # "avd":Landroid/graphics/drawable/AnimatedVectorDrawable;
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialog;->rescheduleTimeoutH()V

    goto :goto_0
.end method

.method private setStreamImportantH(IZ)V
    .locals 3
    .param p1, "stream"    # I
    .param p2, "important"    # Z

    .prologue
    .line 824
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .line 825
    .local v1, "row":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1000(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 826
    invoke-static {v1, p2}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1502(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Z)Z

    .line 830
    .end local v1    # "row":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    :cond_1
    return-void
.end method

.method private showH(I)V
    .locals 6
    .param p1, "reason"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 437
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/VolumeDialog;->TAG:Ljava/lang/String;

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

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    invoke-virtual {v0, v3}, Lcom/android/systemui/volume/VolumeDialog$H;->removeMessages(I)V

    .line 439
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    invoke-virtual {v0, v5}, Lcom/android/systemui/volume/VolumeDialog$H;->removeMessages(I)V

    .line 440
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialog;->rescheduleTimeoutH()V

    .line 441
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowing:Z

    if-eqz v0, :cond_1

    .line 446
    :goto_0
    return-void

    .line 442
    :cond_1
    iput-boolean v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowing:Z

    .line 443
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogMotion;->startShow()V

    .line 444
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mKeyguard:Landroid/app/KeyguardManager;

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v4, v1}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 445
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v0, v3}, Lcom/android/systemui/volume/VolumeDialogController;->notifyVisible(Z)V

    goto :goto_0
.end method

.method private showSafetyWarningH(I)V
    .locals 4
    .param p1, "flags"    # I

    .prologue
    .line 833
    and-int/lit16 v0, p1, 0x401

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowing:Z

    if-eqz v0, :cond_2

    .line 835
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v1

    .line 836
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-eqz v0, :cond_1

    .line 837
    monitor-exit v1

    .line 853
    :goto_0
    return-void

    .line 839
    :cond_1
    new-instance v0, Lcom/android/systemui/volume/VolumeDialog$7;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v3}, Lcom/android/systemui/volume/VolumeDialogController;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lcom/android/systemui/volume/VolumeDialog$7;-><init>(Lcom/android/systemui/volume/VolumeDialog;Landroid/content/Context;Landroid/media/AudioManager;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    .line 848
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SafetyWarningDialog;->show()V

    .line 849
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 850
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumeDialog;->recheckH(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V

    .line 852
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialog;->rescheduleTimeoutH()V

    goto :goto_0

    .line 849
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private trimObsoleteH()V
    .locals 4

    .prologue
    .line 593
    sget-boolean v2, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/systemui/volume/VolumeDialog;->TAG:Ljava/lang/String;

    const-string v3, "trimObsoleteH"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 595
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .line 596
    .local v1, "row":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2400(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2400(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->dynamic:Z

    if-nez v2, :cond_2

    .line 594
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 597
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1000(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 598
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 599
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$700(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 600
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$400(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 603
    .end local v1    # "row":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    :cond_3
    return-void
.end method

.method private updateDialogBottomMarginH()V
    .locals 10

    .prologue
    .line 490
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/systemui/volume/VolumeDialog;->mCollapseTime:J

    sub-long v2, v6, v8

    .line 491
    .local v2, "diff":J
    iget-wide v6, p0, Lcom/android/systemui/volume/VolumeDialog;->mCollapseTime:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->getConservativeCollapseDuration()J

    move-result-wide v6

    cmp-long v5, v2, v6

    if-gez v5, :cond_2

    const/4 v1, 0x1

    .line 492
    .local v1, "collapsing":Z
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 493
    .local v4, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v1, :cond_3

    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    .line 495
    .local v0, "bottomMargin":I
    :goto_1
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v0, v5, :cond_1

    .line 496
    sget-boolean v5, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/systemui/volume/VolumeDialog;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bottomMargin "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :cond_0
    iput v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 498
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 500
    :cond_1
    return-void

    .line 491
    .end local v0    # "bottomMargin":I
    .end local v1    # "collapsing":Z
    .end local v4    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 493
    .restart local v1    # "collapsing":Z
    .restart local v4    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a04e1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_1
.end method

.method private updateExpandButtonH()V
    .locals 4

    .prologue
    .line 544
    sget-boolean v1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/volume/VolumeDialog;->TAG:Ljava/lang/String;

    const-string v2, "updateExpandButtonH"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButtonAnimationRunning:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 546
    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButtonAnimationRunning:Z

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 554
    :cond_1
    :goto_1
    return-void

    .line 545
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 547
    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanded:Z

    if-eqz v1, :cond_4

    const v0, 0x7f0201a1

    .line 549
    .local v0, "res":I
    :goto_2
    iget v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButtonRes:I

    if-eq v0, v1, :cond_1

    .line 550
    iput v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButtonRes:I

    .line 551
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 552
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanded:Z

    if-eqz v1, :cond_5

    const v1, 0x7f0b063f

    :goto_3
    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 547
    .end local v0    # "res":I
    :cond_4
    const v0, 0x7f0201a3

    goto :goto_2

    .line 552
    .restart local v0    # "res":I
    :cond_5
    const v1, 0x7f0b063e

    goto :goto_3
.end method

.method private updateFooterH()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 637
    sget-boolean v4, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/systemui/volume/VolumeDialog;->TAG:Ljava/lang/String;

    const-string v5, "updateFooterH"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mZenFooter:Lcom/android/systemui/volume/ZenFooter;

    invoke-virtual {v4}, Lcom/android/systemui/volume/ZenFooter;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    move v1, v2

    .line 639
    .local v1, "wasVisible":Z
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iget v4, v4, Lcom/android/systemui/volume/VolumeDialogController$State;->zenMode:I

    if-eqz v4, :cond_3

    move v0, v2

    .line 640
    .local v0, "visible":Z
    :goto_1
    if-eq v1, v0, :cond_1

    if-nez v0, :cond_1

    .line 641
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->prepareForCollapse()V

    .line 643
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mZenFooter:Lcom/android/systemui/volume/ZenFooter;

    invoke-static {v2, v0}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 644
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mZenFooter:Lcom/android/systemui/volume/ZenFooter;

    invoke-virtual {v2}, Lcom/android/systemui/volume/ZenFooter;->update()V

    .line 645
    return-void

    .end local v0    # "visible":Z
    .end local v1    # "wasVisible":Z
    :cond_2
    move v1, v3

    .line 638
    goto :goto_0

    .restart local v1    # "wasVisible":Z
    :cond_3
    move v0, v3

    .line 639
    goto :goto_1
.end method

.method private updateRowsH()V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 563
    sget-boolean v8, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v8, :cond_0

    sget-object v8, Lcom/android/systemui/volume/VolumeDialog;->TAG:Ljava/lang/String;

    const-string v9, "updateRowsH"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->getActiveRow()Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    move-result-object v0

    .line 565
    .local v0, "activeRow":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->updateFooterH()V

    .line 566
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->updateExpandButtonH()V

    .line 567
    iget-boolean v8, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowing:Z

    if-nez v8, :cond_1

    .line 568
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->trimObsoleteH()V

    .line 571
    :cond_1
    iget-object v8, p0, Lcom/android/systemui/volume/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .line 572
    .local v4, "row":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    if-ne v4, v0, :cond_3

    move v3, v6

    .line 573
    .local v3, "isActive":Z
    :goto_1
    invoke-direct {p0, v4, v3}, Lcom/android/systemui/volume/VolumeDialog;->isVisibleH(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Z)Z

    move-result v5

    .line 574
    .local v5, "visible":Z
    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$700(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v8

    invoke-static {v8, v5}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 575
    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$400(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v9

    if-eqz v5, :cond_4

    iget-boolean v8, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanded:Z

    if-eqz v8, :cond_4

    move v8, v6

    :goto_2
    invoke-static {v9, v8}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 576
    iget-boolean v8, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanded:Z

    if-eqz v8, :cond_5

    const v1, 0x7f0201ae

    .line 577
    .local v1, "expandButtonRes":I
    :goto_3
    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$3000(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v8

    if-eq v1, v8, :cond_2

    .line 578
    invoke-static {v4, v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$3002(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;I)I

    .line 579
    if-nez v1, :cond_6

    .line 580
    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$900(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 585
    :cond_2
    :goto_4
    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$900(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/android/systemui/volume/Util;->setVisOrInvis(Landroid/view/View;Z)V

    .line 586
    invoke-direct {p0, v4}, Lcom/android/systemui/volume/VolumeDialog;->updateVolumeRowHeaderVisibleH(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V

    .line 587
    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1600(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/TextView;

    move-result-object v9

    iget-boolean v8, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanded:Z

    if-eqz v8, :cond_7

    if-eqz v3, :cond_7

    const/high16 v8, 0x3f800000    # 1.0f

    :goto_5
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setAlpha(F)V

    .line 588
    invoke-direct {p0, v4, v3}, Lcom/android/systemui/volume/VolumeDialog;->updateVolumeRowSliderTintH(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Z)V

    goto :goto_0

    .end local v1    # "expandButtonRes":I
    .end local v3    # "isActive":Z
    .end local v5    # "visible":Z
    :cond_3
    move v3, v7

    .line 572
    goto :goto_1

    .restart local v3    # "isActive":Z
    .restart local v5    # "visible":Z
    :cond_4
    move v8, v7

    .line 575
    goto :goto_2

    :cond_5
    move v1, v7

    .line 576
    goto :goto_3

    .line 582
    .restart local v1    # "expandButtonRes":I
    :cond_6
    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$900(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_4

    .line 587
    :cond_7
    const/high16 v8, 0x3f000000    # 0.5f

    goto :goto_5

    .line 590
    .end local v1    # "expandButtonRes":I
    .end local v3    # "isActive":Z
    .end local v4    # "row":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    .end local v5    # "visible":Z
    :cond_8
    return-void
.end method

.method private updateVolumeRowH(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V
    .locals 27
    .param p1, "row"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .prologue
    .line 648
    sget-boolean v22, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v22, :cond_0

    sget-object v22, Lcom/android/systemui/volume/VolumeDialog;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "updateVolumeRowH s="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1000(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v22, v0

    if-nez v22, :cond_2

    .line 735
    :cond_1
    :goto_0
    return-void

    .line 650
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1000(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    .line 651
    .local v18, "ss":Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    if-eqz v18, :cond_1

    .line 652
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2402(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Lcom/android/systemui/volume/VolumeDialogController$StreamState;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    .line 653
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    move/from16 v22, v0

    if-lez v22, :cond_3

    .line 654
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2502(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;I)I

    .line 656
    :cond_3
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    move/from16 v22, v0

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$3100(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    .line 657
    const/16 v22, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$3102(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;I)I

    .line 659
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1000(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v22

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_d

    const/4 v10, 0x1

    .line 660
    .local v10, "isRingStream":Z
    :goto_1
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1000(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_e

    const/4 v13, 0x1

    .line 661
    .local v13, "isSystemStream":Z
    :goto_2
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1000(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v22

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_f

    const/4 v6, 0x1

    .line 662
    .local v6, "isAlarmStream":Z
    :goto_3
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1000(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v22

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_10

    const/4 v7, 0x1

    .line 663
    .local v7, "isMusicStream":Z
    :goto_4
    if-eqz v10, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeInternal:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_11

    const/4 v11, 0x1

    .line 665
    .local v11, "isRingVibrate":Z
    :goto_5
    if-eqz v10, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeInternal:I

    move/from16 v22, v0

    if-nez v22, :cond_12

    const/4 v9, 0x1

    .line 667
    .local v9, "isRingSilent":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->zenMode:I

    move/from16 v22, v0

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_13

    const/4 v14, 0x1

    .line 668
    .local v14, "isZenAlarms":Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->zenMode:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_14

    const/4 v15, 0x1

    .line 669
    .local v15, "isZenNone":Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->zenMode:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_15

    const/16 v16, 0x1

    .line 670
    .local v16, "isZenPriority":Z
    :goto_9
    if-nez v10, :cond_5

    if-eqz v13, :cond_16

    :cond_5
    if-eqz v15, :cond_16

    const/4 v12, 0x1

    .line 671
    .local v12, "isRingZenNone":Z
    :goto_a
    if-eqz v10, :cond_17

    if-eqz v16, :cond_17

    const/4 v8, 0x1

    .line 672
    .local v8, "isRingLimited":Z
    :goto_b
    if-eqz v14, :cond_19

    if-nez v10, :cond_6

    if-eqz v13, :cond_18

    :cond_6
    const/16 v21, 0x1

    .line 677
    .local v21, "zenMuted":Z
    :goto_c
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->levelMax:I

    move/from16 v22, v0

    mul-int/lit8 v17, v22, 0x64

    .line 678
    .local v17, "max":I
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1700(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/SeekBar;->getMax()I

    move-result v22

    move/from16 v0, v17

    move/from16 v1, v22

    if-eq v0, v1, :cond_7

    .line 679
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1700(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 683
    :cond_7
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/volume/VolumeDialog;->updateVolumeRowHeaderVisibleH(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V

    .line 686
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 687
    .local v19, "text":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialog;->mShowHeaders:Z

    move/from16 v22, v0

    if-eqz v22, :cond_8

    .line 688
    if-eqz v12, :cond_1d

    .line 689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x7f0b0649

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-virtual/range {v22 .. v24}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 700
    :cond_8
    :goto_d
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1600(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/TextView;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/systemui/volume/Util;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    .line 703
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialog;->mAutomute:Z

    move/from16 v22, v0

    if-nez v22, :cond_9

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muteSupported:Z

    move/from16 v22, v0

    if-eqz v22, :cond_22

    :cond_9
    if-nez v21, :cond_22

    const/4 v4, 0x1

    .line 704
    .local v4, "iconEnabled":Z
    :goto_e
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1900(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 705
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1900(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v23

    if-eqz v4, :cond_23

    const/high16 v22, 0x3f800000    # 1.0f

    :goto_f
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 706
    if-eqz v11, :cond_24

    const v5, 0x7f0201ad

    .line 714
    .local v5, "iconRes":I
    :goto_10
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$3200(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v22

    move/from16 v0, v22

    if-eq v5, v0, :cond_b

    .line 715
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$3200(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v22

    if-eqz v22, :cond_a

    if-eqz v11, :cond_a

    .line 716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/volume/VolumeDialogController;->vibrate()V

    .line 718
    :cond_a
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$3202(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;I)I

    .line 719
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1900(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 721
    :cond_b
    const v22, 0x7f0201ad

    move/from16 v0, v22

    if-ne v5, v0, :cond_2b

    const/16 v22, 0x3

    :goto_11
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2102(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;I)I

    .line 728
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1900(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v22

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 731
    if-nez v21, :cond_30

    const/4 v3, 0x1

    .line 732
    .local v3, "enableSlider":Z
    :goto_12
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2400(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v22

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muted:Z

    move/from16 v22, v0

    if-eqz v22, :cond_31

    if-nez v11, :cond_c

    if-nez v10, :cond_31

    if-nez v21, :cond_31

    :cond_c
    const/16 v20, 0x0

    .line 734
    .local v20, "vlevel":I
    :goto_13
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v3, v2}, Lcom/android/systemui/volume/VolumeDialog;->updateVolumeRowSliderH(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;ZI)V

    goto/16 :goto_0

    .line 659
    .end local v3    # "enableSlider":Z
    .end local v4    # "iconEnabled":Z
    .end local v5    # "iconRes":I
    .end local v6    # "isAlarmStream":Z
    .end local v7    # "isMusicStream":Z
    .end local v8    # "isRingLimited":Z
    .end local v9    # "isRingSilent":Z
    .end local v10    # "isRingStream":Z
    .end local v11    # "isRingVibrate":Z
    .end local v12    # "isRingZenNone":Z
    .end local v13    # "isSystemStream":Z
    .end local v14    # "isZenAlarms":Z
    .end local v15    # "isZenNone":Z
    .end local v16    # "isZenPriority":Z
    .end local v17    # "max":I
    .end local v19    # "text":Ljava/lang/String;
    .end local v20    # "vlevel":I
    .end local v21    # "zenMuted":Z
    :cond_d
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 660
    .restart local v10    # "isRingStream":Z
    :cond_e
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 661
    .restart local v13    # "isSystemStream":Z
    :cond_f
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 662
    .restart local v6    # "isAlarmStream":Z
    :cond_10
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 663
    .restart local v7    # "isMusicStream":Z
    :cond_11
    const/4 v11, 0x0

    goto/16 :goto_5

    .line 665
    .restart local v11    # "isRingVibrate":Z
    :cond_12
    const/4 v9, 0x0

    goto/16 :goto_6

    .line 667
    .restart local v9    # "isRingSilent":Z
    :cond_13
    const/4 v14, 0x0

    goto/16 :goto_7

    .line 668
    .restart local v14    # "isZenAlarms":Z
    :cond_14
    const/4 v15, 0x0

    goto/16 :goto_8

    .line 669
    .restart local v15    # "isZenNone":Z
    :cond_15
    const/16 v16, 0x0

    goto/16 :goto_9

    .line 670
    .restart local v16    # "isZenPriority":Z
    :cond_16
    const/4 v12, 0x0

    goto/16 :goto_a

    .line 671
    .restart local v12    # "isRingZenNone":Z
    :cond_17
    const/4 v8, 0x0

    goto/16 :goto_b

    .line 672
    .restart local v8    # "isRingLimited":Z
    :cond_18
    const/16 v21, 0x0

    goto/16 :goto_c

    :cond_19
    if-eqz v15, :cond_1c

    if-nez v10, :cond_1a

    if-nez v13, :cond_1a

    if-nez v6, :cond_1a

    if-eqz v7, :cond_1b

    :cond_1a
    const/16 v21, 0x1

    goto/16 :goto_c

    :cond_1b
    const/16 v21, 0x0

    goto/16 :goto_c

    :cond_1c
    const/16 v21, 0x0

    goto/16 :goto_c

    .line 690
    .restart local v17    # "max":I
    .restart local v19    # "text":Ljava/lang/String;
    .restart local v21    # "zenMuted":Z
    :cond_1d
    if-eqz v11, :cond_1e

    if-eqz v8, :cond_1e

    .line 691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x7f0b064b

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-virtual/range {v22 .. v24}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_d

    .line 692
    :cond_1e
    if-eqz v11, :cond_1f

    .line 693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x7f0b0647

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-virtual/range {v22 .. v24}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_d

    .line 694
    :cond_1f
    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muted:Z

    move/from16 v22, v0

    if-nez v22, :cond_20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialog;->mAutomute:Z

    move/from16 v22, v0

    if-eqz v22, :cond_21

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    move/from16 v22, v0

    if-nez v22, :cond_21

    .line 695
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x7f0b0646

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-virtual/range {v22 .. v24}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_d

    .line 696
    :cond_21
    if-eqz v8, :cond_8

    .line 697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x7f0b064a

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-virtual/range {v22 .. v24}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_d

    .line 703
    :cond_22
    const/4 v4, 0x0

    goto/16 :goto_e

    .line 705
    .restart local v4    # "iconEnabled":Z
    :cond_23
    const/high16 v22, 0x3f000000    # 0.5f

    goto/16 :goto_f

    .line 706
    :cond_24
    if-nez v9, :cond_25

    if-eqz v21, :cond_26

    :cond_25
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$3200(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v5

    goto/16 :goto_10

    :cond_26
    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->routedToBluetooth:Z

    move/from16 v22, v0

    if-eqz v22, :cond_28

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muted:Z

    move/from16 v22, v0

    if-eqz v22, :cond_27

    const v5, 0x7f0201a6

    goto/16 :goto_10

    :cond_27
    const v5, 0x7f0201a5

    goto/16 :goto_10

    :cond_28
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialog;->mAutomute:Z

    move/from16 v22, v0

    if-eqz v22, :cond_29

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    move/from16 v22, v0

    if-nez v22, :cond_29

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v5

    goto/16 :goto_10

    :cond_29
    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muted:Z

    move/from16 v22, v0

    if-eqz v22, :cond_2a

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v5

    goto/16 :goto_10

    :cond_2a
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1300(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v5

    goto/16 :goto_10

    .line 721
    .restart local v5    # "iconRes":I
    :cond_2b
    const v22, 0x7f0201a6

    move/from16 v0, v22

    if-eq v5, v0, :cond_2c

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v22

    move/from16 v0, v22

    if-ne v5, v0, :cond_2d

    :cond_2c
    const/16 v22, 0x2

    goto/16 :goto_11

    :cond_2d
    const v22, 0x7f0201a5

    move/from16 v0, v22

    if-eq v5, v0, :cond_2e

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1300(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v22

    move/from16 v0, v22

    if-ne v5, v0, :cond_2f

    :cond_2e
    const/16 v22, 0x1

    goto/16 :goto_11

    :cond_2f
    const/16 v22, 0x0

    goto/16 :goto_11

    .line 731
    :cond_30
    const/4 v3, 0x0

    goto/16 :goto_12

    .line 732
    .restart local v3    # "enableSlider":Z
    :cond_31
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2400(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    move/from16 v20, v0

    goto/16 :goto_13
.end method

.method private updateVolumeRowHeaderVisibleH(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V
    .locals 5
    .param p1, "row"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 738
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2400(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2400(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->dynamic:Z

    if-eqz v4, :cond_2

    move v0, v2

    .line 739
    .local v0, "dynamic":Z
    :goto_0
    iget-boolean v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowHeaders:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanded:Z

    if-eqz v4, :cond_3

    if-eqz v0, :cond_3

    :cond_0
    move v1, v2

    .line 740
    .local v1, "showHeaders":Z
    :goto_1
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$3300(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Z

    move-result v2

    if-eq v2, v1, :cond_1

    .line 741
    invoke-static {p1, v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$3302(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Z)Z

    .line 742
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1600(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 744
    :cond_1
    return-void

    .end local v0    # "dynamic":Z
    .end local v1    # "showHeaders":Z
    :cond_2
    move v0, v3

    .line 738
    goto :goto_0

    .restart local v0    # "dynamic":Z
    :cond_3
    move v1, v3

    .line 739
    goto :goto_1
.end method

.method private updateVolumeRowSliderH(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;ZI)V
    .locals 12
    .param p1, "row"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    .param p2, "enable"    # Z
    .param p3, "vlevel"    # I

    .prologue
    .line 759
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1700(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 760
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1000(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v5

    iget v6, p0, Lcom/android/systemui/volume/VolumeDialog;->mActiveStream:I

    if-ne v5, v6, :cond_1

    const/4 v5, 0x1

    :goto_0
    invoke-direct {p0, p1, v5}, Lcom/android/systemui/volume/VolumeDialog;->updateVolumeRowSliderTintH(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Z)V

    .line 761
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$3500(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 808
    :cond_0
    :goto_1
    return-void

    .line 760
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 764
    :cond_2
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1700(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    .line 765
    .local v3, "progress":I
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1700(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/android/systemui/volume/VolumeDialog;->getImpliedLevel(Landroid/widget/SeekBar;I)I

    move-result v1

    .line 766
    .local v1, "level":I
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$700(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_4

    const/4 v4, 0x1

    .line 767
    .local v4, "rowVisible":Z
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2600(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    cmp-long v5, v6, v8

    if-gez v5, :cond_5

    const/4 v0, 0x1

    .line 769
    .local v0, "inGracePeriod":Z
    :goto_3
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    const/4 v6, 0x3

    invoke-virtual {v5, v6, p1}, Lcom/android/systemui/volume/VolumeDialog$H;->removeMessages(ILjava/lang/Object;)V

    .line 770
    iget-boolean v5, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowing:Z

    if-eqz v5, :cond_6

    if-eqz v4, :cond_6

    if-eqz v0, :cond_6

    .line 771
    sget-boolean v5, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v5, :cond_3

    sget-object v5, Lcom/android/systemui/volume/VolumeDialog;->TAG:Ljava/lang/String;

    const-string v6, "inGracePeriod"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    iget-object v6, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    const/4 v7, 0x3

    invoke-virtual {v6, v7, p1}, Lcom/android/systemui/volume/VolumeDialog$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2600(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    add-long/2addr v8, v10

    invoke-virtual {v5, v6, v8, v9}, Lcom/android/systemui/volume/VolumeDialog$H;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_1

    .line 766
    .end local v0    # "inGracePeriod":Z
    .end local v4    # "rowVisible":Z
    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    .line 767
    .restart local v4    # "rowVisible":Z
    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    .line 776
    .restart local v0    # "inGracePeriod":Z
    :cond_6
    if-ne p3, v1, :cond_7

    .line 777
    iget-boolean v5, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowing:Z

    if-eqz v5, :cond_7

    if-nez v4, :cond_0

    .line 781
    :cond_7
    mul-int/lit8 v2, p3, 0x64

    .line 782
    .local v2, "newProgress":I
    if-eq v3, v2, :cond_0

    .line 783
    iget-boolean v5, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowing:Z

    if-eqz v5, :cond_a

    if-eqz v4, :cond_a

    .line 785
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$3600(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$3600(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$3700(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v5

    if-eq v5, v2, :cond_0

    .line 790
    :cond_8
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$3600(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    if-nez v5, :cond_9

    .line 791
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1700(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v5

    const-string v6, "progress"

    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x0

    aput v3, v7, v8

    const/4 v8, 0x1

    aput v2, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$3602(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 792
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$3600(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 797
    :goto_4
    invoke-static {p1, v2}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$3702(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;I)I

    .line 798
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$3600(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v6, 0x50

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 799
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$3600(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_1

    .line 794
    :cond_9
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$3600(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 795
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$3600(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v7, 0x0

    aput v3, v6, v7

    const/4 v7, 0x1

    aput v2, v6, v7

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    goto :goto_4

    .line 802
    :cond_a
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$3600(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 803
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$3600(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 805
    :cond_b
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1700(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto/16 :goto_1
.end method

.method private updateVolumeRowSliderTintH(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Z)V
    .locals 2
    .param p1, "row"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    .param p2, "isActive"    # Z

    .prologue
    .line 747
    if-eqz p2, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanded:Z

    if-eqz v1, :cond_0

    .line 748
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1700(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->requestFocus()Z

    .line 750
    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1700(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mActiveSliderTint:Landroid/content/res/ColorStateList;

    .line 752
    .local v0, "tint":Landroid/content/res/ColorStateList;
    :goto_0
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$3400(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 756
    :goto_1
    return-void

    .line 750
    .end local v0    # "tint":Landroid/content/res/ColorStateList;
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mInactiveSliderTint:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 753
    .restart local v0    # "tint":Landroid/content/res/ColorStateList;
    :cond_2
    invoke-static {p1, v0}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$3402(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 754
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1700(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 755
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1700(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1
.end method

.method private updateWindowWidthH()V
    .locals 7

    .prologue
    .line 222
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 223
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 224
    .local v0, "dm":Landroid/util/DisplayMetrics;
    sget-boolean v4, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/systemui/volume/VolumeDialog;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateWindowWidth dm.w="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_0
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 226
    .local v3, "w":I
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a02e6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 228
    .local v2, "max":I
    if-le v3, v2, :cond_1

    .line 229
    move v3, v2

    .line 231
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0349

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    .line 232
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 233
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mControllerCallbackH:Lcom/android/systemui/volume/VolumeDialogController$Callbacks;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogController;->removeCallback(Lcom/android/systemui/volume/VolumeDialogController$Callbacks;)V

    .line 426
    return-void
.end method

.method public dismiss(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/systemui/volume/VolumeDialog$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 434
    return-void
.end method

.method protected dismissH(I)V
    .locals 5
    .param p1, "reason"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 466
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogMotion;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 487
    :cond_0
    :goto_0
    return-void

    .line 469
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$H;->removeMessages(I)V

    .line 470
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    invoke-virtual {v0, v4}, Lcom/android/systemui/volume/VolumeDialog$H;->removeMessages(I)V

    .line 471
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowing:Z

    if-eqz v0, :cond_0

    .line 472
    iput-boolean v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowing:Z

    .line 473
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    new-instance v1, Lcom/android/systemui/volume/VolumeDialog$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialog$5;-><init>(Lcom/android/systemui/volume/VolumeDialog;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogMotion;->startDismiss(Ljava/lang/Runnable;)V

    .line 479
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v4, v1}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 480
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v0, v3}, Lcom/android/systemui/volume/VolumeDialogController;->notifyVisible(Z)V

    .line 481
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v1

    .line 482
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-eqz v0, :cond_3

    .line 483
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/systemui/volume/VolumeDialog;->TAG:Ljava/lang/String;

    const-string v2, "SafetyWarning dismissed"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SafetyWarningDialog;->dismiss()V

    .line 486
    :cond_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/systemui/volume/VolumeDialog;

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

    .line 329
    const-string v0, "  mShowing: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowing:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 330
    const-string v0, "  mExpanded: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanded:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 331
    const-string v0, "  mExpandButtonAnimationRunning: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 332
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButtonAnimationRunning:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 333
    const-string v0, "  mActiveStream: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mActiveStream:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 334
    const-string v0, "  mDynamic: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 335
    const-string v0, "  mShowHeaders: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowHeaders:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 336
    const-string v0, "  mAutomute: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mAutomute:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 337
    const-string v0, "  mSilentMode: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mSilentMode:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 338
    const-string v0, "  mCollapseTime: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mCollapseTime:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 339
    const-string v0, "  mAccessibility.mFeedbackEnabled: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mAccessibility:Lcom/android/systemui/volume/VolumeDialog$Accessibility;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog$Accessibility;->access$1100(Lcom/android/systemui/volume/VolumeDialog$Accessibility;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 341
    return-void
.end method

.method protected rescheduleTimeoutH()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 449
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    invoke-virtual {v1, v5}, Lcom/android/systemui/volume/VolumeDialog$H;->removeMessages(I)V

    .line 450
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->computeTimeoutH()I

    move-result v0

    .line 451
    .local v0, "timeout":I
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/systemui/volume/VolumeDialog$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/systemui/volume/VolumeDialog$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 453
    sget-boolean v1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/volume/VolumeDialog;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rescheduleTimeout "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v1}, Lcom/android/systemui/volume/VolumeDialogController;->userActivity()V

    .line 455
    return-void
.end method

.method public setAutomute(Z)V
    .locals 2
    .param p1, "automute"    # Z

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mAutomute:Z

    if-ne v0, p1, :cond_0

    .line 250
    :goto_0
    return-void

    .line 248
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialog;->mAutomute:Z

    .line 249
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$H;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public setShowHeaders(Z)V
    .locals 2
    .param p1, "showHeaders"    # Z

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowHeaders:Z

    if-ne p1, v0, :cond_0

    .line 244
    :goto_0
    return-void

    .line 242
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowHeaders:Z

    .line 243
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$H;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public setSilentMode(Z)V
    .locals 2
    .param p1, "silentMode"    # Z

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mSilentMode:Z

    if-ne v0, p1, :cond_0

    .line 256
    :goto_0
    return-void

    .line 254
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialog;->mSilentMode:Z

    .line 255
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$H;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public setStreamImportant(IZ)V
    .locals 3
    .param p1, "stream"    # I
    .param p2, "important"    # Z

    .prologue
    .line 237
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    const/4 v2, 0x5

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, p1, v0}, Lcom/android/systemui/volume/VolumeDialog$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 238
    return-void

    .line 237
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public show(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/systemui/volume/VolumeDialog$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 430
    return-void
.end method
