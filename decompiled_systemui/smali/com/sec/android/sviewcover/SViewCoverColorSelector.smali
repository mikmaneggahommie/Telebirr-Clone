.class public Lcom/sec/android/sviewcover/SViewCoverColorSelector;
.super Landroid/widget/FrameLayout;
.source "SViewCoverColorSelector.java"


# static fields
.field public static ALPHA_WALLPAPER:[I = null

.field private static BG_ATTRS:[I = null

.field private static final COLOR_INDEX_GALLERY:I = 0x9

.field private static final COLOR_INDEX_WALLPAPER:I = 0x8

.field private static final COVER_COLOR_BLACK:I = 0x1

.field private static final COVER_COLOR_CHARCOAL_GRAY:I = 0xa

.field private static final COVER_COLOR_DEFAULT:I = 0x0

.field private static final COVER_COLOR_GRAYISH_BLUE:I = 0x8

.field private static final COVER_COLOR_INDIGO_BLUE:I = 0x6

.field private static final COVER_COLOR_MAGENTA:I = 0x7

.field private static final COVER_COLOR_MESTARD_YELLOW:I = 0x9

.field private static final COVER_COLOR_ORANGE:I = 0x4

.field private static final COVER_COLOR_OTMIL:I = 0x5

.field private static final COVER_COLOR_SOFT_PINK:I = 0x3

.field private static final COVER_COLOR_WHITE:I = 0x2

.field private static final PATH_FILE_COVER_COLOR:Ljava/lang/String; = "/sys/devices/w1_bus_master1/w1_master_check_color"

.field private static final SVIEWCOVER_FEATURE_LEVEL:Ljava/lang/String; = "com.sec.feature.cover.sviewcover"

.field private static final TAG:Ljava/lang/String; = "SViewCoverColorSelector"

.field public static final WALLPAPER_FILE_NAME:Ljava/lang/String; = "/cover_wallpaper.jpg"

.field public static final WALLPAPER_INDEX_FILE_NAME:Ljava/lang/String; = "/cover_index_wallpaper.jpg"


# instance fields
.field private mBackGroundBlackDim:Landroid/widget/ImageView;

.field private mCancelButton:Landroid/widget/Button;

.field private mCloseButton:Landroid/widget/ImageView;

.field private mColorPickerBackground:Landroid/view/View;

.field private mControlView:Landroid/view/View;

.field private mCoverPatternImage:Landroid/widget/ImageView;

.field private mCurrentCoverBackgroundColor:I

.field private mEmergencyReason:I

.field private mIsAlpahModel:Z

.field private mOpenCoverWallpaperPopup:Landroid/widget/LinearLayout;

.field private mOpenCoverWallpaperText:Landroid/widget/TextView;

.field private mSViewCover:Lcom/sec/android/sviewcover/SViewCoverView;

.field private mSViewCoverAppLevel:I

.field private mSViewCoverColorSelector:Lcom/sec/android/sviewcover/SViewCoverColorPickerView;

.field private mSelectBgColorText:Landroid/widget/TextView;

.field private mSetButton:Landroid/widget/Button;

.field private mTargetView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 82
    const/16 v0, 0x8

    new-array v0, v0, [I

    sget v1, Lcom/sec/android/sviewcover/R$drawable;->sview_wallpaper_default_001:I

    aput v1, v0, v3

    sget v1, Lcom/sec/android/sviewcover/R$drawable;->sview_wallpaper_default_002:I

    aput v1, v0, v4

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/sviewcover/R$drawable;->sview_wallpaper_default_003:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/sviewcover/R$drawable;->sview_wallpaper_default_004:I

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Lcom/sec/android/sviewcover/R$drawable;->sview_wallpaper_default_005:I

    aput v2, v0, v1

    const/4 v1, 0x5

    sget v2, Lcom/sec/android/sviewcover/R$drawable;->sview_wallpaper_default_006:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/sec/android/sviewcover/R$drawable;->sview_wallpaper_default_007:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/sec/android/sviewcover/R$drawable;->sview_wallpaper_default_008:I

    aput v2, v0, v1

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->ALPHA_WALLPAPER:[I

    .line 93
    new-array v0, v4, [I

    const v1, 0x101039c

    aput v1, v0, v3

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->BG_ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 160
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 161
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 164
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    iput v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mSViewCoverAppLevel:I

    .line 80
    iput-boolean v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mIsAlpahModel:Z

    .line 166
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 167
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/sec/android/sviewcover/R$layout;->s_view_cover_color_selector:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 169
    sget v1, Lcom/sec/android/sviewcover/R$id;->s_view_cover_color_picker_pattern:I

    invoke-virtual {p0, v1}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mCoverPatternImage:Landroid/widget/ImageView;

    .line 170
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/devices/w1_bus_master1/w1_master_check_color"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "s_vew_cover_background_color"

    const/high16 v3, -0x1000000

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mCurrentCoverBackgroundColor:I

    .line 178
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->getSviewCoverAppLevel()V

    .line 179
    return-void

    .line 174
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "s_vew_cover_background_color"

    const v3, -0xd1e5f3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mCurrentCoverBackgroundColor:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)Lcom/sec/android/sviewcover/SViewCoverView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mSViewCover:Lcom/sec/android/sviewcover/SViewCoverView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)Lcom/sec/android/sviewcover/SViewCoverColorPickerView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mSViewCoverColorSelector:Lcom/sec/android/sviewcover/SViewCoverColorPickerView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->setUserwallPaperForSview()V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/sviewcover/SViewCoverColorSelector;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverColorSelector;
    .param p1, "x1"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->saveAlphaWallpaperFile(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mCancelButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mCloseButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mOpenCoverWallpaperPopup:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    .prologue
    .line 35
    iget v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mSViewCoverAppLevel:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mCoverPatternImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mBackGroundBlackDim:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mIsAlpahModel:Z

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    .prologue
    .line 35
    iget v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mCurrentCoverBackgroundColor:I

    return v0
.end method

.method static synthetic access$702(Lcom/sec/android/sviewcover/SViewCoverColorSelector;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverColorSelector;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mCurrentCoverBackgroundColor:I

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mTargetView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mColorPickerBackground:Landroid/view/View;

    return-object v0
.end method

.method private getCustomWallpaperFolderPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 461
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sview_bg_wallpaper_path"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 462
    .local v0, "imageDir":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 463
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverView;->getCustomWallpaperDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 464
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sview_bg_wallpaper_path"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 468
    :cond_0
    return-object v0
.end method

.method private getUserWallpaperBitmap()Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    .line 393
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->getCustomWallpaperFolderPath()Ljava/lang/String;

    move-result-object v3

    .line 394
    .local v3, "imageDir":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/cover_wallpaper.jpg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 395
    .local v2, "filePath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 396
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 397
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 399
    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/sec/android/sviewcover/R$dimen;->sview_cover_pager_width:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v6, v7

    .line 400
    .local v6, "screenWidth":I
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/sec/android/sviewcover/R$dimen;->sview_cover_height:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v5, v7

    .line 402
    .local v5, "screenHeight":I
    invoke-static {v2, v6, v5}, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->getAppropriateSampleSize(Ljava/lang/String;II)I

    move-result v7

    iput v7, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 404
    invoke-static {v2, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 407
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "screenHeight":I
    .end local v6    # "screenWidth":I
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private saveAlphaWallpaperFile(I)V
    .locals 9
    .param p1, "index"    # I

    .prologue
    .line 438
    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->getCustomWallpaperFolderPath()Ljava/lang/String;

    move-result-object v3

    .line 439
    .local v3, "imageDir":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 440
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 441
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 444
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget-object v7, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->ALPHA_WALLPAPER:[I

    aget v7, v7, p1

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 446
    .local v5, "walllpaperBitmap":Landroid/graphics/Bitmap;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/cover_index_wallpaper.jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 448
    .local v2, "filePath":Ljava/lang/String;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 449
    .local v4, "out":Ljava/io/FileOutputStream;
    if-eqz v4, :cond_1

    .line 450
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {v5, v6, v7, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 451
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 452
    const-string v6, "SViewCoverColorSelector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "create index Wallpaperfolder to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "filePath":Ljava/lang/String;
    .end local v3    # "imageDir":Ljava/lang/String;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .end local v5    # "walllpaperBitmap":Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return-void

    .line 454
    :catch_0
    move-exception v1

    .line 455
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "SViewCoverColorSelector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "saveImageFile : File saving failed : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setDefaultWallpaperFile()V
    .locals 9

    .prologue
    .line 412
    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->getCustomWallpaperFolderPath()Ljava/lang/String;

    move-result-object v3

    .line 413
    .local v3, "imageDir":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 414
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 415
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 418
    :cond_0
    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/sec/android/sviewcover/R$drawable;->sviewcover_wallpaper:I

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 421
    .local v5, "walllpaperBitmap":Landroid/graphics/Bitmap;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/cover_wallpaper.jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 423
    .local v2, "filePath":Ljava/lang/String;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 424
    .local v4, "out":Ljava/io/FileOutputStream;
    if-eqz v4, :cond_1

    .line 425
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {v5, v6, v7, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 426
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 427
    const-string v6, "SViewCoverColorSelector"

    const-string v7, "setDefaultWallpaperFile"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "filePath":Ljava/lang/String;
    .end local v3    # "imageDir":Ljava/lang/String;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .end local v5    # "walllpaperBitmap":Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return-void

    .line 429
    :catch_0
    move-exception v1

    .line 430
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "SViewCoverColorSelector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "saveImageFile : File saving failed : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setUserwallPaperForSview()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 365
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->getUserWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 366
    .local v0, "wallpaper":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 367
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mTargetView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 368
    :cond_0
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mTargetView:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 369
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mTargetView:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 373
    :goto_0
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mSViewCover:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-virtual {v1, v3}, Lcom/sec/android/sviewcover/SViewCoverView;->setBackgroundBlackDim(I)V

    .line 374
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sview_color_wallpaper"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 375
    return-void

    .line 371
    :cond_1
    const-string v1, "SViewCoverColorSelector"

    const-string v2, "not find wallpaper file. Maybe show black"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getOpenCoverPopupState()I
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mOpenCoverWallpaperPopup:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mOpenCoverWallpaperPopup:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    .line 156
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public getSviewCoverAppLevel()V
    .locals 4

    .prologue
    .line 182
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 183
    .local v0, "pm":Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_0

    .line 184
    const-string v1, "com.sec.feature.cover.sviewcover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mSViewCoverAppLevel:I

    .line 185
    const-string v1, "SViewCoverColorSelector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "this Cover app level is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mSViewCoverAppLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_0
    return-void
.end method

.method public getUserWallpaper()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 378
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->getUserWallpaperBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 379
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 380
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->setDefaultWallpaperFile()V

    .line 381
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->getUserWallpaperBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 384
    :cond_0
    if-eqz v0, :cond_1

    .line 385
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 389
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hideColorSelectorView()V
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mControlView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 361
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->setVisibility(I)V

    .line 362
    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 192
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 194
    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    if-eqz v2, :cond_1

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v3, "slte"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v3, "a5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 196
    :cond_0
    const-string v2, "SViewCoverColorSelector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Build.PRODUCT =="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " alpha concept enable"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iput-boolean v5, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mIsAlpahModel:Z

    .line 200
    :cond_1
    sget v2, Lcom/sec/android/sviewcover/R$id;->s_view_cover_open_cover_wallpaper_text:I

    invoke-virtual {p0, v2}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mOpenCoverWallpaperText:Landroid/widget/TextView;

    .line 201
    sget v2, Lcom/sec/android/sviewcover/R$id;->s_view_cover_open_cover_wallpaper_popup:I

    invoke-virtual {p0, v2}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mOpenCoverWallpaperPopup:Landroid/widget/LinearLayout;

    .line 202
    sget v2, Lcom/sec/android/sviewcover/R$id;->s_view_cover_color_picker_background:I

    invoke-virtual {p0, v2}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mColorPickerBackground:Landroid/view/View;

    .line 203
    iget v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mCurrentCoverBackgroundColor:I

    invoke-virtual {p0, v2}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->setBackgroundColor(I)V

    .line 204
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mCoverPatternImage:Landroid/widget/ImageView;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 205
    sget v2, Lcom/sec/android/sviewcover/R$id;->s_view_cover_color_picker:I

    invoke-virtual {p0, v2}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;

    iput-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mSViewCoverColorSelector:Lcom/sec/android/sviewcover/SViewCoverColorPickerView;

    .line 206
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mSViewCoverColorSelector:Lcom/sec/android/sviewcover/SViewCoverColorPickerView;

    iget v3, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mSViewCoverAppLevel:I

    invoke-virtual {v2, v3}, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->setSViewCoverAppLevel(I)V

    .line 207
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mSViewCoverColorSelector:Lcom/sec/android/sviewcover/SViewCoverColorPickerView;

    new-instance v3, Lcom/sec/android/sviewcover/SViewCoverColorSelector$1;

    invoke-direct {v3, p0}, Lcom/sec/android/sviewcover/SViewCoverColorSelector$1;-><init>(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->setOnColorChangedListener(Lcom/sec/android/sviewcover/SViewCoverColorPickerView$OnColorChangedListener;)V

    .line 263
    sget v2, Lcom/sec/android/sviewcover/R$id;->s_view_cover_color_set_button:I

    invoke-virtual {p0, v2}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mSetButton:Landroid/widget/Button;

    .line 264
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mSetButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setHoverPopupType(I)V

    .line 265
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mSetButton:Landroid/widget/Button;

    new-instance v3, Lcom/sec/android/sviewcover/SViewCoverColorSelector$2;

    invoke-direct {v3, p0}, Lcom/sec/android/sviewcover/SViewCoverColorSelector$2;-><init>(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    iget v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mSViewCoverAppLevel:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 324
    sget v2, Lcom/sec/android/sviewcover/R$id;->s_view_cover_color_cancel_button:I

    invoke-virtual {p0, v2}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mCancelButton:Landroid/widget/Button;

    .line 325
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mCancelButton:Landroid/widget/Button;

    if-eqz v2, :cond_2

    .line 326
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setHoverPopupType(I)V

    .line 327
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mCancelButton:Landroid/widget/Button;

    new-instance v3, Lcom/sec/android/sviewcover/SViewCoverColorSelector$3;

    invoke-direct {v3, p0}, Lcom/sec/android/sviewcover/SViewCoverColorSelector$3;-><init>(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    :cond_2
    sget v2, Lcom/sec/android/sviewcover/R$id;->s_view_cover_color_close_button:I

    invoke-virtual {p0, v2}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mCloseButton:Landroid/widget/ImageView;

    .line 336
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mCloseButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_3

    .line 337
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setHoverPopupType(I)V

    .line 338
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mCloseButton:Landroid/widget/ImageView;

    new-instance v3, Lcom/sec/android/sviewcover/SViewCoverColorSelector$4;

    invoke-direct {v3, p0}, Lcom/sec/android/sviewcover/SViewCoverColorSelector$4;-><init>(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->BG_ATTRS:[I

    invoke-virtual {v2, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 346
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 347
    .local v1, "bgDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 349
    if-eqz v1, :cond_3

    .line 350
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 354
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "bgDrawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    sget v2, Lcom/sec/android/sviewcover/R$id;->s_view_cover_color_picker_dim:I

    invoke-virtual {p0, v2}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mBackGroundBlackDim:Landroid/widget/ImageView;

    .line 356
    :cond_4
    sget v2, Lcom/sec/android/sviewcover/R$id;->select_background_color_text:I

    invoke-virtual {p0, v2}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mSelectBgColorText:Landroid/widget/TextView;

    .line 357
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 613
    const/4 v0, 0x1

    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 4
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 618
    if-eqz p2, :cond_1

    .line 619
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mCloseButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 620
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mCloseButton:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 631
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 632
    return-void

    .line 623
    :cond_1
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->BG_ATTRS:[I

    invoke-virtual {v2, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 624
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 625
    .local v1, "bgDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 627
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mCloseButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 628
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public replaceText()V
    .locals 2

    .prologue
    .line 644
    iget v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mSViewCoverAppLevel:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 645
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mSetButton:Landroid/widget/Button;

    sget v1, Lcom/sec/android/sviewcover/R$string;->date_time_set:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 646
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mCancelButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mCancelButton:Landroid/widget/Button;

    sget v1, Lcom/sec/android/sviewcover/R$string;->cancel:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 648
    :cond_0
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mSelectBgColorText:Landroid/widget/TextView;

    sget v1, Lcom/sec/android/sviewcover/R$string;->select_background_color_title:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 649
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mOpenCoverWallpaperText:Landroid/widget/TextView;

    sget v1, Lcom/sec/android/sviewcover/R$string;->s_view_cover_open_cover_popup:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 656
    :cond_1
    :goto_0
    return-void

    .line 651
    :cond_2
    iget v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mSViewCoverAppLevel:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 652
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mSetButton:Landroid/widget/Button;

    sget v1, Lcom/sec/android/sviewcover/R$string;->date_time_set:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 653
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mSelectBgColorText:Landroid/widget/TextView;

    sget v1, Lcom/sec/android/sviewcover/R$string;->select_background_color:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public setControlView(Landroid/view/View;)V
    .locals 1
    .param p1, "sViewCover"    # Landroid/view/View;

    .prologue
    .line 635
    if-eqz p1, :cond_1

    .line 636
    instance-of v0, p1, Lcom/sec/android/sviewcover/SViewCoverView;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 637
    check-cast v0, Lcom/sec/android/sviewcover/SViewCoverView;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mSViewCover:Lcom/sec/android/sviewcover/SViewCoverView;

    .line 638
    :cond_0
    sget v0, Lcom/sec/android/sviewcover/R$id;->sview_cover_root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mControlView:Landroid/view/View;

    .line 639
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_background:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mTargetView:Landroid/view/View;

    .line 641
    :cond_1
    return-void
.end method

.method public setEmergencyMode(I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    .line 668
    iput p1, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mEmergencyReason:I

    .line 669
    return-void
.end method

.method public setVisibility(I)V
    .locals 12
    .param p1, "visibility"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x4

    const/4 v9, 0x0

    .line 105
    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mSViewCover:Lcom/sec/android/sviewcover/SViewCoverView;

    if-eqz v6, :cond_1

    .line 106
    if-nez p1, :cond_1

    .line 107
    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mControlView:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 108
    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "s_vew_cover_background_color"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 110
    .local v0, "currentCoverColor":I
    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "sview_color_wallpaper"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 112
    .local v3, "isWallpaper":I
    iget-boolean v6, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mIsAlpahModel:Z

    if-eqz v6, :cond_3

    const/16 v6, 0xa

    if-lt v3, v6, :cond_3

    .line 113
    add-int/lit8 v2, v3, -0xa

    .line 114
    .local v2, "index":I
    const-string v6, "SViewCoverColorSelector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SViewCoverColorSelector index :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mSViewCoverColorSelector:Lcom/sec/android/sviewcover/SViewCoverColorPickerView;

    invoke-virtual {v6, v2}, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->setColor(I)V

    .line 116
    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mCoverPatternImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 117
    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mBackGroundBlackDim:Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    .line 118
    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mBackGroundBlackDim:Landroid/widget/ImageView;

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget-object v7, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->ALPHA_WALLPAPER:[I

    aget v7, v7, v2

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 121
    .local v4, "walllpaperBitmap":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 122
    .local v5, "wallpaper":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v5}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 145
    .end local v0    # "currentCoverColor":I
    .end local v2    # "index":I
    .end local v3    # "isWallpaper":I
    .end local v4    # "walllpaperBitmap":Landroid/graphics/Bitmap;
    .end local v5    # "wallpaper":Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_0
    iget v6, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mSViewCoverAppLevel:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mOpenCoverWallpaperPopup:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mOpenCoverWallpaperPopup:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v6

    if-nez v6, :cond_2

    .line 147
    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mOpenCoverWallpaperPopup:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 149
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 150
    return-void

    .line 124
    .restart local v0    # "currentCoverColor":I
    .restart local v3    # "isWallpaper":I
    :cond_3
    const/4 v6, 0x1

    if-ne v3, v6, :cond_6

    .line 125
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->getUserWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 126
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_4

    .line 127
    invoke-virtual {p0, v1}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 129
    :cond_4
    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mSViewCoverColorSelector:Lcom/sec/android/sviewcover/SViewCoverColorPickerView;

    invoke-virtual {v6}, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->setWallpaperFocus()V

    .line 130
    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mCoverPatternImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 131
    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mBackGroundBlackDim:Landroid/widget/ImageView;

    if-eqz v6, :cond_5

    .line 132
    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mBackGroundBlackDim:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 140
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_5
    :goto_1
    const-string v6, "SViewCoverColorSelector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mSViewCoverColorSelector.setColor(currentCoverColor) :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 134
    :cond_6
    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->setBackgroundColor(I)V

    .line 135
    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mSViewCoverColorSelector:Lcom/sec/android/sviewcover/SViewCoverColorPickerView;

    invoke-virtual {v6, v0}, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->setColor(I)V

    .line 136
    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mCoverPatternImage:Landroid/widget/ImageView;

    const/16 v7, 0xff

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 137
    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mBackGroundBlackDim:Landroid/widget/ImageView;

    if-eqz v6, :cond_5

    .line 138
    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mBackGroundBlackDim:Landroid/widget/ImageView;

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public showCancelButton()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 659
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mCancelButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 660
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 662
    :cond_0
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mCloseButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 663
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 665
    :cond_1
    return-void
.end method

.method public updateCurrentCoverColor(I)V
    .locals 13
    .param p1, "newCoverColor"    # I

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x3

    const/16 v10, 0x8

    const/4 v9, 0x4

    const/4 v8, 0x0

    .line 472
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "s_view_cover_skin_color"

    const/4 v7, -0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 474
    .local v1, "oldCoverColor":I
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "sview_color_wallpaper"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 476
    .local v0, "isWallpaper":I
    const-string v5, "SViewCoverColorSelector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "newCoverColor :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " oldCoverColor : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isWallpaper : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    if-eq p1, v1, :cond_b

    .line 480
    iput p1, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mCurrentCoverBackgroundColor:I

    .line 483
    iget-boolean v5, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mIsAlpahModel:Z

    if-eqz v5, :cond_3

    .line 484
    sparse-switch p1, :sswitch_data_0

    .line 498
    const/4 v2, 0x4

    .line 501
    .local v2, "selectedColor":I
    :goto_0
    invoke-virtual {p0, v8}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->setVisibility(I)V

    .line 503
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mCoverPatternImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 504
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mBackGroundBlackDim:Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    .line 505
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mBackGroundBlackDim:Landroid/widget/ImageView;

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 507
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget-object v6, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->ALPHA_WALLPAPER:[I

    aget v6, v6, v2

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 509
    .local v3, "walllpaperBitmap":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 510
    .local v4, "wallpaper":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v4}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 512
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mControlView:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 513
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mSViewCoverColorSelector:Lcom/sec/android/sviewcover/SViewCoverColorPickerView;

    invoke-virtual {v5, v2}, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->setColorThumnailFocus(I)V

    .line 514
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "sview_color_wallpaper"

    add-int/lit8 v7, v2, 0xa

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 517
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mCancelButton:Landroid/widget/Button;

    if-eqz v5, :cond_1

    .line 518
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 520
    :cond_1
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mCloseButton:Landroid/widget/ImageView;

    if-eqz v5, :cond_2

    .line 521
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 609
    .end local v2    # "selectedColor":I
    .end local v3    # "walllpaperBitmap":Landroid/graphics/Bitmap;
    .end local v4    # "wallpaper":Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_1
    return-void

    .line 486
    :sswitch_0
    const/4 v2, 0x6

    .line 487
    .restart local v2    # "selectedColor":I
    goto :goto_0

    .line 489
    .end local v2    # "selectedColor":I
    :sswitch_1
    const/4 v2, 0x1

    .line 490
    .restart local v2    # "selectedColor":I
    goto :goto_0

    .line 492
    .end local v2    # "selectedColor":I
    :sswitch_2
    const/4 v2, 0x3

    .line 493
    .restart local v2    # "selectedColor":I
    goto :goto_0

    .line 495
    .end local v2    # "selectedColor":I
    :sswitch_3
    const/4 v2, 0x0

    .line 496
    .restart local v2    # "selectedColor":I
    goto :goto_0

    .line 525
    .end local v2    # "selectedColor":I
    :cond_3
    iget v5, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mSViewCoverAppLevel:I

    if-ne v5, v11, :cond_a

    .line 526
    packed-switch p1, :pswitch_data_0

    .line 547
    :pswitch_0
    sget-object v5, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLORS:[I

    aget v2, v5, v9

    .line 583
    .restart local v2    # "selectedColor":I
    :goto_2
    iput v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mCurrentCoverBackgroundColor:I

    .line 584
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverProperties;->isColorPickerEnabled()Z

    move-result v5

    if-nez v5, :cond_4

    .line 585
    invoke-virtual {p0, v8}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->setVisibility(I)V

    .line 586
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mControlView:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 588
    :cond_4
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mSViewCoverColorSelector:Lcom/sec/android/sviewcover/SViewCoverColorPickerView;

    iget v6, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mCurrentCoverBackgroundColor:I

    invoke-virtual {v5, v6}, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->setColor(I)V

    .line 589
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mTargetView:Landroid/view/View;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mColorPickerBackground:Landroid/view/View;

    if-eqz v5, :cond_5

    .line 590
    iget v5, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mCurrentCoverBackgroundColor:I

    invoke-virtual {p0, v5}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->setBackgroundColor(I)V

    .line 591
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mTargetView:Landroid/view/View;

    iget v6, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mCurrentCoverBackgroundColor:I

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 594
    :cond_5
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mCancelButton:Landroid/widget/Button;

    if-eqz v5, :cond_6

    .line 595
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 597
    :cond_6
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mCloseButton:Landroid/widget/ImageView;

    if-eqz v5, :cond_7

    .line 598
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 604
    .end local v2    # "selectedColor":I
    :cond_7
    :goto_3
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mSViewCover:Lcom/sec/android/sviewcover/SViewCoverView;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mSViewCover:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-virtual {v5}, Lcom/sec/android/sviewcover/SViewCoverView;->isEmergencyMode()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->hideColorSelectorView()V

    .line 606
    :cond_8
    iget v5, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mEmergencyReason:I

    if-eq v5, v11, :cond_9

    iget v5, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mEmergencyReason:I

    if-ne v5, v12, :cond_2

    .line 607
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->hideColorSelectorView()V

    goto :goto_1

    .line 528
    :pswitch_1
    sget v2, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COVER_BACKGROUND_COLOR_DEFAULT:I

    .line 529
    .restart local v2    # "selectedColor":I
    goto :goto_2

    .line 531
    .end local v2    # "selectedColor":I
    :pswitch_2
    sget-object v5, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLORS:[I

    aget v2, v5, v8

    .line 532
    .restart local v2    # "selectedColor":I
    goto :goto_2

    .line 535
    .end local v2    # "selectedColor":I
    :pswitch_3
    sget-object v5, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLORS:[I

    const/4 v6, 0x1

    aget v2, v5, v6

    .line 536
    .restart local v2    # "selectedColor":I
    goto :goto_2

    .line 538
    .end local v2    # "selectedColor":I
    :pswitch_4
    sget-object v5, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLORS:[I

    aget v2, v5, v12

    .line 539
    .restart local v2    # "selectedColor":I
    goto :goto_2

    .line 541
    .end local v2    # "selectedColor":I
    :pswitch_5
    sget-object v5, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLORS:[I

    aget v2, v5, v11

    .line 542
    .restart local v2    # "selectedColor":I
    goto :goto_2

    .line 544
    .end local v2    # "selectedColor":I
    :pswitch_6
    sget-object v5, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLORS:[I

    aget v2, v5, v9

    .line 545
    .restart local v2    # "selectedColor":I
    goto :goto_2

    .line 551
    .end local v2    # "selectedColor":I
    :cond_a
    packed-switch p1, :pswitch_data_1

    .line 578
    sget v2, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COVER_BACKGROUND_COLOR_DEFAULT:I

    .restart local v2    # "selectedColor":I
    goto :goto_2

    .line 553
    .end local v2    # "selectedColor":I
    :pswitch_7
    sget v2, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COVER_BACKGROUND_COLOR_DEFAULT:I

    .line 554
    .restart local v2    # "selectedColor":I
    goto :goto_2

    .line 557
    .end local v2    # "selectedColor":I
    :pswitch_8
    sget-object v5, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLORS:[I

    aget v2, v5, v8

    .line 558
    .restart local v2    # "selectedColor":I
    goto/16 :goto_2

    .line 561
    .end local v2    # "selectedColor":I
    :pswitch_9
    sget-object v5, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLORS:[I

    const/4 v6, 0x1

    aget v2, v5, v6

    .line 562
    .restart local v2    # "selectedColor":I
    goto/16 :goto_2

    .line 565
    .end local v2    # "selectedColor":I
    :pswitch_a
    sget-object v5, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLORS:[I

    aget v2, v5, v12

    .line 566
    .restart local v2    # "selectedColor":I
    goto/16 :goto_2

    .line 568
    .end local v2    # "selectedColor":I
    :pswitch_b
    sget-object v5, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLORS:[I

    aget v2, v5, v11

    .line 569
    .restart local v2    # "selectedColor":I
    goto/16 :goto_2

    .line 572
    .end local v2    # "selectedColor":I
    :pswitch_c
    sget-object v5, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLORS:[I

    aget v2, v5, v9

    .line 573
    .restart local v2    # "selectedColor":I
    goto/16 :goto_2

    .line 575
    .end local v2    # "selectedColor":I
    :pswitch_d
    sget-object v5, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLORS:[I

    const/4 v6, 0x5

    aget v2, v5, v6

    .line 576
    .restart local v2    # "selectedColor":I
    goto/16 :goto_2

    .line 601
    .end local v2    # "selectedColor":I
    :cond_b
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->hideColorSelectorView()V

    goto :goto_3

    .line 484
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x2 -> :sswitch_2
        0x7 -> :sswitch_1
        0xb -> :sswitch_0
    .end sparse-switch

    .line 526
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 551
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_c
        :pswitch_9
        :pswitch_c
        :pswitch_d
        :pswitch_a
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
