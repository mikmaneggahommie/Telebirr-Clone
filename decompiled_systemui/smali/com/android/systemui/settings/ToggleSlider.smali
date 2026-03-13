.class public Lcom/android/systemui/settings/ToggleSlider;
.super Landroid/widget/RelativeLayout;
.source "ToggleSlider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/settings/ToggleSlider$TouchListener;,
        Lcom/android/systemui/settings/ToggleSlider$Listener;
    }
.end annotation


# static fields
.field private static final AUTO_BRIGHTNESS_DETAIL_STEP:I = 0x19

.field private static final NEED_TO_UPDATE_PROGRESSBAR:I = -0x1

.field static final TAG:Ljava/lang/String; = "ToggleSlider"

.field private static mDiagnosticLogs:Z


# instance fields
.field private final EDM_FALSE:I

.field private final EDM_NULL:I

.field private final EDM_TRUE:I

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAnimIcon:Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;

.field private mAutoBrightnessGroup:Landroid/view/ViewGroup;

.field private mAutomaticAvailable:Z

.field private mBrightnessIcon:Landroid/widget/ImageView;

.field private final mCheckListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mContext:Landroid/content/Context;

.field private mEnabledHighBrightnessMode:Z

.field private mFromUser:Z

.field private mHbmIcon:Landroid/widget/ImageView;

.field private mHbmText:Landroid/widget/TextView;

.field public mIsMirror:Z

.field private mIsTogglePressed:Z

.field private final mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLabel:Landroid/widget/TextView;

.field private mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;

.field private mMirror:Lcom/android/systemui/settings/ToggleSlider;

.field private mMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

.field private mOutdoorModeOn:Z

.field private mPossibleHighbrightnessMode:Z

.field private final mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private final mSeekTouchListener:Landroid/view/View$OnTouchListener;

.field private mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

.field private mSliderLayout:Landroid/widget/LinearLayout;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mStopMirroring:Z

.field private final mTWSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mToggle:Landroid/widget/CompoundButton;

.field private final mTogglePadding:I

.field private mTracking:Z

.field private final mTwSeekTouchListener:Landroid/view/View$OnTouchListener;

.field private mTwSlider:Landroid/widget/SeekBar;

.field private mTwSliderLayout:Landroid/widget/LinearLayout;

.field private mTwSliderText:Landroid/widget/TextView;

.field private settedSplitValue:I

.field private settedValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1111
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/settings/ToggleSlider;->mDiagnosticLogs:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/settings/ToggleSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 128
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/settings/ToggleSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 135
    invoke-direct/range {p0 .. p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 101
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mIsMirror:Z

    .line 115
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mFromUser:Z

    .line 117
    const/4 v11, -0x1

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/systemui/settings/ToggleSlider;->settedSplitValue:I

    .line 118
    const/4 v11, -0x1

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/systemui/settings/ToggleSlider;->settedValue:I

    .line 120
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mOutdoorModeOn:Z

    .line 443
    new-instance v11, Lcom/android/systemui/settings/ToggleSlider$5;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/android/systemui/settings/ToggleSlider$5;-><init>(Lcom/android/systemui/settings/ToggleSlider;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mCheckListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 544
    new-instance v11, Lcom/android/systemui/settings/ToggleSlider$6;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/android/systemui/settings/ToggleSlider$6;-><init>(Lcom/android/systemui/settings/ToggleSlider;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 618
    new-instance v11, Lcom/android/systemui/settings/ToggleSlider$7;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/android/systemui/settings/ToggleSlider$7;-><init>(Lcom/android/systemui/settings/ToggleSlider;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mSeekTouchListener:Landroid/view/View$OnTouchListener;

    .line 634
    new-instance v11, Lcom/android/systemui/settings/ToggleSlider$8;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/android/systemui/settings/ToggleSlider$8;-><init>(Lcom/android/systemui/settings/ToggleSlider;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mTWSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 702
    new-instance v11, Lcom/android/systemui/settings/ToggleSlider$9;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/android/systemui/settings/ToggleSlider$9;-><init>(Lcom/android/systemui/settings/ToggleSlider;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mTwSeekTouchListener:Landroid/view/View$OnTouchListener;

    .line 903
    const/4 v11, -0x1

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/systemui/settings/ToggleSlider;->EDM_NULL:I

    .line 904
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/systemui/settings/ToggleSlider;->EDM_FALSE:I

    .line 905
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/systemui/settings/ToggleSlider;->EDM_TRUE:I

    .line 138
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v11

    const-string v12, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v11, v12}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v11

    sput-boolean v11, Lcom/android/systemui/settings/ToggleSlider;->mDiagnosticLogs:Z

    .line 142
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/settings/ToggleSlider;->mContext:Landroid/content/Context;

    .line 144
    const v11, 0x7f0400ba

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v11, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 146
    sget-object v11, Lcom/android/systemui/R$styleable;->ToggleSlider:[I

    const/4 v12, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v11, v2, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 148
    .local v3, "a":Landroid/content/res/TypedArray;
    const v11, 0x7f0f03c8

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/systemui/settings/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mLabel:Landroid/widget/TextView;

    .line 149
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mLabel:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    const-string v11, "keyguard"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/KeyguardManager;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 152
    const-string v11, "statusbar"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/StatusBarManager;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 155
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 157
    const v11, 0x7f0f03c7

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/systemui/settings/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/CompoundButton;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    .line 158
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/settings/ToggleSlider;->mCheckListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v11, v12}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 159
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/widget/CompoundButton;->setLayerType(ILandroid/graphics/Paint;)V

    .line 160
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/settings/ToggleSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0c0082

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 162
    const v11, 0x7f0f03c2

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/systemui/settings/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/settings/ToggleSeekBar;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    .line 163
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/settings/ToggleSlider;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v11, v12}, Lcom/android/systemui/settings/ToggleSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 164
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/settings/ToggleSlider;->mSeekTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v11, v12}, Lcom/android/systemui/settings/ToggleSeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 165
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/settings/ToggleSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0c00c3

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/systemui/settings/ToggleSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 166
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v11}, Lcom/android/systemui/settings/ToggleSeekBar;->bringToFront()V

    .line 167
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/android/systemui/settings/ToggleSeekBar;->setLayerType(ILandroid/graphics/Paint;)V

    .line 170
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mEnabledHighBrightnessMode:Z

    .line 171
    const v11, 0x7f0f03c3

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/systemui/settings/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mHbmText:Landroid/widget/TextView;

    .line 172
    const v11, 0x7f0f03bd

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/systemui/settings/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mHbmIcon:Landroid/widget/ImageView;

    .line 173
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mHbmIcon:Landroid/widget/ImageView;

    new-instance v12, Lcom/android/systemui/settings/ToggleSlider$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/systemui/settings/ToggleSlider$1;-><init>(Lcom/android/systemui/settings/ToggleSlider;)V

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    const v11, 0x7f0f03be

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/systemui/settings/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mAnimIcon:Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;

    .line 207
    const v11, 0x7f0f03bc

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/systemui/settings/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mBrightnessIcon:Landroid/widget/ImageView;

    .line 209
    sget-boolean v11, Lcom/android/systemui/statusbar/Feature;->mUseAnimatedBrightnessIcon:Z

    if-eqz v11, :cond_0

    .line 210
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mAnimIcon:Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->setVisibility(I)V

    .line 211
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mBrightnessIcon:Landroid/widget/ImageView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 215
    :cond_0
    const v11, 0x7f0f03c1

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/systemui/settings/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mSliderLayout:Landroid/widget/LinearLayout;

    .line 216
    const v11, 0x7f0f03c4

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/systemui/settings/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mTwSliderLayout:Landroid/widget/LinearLayout;

    .line 217
    const v11, 0x7f0f03c6

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/systemui/settings/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mTwSliderText:Landroid/widget/TextView;

    .line 218
    const v11, 0x7f0f03c5

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/systemui/settings/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/SeekBar;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mTwSlider:Landroid/widget/SeekBar;

    .line 219
    sget-boolean v11, Lcom/android/systemui/statusbar/Feature;->mUseAutoBrightnessDetail:Z

    if-eqz v11, :cond_1

    .line 220
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mTwSlider:Landroid/widget/SeekBar;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/widget/SeekBar;->setMode(I)V

    .line 221
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mTwSlider:Landroid/widget/SeekBar;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/settings/ToggleSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0203b1

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 222
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mTwSlider:Landroid/widget/SeekBar;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/settings/ToggleSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0203b2

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/SeekBar;->setSplitProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 223
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mTwSlider:Landroid/widget/SeekBar;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/settings/ToggleSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0203b3

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/SeekBar;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 224
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mTwSlider:Landroid/widget/SeekBar;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/settings/ToggleSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0c00c3

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 225
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mTwSlider:Landroid/widget/SeekBar;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/settings/ToggleSlider;->mTWSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v11, v12}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 226
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mTwSlider:Landroid/widget/SeekBar;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/settings/ToggleSlider;->mTwSeekTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v11, v12}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 229
    :cond_1
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mAutomaticAvailable:Z

    .line 230
    const-string v11, "sensor"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/SensorManager;

    .line 231
    .local v8, "sensorMgr":Landroid/hardware/SensorManager;
    const/4 v11, -0x1

    invoke-virtual {v8, v11}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v7

    .line 232
    .local v7, "sensorList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-ge v5, v11, :cond_3

    .line 233
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/Sensor;

    invoke-virtual {v11}, Landroid/hardware/Sensor;->getType()I

    move-result v9

    .line 235
    .local v9, "sensorType":I
    const/4 v11, 0x5

    if-ne v9, v11, :cond_2

    .line 236
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mAutomaticAvailable:Z

    .line 232
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 239
    .end local v9    # "sensorType":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/systemui/settings/ToggleSlider;->mAutomaticAvailable:Z

    invoke-virtual {v11, v12}, Lcom/android/systemui/settings/ToggleSeekBar;->setEnable(Z)V

    .line 240
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mAutomaticAvailable:Z

    if-eqz v11, :cond_4

    .line 242
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/settings/ToggleSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0b02ac

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/settings/ToggleSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0b0386

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 244
    .local v4, "checkBoxText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v11, v4}, Landroid/widget/CompoundButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 248
    .end local v4    # "checkBoxText":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mAutomaticAvailable:Z

    if-eqz v11, :cond_8

    sget-boolean v11, Lcom/android/systemui/statusbar/Feature;->mUseAutoBrightnessDetail:Z

    if-eqz v11, :cond_8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "screen_brightness_mode"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_8

    .line 251
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mTwSliderLayout:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 252
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mSliderLayout:Landroid/widget/LinearLayout;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 253
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/settings/ToggleSlider;->mTwSlider:Landroid/widget/SeekBar;

    invoke-virtual {v12}, Landroid/widget/SeekBar;->getProgress()I

    move-result v12

    mul-int/lit8 v12, v12, 0x19

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/android/systemui/settings/ToggleSlider;->updateIcon(ZI)V

    .line 273
    :cond_5
    :goto_1
    new-instance v10, Lcom/android/systemui/settings/ToggleSlider$TouchListener;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/android/systemui/settings/ToggleSlider$TouchListener;-><init>(Lcom/android/systemui/settings/ToggleSlider;)V

    .line 274
    .local v10, "touchListener":Lcom/android/systemui/settings/ToggleSlider$TouchListener;
    const v11, 0x7f0f03c0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/systemui/settings/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mAutoBrightnessGroup:Landroid/view/ViewGroup;

    .line 275
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mAutoBrightnessGroup:Landroid/view/ViewGroup;

    if-eqz v11, :cond_c

    .line 276
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mAutoBrightnessGroup:Landroid/view/ViewGroup;

    invoke-virtual {v11, v10}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 280
    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/systemui/statusbar/BaseStatusBar;->IsDualFolderType(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 281
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/systemui/statusbar/BaseStatusBar;->isFolderOpen(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 282
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 287
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    new-instance v12, Lcom/android/systemui/settings/ToggleSlider$2;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/systemui/settings/ToggleSlider$2;-><init>(Lcom/android/systemui/settings/ToggleSlider;)V

    invoke-virtual {v11, v12}, Landroid/widget/CompoundButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 313
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    new-instance v12, Lcom/android/systemui/settings/ToggleSlider$3;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/systemui/settings/ToggleSlider$3;-><init>(Lcom/android/systemui/settings/ToggleSlider;)V

    invoke-virtual {v11, v12}, Landroid/widget/CompoundButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 349
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    new-instance v12, Lcom/android/systemui/settings/ToggleSlider$4;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/systemui/settings/ToggleSlider$4;-><init>(Lcom/android/systemui/settings/ToggleSlider;)V

    invoke-virtual {v11, v12}, Lcom/android/systemui/settings/ToggleSeekBar;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 364
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 365
    .local v6, "res":Landroid/content/res/Resources;
    const v11, 0x7f0a0401

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mTogglePadding:I

    .line 366
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mAutomaticAvailable:Z

    if-nez v11, :cond_7

    .line 367
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v12}, Lcom/android/systemui/settings/ToggleSeekBar;->getPaddingStart()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v13}, Lcom/android/systemui/settings/ToggleSeekBar;->getPaddingTop()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/settings/ToggleSlider;->mTogglePadding:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v15}, Lcom/android/systemui/settings/ToggleSeekBar;->getPaddingBottom()I

    move-result v15

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/android/systemui/settings/ToggleSeekBar;->setPaddingRelative(IIII)V

    .line 369
    :cond_7
    return-void

    .line 255
    .end local v6    # "res":Landroid/content/res/Resources;
    .end local v10    # "touchListener":Lcom/android/systemui/settings/ToggleSlider$TouchListener;
    :cond_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mSliderLayout:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 256
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mTwSliderLayout:Landroid/widget/LinearLayout;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 258
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mAutomaticAvailable:Z

    if-nez v11, :cond_9

    sget-boolean v11, Lcom/android/systemui/statusbar/Feature;->mOutdoorMode:Z

    if-eqz v11, :cond_9

    .line 259
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mLabel:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/settings/ToggleSlider;->mContext:Landroid/content/Context;

    const v13, 0x7f0b0625

    invoke-virtual {v12, v13}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v12}, Lcom/android/systemui/settings/ToggleSeekBar;->getProgress()I

    move-result v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/android/systemui/settings/ToggleSlider;->updateIcon(ZI)V

    .line 268
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mAutomaticAvailable:Z

    if-eqz v11, :cond_5

    .line 269
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v13, "screen_brightness_mode"

    const/4 v14, 0x0

    invoke-static {v11, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const/4 v13, 0x1

    if-eq v11, v13, :cond_b

    const/4 v11, 0x1

    :goto_5
    invoke-virtual {v12, v11}, Lcom/android/systemui/settings/ToggleSeekBar;->setEnabled(Z)V

    goto/16 :goto_1

    .line 263
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mAutomaticAvailable:Z

    if-eqz v11, :cond_a

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "screen_brightness_mode"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_a

    const/4 v11, 0x1

    :goto_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v12}, Lcom/android/systemui/settings/ToggleSeekBar;->getProgress()I

    move-result v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/android/systemui/settings/ToggleSlider;->updateIcon(ZI)V

    goto :goto_4

    :cond_a
    const/4 v11, 0x0

    goto :goto_6

    .line 269
    :cond_b
    const/4 v11, 0x0

    goto :goto_5

    .line 278
    .restart local v10    # "touchListener":Lcom/android/systemui/settings/ToggleSlider$TouchListener;
    :cond_c
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_2

    .line 284
    :cond_d
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    goto/16 :goto_3
.end method

.method static synthetic access$000(Lcom/android/systemui/settings/ToggleSlider;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/settings/ToggleSlider;

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mPossibleHighbrightnessMode:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/settings/ToggleSlider;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/settings/ToggleSlider;

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mEnabledHighBrightnessMode:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/settings/ToggleSlider;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/settings/ToggleSlider;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/settings/ToggleSlider;

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mOutdoorModeOn:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/settings/ToggleSlider;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/settings/ToggleSlider;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/systemui/settings/ToggleSlider;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/settings/ToggleSlider;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSlider;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/systemui/settings/ToggleSlider;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/settings/ToggleSlider;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/systemui/settings/ToggleSlider;->showConfirmPopup()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/settings/ToggleSlider;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/settings/ToggleSlider;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/settings/ToggleSlider;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/settings/ToggleSlider;

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mTracking:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/systemui/settings/ToggleSlider;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/settings/ToggleSlider;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/android/systemui/settings/ToggleSlider;->mTracking:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/settings/ToggleSlider;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mTwSliderLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/settings/ToggleSlider;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mSliderLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/settings/ToggleSlider;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mTWSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/settings/ToggleSlider;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mHbmIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/settings/ToggleSlider;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mTwSlider:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/settings/ToggleSlider;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/systemui/settings/ToggleSlider;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/settings/ToggleSlider;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/android/systemui/settings/ToggleSlider;->mFromUser:Z

    return p1
.end method

.method static synthetic access$2302(Lcom/android/systemui/settings/ToggleSlider;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/settings/ToggleSlider;
    .param p1, "x1"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/android/systemui/settings/ToggleSlider;->settedValue:I

    return p1
.end method

.method static synthetic access$2400(Lcom/android/systemui/settings/ToggleSlider;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/settings/ToggleSlider;

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mStopMirroring:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/android/systemui/settings/ToggleSlider;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/settings/ToggleSlider;
    .param p1, "x1"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/android/systemui/settings/ToggleSlider;->settedSplitValue:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/settings/ToggleSlider;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/settings/ToggleSlider;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/settings/ToggleSlider;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/settings/ToggleSlider;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/settings/ToggleSlider;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # [Ljava/lang/String;

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/settings/ToggleSlider;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/settings/ToggleSlider;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/settings/ToggleSlider;

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mIsTogglePressed:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/systemui/settings/ToggleSlider;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/settings/ToggleSlider;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/android/systemui/settings/ToggleSlider;->mIsTogglePressed:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/CompoundButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/settings/ToggleSlider;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method static synthetic access$800()Z
    .locals 1

    .prologue
    .line 75
    sget-boolean v0, Lcom/android/systemui/settings/ToggleSlider;->mDiagnosticLogs:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/systemui/settings/ToggleSlider;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/settings/ToggleSlider;

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mAutomaticAvailable:Z

    return v0
.end method

.method private getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "edmUri"    # Ljava/lang/String;
    .param p3, "projectionArgs"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 908
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 909
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 910
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 912
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 913
    invoke-interface {v6, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 914
    const/4 v0, 0x1

    .line 920
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 923
    :goto_0
    return v0

    .line 916
    :cond_0
    const/4 v0, 0x0

    .line 920
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 918
    :catch_0
    move-exception v0

    .line 920
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 923
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 920
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "edmUri"    # Ljava/lang/String;
    .param p3, "projectionArgs"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 926
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 927
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p3

    move-object v4, p4

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 928
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 930
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 931
    invoke-interface {v6, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 932
    const/4 v0, 0x1

    .line 938
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 941
    :goto_0
    return v0

    .line 934
    :cond_0
    const/4 v0, 0x0

    .line 938
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 936
    :catch_0
    move-exception v0

    .line 938
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 941
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 938
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private isRTL()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 894
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v0

    .line 895
    .local v0, "value":B
    if-eq v0, v2, :cond_0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    :cond_0
    move v1, v2

    .line 899
    :cond_1
    return v1
.end method

.method private showConfirmPopup()V
    .locals 10

    .prologue
    const/16 v9, 0xf

    .line 975
    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSlider;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSlider;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 976
    const-string v4, "ToggleSlider"

    const-string v5, "outdoor mode dialog is already showing"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    :goto_0
    return-void

    .line 979
    :cond_0
    const-string v4, "ToggleSlider"

    const-string v5, "outdoor mode dialog is showing"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSlider;->mContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 981
    .local v1, "mLayoutInflater":Landroid/view/LayoutInflater;
    const v4, 0x7f0400c8

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 982
    .local v0, "mAlertView":Landroid/view/View;
    const v4, 0x7f0f03e5

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object v3, v4

    check-cast v3, Landroid/widget/TextView;

    .line 984
    .local v3, "mMsgView":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSlider;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0627

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 985
    .local v2, "mMessage":Ljava/lang/String;
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 987
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/systemui/settings/ToggleSlider;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0b0626

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    new-instance v6, Lcom/android/systemui/settings/ToggleSlider$10;

    invoke-direct {v6, p0}, Lcom/android/systemui/settings/ToggleSlider$10;-><init>(Lcom/android/systemui/settings/ToggleSlider;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/settings/ToggleSlider;->mAlertDialog:Landroid/app/AlertDialog;

    .line 1014
    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSlider;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/android/systemui/settings/ToggleSlider$11;

    invoke-direct {v5, p0}, Lcom/android/systemui/settings/ToggleSlider$11;-><init>(Lcom/android/systemui/settings/ToggleSlider;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1020
    invoke-virtual {p0}, Lcom/android/systemui/settings/ToggleSlider;->statusBarCollapse()V

    .line 1021
    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSlider;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSlider;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1022
    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSlider;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d9

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 1026
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSlider;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 1024
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSlider;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d8

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    goto :goto_1
.end method


# virtual methods
.method public getMirrorController()Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    return-object v0
.end method

.method public hideToggle()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 876
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mAutoBrightnessGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 877
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 878
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 879
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 880
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 881
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 883
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    if-eqz v0, :cond_0

    .line 884
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v0, v0, Lcom/android/systemui/settings/ToggleSlider;->mAutoBrightnessGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 885
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v0, v0, Lcom/android/systemui/settings/ToggleSlider;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 886
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v0, v0, Lcom/android/systemui/settings/ToggleSlider;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 887
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v0, v0, Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 888
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v0, v0, Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 889
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v0, v0, Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 891
    :cond_0
    return-void
.end method

.method public initSliderValue()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 958
    iput v0, p0, Lcom/android/systemui/settings/ToggleSlider;->settedSplitValue:I

    .line 959
    iput v0, p0, Lcom/android/systemui/settings/ToggleSlider;->settedValue:I

    .line 960
    return-void
.end method

.method public initSplitValue(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 735
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mTwSlider:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 736
    return-void
.end method

.method public initValue(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/settings/ToggleSeekBar;->setProgress(I)V

    .line 441
    return-void
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 407
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 408
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;

    invoke-interface {v0, p0}, Lcom/android/systemui/settings/ToggleSlider$Listener;->onInit(Lcom/android/systemui/settings/ToggleSlider;)V

    .line 411
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 10
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const v6, 0x7f0b02ac

    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 789
    iget-boolean v4, p0, Lcom/android/systemui/settings/ToggleSlider;->mAutomaticAvailable:Z

    if-nez v4, :cond_2

    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mOutdoorMode:Z

    if-eqz v4, :cond_2

    .line 790
    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSlider;->mLabel:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/systemui/settings/ToggleSlider;->mContext:Landroid/content/Context;

    const v6, 0x7f0b0625

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 799
    :goto_0
    const-string v3, ""

    .line 800
    .local v3, "progressValue":Ljava/lang/String;
    new-instance v1, Ljava/util/Locale;

    const-string v4, "en_US"

    invoke-direct {v1, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 801
    .local v1, "enLocale":Ljava/util/Locale;
    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSlider;->mTwSliderText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 802
    .local v2, "progressVal":Ljava/lang/String;
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mUseAutoBrightnessDetail:Z

    if-eqz v4, :cond_0

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 803
    invoke-direct {p0}, Lcom/android/systemui/settings/ToggleSlider;->isRTL()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 804
    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSlider;->mTwSliderText:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%d"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 811
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSlider;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->IsDualFolderType(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 812
    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSlider;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->isFolderOpen(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 813
    invoke-virtual {p0}, Lcom/android/systemui/settings/ToggleSlider;->setSliderInDualFolderOpened()V

    .line 818
    :cond_1
    :goto_2
    return-void

    .line 792
    .end local v1    # "enLocale":Ljava/util/Locale;
    .end local v2    # "progressVal":Ljava/lang/String;
    .end local v3    # "progressValue":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSlider;->mLabel:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/systemui/settings/ToggleSlider;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 793
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/settings/ToggleSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/systemui/settings/ToggleSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0386

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 796
    .local v0, "checkBoxText":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v4, v0}, Landroid/widget/CompoundButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 797
    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {p0}, Lcom/android/systemui/settings/ToggleSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b034b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/settings/ToggleSeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 807
    .end local v0    # "checkBoxText":Ljava/lang/String;
    .restart local v1    # "enLocale":Ljava/util/Locale;
    .restart local v2    # "progressVal":Ljava/lang/String;
    .restart local v3    # "progressValue":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSlider;->mTwSliderText:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%d"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v1, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 815
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/settings/ToggleSlider;->setSliderInDualFolderClosed()V

    goto :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 373
    const/4 v0, 0x1

    return v0
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 419
    return-void
.end method

.method public setFromUser(Z)V
    .locals 0
    .param p1, "fromUser"    # Z

    .prologue
    .line 954
    iput-boolean p1, p0, Lcom/android/systemui/settings/ToggleSlider;->mFromUser:Z

    .line 955
    return-void
.end method

.method protected setHbmPMSEnter(Z)V
    .locals 6
    .param p1, "entered"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 1087
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1088
    .local v0, "res":Landroid/content/res/Resources;
    iput-boolean p1, p0, Lcom/android/systemui/settings/ToggleSlider;->mPossibleHighbrightnessMode:Z

    .line 1092
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;

    if-eqz v1, :cond_0

    .line 1093
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;

    iget-boolean v4, p0, Lcom/android/systemui/settings/ToggleSlider;->mEnabledHighBrightnessMode:Z

    invoke-interface {v1, v4}, Lcom/android/systemui/settings/ToggleSlider$Listener;->onChangedHBM(Z)V

    .line 1094
    :cond_0
    const-string v1, "ToggleSlider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setHbmPMSEnter  mPossibleHighbrightnessMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/settings/ToggleSlider;->mPossibleHighbrightnessMode:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mEnabledHighBrightnessMode"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/settings/ToggleSlider;->mEnabledHighBrightnessMode:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSlider;->mAnimIcon:Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;

    if-eqz p1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->setVisibility(I)V

    .line 1099
    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSlider;->mHbmIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    move v1, v3

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1102
    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSlider;->mHbmText:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    move v1, v3

    :goto_2
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1103
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    if-eqz v1, :cond_1

    .line 1104
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v4, v1, Lcom/android/systemui/settings/ToggleSlider;->mAnimIcon:Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;

    if-eqz p1, :cond_5

    move v1, v2

    :goto_3
    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->setVisibility(I)V

    .line 1105
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v4, v1, Lcom/android/systemui/settings/ToggleSlider;->mHbmIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    move v1, v3

    :goto_4
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1106
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v1, v1, Lcom/android/systemui/settings/ToggleSlider;->mHbmText:Landroid/widget/TextView;

    if-eqz p1, :cond_7

    :goto_5
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1108
    :cond_1
    return-void

    :cond_2
    move v1, v3

    .line 1097
    goto :goto_0

    :cond_3
    move v1, v2

    .line 1099
    goto :goto_1

    :cond_4
    move v1, v2

    .line 1102
    goto :goto_2

    :cond_5
    move v1, v3

    .line 1104
    goto :goto_3

    :cond_6
    move v1, v2

    .line 1105
    goto :goto_4

    :cond_7
    move v3, v2

    .line 1106
    goto :goto_5
.end method

.method protected setHbmUserEnable(Z)V
    .locals 8
    .param p1, "enable"    # Z

    .prologue
    const v5, 0x7f0c0074

    const v4, 0x7f0c0073

    const v3, 0x7f0b0630

    const v2, 0x7f0b062f

    .line 1066
    const-string v1, "ToggleSlider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HBM is turned "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1069
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v6, p0, Lcom/android/systemui/settings/ToggleSlider;->mHbmText:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1070
    iget-object v6, p0, Lcom/android/systemui/settings/ToggleSlider;->mHbmText:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    move v1, v4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1071
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mHbmIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1072
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    if-eqz v1, :cond_0

    .line 1073
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v1, v1, Lcom/android/systemui/settings/ToggleSlider;->mHbmText:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1075
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v1, v1, Lcom/android/systemui/settings/ToggleSlider;->mHbmText:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    :goto_3
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1077
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v1, v1, Lcom/android/systemui/settings/ToggleSlider;->mHbmIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1079
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/settings/ToggleSlider;->mEnabledHighBrightnessMode:Z

    .line 1080
    return-void

    :cond_1
    move v1, v3

    .line 1069
    goto :goto_0

    :cond_2
    move v1, v5

    .line 1070
    goto :goto_1

    :cond_3
    move v2, v3

    .line 1073
    goto :goto_2

    :cond_4
    move v4, v5

    .line 1075
    goto :goto_3
.end method

.method public setMax(I)V
    .locals 1
    .param p1, "max"    # I

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/settings/ToggleSeekBar;->setMax(I)V

    .line 427
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    invoke-virtual {v0, p1}, Lcom/android/systemui/settings/ToggleSlider;->setMax(I)V

    .line 430
    :cond_0
    return-void
.end method

.method public setMirror(Lcom/android/systemui/settings/ToggleSlider;)V
    .locals 2
    .param p1, "toggleSlider"    # Lcom/android/systemui/settings/ToggleSlider;

    .prologue
    .line 377
    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    .line 378
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    if-eqz v0, :cond_2

    .line 379
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSlider;->setChecked(Z)V

    .line 380
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v1}, Lcom/android/systemui/settings/ToggleSeekBar;->getMax()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSlider;->setMax(I)V

    .line 381
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v1}, Lcom/android/systemui/settings/ToggleSeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSlider;->setValue(I)V

    .line 382
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v0, v0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v1}, Lcom/android/systemui/settings/ToggleSeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSeekBar;->setProgress(I)V

    .line 384
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseAutoBrightnessDetail:Z

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mTwSlider:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSlider;->setSplitMax(I)V

    .line 386
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mTwSlider:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSlider;->setSplitValue(I)V

    .line 387
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mTwSlider:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSlider;->setSplitText(I)V

    .line 390
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mAutomaticAvailable:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mOutdoorMode:Z

    if-nez v0, :cond_1

    .line 391
    invoke-virtual {p0}, Lcom/android/systemui/settings/ToggleSlider;->hideToggle()V

    .line 393
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/settings/ToggleSlider;->mIsMirror:Z

    .line 395
    :cond_2
    return-void
.end method

.method public setMirrorController(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V
    .locals 0
    .param p1, "c"    # Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .prologue
    .line 398
    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .line 399
    return-void
.end method

.method public setOnChangedListener(Lcom/android/systemui/settings/ToggleSlider$Listener;)V
    .locals 0
    .param p1, "l"    # Lcom/android/systemui/settings/ToggleSlider$Listener;

    .prologue
    .line 414
    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSlider;->mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;

    .line 415
    return-void
.end method

.method public setOutdoorMode(ZZ)V
    .locals 4
    .param p1, "mode"    # Z
    .param p2, "changeDB"    # Z

    .prologue
    const/4 v1, 0x0

    .line 963
    const-string v0, "ToggleSlider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOutdoorMode mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "changeDB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    if-eqz p2, :cond_0

    .line 965
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/systemui/settings/ToggleSlider$Listener;->onChanged(Lcom/android/systemui/settings/ToggleSlider;ZZ)V

    .line 967
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 968
    iget-object v2, p0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/systemui/settings/ToggleSeekBar;->setEnabled(Z)V

    .line 969
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v0}, Lcom/android/systemui/settings/ToggleSeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/settings/ToggleSlider;->updateIcon(ZI)V

    .line 970
    iput-boolean p1, p0, Lcom/android/systemui/settings/ToggleSlider;->mOutdoorModeOn:Z

    .line 972
    return-void

    :cond_1
    move v0, v1

    .line 968
    goto :goto_0
.end method

.method public setSliderInDualFolderClosed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1045
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1046
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v0}, Lcom/android/systemui/settings/ToggleSeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/settings/ToggleSlider;->updateIcon(ZI)V

    .line 1049
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 1050
    return-void
.end method

.method public setSliderInDualFolderOpened()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1034
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1035
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;

    if-eqz v0, :cond_0

    .line 1036
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;

    iget-boolean v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mTracking:Z

    iget-object v2, p0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v2}, Lcom/android/systemui/settings/ToggleSeekBar;->getProgress()I

    move-result v2

    invoke-interface {v0, p0, v1, v3, v2}, Lcom/android/systemui/settings/ToggleSlider$Listener;->onChanged(Lcom/android/systemui/settings/ToggleSlider;ZZI)V

    .line 1037
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v0}, Lcom/android/systemui/settings/ToggleSeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p0, v3, v0}, Lcom/android/systemui/settings/ToggleSlider;->updateIcon(ZI)V

    .line 1040
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 1041
    return-void
.end method

.method public setSliderProgress(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 945
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/settings/ToggleSeekBar;->setProgress(I)V

    .line 947
    return-void
.end method

.method public setSplitMax(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 720
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mTwSlider:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 721
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    invoke-virtual {v0, p1}, Lcom/android/systemui/settings/ToggleSlider;->setSplitMax(I)V

    .line 724
    :cond_0
    return-void
.end method

.method public setSplitText(I)V
    .locals 8
    .param p1, "value"    # I

    .prologue
    const/4 v7, 0x1

    .line 747
    const-string v0, ""

    .line 749
    .local v0, "progressValue":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/systemui/settings/ToggleSlider;->isRTL()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 750
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%d"

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 755
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mTwSliderText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 756
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mTwSliderText:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 757
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    if-eqz v1, :cond_0

    .line 758
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    invoke-virtual {v1, p1}, Lcom/android/systemui/settings/ToggleSlider;->setSplitText(I)V

    .line 760
    :cond_0
    return-void

    .line 752
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setSplitValue(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 728
    iget-boolean v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mIsMirror:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mFromUser:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/settings/ToggleSlider;->settedSplitValue:I

    if-eq v0, p1, :cond_0

    .line 729
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mTwSlider:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 730
    iput p1, p0, Lcom/android/systemui/settings/ToggleSlider;->settedSplitValue:I

    .line 732
    :cond_0
    return-void
.end method

.method public setStopMirroring(Z)V
    .locals 0
    .param p1, "stop"    # Z

    .prologue
    .line 950
    iput-boolean p1, p0, Lcom/android/systemui/settings/ToggleSlider;->mStopMirroring:Z

    .line 951
    return-void
.end method

.method public setToggleVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 1053
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 1055
    .local v0, "visibility":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mAutoBrightnessGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1056
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1057
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 1059
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    if-eqz v1, :cond_0

    .line 1060
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v1, v1, Lcom/android/systemui/settings/ToggleSlider;->mAutoBrightnessGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1061
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v1, v1, Lcom/android/systemui/settings/ToggleSlider;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1062
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v1, v1, Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 1064
    :cond_0
    return-void

    .line 1053
    .end local v0    # "visibility":I
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setValue(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 434
    iget-boolean v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mIsMirror:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mFromUser:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/settings/ToggleSlider;->settedValue:I

    if-eq v0, p1, :cond_0

    .line 435
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/settings/ToggleSeekBar;->setProgress(I)V

    .line 436
    iput p1, p0, Lcom/android/systemui/settings/ToggleSlider;->settedValue:I

    .line 438
    :cond_0
    return-void
.end method

.method protected statusBarCollapse()V
    .locals 1

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    .line 1030
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 1032
    :cond_0
    return-void
.end method

.method public updateIcon(ZI)V
    .locals 5
    .param p1, "automatic"    # Z
    .param p2, "value"    # I

    .prologue
    const v0, 0x7f020139

    const v1, 0x7f020137

    .line 763
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseAnimatedBrightnessIcon:Z

    if-nez v2, :cond_1

    .line 764
    iget-object v2, p0, Lcom/android/systemui/settings/ToggleSlider;->mBrightnessIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 785
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 764
    goto :goto_0

    .line 769
    :cond_1
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v2, :cond_2

    .line 770
    iget-object v2, p0, Lcom/android/systemui/settings/ToggleSlider;->mAnimIcon:Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 771
    iget-object v2, p0, Lcom/android/systemui/settings/ToggleSlider;->mAnimIcon:Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;

    iget-object v3, p0, Lcom/android/systemui/settings/ToggleSlider;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c007b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    ushr-int/lit8 v3, v3, 0x18

    int-to-float v3, v3

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->setAlpha(F)V

    .line 773
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/settings/ToggleSlider;->mAnimIcon:Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;

    invoke-virtual {v2, p2}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->setValue(I)V

    .line 774
    iget-object v2, p0, Lcom/android/systemui/settings/ToggleSlider;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->IsDualFolderType(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 775
    iget-object v2, p0, Lcom/android/systemui/settings/ToggleSlider;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->isFolderOpen(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 776
    const/4 p1, 0x0

    .line 779
    :cond_3
    iget-boolean v2, p0, Lcom/android/systemui/settings/ToggleSlider;->mAutomaticAvailable:Z

    if-nez v2, :cond_4

    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mOutdoorMode:Z

    if-eqz v2, :cond_4

    .line 780
    const/4 p1, 0x0

    .line 782
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/settings/ToggleSlider;->mAnimIcon:Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;

    if-eqz p1, :cond_5

    :goto_2
    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->setIcon(IZ)V

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2
.end method
