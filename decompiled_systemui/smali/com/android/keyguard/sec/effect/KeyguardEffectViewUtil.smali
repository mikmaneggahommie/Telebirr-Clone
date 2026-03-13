.class public Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;
.super Ljava/lang/Object;
.source "KeyguardEffectViewUtil.java"


# static fields
.field public static final ADMIN_WALLPAPER_PORTRAIT:Ljava/lang/String; = "/data/system/enterprise/lso/lockscreen_wallpaper.jpg"

.field public static final ADMIN_WALLPAPER_RIPPLE:Ljava/lang/String; = "/data/system/enterprise/lso/lockscreen_wallpaper_ripple.jpg"

.field public static final DEFAULT_CSC_WALLPAPER_IMAGE_PATH:Ljava/lang/String; = "//system/csc_contents/lockscreen_default_wallpaper.jpg"

.field public static final DEFAULT_CSC_WALLPAPER_IMAGE_PATH_PNG:Ljava/lang/String; = "//system/csc_contents/lockscreen_default_wallpaper.png"

.field public static final DEFAULT_CSC_WALLPAPER_IMAGE_PATH_PNG_SUB:Ljava/lang/String; = "//system/csc_contents/lockscreen_default_wallpaper_sub.png"

.field public static final DEFAULT_CSC_WALLPAPER_IMAGE_PATH_SUB:Ljava/lang/String; = "//system/csc_contents/lockscreen_default_wallpaper_sub.jpg"

.field public static final DEFAULT_WALLPAPER_IMAGE_PATH:Ljava/lang/String; = "//system/wallpaper/lockscreen_default_wallpaper.jpg"

.field public static final DEFAULT_WALLPAPER_IMAGE_PATH_PNG:Ljava/lang/String; = "//system/wallpaper/lockscreen_default_wallpaper.png"

.field public static final DEFAULT_WALLPAPER_IMAGE_PATH_PNG_SUB:Ljava/lang/String; = "//system/wallpaper/lockscreen_default_wallpaper_sub.png"

.field public static final DEFAULT_WALLPAPER_IMAGE_PATH_SUB:Ljava/lang/String; = "//system/wallpaper/lockscreen_default_wallpaper_sub.jpg"

.field public static final KEY_CURRENT_WALLPAPER_FILE_PATH:Ljava/lang/String; = "keyguard_current_wallpaper_file_path"

.field public static final KEY_CURRENT_WALLPAPER_FILE_PATH_SUB:Ljava/lang/String; = "keyguard_current_wallpaper_file_path_sub"

.field public static final KEY_CURRENT_WALLPAPER_RES_ID:Ljava/lang/String; = "keyguard_current_wallpaper_res_id"

.field public static final KEY_CURRENT_WALLPAPER_RES_ID_SUB:Ljava/lang/String; = "keyguard_current_wallpaper_res_id_sub"

.field public static final KEY_CURRENT_WALLPAPER_TYPE:Ljava/lang/String; = "keyguard_current_wallpaper_type"

.field public static final KEY_CURRENT_WALLPAPER_TYPE_SUB:Ljava/lang/String; = "keyguard_current_wallpaper_type_sub"

.field public static final KEY_DEFAULT_WALLPAPER_RES_ID:Ljava/lang/String; = "keyguard_default_wallpaper_res_id"

.field public static final KEY_DEFAULT_WALLPAPER_RES_ID_SUB:Ljava/lang/String; = "keyguard_default_wallpaper_res_id_sub"

.field private static final KNOX_MODE_USER_ID:I = 0x64

.field public static final LANDSCAPE_WALLPAPER_IMAGE_PATH:Ljava/lang/String; = "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper_land.jpg"

.field public static final LANDSCAPE_WALLPAPER_IMAGE_PATH_SUB:Ljava/lang/String; = "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper_land_sub.jpg"

.field public static final PORTRAIT_WALLPAPER_IMAGE_PATH:Ljava/lang/String; = "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper.jpg"

.field public static final PORTRAIT_WALLPAPER_IMAGE_PATH_SUB:Ljava/lang/String; = "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper_sub.jpg"

.field public static final RIPPLE_WALLPAPER_IMAGE_PATH:Ljava/lang/String; = "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper_ripple.jpg"

.field public static final SHARED_WALLPAPER_TYPE_FILE:I = 0x1

.field public static final SHARED_WALLPAPER_TYPE_NONE:I = 0x0

.field public static final SHARED_WALLPAPER_TYPE_RESOURCE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "KeyguardEffectViewUtil"

.field public static final WALLPAPER_TYPE_FILE:I = 0x1

.field public static final WALLPAPER_TYPE_HOME:I = 0x3

.field public static final WALLPAPER_TYPE_JUST_ON_LOCK_LIVE:I = 0x2

.field public static final WALLPAPER_TYPE_LIVE:I

.field private static mAdminWallpaper:Z

.field private static mUpdatedAdminWallpaperValue:Z

.field private static mWallpaperPath:Ljava/lang/String;

.field private static mWallpaperPathSub:Ljava/lang/String;

.field private static mWallpaperResId:I

.field private static mWallpaperResIdSub:I

.field private static mWallpaperType:I

.field private static mWallpaperTypeSub:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 92
    sput-object v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    .line 93
    sput v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperResId:I

    .line 94
    sput v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperType:I

    .line 103
    sput-object v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperPathSub:Ljava/lang/String;

    .line 104
    sput v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperResIdSub:I

    .line 105
    sput v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperTypeSub:I

    .line 186
    sput-boolean v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mUpdatedAdminWallpaperValue:Z

    .line 187
    sput-boolean v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mAdminWallpaper:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkWallpaperDrawableAndReturn(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;I)Landroid/graphics/drawable/BitmapDrawable;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wallpaperDrawable"    # Landroid/graphics/drawable/BitmapDrawable;
    .param p2, "displayId"    # I

    .prologue
    .line 580
    if-nez p0, :cond_0

    .line 607
    .end local p1    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    return-object p1

    .line 584
    .restart local p1    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    if-eqz p1, :cond_1

    .line 585
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 587
    .local v3, "pBitmap":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-eqz v4, :cond_1

    .line 588
    const/4 v3, 0x0

    .line 589
    invoke-static {p0, p1, p2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->writeWallpaperInfoAndReturn(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    goto :goto_0

    .line 594
    .end local v3    # "pBitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-static {p0, p2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getDefaultInputStream(Landroid/content/Context;I)Ljava/io/InputStream;

    move-result-object v1

    .line 595
    .local v1, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 597
    .local v2, "newWallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v1, :cond_2

    .line 598
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2    # "newWallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    .line 601
    .restart local v2    # "newWallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 607
    :cond_2
    :goto_1
    invoke-static {p0, v2, p2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->writeWallpaperInfoAndReturn(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    goto :goto_0

    .line 602
    :catch_0
    move-exception v0

    .line 603
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private static checkWhiteLockscreenWallpaper(Landroid/graphics/drawable/BitmapDrawable;)Z
    .locals 17
    .param p0, "bd"    # Landroid/graphics/drawable/BitmapDrawable;

    .prologue
    .line 239
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 243
    .local v0, "bmp":Landroid/graphics/Bitmap;
    const/4 v9, 0x0

    .local v9, "sumSaturation":F
    const/4 v10, 0x0

    .local v10, "sumValue":F
    const/4 v1, 0x0

    .local v1, "curSaturation":F
    const/4 v2, 0x0

    .line 244
    .local v2, "curValue":F
    const/4 v15, 0x3

    :try_start_0
    new-array v5, v15, [F

    .line 245
    .local v5, "pixelHSV":[F
    const/4 v6, 0x0

    .line 247
    .local v6, "sampleCount":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 248
    .local v12, "w":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    div-int/lit8 v3, v15, 0x2

    .line 250
    .local v3, "h":I
    if-le v12, v3, :cond_1

    int-to-float v15, v3

    const/high16 v16, 0x42c80000    # 100.0f

    div-float v15, v15, v16

    float-to-int v8, v15

    .line 251
    .local v8, "step":I
    :goto_0
    if-gtz v8, :cond_0

    .line 252
    const/4 v8, 0x1

    .line 254
    :cond_0
    const/4 v13, 0x0

    .local v13, "x":I
    :goto_1
    if-ge v13, v12, :cond_3

    .line 255
    const/4 v14, 0x0

    .local v14, "y":I
    :goto_2
    if-ge v14, v3, :cond_2

    .line 256
    invoke-virtual {v0, v13, v14}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v15

    invoke-static {v15, v5}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 257
    const/4 v15, 0x1

    aget v15, v5, v15

    add-float/2addr v9, v15

    .line 258
    const/4 v15, 0x2

    aget v15, v5, v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-float/2addr v10, v15

    .line 259
    add-int/lit8 v6, v6, 0x1

    .line 255
    add-int/2addr v14, v8

    goto :goto_2

    .line 250
    .end local v8    # "step":I
    .end local v13    # "x":I
    .end local v14    # "y":I
    :cond_1
    int-to-float v15, v12

    const/high16 v16, 0x42c80000    # 100.0f

    div-float v15, v15, v16

    float-to-int v8, v15

    goto :goto_0

    .line 254
    .restart local v8    # "step":I
    .restart local v13    # "x":I
    .restart local v14    # "y":I
    :cond_2
    add-int/2addr v13, v8

    goto :goto_1

    .line 262
    .end local v14    # "y":I
    :cond_3
    int-to-float v15, v6

    div-float v7, v9, v15

    .line 263
    .local v7, "sat":F
    int-to-float v15, v6

    div-float v11, v10, v15

    .line 265
    .local v11, "val":F
    const v15, 0x3d75c28f    # 0.06f

    cmpg-float v15, v7, v15

    if-gez v15, :cond_4

    const v15, 0x3f733333    # 0.95f

    cmpl-float v15, v11, v15

    if-ltz v15, :cond_4

    .line 266
    const/4 v15, 0x1

    .line 299
    .end local v3    # "h":I
    .end local v5    # "pixelHSV":[F
    .end local v6    # "sampleCount":I
    .end local v7    # "sat":F
    .end local v8    # "step":I
    .end local v11    # "val":F
    .end local v12    # "w":I
    .end local v13    # "x":I
    :goto_3
    return v15

    .line 268
    :catch_0
    move-exception v15

    .line 272
    :cond_4
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 273
    const/4 v15, 0x3

    :try_start_1
    new-array v5, v15, [F

    .line 274
    .restart local v5    # "pixelHSV":[F
    const/4 v6, 0x0

    .line 276
    .restart local v6    # "sampleCount":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 277
    .restart local v12    # "w":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    div-int/lit8 v4, v15, 0x2

    .line 278
    .local v4, "m":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 280
    .restart local v3    # "h":I
    if-le v12, v4, :cond_6

    int-to-float v15, v4

    const/high16 v16, 0x42c80000    # 100.0f

    div-float v15, v15, v16

    float-to-int v8, v15

    .line 281
    .restart local v8    # "step":I
    :goto_4
    if-gtz v8, :cond_5

    .line 282
    const/4 v8, 0x1

    .line 284
    :cond_5
    const/4 v13, 0x0

    .restart local v13    # "x":I
    :goto_5
    if-ge v13, v12, :cond_8

    .line 285
    move v14, v4

    .restart local v14    # "y":I
    :goto_6
    if-ge v14, v3, :cond_7

    .line 286
    invoke-virtual {v0, v13, v14}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v15

    invoke-static {v15, v5}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 287
    const/4 v15, 0x1

    aget v15, v5, v15

    add-float/2addr v9, v15

    .line 288
    const/4 v15, 0x2

    aget v15, v5, v15
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-float/2addr v10, v15

    .line 289
    add-int/lit8 v6, v6, 0x1

    .line 285
    add-int/2addr v14, v8

    goto :goto_6

    .line 280
    .end local v8    # "step":I
    .end local v13    # "x":I
    .end local v14    # "y":I
    :cond_6
    int-to-float v15, v12

    const/high16 v16, 0x42c80000    # 100.0f

    div-float v15, v15, v16

    float-to-int v8, v15

    goto :goto_4

    .line 284
    .restart local v8    # "step":I
    .restart local v13    # "x":I
    .restart local v14    # "y":I
    :cond_7
    add-int/2addr v13, v8

    goto :goto_5

    .line 292
    .end local v14    # "y":I
    :cond_8
    int-to-float v15, v6

    div-float v7, v9, v15

    .line 293
    .restart local v7    # "sat":F
    int-to-float v15, v6

    div-float v11, v10, v15

    .line 295
    .restart local v11    # "val":F
    const v15, 0x3d75c28f    # 0.06f

    cmpg-float v15, v7, v15

    if-gez v15, :cond_9

    const v15, 0x3f733333    # 0.95f

    cmpl-float v15, v11, v15

    if-ltz v15, :cond_9

    .line 296
    const/4 v15, 0x1

    goto :goto_3

    .line 298
    .end local v3    # "h":I
    .end local v4    # "m":I
    .end local v5    # "pixelHSV":[F
    .end local v6    # "sampleCount":I
    .end local v7    # "sat":F
    .end local v8    # "step":I
    .end local v11    # "val":F
    .end local v12    # "w":I
    .end local v13    # "x":I
    :catch_1
    move-exception v15

    .line 299
    :cond_9
    const/4 v15, 0x0

    goto :goto_3
.end method

.method public static getCurrentWallpaper(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 202
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getCurrentWallpaper(Landroid/content/Context;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentWallpaper(Landroid/content/Context;I)Landroid/graphics/drawable/BitmapDrawable;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "displayId"    # I

    .prologue
    const/4 v8, -0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 206
    const/4 v3, 0x0

    .line 208
    .local v3, "wallpaperPath":Ljava/lang/String;
    if-nez p1, :cond_3

    .line 209
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lockscreen_wallpaper_path"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 216
    :cond_0
    :goto_0
    invoke-static {p0, v3, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getCurrentWallpaper(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 223
    .local v0, "bmpDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestPhoneUX()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestTabletUX()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 224
    :cond_1
    const-string v6, "KeyguardEffectViewUtil"

    const-string v7, "checkWhiteLockscreenWallpaper() start"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->checkWhiteLockscreenWallpaper(Landroid/graphics/drawable/BitmapDrawable;)Z

    move-result v1

    .line 226
    .local v1, "newVal":Z
    const-string v6, "KeyguardEffectViewUtil"

    const-string v7, "checkWhiteLockscreenWallpaper() end"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "white_lockscreen_wallpaper"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_4

    move v2, v4

    .line 228
    .local v2, "oldVal":Z
    :goto_1
    if-eq v2, v1, :cond_2

    .line 229
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "white_lockscreen_wallpaper"

    if-eqz v1, :cond_5

    :goto_2
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 230
    const-string v4, "KeyguardEffectViewUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "whiteLockscreenWallpaper : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    .end local v1    # "newVal":Z
    .end local v2    # "oldVal":Z
    :cond_2
    return-object v0

    .line 211
    .end local v0    # "bmpDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_3
    if-ne v4, p1, :cond_0

    .line 212
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lockscreen_wallpaper_path_sub"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .restart local v0    # "bmpDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v1    # "newVal":Z
    :cond_4
    move v2, v5

    .line 227
    goto :goto_1

    .restart local v2    # "oldVal":Z
    :cond_5
    move v4, v5

    .line 229
    goto :goto_2
.end method

.method public static getCurrentWallpaper(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "galleryWallpaperFilePath"    # Ljava/lang/String;

    .prologue
    .line 303
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getCurrentWallpaper(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentWallpaper(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/BitmapDrawable;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "galleryWallpaperFilePath"    # Ljava/lang/String;
    .param p2, "displayId"    # I

    .prologue
    const/4 v9, 0x1

    .line 307
    if-nez p0, :cond_0

    .line 308
    const/4 v6, 0x0

    .line 415
    :goto_0
    return-object v6

    .line 310
    :cond_0
    if-nez p2, :cond_3

    .line 311
    sput-object p1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    .line 312
    const-string v6, "KeyguardEffectViewUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getCurrentWallpaper() mWallpaperPath : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_1
    :goto_1
    invoke-static {p0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 319
    invoke-static {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getDefaultLonglifeInputStream(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v3

    .line 320
    .local v3, "is":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 321
    .local v4, "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    const-string v6, "KeyguardEffectViewUtil"

    const-string v7, "EmergencyMode"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    if-eqz v3, :cond_2

    .line 324
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    .end local v4    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v4, v6, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    .line 326
    .restart local v4    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :cond_2
    :goto_2
    invoke-static {p0, v4, p2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->checkWallpaperDrawableAndReturn(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    goto :goto_0

    .line 313
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_3
    if-ne v9, p2, :cond_1

    .line 314
    sput-object p1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperPathSub:Ljava/lang/String;

    .line 315
    const-string v6, "KeyguardEffectViewUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getCurrentWallpaper() mWallpaperPathSub : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperPathSub:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 327
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :catch_0
    move-exception v0

    .line 328
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 334
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_4
    invoke-static {p0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isMDMWallpaperEnabled(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 335
    if-nez p2, :cond_8

    .line 336
    const-string v6, "/data/system/enterprise/lso/lockscreen_wallpaper.jpg"

    sput-object v6, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    .line 341
    :cond_5
    :goto_3
    const/4 v2, 0x0

    .line 342
    .local v2, "file":Ljava/io/File;
    if-nez p2, :cond_9

    .line 343
    new-instance v2, Ljava/io/File;

    .end local v2    # "file":Ljava/io/File;
    sget-object v6, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 347
    .restart local v2    # "file":Ljava/io/File;
    :cond_6
    :goto_4
    const/4 v4, 0x0

    .line 348
    .restart local v4    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 350
    if-nez p2, :cond_a

    .line 351
    :try_start_1
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget-object v7, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 353
    .end local v4    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .local v5, "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v6, 0x1

    :try_start_2
    sput v6, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperType:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-object v4, v5

    .line 359
    .end local v5    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v4    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_7
    :goto_5
    :try_start_3
    invoke-static {p0, v4, p2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->checkWallpaperDrawableAndReturn(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;I)Landroid/graphics/drawable/BitmapDrawable;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v6

    goto/16 :goto_0

    .line 337
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_8
    if-ne v9, p2, :cond_5

    .line 338
    const-string v6, "/data/system/enterprise/lso/lockscreen_wallpaper.jpg"

    sput-object v6, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperPathSub:Ljava/lang/String;

    goto :goto_3

    .line 344
    .restart local v2    # "file":Ljava/io/File;
    :cond_9
    if-ne v9, p2, :cond_6

    .line 345
    new-instance v2, Ljava/io/File;

    .end local v2    # "file":Ljava/io/File;
    sget-object v6, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperPathSub:Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v2    # "file":Ljava/io/File;
    goto :goto_4

    .line 354
    .restart local v4    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_a
    if-ne v9, p2, :cond_7

    .line 355
    :try_start_4
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget-object v7, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperPathSub:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 357
    .end local v4    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v5    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v6, 0x1

    :try_start_5
    sput v6, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperTypeSub:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-object v4, v5

    .end local v5    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v4    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    goto :goto_5

    .line 360
    :catch_1
    move-exception v1

    .line 361
    .local v1, "ex":Ljava/lang/Exception;
    :goto_6
    invoke-static {p0, p2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getDefaultWallpaper(Landroid/content/Context;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    goto/16 :goto_0

    .line 364
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_b
    invoke-static {p0, p2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getDefaultWallpaper(Landroid/content/Context;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    goto/16 :goto_0

    .line 368
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_c
    if-nez p2, :cond_d

    sget-object v6, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    if-eqz v6, :cond_d

    sget-object v6, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    const-string v7, "com.sec.android.slidingGallery"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 370
    invoke-static {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getScaledBitmapDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    .line 372
    .restart local v4    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    sput v9, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperType:I

    .line 374
    invoke-static {p0, v4, p2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->checkWallpaperDrawableAndReturn(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    goto/16 :goto_0

    .line 375
    .end local v4    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_d
    if-ne v9, p2, :cond_e

    sget-object v6, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperPathSub:Ljava/lang/String;

    if-eqz v6, :cond_e

    sget-object v6, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperPathSub:Ljava/lang/String;

    const-string v7, "com.sec.android.slidingGallery"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 377
    invoke-static {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getScaledBitmapDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    .line 379
    .restart local v4    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    sput v9, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperTypeSub:I

    .line 381
    invoke-static {p0, v4, p2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->checkWallpaperDrawableAndReturn(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    goto/16 :goto_0

    .line 384
    .end local v4    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_e
    if-nez p2, :cond_12

    .line 385
    sget-object v6, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    if-nez v6, :cond_f

    .line 386
    const-string v6, "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper.jpg"

    sput-object v6, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    .line 392
    :cond_f
    :goto_7
    const/4 v2, 0x0

    .line 393
    .restart local v2    # "file":Ljava/io/File;
    if-nez p2, :cond_13

    .line 394
    new-instance v2, Ljava/io/File;

    .end local v2    # "file":Ljava/io/File;
    sget-object v6, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 398
    .restart local v2    # "file":Ljava/io/File;
    :cond_10
    :goto_8
    const/4 v4, 0x0

    .line 401
    .restart local v4    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v2, :cond_15

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v6

    if-eqz v6, :cond_15

    .line 403
    if-nez p2, :cond_14

    .line 404
    :try_start_6
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget-object v7, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 405
    .end local v4    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v5    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v6, 0x1

    :try_start_7
    sput v6, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperType:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    move-object v4, v5

    .line 410
    .end local v5    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v4    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_11
    :goto_9
    :try_start_8
    invoke-static {p0, v4, p2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->checkWallpaperDrawableAndReturn(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;I)Landroid/graphics/drawable/BitmapDrawable;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    move-result-object v6

    goto/16 :goto_0

    .line 387
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_12
    if-ne v9, p2, :cond_f

    .line 388
    sget-object v6, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperPathSub:Ljava/lang/String;

    if-nez v6, :cond_f

    .line 389
    const-string v6, "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper_sub.jpg"

    sput-object v6, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperPathSub:Ljava/lang/String;

    goto :goto_7

    .line 395
    .restart local v2    # "file":Ljava/io/File;
    :cond_13
    if-ne v9, p2, :cond_10

    .line 396
    new-instance v2, Ljava/io/File;

    .end local v2    # "file":Ljava/io/File;
    sget-object v6, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperPathSub:Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v2    # "file":Ljava/io/File;
    goto :goto_8

    .line 406
    .restart local v4    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_14
    if-ne v9, p2, :cond_11

    .line 407
    :try_start_9
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget-object v7, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperPathSub:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 408
    .end local v4    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v5    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v6, 0x1

    :try_start_a
    sput v6, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperTypeSub:I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    move-object v4, v5

    .end local v5    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v4    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    goto :goto_9

    .line 411
    :catch_2
    move-exception v1

    .line 412
    .restart local v1    # "ex":Ljava/lang/Exception;
    :goto_a
    invoke-static {p0, p2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getDefaultWallpaper(Landroid/content/Context;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    goto/16 :goto_0

    .line 415
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_15
    invoke-static {p0, p2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getDefaultWallpaper(Landroid/content/Context;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    goto/16 :goto_0

    .line 411
    .end local v4    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v5    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :catch_3
    move-exception v1

    move-object v4, v5

    .end local v5    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v4    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    goto :goto_a

    .line 360
    .end local v4    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v5    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :catch_4
    move-exception v1

    move-object v4, v5

    .end local v5    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v4    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    goto/16 :goto_6
.end method

.method public static getDefaultInputStream(Landroid/content/Context;)Ljava/io/InputStream;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 549
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getDefaultInputStream(Landroid/content/Context;I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultInputStream(Landroid/content/Context;I)Ljava/io/InputStream;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "displayId"    # I

    .prologue
    const/4 v1, 0x2

    .line 553
    if-nez p0, :cond_0

    .line 554
    const/4 v0, 0x0

    .line 565
    :goto_0
    return-object v0

    .line 556
    :cond_0
    if-nez p1, :cond_1

    .line 557
    sget v0, Lcom/android/keyguard/R$drawable;->keyguard_default_wallpaper:I

    sput v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperResId:I

    .line 558
    sput v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperType:I

    .line 560
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperResId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    .line 562
    :cond_1
    sget v0, Lcom/android/keyguard/R$drawable;->sub_keyguard_default_wallpaper:I

    sput v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperResIdSub:I

    .line 563
    sput v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperTypeSub:I

    .line 565
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperResIdSub:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDefaultLonglifeInputStream(Landroid/content/Context;)Ljava/io/InputStream;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 570
    if-nez p0, :cond_0

    .line 571
    const/4 v0, 0x0

    .line 576
    :goto_0
    return-object v0

    .line 573
    :cond_0
    sget v0, Lcom/android/keyguard/R$drawable;->keyguard_longlife_wallpaper_black:I

    sput v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperResId:I

    .line 574
    const/4 v0, 0x2

    sput v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperType:I

    .line 576
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperResId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDefaultWallpaper(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 420
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getDefaultWallpaper(Landroid/content/Context;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultWallpaper(Landroid/content/Context;I)Landroid/graphics/drawable/BitmapDrawable;
    .locals 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "displayId"    # I

    .prologue
    .line 424
    if-nez p0, :cond_0

    .line 425
    const/16 v19, 0x0

    .line 545
    :goto_0
    return-object v19

    .line 427
    :cond_0
    if-nez p1, :cond_5

    const/4 v13, 0x1

    .line 429
    .local v13, "isDefaultDisplay":Z
    :goto_1
    new-instance v5, Ljava/io/File;

    if-eqz v13, :cond_6

    const-string v19, "//system/wallpaper/lockscreen_default_wallpaper.jpg"

    :goto_2
    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 430
    .local v5, "file":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    if-eqz v13, :cond_7

    const-string v19, "//system/csc_contents/lockscreen_default_wallpaper.jpg"

    :goto_3
    move-object/from16 v0, v19

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 432
    .local v6, "fileMultiCSC":Ljava/io/File;
    new-instance v8, Ljava/io/File;

    if-eqz v13, :cond_8

    const-string v19, "//system/wallpaper/lockscreen_default_wallpaper.png"

    :goto_4
    move-object/from16 v0, v19

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 434
    .local v8, "filePng":Ljava/io/File;
    new-instance v7, Ljava/io/File;

    if-eqz v13, :cond_9

    const-string v19, "//system/csc_contents/lockscreen_default_wallpaper.png"

    :goto_5
    move-object/from16 v0, v19

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 437
    .local v7, "fileMultiCSCPng":Ljava/io/File;
    const/4 v11, 0x0

    .line 438
    .local v11, "is":Ljava/io/InputStream;
    const/16 v17, 0x0

    .line 440
    .local v17, "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 441
    .local v3, "bmOptions":Landroid/graphics/BitmapFactory$Options;
    const/16 v19, 0x1

    move/from16 v0, v19

    iput-boolean v0, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 443
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_b

    .line 445
    :try_start_0
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8

    .line 447
    .end local v11    # "is":Ljava/io/InputStream;
    .local v12, "is":Ljava/io/InputStream;
    if-eqz v13, :cond_a

    .line 448
    :try_start_1
    const-string v19, "//system/csc_contents/lockscreen_default_wallpaper.png"

    move-object/from16 v0, v19

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 449
    const-string v19, "//system/csc_contents/lockscreen_default_wallpaper.png"

    sput-object v19, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    .line 450
    const/16 v19, 0x1

    sput v19, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperType:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_6
    move-object v11, v12

    .line 514
    .end local v12    # "is":Ljava/io/InputStream;
    .restart local v11    # "is":Ljava/io/InputStream;
    :cond_1
    :goto_7
    if-nez v11, :cond_2

    .line 515
    invoke-static/range {p0 .. p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getDefaultInputStream(Landroid/content/Context;I)Ljava/io/InputStream;

    move-result-object v11

    .line 516
    invoke-static/range {p0 .. p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getDefaultInputStream(Landroid/content/Context;I)Ljava/io/InputStream;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 519
    :cond_2
    if-eqz v11, :cond_4

    .line 520
    new-instance v14, Landroid/util/DisplayMetrics;

    invoke-direct {v14}, Landroid/util/DisplayMetrics;-><init>()V

    .line 521
    .local v14, "metrics":Landroid/util/DisplayMetrics;
    const-string v19, "window"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/WindowManager;

    .line 522
    .local v18, "wm":Landroid/view/WindowManager;
    invoke-interface/range {v18 .. v18}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 524
    iget v9, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 525
    .local v9, "imageHeight":I
    iget v10, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 526
    .local v10, "imageWidth":I
    iget v0, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v19, v0

    div-int v19, v10, v19

    iget v0, v14, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v20, v0

    div-int v20, v9, v20

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 529
    .local v15, "scaleFactor":I
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ge v15, v0, :cond_3

    const/4 v15, 0x1

    .line 531
    :cond_3
    const/16 v19, 0x0

    move/from16 v0, v19

    iput-boolean v0, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 532
    iput v15, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 533
    const/16 v19, 0x1

    move/from16 v0, v19

    iput-boolean v0, v3, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 535
    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-static {v11, v0, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 536
    .local v16, "wallpaperBitmap":Landroid/graphics/Bitmap;
    new-instance v17, Landroid/graphics/drawable/BitmapDrawable;

    .end local v17    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 539
    .restart local v17    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :try_start_2
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 545
    .end local v9    # "imageHeight":I
    .end local v10    # "imageWidth":I
    .end local v14    # "metrics":Landroid/util/DisplayMetrics;
    .end local v15    # "scaleFactor":I
    .end local v16    # "wallpaperBitmap":Landroid/graphics/Bitmap;
    .end local v18    # "wm":Landroid/view/WindowManager;
    :cond_4
    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->checkWallpaperDrawableAndReturn(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v19

    goto/16 :goto_0

    .line 427
    .end local v3    # "bmOptions":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "fileMultiCSC":Ljava/io/File;
    .end local v7    # "fileMultiCSCPng":Ljava/io/File;
    .end local v8    # "filePng":Ljava/io/File;
    .end local v11    # "is":Ljava/io/InputStream;
    .end local v13    # "isDefaultDisplay":Z
    .end local v17    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_5
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 429
    .restart local v13    # "isDefaultDisplay":Z
    :cond_6
    const-string v19, "//system/wallpaper/lockscreen_default_wallpaper_sub.jpg"

    goto/16 :goto_2

    .line 430
    .restart local v5    # "file":Ljava/io/File;
    :cond_7
    const-string v19, "//system/csc_contents/lockscreen_default_wallpaper_sub.jpg"

    goto/16 :goto_3

    .line 432
    .restart local v6    # "fileMultiCSC":Ljava/io/File;
    :cond_8
    const-string v19, "//system/wallpaper/lockscreen_default_wallpaper_sub.png"

    goto/16 :goto_4

    .line 434
    .restart local v8    # "filePng":Ljava/io/File;
    :cond_9
    const-string v19, "//system/csc_contents/lockscreen_default_wallpaper_sub.png"

    goto/16 :goto_5

    .line 452
    .restart local v3    # "bmOptions":Landroid/graphics/BitmapFactory$Options;
    .restart local v7    # "fileMultiCSCPng":Ljava/io/File;
    .restart local v12    # "is":Ljava/io/InputStream;
    .restart local v17    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_a
    :try_start_3
    const-string v19, "//system/csc_contents/lockscreen_default_wallpaper_sub.png"

    move-object/from16 v0, v19

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 453
    const-string v19, "//system/csc_contents/lockscreen_default_wallpaper_sub.png"

    sput-object v19, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperPathSub:Ljava/lang/String;

    .line 454
    const/16 v19, 0x1

    sput v19, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperTypeSub:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_6

    .line 457
    :catch_0
    move-exception v4

    move-object v11, v12

    .line 458
    .end local v12    # "is":Ljava/io/InputStream;
    .local v4, "e":Ljava/io/IOException;
    .restart local v11    # "is":Ljava/io/InputStream;
    :goto_9
    const/4 v11, 0x0

    .line 459
    goto/16 :goto_7

    .line 460
    .end local v4    # "e":Ljava/io/IOException;
    :cond_b
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_d

    .line 462
    :try_start_4
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    .line 463
    .end local v11    # "is":Ljava/io/InputStream;
    .restart local v12    # "is":Ljava/io/InputStream;
    if-eqz v13, :cond_c

    .line 464
    :try_start_5
    const-string v19, "//system/csc_contents/lockscreen_default_wallpaper.jpg"

    move-object/from16 v0, v19

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 466
    const-string v19, "//system/csc_contents/lockscreen_default_wallpaper.jpg"

    sput-object v19, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    .line 467
    const/16 v19, 0x1

    sput v19, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperType:I

    :goto_a
    move-object v11, v12

    .line 477
    .end local v12    # "is":Ljava/io/InputStream;
    .restart local v11    # "is":Ljava/io/InputStream;
    goto/16 :goto_7

    .line 469
    .end local v11    # "is":Ljava/io/InputStream;
    .restart local v12    # "is":Ljava/io/InputStream;
    :cond_c
    const-string v19, "//system/csc_contents/lockscreen_default_wallpaper_sub.jpg"

    move-object/from16 v0, v19

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 471
    const-string v19, "//system/csc_contents/lockscreen_default_wallpaper_sub.jpg"

    sput-object v19, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperPathSub:Ljava/lang/String;

    .line 472
    const/16 v19, 0x1

    sput v19, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperTypeSub:I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_a

    .line 475
    :catch_1
    move-exception v4

    move-object v11, v12

    .line 476
    .end local v12    # "is":Ljava/io/InputStream;
    .restart local v4    # "e":Ljava/io/IOException;
    .restart local v11    # "is":Ljava/io/InputStream;
    :goto_b
    const/4 v11, 0x0

    .line 477
    goto/16 :goto_7

    .line 478
    .end local v4    # "e":Ljava/io/IOException;
    :cond_d
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_f

    .line 480
    :try_start_6
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 481
    .end local v11    # "is":Ljava/io/InputStream;
    .restart local v12    # "is":Ljava/io/InputStream;
    if-eqz v13, :cond_e

    .line 482
    :try_start_7
    const-string v19, "//system/wallpaper/lockscreen_default_wallpaper.png"

    move-object/from16 v0, v19

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 484
    const-string v19, "//system/wallpaper/lockscreen_default_wallpaper.png"

    sput-object v19, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    .line 485
    const/16 v19, 0x1

    sput v19, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperType:I

    :goto_c
    move-object v11, v12

    .line 494
    .end local v12    # "is":Ljava/io/InputStream;
    .restart local v11    # "is":Ljava/io/InputStream;
    goto/16 :goto_7

    .line 487
    .end local v11    # "is":Ljava/io/InputStream;
    .restart local v12    # "is":Ljava/io/InputStream;
    :cond_e
    const-string v19, "//system/wallpaper/lockscreen_default_wallpaper_sub.png"

    move-object/from16 v0, v19

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 489
    const-string v19, "//system/wallpaper/lockscreen_default_wallpaper_sub.png"

    sput-object v19, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperPathSub:Ljava/lang/String;

    .line 490
    const/16 v19, 0x1

    sput v19, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperTypeSub:I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_c

    .line 492
    :catch_2
    move-exception v4

    move-object v11, v12

    .line 493
    .end local v12    # "is":Ljava/io/InputStream;
    .restart local v4    # "e":Ljava/io/IOException;
    .restart local v11    # "is":Ljava/io/InputStream;
    :goto_d
    const/4 v11, 0x0

    .line 494
    goto/16 :goto_7

    .line 495
    .end local v4    # "e":Ljava/io/IOException;
    :cond_f
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 497
    :try_start_8
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 498
    .end local v11    # "is":Ljava/io/InputStream;
    .restart local v12    # "is":Ljava/io/InputStream;
    if-eqz v13, :cond_10

    .line 499
    :try_start_9
    const-string v19, "//system/wallpaper/lockscreen_default_wallpaper.jpg"

    move-object/from16 v0, v19

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 501
    const-string v19, "//system/wallpaper/lockscreen_default_wallpaper.jpg"

    sput-object v19, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    .line 502
    const/16 v19, 0x1

    sput v19, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperType:I

    :goto_e
    move-object v11, v12

    .line 511
    .end local v12    # "is":Ljava/io/InputStream;
    .restart local v11    # "is":Ljava/io/InputStream;
    goto/16 :goto_7

    .line 504
    .end local v11    # "is":Ljava/io/InputStream;
    .restart local v12    # "is":Ljava/io/InputStream;
    :cond_10
    const-string v19, "//system/wallpaper/lockscreen_default_wallpaper_sub.jpg"

    move-object/from16 v0, v19

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 506
    const-string v19, "//system/wallpaper/lockscreen_default_wallpaper_sub.jpg"

    sput-object v19, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperPathSub:Ljava/lang/String;

    .line 507
    const/16 v19, 0x1

    sput v19, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperTypeSub:I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_e

    .line 509
    :catch_3
    move-exception v4

    move-object v11, v12

    .line 510
    .end local v12    # "is":Ljava/io/InputStream;
    .restart local v4    # "e":Ljava/io/IOException;
    .restart local v11    # "is":Ljava/io/InputStream;
    :goto_f
    const/4 v11, 0x0

    goto/16 :goto_7

    .line 540
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v9    # "imageHeight":I
    .restart local v10    # "imageWidth":I
    .restart local v14    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v15    # "scaleFactor":I
    .restart local v16    # "wallpaperBitmap":Landroid/graphics/Bitmap;
    .restart local v18    # "wm":Landroid/view/WindowManager;
    :catch_4
    move-exception v4

    .line 541
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_8

    .line 509
    .end local v4    # "e":Ljava/io/IOException;
    .end local v9    # "imageHeight":I
    .end local v10    # "imageWidth":I
    .end local v14    # "metrics":Landroid/util/DisplayMetrics;
    .end local v15    # "scaleFactor":I
    .end local v16    # "wallpaperBitmap":Landroid/graphics/Bitmap;
    .end local v18    # "wm":Landroid/view/WindowManager;
    :catch_5
    move-exception v4

    goto :goto_f

    .line 492
    :catch_6
    move-exception v4

    goto :goto_d

    .line 475
    :catch_7
    move-exception v4

    goto :goto_b

    .line 457
    :catch_8
    move-exception v4

    goto/16 :goto_9
.end method

.method public static getPreferredConfigBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "srcBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 682
    if-nez p0, :cond_1

    move-object p0, v4

    .line 700
    .end local p0    # "srcBitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p0

    .line 685
    .restart local p0    # "srcBitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    if-eq v5, p1, :cond_0

    .line 688
    const-string v5, "KeyguardEffectViewUtil"

    const-string v6, "start to convert album art"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 690
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 692
    .local v2, "height":I
    if-lez v3, :cond_2

    if-gtz v2, :cond_3

    :cond_2
    move-object p0, v4

    .line 693
    goto :goto_0

    .line 695
    :cond_3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {v5, v6, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 697
    .local v0, "destBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 698
    .local v1, "destCanvas":Landroid/graphics/Canvas;
    invoke-virtual {v1, p0, v7, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object p0, v0

    .line 700
    goto :goto_0
.end method

.method public static getWallpaperType(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 153
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getWallpaperType(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public static getWallpaperType(Landroid/content/Context;I)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "displayId"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, -0x2

    const/4 v1, 0x1

    .line 157
    if-nez p0, :cond_1

    move v0, v1

    .line 182
    :cond_0
    :goto_0
    return v0

    .line 160
    :cond_1
    invoke-static {p0}, Lcom/android/keyguard/sec/KeyguardProperties;->isDcmLauncherWithoutSecure(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    const/16 v3, 0x64

    if-ge v2, v3, :cond_2

    .line 161
    const/4 v0, 0x3

    goto :goto_0

    .line 163
    :cond_2
    if-nez p1, :cond_3

    .line 164
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_wallpaper"

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 166
    .local v0, "wallpaperType":I
    if-ne v0, v5, :cond_0

    .line 167
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_wallpaper_path"

    invoke-static {v2, v3, v6, v4}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 168
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_wallpaper"

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 169
    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->setLiveWeatherSettingValue(Z)V

    move v0, v1

    .line 170
    goto :goto_0

    .line 174
    .end local v0    # "wallpaperType":I
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_wallpaper_sub"

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 176
    .restart local v0    # "wallpaperType":I
    if-ne v0, v5, :cond_0

    .line 177
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_wallpaper_path_sub"

    invoke-static {v2, v3, v6, v4}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 178
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_wallpaper_sub"

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 179
    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->setLiveWeatherSettingValue(Z)V

    move v0, v1

    .line 180
    goto :goto_0
.end method

.method public static isAdminWallpaper()Z
    .locals 1

    .prologue
    .line 189
    sget-boolean v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mUpdatedAdminWallpaperValue:Z

    if-nez v0, :cond_0

    .line 190
    invoke-static {}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->updateIsAdminWallpaper()V

    .line 193
    :cond_0
    sget-boolean v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mAdminWallpaper:Z

    return v0
.end method

.method public static isHomeWallpaper(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 147
    invoke-static {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getWallpaperType(Landroid/content/Context;)I

    move-result v0

    .line 149
    .local v0, "wallpaperType":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isKeyguardEffectViewWallpaper(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 134
    invoke-static {}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->isAdminWallpaper()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->isLiveWallpaper(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->isHomeWallpaper(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLiveWallpaper(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 140
    invoke-static {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getWallpaperType(Landroid/content/Context;)I

    move-result v0

    .line 141
    .local v0, "wallpaperType":I
    const-string v1, "KeyguardEffectViewUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wallpaperType :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isOpenThemeWallpaperEnabled(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 665
    if-nez p0, :cond_1

    .line 678
    :cond_0
    :goto_0
    return v0

    .line 669
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "opne_theme_effect_lockscreen_wallpaper"

    const/4 v4, -0x2

    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .line 671
    .local v0, "isEnabled":Z
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "current_sec_theme_package_open_theme"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 673
    .local v1, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 674
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 675
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isZoomPanningEffectEnabled(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 655
    invoke-static {p0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isPowerSavingMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 661
    :goto_0
    return v0

    .line 659
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_zoom_panning_effect"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_2

    .line 661
    .local v0, "isZoomPanningEffect":Z
    :goto_1
    goto :goto_0

    .end local v0    # "isZoomPanningEffect":Z
    :cond_2
    move v0, v1

    .line 659
    goto :goto_1
.end method

.method public static updateIsAdminWallpaper()V
    .locals 2

    .prologue
    .line 197
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mUpdatedAdminWallpaperValue:Z

    .line 198
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/enterprise/lso/lockscreen_wallpaper.jpg"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mAdminWallpaper:Z

    .line 199
    return-void
.end method

.method public static writeKeyguardCurrentWallpaperInfo(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "displayId"    # I

    .prologue
    const/4 v3, -0x2

    .line 617
    if-nez p0, :cond_1

    .line 636
    :cond_0
    :goto_0
    return-void

    .line 620
    :cond_1
    const-string v0, "KeyguardEffectViewUtil"

    const-string v1, "set current wallpaper info"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    if-nez p1, :cond_2

    .line 622
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "keyguard_current_wallpaper_type"

    sget v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperType:I

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 624
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "keyguard_current_wallpaper_file_path"

    sget-object v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 626
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "keyguard_current_wallpaper_res_id"

    sget v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperResId:I

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    .line 628
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 629
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "keyguard_current_wallpaper_type_sub"

    sget v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperTypeSub:I

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 631
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "keyguard_current_wallpaper_file_path_sub"

    sget-object v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperPathSub:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 633
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "keyguard_current_wallpaper_res_id_sub"

    sget v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperResIdSub:I

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0
.end method

.method public static writeKeyguardDefaultWallpaperResId(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 639
    if-nez p0, :cond_0

    .line 652
    :goto_0
    return-void

    .line 642
    :cond_0
    const-string v0, "KeyguardEffectViewUtil"

    const-string v1, "set resource id"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "keyguard_default_wallpaper_res_id"

    sget v2, Lcom/android/keyguard/R$drawable;->keyguard_default_wallpaper:I

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0
.end method

.method private static writeWallpaperInfoAndReturn(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;I)Landroid/graphics/drawable/BitmapDrawable;
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wallpaperDrawable"    # Landroid/graphics/drawable/BitmapDrawable;
    .param p2, "displayId"    # I

    .prologue
    .line 611
    invoke-static {p0, p2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->writeKeyguardCurrentWallpaperInfo(Landroid/content/Context;I)V

    .line 613
    return-object p1
.end method
