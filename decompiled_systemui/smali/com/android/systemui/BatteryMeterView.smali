.class public Lcom/android/systemui/BatteryMeterView;
.super Landroid/view/View;
.source "BatteryMeterView.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/BatteryMeterView$BatteryTracker;
    }
.end annotation


# static fields
.field public static final ACTION_LEVEL_TEST:Ljava/lang/String; = "com.android.systemui.BATTERY_LEVEL_TEST"

.field private static final BATTERY_UNDER_VOLTAGE:I = 0x9

.field private static final BLINKING_INTERVAL:I = 0x3e8

.field private static final BOLT_LEVEL_THRESHOLD:F = 0.3f

.field public static final EMPTY:I = 0x4

.field public static final ENABLE_PERCENT:Z = true

.field public static final FULL:I = 0x60

.field private static final MSG_POST_INVALIDATE:I = 0x1

.field public static final PERMISSION_LEVEL_TEST:Ljava/lang/String; = "com.sec.android.systemui.powerui.permission.BATTERY_LEVEL_TEST"

.field public static final SHOW_100_PERCENT:Z

.field public static final SINGLE_DIGIT_PERCENT:Z

.field public static final SUBPIXEL:F

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field mBatteryPaint:Landroid/graphics/Paint;

.field private mBlinkingNeeded:Z

.field private final mBoltFrame:Landroid/graphics/RectF;

.field mBoltPaint:Landroid/graphics/Paint;

.field private final mBoltPath:Landroid/graphics/Path;

.field private final mBoltPoints:[F

.field private final mButtonFrame:Landroid/graphics/RectF;

.field mButtonHeight:I

.field private mButtonHeightFraction:F

.field private mButtonPadding:F

.field private mChargeColor:I

.field private final mClipFrame:Landroid/graphics/RectF;

.field mColors:[I

.field private mDarkModeBackgroundColor:I

.field private mDarkModeBoltColor:I

.field private mDarkModeFillColor:I

.field private mDemoMode:Z

.field private mDemoTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

.field private final mFrame:Landroid/graphics/RectF;

.field mFramePaint:Landroid/graphics/Paint;

.field private mHeight:I

.field private mIconTint:I

.field private mInvalidString:Ljava/lang/String;

.field mInvalidTextPaint:Landroid/graphics/Paint;

.field private mIsShowBatteryIcon:Z

.field private final mIsTablet:Z

.field mKnoxCustomBatteryColourItems:[Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$AttributeColour;

.field private mLightModeBackgroundColor:I

.field private mLightModeFillColor:I

.field private mPostInvalidateHandler:Landroid/os/Handler;

.field private mPowerSaveEnabled:Z

.field mShowPercent:Z

.field private mSubpixelSmoothingLeft:F

.field private mSubpixelSmoothingRight:F

.field private mTextHeight:F

.field mTextPaint:Landroid/graphics/Paint;

.field mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

.field private mWarningString:Ljava/lang/String;

.field private mWarningTextHeight:F

.field mWarningTextPaint:Landroid/graphics/Paint;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/BatteryMeterView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 250
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 251
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 254
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 255
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 26
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 258
    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/BatteryMeterView;->mShowPercent:Z

    .line 90
    new-instance v22, Landroid/graphics/Path;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/BatteryMeterView;->mBoltPath:Landroid/graphics/Path;

    .line 94
    new-instance v22, Landroid/graphics/RectF;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    .line 95
    new-instance v22, Landroid/graphics/RectF;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    .line 96
    new-instance v22, Landroid/graphics/RectF;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/BatteryMeterView;->mClipFrame:Landroid/graphics/RectF;

    .line 97
    new-instance v22, Landroid/graphics/RectF;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    .line 110
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/BatteryMeterView;->mIconTint:I

    .line 114
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/BatteryMeterView;->mIsShowBatteryIcon:Z

    .line 118
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/BatteryMeterView;->mKnoxCustomBatteryColourItems:[Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$AttributeColour;

    .line 224
    new-instance v22, Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/BatteryMeterView$BatteryTracker;-><init>(Lcom/android/systemui/BatteryMeterView;Lcom/android/systemui/BatteryMeterView$1;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/BatteryMeterView;->mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    .line 662
    new-instance v22, Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/BatteryMeterView$BatteryTracker;-><init>(Lcom/android/systemui/BatteryMeterView;Lcom/android/systemui/BatteryMeterView$1;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/BatteryMeterView;->mDemoTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    .line 686
    new-instance v22, Lcom/android/systemui/BatteryMeterView$1;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/BatteryMeterView$1;-><init>(Lcom/android/systemui/BatteryMeterView;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/BatteryMeterView;->mPostInvalidateHandler:Landroid/os/Handler;

    .line 259
    sget-object v22, Lcom/android/systemui/BatteryMeterView;->TAG:Ljava/lang/String;

    const-string v23, "BatteryMeterView"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    .line 272
    .local v21, "res":Landroid/content/res/Resources;
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v18, v0

    fill-array-data v18, :array_0

    .line 274
    .local v18, "levels":[I
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v5, v0, [I

    fill-array-data v5, :array_1

    .line 276
    .local v5, "colors":[I
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v8, v0, [I

    fill-array-data v8, :array_2

    .line 278
    .local v8, "green_colors":[I
    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_3

    .line 279
    .local v20, "red_levels":[I
    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v19, v0

    fill-array-data v19, :array_4

    .line 284
    .local v19, "red_colors":[I
    sget-boolean v22, Lcom/android/systemui/statusbar/Feature;->mUseRedBatteryIcon:Z

    if-eqz v22, :cond_0

    .line 285
    move-object/from16 v18, v20

    .line 286
    move-object/from16 v5, v19

    .line 289
    :cond_0
    const-string v22, "ro.build.characteristics"

    invoke-static/range {v22 .. v22}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 290
    .local v6, "deviceType":Ljava/lang/String;
    if-eqz v6, :cond_1

    const-string v22, "tablet"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 291
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/BatteryMeterView;->mIsTablet:Z

    .line 305
    :goto_0
    invoke-static {}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getInstance()Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v13

    .line 306
    .local v13, "knoxCustomManager":Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    if-eqz v13, :cond_3

    .line 307
    invoke-virtual {v13}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getBatteryLevelColourItem()Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;

    move-result-object v14

    .line 308
    .local v14, "knoxCustomStatusbarIconItem":Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;
    if-eqz v14, :cond_3

    .line 309
    invoke-virtual {v14}, Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;->getAttributeColourArray()[Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$AttributeColour;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/BatteryMeterView;->mKnoxCustomBatteryColourItems:[Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$AttributeColour;

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mKnoxCustomBatteryColourItems:[Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$AttributeColour;

    move-object/from16 v22, v0

    if-eqz v22, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mKnoxCustomBatteryColourItems:[Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$AttributeColour;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    if-lez v22, :cond_4

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mKnoxCustomBatteryColourItems:[Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$AttributeColour;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v16, v0

    .line 313
    .local v16, "knox_levels":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mKnoxCustomBatteryColourItems:[Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$AttributeColour;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    new-array v15, v0, [I

    .line 314
    .local v15, "knox_colors":[I
    const/4 v12, 0x0

    .line 315
    .local v12, "j":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterView;->mKnoxCustomBatteryColourItems:[Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$AttributeColour;

    .local v4, "arr$":[Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$AttributeColour;
    array-length v0, v4

    move/from16 v17, v0

    .local v17, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_1
    move/from16 v0, v17

    if-ge v10, v0, :cond_2

    aget-object v11, v4, v10

    .line 316
    .local v11, "item":Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$AttributeColour;
    invoke-virtual {v11}, Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$AttributeColour;->getAttribute()I

    move-result v22

    aput v22, v16, v12

    .line 317
    invoke-virtual {v11}, Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$AttributeColour;->getColour()I

    move-result v22

    aput v22, v15, v12

    .line 318
    add-int/lit8 v12, v12, 0x1

    .line 315
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 293
    .end local v4    # "arr$":[Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$AttributeColour;
    .end local v10    # "i$":I
    .end local v11    # "item":Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$AttributeColour;
    .end local v12    # "j":I
    .end local v13    # "knoxCustomManager":Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    .end local v14    # "knoxCustomStatusbarIconItem":Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;
    .end local v15    # "knox_colors":[I
    .end local v16    # "knox_levels":[I
    .end local v17    # "len$":I
    :cond_1
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/BatteryMeterView;->mIsTablet:Z

    goto :goto_0

    .line 320
    .restart local v4    # "arr$":[Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$AttributeColour;
    .restart local v10    # "i$":I
    .restart local v12    # "j":I
    .restart local v13    # "knoxCustomManager":Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    .restart local v14    # "knoxCustomStatusbarIconItem":Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;
    .restart local v15    # "knox_colors":[I
    .restart local v16    # "knox_levels":[I
    .restart local v17    # "len$":I
    :cond_2
    move-object/from16 v18, v16

    .line 321
    move-object v5, v15

    .line 330
    .end local v4    # "arr$":[Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$AttributeColour;
    .end local v10    # "i$":I
    .end local v12    # "j":I
    .end local v14    # "knoxCustomStatusbarIconItem":Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;
    .end local v15    # "knox_colors":[I
    .end local v16    # "knox_levels":[I
    .end local v17    # "len$":I
    :cond_3
    :goto_2
    move-object/from16 v0, v18

    array-length v3, v0

    .line 331
    .local v3, "N":I
    mul-int/lit8 v22, v3, 0x2

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    .line 332
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_3
    if-ge v9, v3, :cond_5

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    move-object/from16 v22, v0

    mul-int/lit8 v23, v9, 0x2

    aget v24, v18, v9

    aput v24, v22, v23

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    move-object/from16 v22, v0

    mul-int/lit8 v23, v9, 0x2

    add-int/lit8 v23, v23, 0x1

    aget v24, v5, v9

    aput v24, v22, v23

    .line 332
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 323
    .end local v3    # "N":I
    .end local v9    # "i":I
    .restart local v14    # "knoxCustomStatusbarIconItem":Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;
    :cond_4
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/BatteryMeterView;->mKnoxCustomBatteryColourItems:[Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$AttributeColour;

    goto :goto_2

    .line 337
    .end local v14    # "knoxCustomStatusbarIconItem":Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;
    .restart local v3    # "N":I
    .restart local v9    # "i":I
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "status_bar_show_battery_percent"

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v22

    if-eqz v22, :cond_6

    const/16 v22, 0x1

    :goto_4
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/BatteryMeterView;->mShowPercent:Z

    .line 341
    const-string v22, "!"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/BatteryMeterView;->mWarningString:Ljava/lang/String;

    .line 342
    const-string v22, "X"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/BatteryMeterView;->mInvalidString:Ljava/lang/String;

    .line 343
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f120002

    const/16 v24, 0x1

    const/16 v25, 0x1

    invoke-virtual/range {v22 .. v25}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/BatteryMeterView;->mButtonHeightFraction:F

    .line 345
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f120003

    const/16 v24, 0x1

    const/16 v25, 0x1

    invoke-virtual/range {v22 .. v25}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/BatteryMeterView;->mSubpixelSmoothingLeft:F

    .line 347
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f120004

    const/16 v24, 0x1

    const/16 v25, 0x1

    invoke-virtual/range {v22 .. v25}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/BatteryMeterView;->mSubpixelSmoothingRight:F

    .line 350
    new-instance v22, Landroid/graphics/Paint;

    const/16 v23, 0x1

    invoke-direct/range {v22 .. v23}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    const v23, 0x7f0c0002

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/Paint;->setColor(I)V

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/Paint;->setDither(Z)V

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    sget-object v23, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    new-instance v23, Landroid/graphics/PorterDuffXfermode;

    sget-object v24, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v23 .. v24}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 361
    new-instance v22, Landroid/graphics/Paint;

    const/16 v23, 0x1

    invoke-direct/range {v22 .. v23}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/Paint;->setDither(Z)V

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    sget-object v23, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 366
    new-instance v22, Landroid/graphics/Paint;

    const/16 v23, 0x1

    invoke-direct/range {v22 .. v23}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    const/16 v23, -0x1

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/Paint;->setColor(I)V

    .line 368
    const-string v22, "sans-serif-condensed"

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    .line 369
    .local v7, "font":Landroid/graphics/Typeface;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    sget-object v23, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 372
    new-instance v22, Landroid/graphics/Paint;

    const/16 v23, 0x1

    invoke-direct/range {v22 .. v23}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    .line 373
    sget-boolean v22, Lcom/android/systemui/statusbar/Feature;->mUseRedBatteryIcon:Z

    if-eqz v22, :cond_7

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget v23, v23, v24

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/Paint;->setColor(I)V

    .line 378
    :goto_5
    const-string v22, "sans-serif"

    const/16 v23, 0x1

    invoke-static/range {v22 .. v23}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    sget-object v23, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 382
    new-instance v22, Landroid/graphics/Paint;

    const/16 v23, 0x1

    invoke-direct/range {v22 .. v23}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/BatteryMeterView;->mInvalidTextPaint:Landroid/graphics/Paint;

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mInvalidTextPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    const v23, -0x17cbf7

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/Paint;->setColor(I)V

    .line 388
    const-string v22, "sans-serif"

    const/16 v23, 0x1

    invoke-static/range {v22 .. v23}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mInvalidTextPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mInvalidTextPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    sget-object v23, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 392
    new-instance v22, Landroid/graphics/Paint;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/BatteryMeterView;->mBoltPaint:Landroid/graphics/Paint;

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    const v23, 0x7f0c0003

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/Paint;->setColor(I)V

    .line 395
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/BatteryMeterView;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0c002b

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getColor(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/BatteryMeterView;->mChargeColor:I

    .line 396
    const v22, 0x7f0c00bb

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/BatteryMeterView;->mDarkModeBackgroundColor:I

    .line 398
    const v22, 0x7f0c00bc

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/BatteryMeterView;->mDarkModeFillColor:I

    .line 399
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/BatteryMeterView;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0c0003

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getColor(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/BatteryMeterView;->mDarkModeBoltColor:I

    .line 400
    const v22, 0x7f0c00be

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/BatteryMeterView;->mLightModeBackgroundColor:I

    .line 402
    const v22, 0x7f0c00bf

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/BatteryMeterView;->mLightModeFillColor:I

    .line 403
    invoke-static/range {v21 .. v21}, Lcom/android/systemui/BatteryMeterView;->loadBoltPoints(Landroid/content/res/Resources;)[F

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/BatteryMeterView;->mBoltPoints:[F

    .line 404
    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/BatteryMeterView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 405
    return-void

    .line 337
    .end local v7    # "font":Landroid/graphics/Typeface;
    :cond_6
    const/16 v22, 0x0

    goto/16 :goto_4

    .line 376
    .restart local v7    # "font":Landroid/graphics/Typeface;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    const/16 v23, -0x1

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_5

    .line 272
    nop

    :array_0
    .array-data 4
        0x4
        0x64
    .end array-data

    .line 274
    :array_1
    .array-data 4
        -0x1
        -0x1
    .end array-data

    .line 276
    :array_2
    .array-data 4
        -0x1
        -0x7433eb
    .end array-data

    .line 278
    :array_3
    .array-data 4
        0x4
        0xa
        0x14
        0x64
    .end array-data

    .line 279
    :array_4
    .array-data 4
        -0xcf00
        -0xcf00
        -0x2900
        -0x1
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/systemui/BatteryMeterView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/BatteryMeterView;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mPostInvalidateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getBackgroundColor(F)I
    .locals 2
    .param p1, "darkIntensity"    # F

    .prologue
    .line 481
    iget v0, p0, Lcom/android/systemui/BatteryMeterView;->mLightModeBackgroundColor:I

    iget v1, p0, Lcom/android/systemui/BatteryMeterView;->mDarkModeBackgroundColor:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/BatteryMeterView;->getColorForDarkIntensity(FII)I

    move-result v0

    return v0
.end method

.method private getBoltColor(F)I
    .locals 2
    .param p1, "darkIntensity"    # F

    .prologue
    .line 491
    iget v0, p0, Lcom/android/systemui/BatteryMeterView;->mDarkModeBoltColor:I

    iget v1, p0, Lcom/android/systemui/BatteryMeterView;->mLightModeFillColor:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/BatteryMeterView;->getColorForDarkIntensity(FII)I

    move-result v0

    return v0
.end method

.method private getColorForDarkIntensity(FII)I
    .locals 3
    .param p1, "darkIntensity"    # F
    .param p2, "lightColor"    # I
    .param p3, "darkColor"    # I

    .prologue
    .line 496
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private getColorForLevel(I)I
    .locals 5
    .param p1, "percent"    # I

    .prologue
    .line 450
    iget-boolean v3, p0, Lcom/android/systemui/BatteryMeterView;->mPowerSaveEnabled:Z

    if-eqz v3, :cond_1

    .line 451
    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    iget-object v4, p0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget v0, v3, v4

    .line 466
    :cond_0
    :goto_0
    return v0

    .line 453
    :cond_1
    const/4 v0, 0x0

    .line 455
    .local v0, "color":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 456
    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    aget v2, v3, v1

    .line 457
    .local v2, "thresh":I
    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    add-int/lit8 v4, v1, 0x1

    aget v0, v3, v4

    .line 458
    if-gt p1, v2, :cond_2

    .line 459
    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x2

    if-ne v1, v3, :cond_0

    .line 460
    iget v0, p0, Lcom/android/systemui/BatteryMeterView;->mIconTint:I

    goto :goto_0

    .line 455
    :cond_2
    add-int/lit8 v1, v1, 0x2

    goto :goto_1
.end method

.method private getFillColor(F)I
    .locals 2
    .param p1, "darkIntensity"    # F

    .prologue
    .line 486
    iget v0, p0, Lcom/android/systemui/BatteryMeterView;->mLightModeFillColor:I

    iget v1, p0, Lcom/android/systemui/BatteryMeterView;->mDarkModeFillColor:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/BatteryMeterView;->getColorForDarkIntensity(FII)I

    move-result v0

    return v0
.end method

.method private static loadBoltPoints(Landroid/content/res/Resources;)[F
    .locals 8
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 424
    const v5, 0x7f090002

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 425
    .local v3, "pts":[I
    const/4 v1, 0x0

    .local v1, "maxX":I
    const/4 v2, 0x0

    .line 426
    .local v2, "maxY":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_0

    .line 427
    aget v5, v3, v0

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 428
    add-int/lit8 v5, v0, 0x1

    aget v5, v3, v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 426
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 430
    :cond_0
    array-length v5, v3

    new-array v4, v5, [F

    .line 431
    .local v4, "ptsF":[F
    const/4 v0, 0x0

    :goto_1
    array-length v5, v3

    if-ge v0, v5, :cond_1

    .line 432
    aget v5, v3, v0

    int-to-float v5, v5

    int-to-float v6, v1

    div-float/2addr v5, v6

    aput v5, v4, v0

    .line 433
    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v6, v0, 0x1

    aget v6, v3, v6

    int-to-float v6, v6

    int-to-float v7, v2

    div-float/2addr v6, v7

    aput v6, v4, v5

    .line 431
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 435
    :cond_1
    return-object v4
.end method


# virtual methods
.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 666
    iget-boolean v2, p0, Lcom/android/systemui/BatteryMeterView;->mDemoMode:Z

    if-nez v2, :cond_1

    const-string v2, "enter"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 667
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/BatteryMeterView;->mDemoMode:Z

    .line 668
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mDemoTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    iget v3, v3, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->level:I

    iput v3, v2, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->level:I

    .line 669
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mDemoTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    iget-boolean v3, v3, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->plugged:Z

    iput-boolean v3, v2, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->plugged:Z

    .line 684
    :cond_0
    :goto_0
    return-void

    .line 670
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/BatteryMeterView;->mDemoMode:Z

    if-eqz v2, :cond_2

    const-string v2, "exit"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 671
    iput-boolean v4, p0, Lcom/android/systemui/BatteryMeterView;->mDemoMode:Z

    .line 672
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->postInvalidate()V

    goto :goto_0

    .line 673
    :cond_2
    iget-boolean v2, p0, Lcom/android/systemui/BatteryMeterView;->mDemoMode:Z

    if-eqz v2, :cond_0

    const-string v2, "battery"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 674
    const-string v2, "level"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 675
    .local v0, "level":Ljava/lang/String;
    const-string v2, "plugged"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 676
    .local v1, "plugged":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 677
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mDemoTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/16 v4, 0x64

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v2, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->level:I

    .line 679
    :cond_3
    if-eqz v1, :cond_4

    .line 680
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mDemoTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v2, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->plugged:Z

    .line 682
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->postInvalidate()V

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 30
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 501
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/BatteryMeterView;->mDemoMode:Z

    move/from16 v24, v0

    if-eqz v24, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mDemoTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    move-object/from16 v20, v0

    .line 503
    .local v20, "tracker":Lcom/android/systemui/BatteryMeterView$BatteryTracker;
    :goto_0
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->status:I

    move/from16 v24, v0

    const/16 v25, 0x4

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_5

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->health:I

    move/from16 v24, v0

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->health:I

    move/from16 v24, v0

    const/16 v25, 0x7

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->health:I

    move/from16 v24, v0

    const/16 v25, 0x8

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->health:I

    move/from16 v24, v0

    const/16 v25, 0x6

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_5

    .line 509
    :cond_0
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/BatteryMeterView;->mBlinkingNeeded:Z

    .line 511
    sget-object v24, Lcom/android/systemui/BatteryMeterView;->TAG:Ljava/lang/String;

    const-string v25, "battery icon blink..."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mPostInvalidateHandler:Landroid/os/Handler;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v24

    if-nez v24, :cond_1

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mPostInvalidateHandler:Landroid/os/Handler;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    const-wide/16 v26, 0x3e8

    invoke-virtual/range {v24 .. v27}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 516
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/BatteryMeterView;->mIsShowBatteryIcon:Z

    move/from16 v24, v0

    if-nez v24, :cond_4

    const/16 v24, 0x1

    :goto_1
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/BatteryMeterView;->mIsShowBatteryIcon:Z

    .line 518
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/BatteryMeterView;->mIsShowBatteryIcon:Z

    move/from16 v24, v0

    if-nez v24, :cond_6

    .line 654
    :cond_2
    :goto_2
    return-void

    .line 501
    .end local v20    # "tracker":Lcom/android/systemui/BatteryMeterView$BatteryTracker;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    move-object/from16 v20, v0

    goto/16 :goto_0

    .line 516
    .restart local v20    # "tracker":Lcom/android/systemui/BatteryMeterView$BatteryTracker;
    :cond_4
    const/16 v24, 0x0

    goto :goto_1

    .line 522
    :cond_5
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/BatteryMeterView;->mBlinkingNeeded:Z

    .line 526
    :cond_6
    move-object/from16 v0, v20

    iget v14, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->level:I

    .line 527
    .local v14, "level":I
    const/16 v24, -0x1

    move/from16 v0, v24

    if-eq v14, v0, :cond_2

    .line 529
    int-to-float v0, v14

    move/from16 v24, v0

    const/high16 v25, 0x42c80000    # 100.0f

    div-float v11, v24, v25

    .line 530
    .local v11, "drawFrac":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/BatteryMeterView;->getPaddingTop()I

    move-result v18

    .line 531
    .local v18, "pt":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/BatteryMeterView;->getPaddingLeft()I

    move-result v16

    .line 532
    .local v16, "pl":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/BatteryMeterView;->getPaddingRight()I

    move-result v17

    .line 533
    .local v17, "pr":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/BatteryMeterView;->getPaddingBottom()I

    move-result v15

    .line 534
    .local v15, "pb":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterView;->mHeight:I

    move/from16 v24, v0

    sub-int v24, v24, v18

    sub-int v12, v24, v15

    .line 535
    .local v12, "height":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterView;->mWidth:I

    move/from16 v24, v0

    sub-int v24, v24, v16

    sub-int v21, v24, v17

    .line 537
    .local v21, "width":I
    int-to-float v0, v12

    move/from16 v24, v0

    const/high16 v25, 0x3e000000    # 0.125f

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/BatteryMeterView;->mButtonHeight:I

    .line 538
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterView;->mButtonHeight:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_7

    .line 539
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterView;->mButtonHeight:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/BatteryMeterView;->mButtonHeight:I

    .line 541
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v27, v0

    int-to-float v0, v12

    move/from16 v28, v0

    invoke-virtual/range {v24 .. v28}, Landroid/graphics/RectF;->set(FFFF)V

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Landroid/graphics/RectF;->offset(FF)V

    .line 544
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0e0001

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/BatteryMeterView;->mButtonPadding:F

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v25, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v26, v0

    const/high16 v27, 0x3e800000    # 0.25f

    mul-float v26, v26, v27

    add-float v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterView;->mButtonPadding:F

    move/from16 v26, v0

    add-float v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v27, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v28, v0

    const/high16 v29, 0x3e800000    # 0.25f

    mul-float v28, v28, v29

    sub-float v27, v27, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterView;->mButtonPadding:F

    move/from16 v28, v0

    sub-float v27, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterView;->mButtonHeight:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    add-float v28, v28, v29

    const v29, 0x3f19999a    # 0.6f

    add-float v28, v28, v29

    invoke-virtual/range {v24 .. v28}, Landroid/graphics/RectF;->set(FFFF)V

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterView;->mSubpixelSmoothingLeft:F

    move/from16 v26, v0

    add-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterView;->mSubpixelSmoothingLeft:F

    move/from16 v26, v0

    add-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterView;->mSubpixelSmoothingRight:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterView;->mButtonHeight:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    add-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterView;->mSubpixelSmoothingLeft:F

    move/from16 v26, v0

    add-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterView;->mSubpixelSmoothingLeft:F

    move/from16 v26, v0

    add-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterView;->mSubpixelSmoothingRight:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterView;->mSubpixelSmoothingRight:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 566
    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->plugged:Z

    move/from16 v24, v0

    if-eqz v24, :cond_9

    sget-boolean v24, Lcom/android/systemui/statusbar/Feature;->mNotUseColoredBatteryChargingIcon:Z

    if-eqz v24, :cond_9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui/BatteryMeterView;->mChargeColor:I

    .line 567
    .local v10, "color":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 568
    sget-object v24, Lcom/android/systemui/BatteryMeterView;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "onDraw batteryColor : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    const/16 v24, 0x60

    move/from16 v0, v24

    if-lt v14, v0, :cond_a

    .line 571
    const/high16 v11, 0x3f800000    # 1.0f

    .line 577
    :cond_8
    :goto_4
    sget-boolean v24, Lcom/android/systemui/statusbar/Feature;->mUseVzwBatteryIcon:Z

    if-eqz v24, :cond_b

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->online:I

    move/from16 v24, v0

    if-nez v24, :cond_b

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 580
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterView;->mWidth:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x3f000000    # 0.5f

    mul-float v22, v24, v25

    .line 581
    .local v22, "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterView;->mHeight:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterView;->mWarningTextHeight:F

    move/from16 v25, v0

    add-float v24, v24, v25

    const v25, 0x3ef5c28f    # 0.48f

    mul-float v23, v24, v25

    .line 582
    .local v23, "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mInvalidString:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mInvalidTextPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move/from16 v2, v22

    move/from16 v3, v23

    move-object/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 566
    .end local v10    # "color":I
    .end local v22    # "x":F
    .end local v23    # "y":F
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/systemui/BatteryMeterView;->getColorForLevel(I)I

    move-result v10

    goto/16 :goto_3

    .line 572
    .restart local v10    # "color":I
    :cond_a
    const/16 v24, 0x4

    move/from16 v0, v24

    if-gt v14, v0, :cond_8

    .line 573
    const/4 v11, 0x0

    goto :goto_4

    .line 586
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    const/high16 v24, 0x3f800000    # 1.0f

    cmpl-float v24, v11, v24

    if-nez v24, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    :goto_5
    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mClipFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mClipFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/RectF;->height()F

    move-result v26

    const/high16 v27, 0x3f800000    # 1.0f

    sub-float v27, v27, v11

    mul-float v26, v26, v27

    add-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 591
    const/16 v24, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->save(I)I

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mClipFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 594
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 596
    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->plugged:Z

    move/from16 v24, v0

    if-eqz v24, :cond_11

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->status:I

    move/from16 v24, v0

    const/16 v25, 0x5

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_11

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/RectF;->width()F

    move-result v25

    const/high16 v26, 0x40900000    # 4.5f

    div-float v25, v25, v26

    add-float v7, v24, v25

    .line 599
    .local v7, "bl":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/RectF;->height()F

    move-result v25

    const/high16 v26, 0x40c00000    # 6.0f

    div-float v25, v25, v26

    add-float v9, v24, v25

    .line 600
    .local v9, "bt":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/RectF;->width()F

    move-result v25

    const/high16 v26, 0x40e00000    # 7.0f

    div-float v25, v25, v26

    sub-float v8, v24, v25

    .line 601
    .local v8, "br":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/RectF;->height()F

    move-result v25

    const/high16 v26, 0x41200000    # 10.0f

    div-float v25, v25, v26

    sub-float v6, v24, v25

    .line 602
    .local v6, "bb":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v24, v0

    cmpl-float v24, v24, v7

    if-nez v24, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v24, v0

    cmpl-float v24, v24, v9

    if-nez v24, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v24, v0

    cmpl-float v24, v24, v8

    if-nez v24, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v24, v0

    cmpl-float v24, v24, v6

    if-eqz v24, :cond_f

    .line 604
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v7, v9, v8, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Path;->reset()V

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPoints:[F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget v26, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/RectF;->width()F

    move-result v27

    mul-float v26, v26, v27

    add-float v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPoints:[F

    move-object/from16 v27, v0

    const/16 v28, 0x1

    aget v27, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/RectF;->height()F

    move-result v28

    mul-float v27, v27, v28

    add-float v26, v26, v27

    invoke-virtual/range {v24 .. v26}, Landroid/graphics/Path;->moveTo(FF)V

    .line 609
    const/4 v13, 0x2

    .local v13, "i":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPoints:[F

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v13, v0, :cond_e

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPoints:[F

    move-object/from16 v26, v0

    aget v26, v26, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/RectF;->width()F

    move-result v27

    mul-float v26, v26, v27

    add-float v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPoints:[F

    move-object/from16 v27, v0

    add-int/lit8 v28, v13, 0x1

    aget v27, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/RectF;->height()F

    move-result v28

    mul-float v27, v27, v28

    add-float v26, v26, v27

    invoke-virtual/range {v24 .. v26}, Landroid/graphics/Path;->lineTo(FF)V

    .line 609
    add-int/lit8 v13, v13, 0x2

    goto :goto_6

    .line 586
    .end local v6    # "bb":F
    .end local v7    # "bl":F
    .end local v8    # "br":F
    .end local v9    # "bt":F
    .end local v13    # "i":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    goto/16 :goto_5

    .line 614
    .restart local v6    # "bb":F
    .restart local v7    # "bl":F
    .restart local v8    # "br":F
    .restart local v9    # "bt":F
    .restart local v13    # "i":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPoints:[F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget v26, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/RectF;->width()F

    move-result v27

    mul-float v26, v26, v27

    add-float v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPoints:[F

    move-object/from16 v27, v0

    const/16 v28, 0x1

    aget v27, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/RectF;->height()F

    move-result v28

    mul-float v27, v27, v28

    add-float v26, v26, v27

    invoke-virtual/range {v24 .. v26}, Landroid/graphics/Path;->lineTo(FF)V

    .line 621
    .end local v13    # "i":I
    :cond_f
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->status:I

    move/from16 v24, v0

    const/16 v25, 0x4

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_10

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->health:I

    move/from16 v24, v0

    const/16 v25, 0x5

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_10

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->health:I

    move/from16 v24, v0

    const/16 v25, 0x9

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/BatteryMeterView;->mBlinkingNeeded:Z

    move/from16 v24, v0

    if-nez v24, :cond_10

    .line 624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 629
    :cond_10
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->plugType:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/BatteryMeterView;->mIsTablet:Z

    move/from16 v24, v0

    if-eqz v24, :cond_2

    sget-boolean v24, Lcom/android/systemui/statusbar/Feature;->mUseVzwBatteryIcon:Z

    if-nez v24, :cond_2

    .line 631
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterView;->mWidth:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x3f000000    # 0.5f

    mul-float v22, v24, v25

    .line 632
    .restart local v22    # "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterView;->mHeight:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterView;->mWarningTextHeight:F

    move/from16 v25, v0

    add-float v24, v24, v25

    const v25, 0x3ef5c28f    # 0.48f

    mul-float v23, v24, v25

    .line 633
    .restart local v23    # "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mInvalidString:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mInvalidTextPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move/from16 v2, v22

    move/from16 v3, v23

    move-object/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 636
    .end local v6    # "bb":F
    .end local v7    # "bl":F
    .end local v8    # "br":F
    .end local v9    # "bt":F
    .end local v22    # "x":F
    .end local v23    # "y":F
    :cond_11
    const/16 v24, 0x4

    move/from16 v0, v24

    if-gt v14, v0, :cond_12

    .line 637
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterView;->mWidth:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x3f000000    # 0.5f

    mul-float v22, v24, v25

    .line 638
    .restart local v22    # "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterView;->mHeight:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterView;->mWarningTextHeight:F

    move/from16 v25, v0

    add-float v24, v24, v25

    const v25, 0x3ef5c28f    # 0.48f

    mul-float v23, v24, v25

    .line 639
    .restart local v23    # "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mWarningString:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move/from16 v2, v22

    move/from16 v3, v23

    move-object/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 640
    .end local v22    # "x":F
    .end local v23    # "y":F
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/BatteryMeterView;->mShowPercent:Z

    move/from16 v24, v0

    if-eqz v24, :cond_2

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->level:I

    move/from16 v24, v0

    const/16 v25, 0x64

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_2

    .line 641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    int-to-float v0, v12

    move/from16 v26, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->level:I

    move/from16 v24, v0

    const/16 v27, 0x64

    move/from16 v0, v24

    move/from16 v1, v27

    if-ne v0, v1, :cond_13

    const v24, 0x3ec28f5c    # 0.38f

    :goto_7
    mul-float v24, v24, v26

    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    move/from16 v24, v0

    move/from16 v0, v24

    neg-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/BatteryMeterView;->mTextHeight:F

    .line 646
    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    .line 647
    .local v19, "str":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterView;->mWidth:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x3f000000    # 0.5f

    mul-float v22, v24, v25

    .line 648
    .restart local v22    # "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterView;->mHeight:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterView;->mTextHeight:F

    move/from16 v25, v0

    add-float v24, v24, v25

    const v25, 0x3ef0a3d7    # 0.47f

    mul-float v23, v24, v25

    .line 649
    .restart local v23    # "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v22

    move/from16 v3, v23

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 641
    .end local v19    # "str":Ljava/lang/String;
    .end local v22    # "x":F
    .end local v23    # "y":F
    :cond_13
    const/high16 v24, 0x3f000000    # 0.5f

    goto :goto_7
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 658
    const/4 v0, 0x0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 6

    .prologue
    .line 228
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 229
    sget-object v2, Lcom/android/systemui/BatteryMeterView;->TAG:Ljava/lang/String;

    const-string v3, "onAttachedToWindow"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 231
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 232
    const-string v2, "com.android.systemui.BATTERY_LEVEL_TEST"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    const-string v4, "com.sec.android.systemui.powerui.permission.BATTERY_LEVEL_TEST"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object v1

    .line 234
    .local v1, "sticky":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 236
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 238
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v2, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->addStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    .line 239
    return-void
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 0
    .param p1, "level"    # I
    .param p2, "pluggedIn"    # Z
    .param p3, "charging"    # Z

    .prologue
    .line 415
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 243
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 244
    sget-object v0, Lcom/android/systemui/BatteryMeterView;->TAG:Ljava/lang/String;

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 246
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->removeStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    .line 247
    return-void
.end method

.method public onPowerSaveChanged()V
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BatteryController;->isPowerSave()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mPowerSaveEnabled:Z

    .line 420
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->invalidate()V

    .line 421
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/high16 v2, 0x3f400000    # 0.75f

    .line 440
    iput p2, p0, Lcom/android/systemui/BatteryMeterView;->mHeight:I

    .line 441
    iput p1, p0, Lcom/android/systemui/BatteryMeterView;->mWidth:I

    .line 442
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    int-to-float v1, p2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 443
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mInvalidTextPaint:Landroid/graphics/Paint;

    int-to-float v1, p2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 444
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v0, v0

    iput v0, p0, Lcom/android/systemui/BatteryMeterView;->mWarningTextHeight:F

    .line 445
    return-void
.end method

.method public setBatteryController(Lcom/android/systemui/statusbar/policy/BatteryController;)V
    .locals 1
    .param p1, "batteryController"    # Lcom/android/systemui/statusbar/policy/BatteryController;

    .prologue
    .line 408
    iput-object p1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 409
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BatteryController;->isPowerSave()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mPowerSaveEnabled:Z

    .line 410
    return-void
.end method

.method public setDarkIntensity(F)V
    .locals 4
    .param p1, "darkIntensity"    # F

    .prologue
    .line 470
    invoke-direct {p0, p1}, Lcom/android/systemui/BatteryMeterView;->getBackgroundColor(F)I

    move-result v0

    .line 471
    .local v0, "backgroundColor":I
    invoke-direct {p0, p1}, Lcom/android/systemui/BatteryMeterView;->getFillColor(F)I

    move-result v2

    .line 472
    .local v2, "fillColor":I
    invoke-direct {p0, p1}, Lcom/android/systemui/BatteryMeterView;->getBoltColor(F)I

    move-result v1

    .line 473
    .local v1, "boltColor":I
    iput v2, p0, Lcom/android/systemui/BatteryMeterView;->mIconTint:I

    .line 474
    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 475
    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mBoltPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 476
    iput v2, p0, Lcom/android/systemui/BatteryMeterView;->mChargeColor:I

    .line 477
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->invalidate()V

    .line 478
    return-void
.end method
