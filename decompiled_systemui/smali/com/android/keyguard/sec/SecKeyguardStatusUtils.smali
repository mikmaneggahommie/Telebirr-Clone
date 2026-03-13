.class public Lcom/android/keyguard/sec/SecKeyguardStatusUtils;
.super Ljava/lang/Object;
.source "SecKeyguardStatusUtils.java"


# static fields
.field public static final ACCU_SETTING_URI:Landroid/net/Uri;

.field public static final ACCU_SETTING_URI_STRING:Ljava/lang/String; = "content://com.sec.android.daemonapp.ap.accuweather.provider/settings"

.field public static final KNOX_URI2:Ljava/lang/String; = "content://com.sec.knox.provider2/KnoxCustomManagerService2"

.field public static final NULL_QUERY:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SecKeyguardStatusUtils"

.field private static mIsCovered:Z

.field private static mLiveweatherSettingValue:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    sput-boolean v0, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->mIsCovered:Z

    .line 33
    sput-boolean v0, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->mLiveweatherSettingValue:Z

    .line 142
    const-string v0, "content://com.sec.android.daemonapp.ap.accuweather.provider/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->ACCU_SETTING_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZ)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tv"    # Landroid/widget/TextView;
    .param p2, "isThemeApplied"    # Z
    .param p3, "isWhiteWallpaper"    # Z

    .prologue
    const/4 v3, 0x0

    .line 402
    if-nez p1, :cond_0

    .line 413
    :goto_0
    return-void

    .line 403
    :cond_0
    if-eqz p2, :cond_1

    .line 404
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$color;->theme_weather_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 405
    invoke-virtual {p1}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getShadowDx()F

    move-result v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getShadowDy()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_0

    .line 406
    :cond_1
    if-eqz p3, :cond_2

    .line 407
    const v0, -0xbbbbbc

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 408
    invoke-virtual {p1}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getShadowDx()F

    move-result v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getShadowDy()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_0

    .line 410
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$color;->theme_weather_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 411
    invoke-virtual {p1}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getShadowDx()F

    move-result v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getShadowDy()F

    move-result v2

    const/high16 v3, -0x80000000

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_0
.end method

.method public static getClockSize(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_screen_clock_size"

    const/4 v4, 0x1

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 53
    .local v1, "size":I
    const/4 v0, 0x0

    .line 54
    .local v0, "fontSize":I
    invoke-static {p0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isEasyModeOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isBigFontModelinEasyMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 56
    const/4 v1, 0x2

    .line 58
    :cond_1
    packed-switch v1, :pswitch_data_0

    .line 69
    :pswitch_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$dimen;->kg_singleclock_time_text_size_normal:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 73
    :goto_0
    return v0

    .line 60
    :pswitch_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$dimen;->kg_singleclock_time_text_size_small:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 62
    goto :goto_0

    .line 64
    :pswitch_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$dimen;->kg_singleclock_time_text_size_large:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 66
    goto :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getCurrentLocale(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 123
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 124
    .local v0, "systemLocale":Ljava/util/Locale;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getDateFormat(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 16
    .param p0, "calendar"    # Ljava/util/Calendar;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 255
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 256
    .local v1, "dummyCal":Ljava/util/Calendar;
    const/16 v2, 0xd05

    const/16 v3, 0xa

    const/16 v4, 0x16

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Ljava/util/Calendar;->set(IIIIII)V

    .line 258
    invoke-static/range {p1 .. p1}, Landroid/text/format/DateFormat;->getTimeFormatString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    .line 259
    .local v13, "regionalDateFormat":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Landroid/text/format/DateFormat;->getTimeFormatString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    .line 260
    .local v14, "regionalDateFormat2":Ljava/lang/String;
    const-string v12, ""

    .line 261
    .local v12, "month":Ljava/lang/String;
    const-string v8, ""

    .line 262
    .local v8, "date":Ljava/lang/String;
    const/4 v9, 0x0

    .line 263
    .local v9, "dateFormatSwitch":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v10, v2, :cond_3

    .line 264
    invoke-virtual {v14, v10}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_0

    invoke-virtual {v14, v10}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_0

    invoke-virtual {v14, v10}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_2

    .line 266
    :cond_0
    add-int/lit8 v9, v9, 0x1

    .line 263
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 270
    :cond_2
    packed-switch v9, :pswitch_data_0

    .line 279
    :goto_1
    const/4 v2, 0x2

    if-ne v9, v2, :cond_1

    .line 283
    :cond_3
    const-string v15, ""

    .line 284
    .local v15, "returnDateFormat":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v2}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    const/4 v11, 0x1

    .line 287
    .local v11, "isRTLlanguage":Z
    :goto_2
    invoke-virtual {v13, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v13, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 288
    if-eqz v11, :cond_5

    sget v2, Lcom/android/keyguard/R$string;->status_view_wday_day_month_no_year:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 297
    :goto_3
    const-string v2, "SecKeyguardStatusUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "regionalDateFormat = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isRTLlanguage = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " returnDateFormat = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    return-object v15

    .line 272
    .end local v11    # "isRTLlanguage":Z
    .end local v15    # "returnDateFormat":Ljava/lang/String;
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v14, v10}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 273
    goto :goto_1

    .line 275
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v14, v10}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .line 284
    .restart local v15    # "returnDateFormat":Ljava/lang/String;
    :cond_4
    const/4 v11, 0x0

    goto :goto_2

    .line 288
    .restart local v11    # "isRTLlanguage":Z
    :cond_5
    sget v2, Lcom/android/keyguard/R$string;->status_view_wday_month_day_no_year:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto :goto_3

    .line 292
    :cond_6
    if-eqz v11, :cond_7

    sget v2, Lcom/android/keyguard/R$string;->status_view_wday_month_day_no_year:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    :goto_4
    goto :goto_3

    :cond_7
    sget v2, Lcom/android/keyguard/R$string;->status_view_wday_day_month_no_year:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto :goto_4

    .line 270
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getDualClockSize(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_screen_clock_size"

    const/4 v4, 0x1

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 80
    .local v1, "size":I
    const/4 v0, 0x0

    .line 81
    .local v0, "fontSize":I
    invoke-static {p0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isEasyModeOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 82
    :cond_0
    const/4 v1, 0x2

    .line 84
    :cond_1
    packed-switch v1, :pswitch_data_0

    .line 95
    :pswitch_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$dimen;->kg_dualclock_time_text_size_normal:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 99
    :goto_0
    return v0

    .line 86
    :pswitch_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$dimen;->kg_dualclock_time_text_size_small:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 88
    goto :goto_0

    .line 90
    :pswitch_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$dimen;->kg_dualclock_time_text_size_large:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 92
    goto :goto_0

    .line 84
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 4
    .param p0, "ft"    # Ljava/lang/String;

    .prologue
    .line 416
    const/4 v2, 0x0

    .line 417
    .local v2, "fontType":Landroid/graphics/Typeface;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 418
    .local v1, "fontFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 420
    :try_start_0
    invoke-static {p0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 425
    :cond_0
    :goto_0
    return-object v2

    .line 421
    :catch_0
    move-exception v0

    .line 422
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getHometimeZone(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "homecity_timezone"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getKnoxIntValue(Landroid/net/Uri;Ljava/lang/String;Landroid/content/Context;)I
    .locals 8
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 349
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p0

    move-object v3, p1

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 350
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 352
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    invoke-interface {v6, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 358
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 361
    :goto_0
    return v0

    .line 358
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 361
    :cond_1
    :goto_1
    const/4 v0, -0x1

    goto :goto_0

    .line 355
    :catch_0
    move-exception v7

    .line 356
    .local v7, "e":Ljava/lang/IllegalStateException;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 358
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v7    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getLastSelLocation(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 185
    const-string v8, ""

    .line 186
    .local v8, "lastSelected":Ljava/lang/String;
    const-string v7, "LAST_SEL_LOCATION"

    .line 187
    .local v7, "isLastSelLocationName":Ljava/lang/String;
    if-nez p0, :cond_0

    move-object v9, v8

    .line 200
    .end local v8    # "lastSelected":Ljava/lang/String;
    .local v9, "lastSelected":Ljava/lang/String;
    :goto_0
    return-object v9

    .line 190
    .end local v9    # "lastSelected":Ljava/lang/String;
    .restart local v8    # "lastSelected":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 191
    .local v0, "cp":Landroid/content/ContentResolver;
    if-eqz v0, :cond_2

    .line 192
    sget-object v1, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->ACCU_SETTING_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object v7, v2, v10

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 193
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 194
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 195
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 197
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_2
    move-object v9, v8

    .line 200
    .end local v8    # "lastSelected":Ljava/lang/String;
    .restart local v9    # "lastSelected":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getTravelLocationName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 229
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_name"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isAdditionalInfoEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 128
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_additional_info"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAdditionalWeatherEnabled(Landroid/content/Context;)Z
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 145
    const/4 v8, 0x0

    .line 146
    .local v8, "isEnabled":Z
    const/4 v10, 0x0

    .line 147
    .local v10, "result":I
    const/4 v6, 0x0

    .line 148
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 150
    .local v9, "isShowingOptionName":Ljava/lang/String;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKModelWeatherDeamon()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 151
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_additional_weather"

    const/4 v3, -0x2

    invoke-static {v1, v2, v12, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v11, :cond_0

    move v8, v11

    .line 180
    :goto_0
    return v8

    :cond_0
    move v8, v12

    .line 151
    goto :goto_0

    .line 155
    :cond_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p0}, Lcom/android/keyguard/sec/KeyguardProperties;->hasCocktailBar(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 156
    const-string v9, "EDGE_SCREEN"

    .line 160
    :goto_1
    if-eqz p0, :cond_3

    .line 161
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 162
    .local v0, "cp":Landroid/content/ContentResolver;
    if-eqz v0, :cond_3

    .line 164
    :try_start_0
    sget-object v1, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->ACCU_SETTING_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v9, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 165
    if-eqz v6, :cond_2

    .line 166
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 167
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    .line 173
    :cond_2
    if-eqz v6, :cond_3

    .line 174
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 178
    .end local v0    # "cp":Landroid/content/ContentResolver;
    :cond_3
    :goto_2
    if-lez v10, :cond_6

    move v8, v11

    :goto_3
    goto :goto_0

    .line 158
    :cond_4
    const-string v9, "LOCKSCREEN_AND_S_VIEW_COVER"

    goto :goto_1

    .line 170
    .restart local v0    # "cp":Landroid/content/ContentResolver;
    :catch_0
    move-exception v7

    .line 171
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "SecKeyguardStatusUtils"

    const-string v2, "isAdditionalWeatherEnabled()"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    if-eqz v6, :cond_3

    .line 174
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 173
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_5

    .line 174
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1

    .end local v0    # "cp":Landroid/content/ContentResolver;
    :cond_6
    move v8, v12

    .line 178
    goto :goto_3
.end method

.method public static isClockOn(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 244
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "show_clock"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCovered()Z
    .locals 1

    .prologue
    .line 448
    sget-boolean v0, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->mIsCovered:Z

    return v0
.end method

.method public static isDataOnlyDevice(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 319
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112005e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDateOn(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 238
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_date_and_year"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-static {p0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isShowInformation(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDualClock(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dualclock_menu_settings"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isEasyModeOn(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "easy_mode_switch"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eq v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isEasyOneHandRunning(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 431
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "any_screen_running"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isEmergencyMode(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 113
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "emergency_mode"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isFlightMode(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 234
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isLiveWeatherSettingValue()Z
    .locals 1

    .prologue
    .line 452
    sget-boolean v0, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->mLiveweatherSettingValue:Z

    return v0
.end method

.method public static isMDMWallpaperEnabled(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 108
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mdm_wallpaper_enabled"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isMobileKeygboardConnected(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 397
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 398
    .local v0, "conf":Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isPedoEnabled(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 133
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isJProject()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 136
    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_additional_steps"

    const/4 v4, -0x2

    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eq v2, v0, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public static isPowerSavingMode(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, -0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 366
    if-nez p0, :cond_1

    .line 381
    :cond_0
    :goto_0
    return v3

    .line 368
    :cond_1
    const/4 v1, 0x0

    .line 369
    .local v1, "isPowerSavingEnabled":Z
    const/4 v0, 0x0

    .line 370
    .local v0, "isPowerSaveMode":Z
    sget-boolean v4, Lcom/android/keyguard/sec/KeyguardProperties;->mGooglePowerSettingConcept:Z

    if-eqz v4, :cond_2

    .line 371
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "low_power"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_4

    move v0, v2

    .line 374
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "psm_switch"

    invoke-static {v4, v5, v3, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v2, :cond_5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "powersaving_switch"

    invoke-static {v4, v5, v3, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v2, :cond_5

    move v1, v2

    .line 379
    :goto_2
    const-string v4, "SecKeyguardStatusUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isPowerSavingMode() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    if-nez v1, :cond_3

    if-eqz v0, :cond_0

    :cond_3
    move v3, v2

    goto :goto_0

    :cond_4
    move v0, v3

    .line 371
    goto :goto_1

    :cond_5
    move v1, v3

    .line 374
    goto :goto_2
.end method

.method public static isProfileOn(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "my_profile_enabled"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isRoaming(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 324
    const/4 v1, 0x0

    .line 325
    .local v1, "isNetworkRoaming":Z
    const/4 v2, 0x0

    .line 326
    .local v2, "isNetworkRoamingForMultiSIM":Z
    const-string v7, "phone"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 328
    .local v3, "mTelephonyManager":Landroid/telephony/TelephonyManager;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v7

    if-le v7, v6, :cond_3

    .line 329
    const/4 v4, 0x0

    .local v4, "simSlotNum":I
    :goto_0
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v7

    if-ge v4, v7, :cond_4

    .line 330
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 331
    .local v0, "SIM_ID":[I
    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 332
    if-nez v2, :cond_0

    aget v7, v0, v5

    invoke-virtual {v3, v7}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_0
    move v2, v6

    .line 329
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move v2, v5

    .line 332
    goto :goto_1

    .line 337
    .end local v0    # "SIM_ID":[I
    .end local v4    # "simSlotNum":I
    :cond_3
    if-eqz v3, :cond_4

    .line 338
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    .line 341
    :cond_4
    if-nez v1, :cond_5

    if-eqz v2, :cond_6

    :cond_5
    move v5, v6

    :cond_6
    return v5
.end method

.method public static isShowClockAndDate(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 249
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_show_clock"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-static {p0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isShowInformation(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isShowInformation(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 118
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_show_info"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTravelWallpaperSet(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 204
    const-string v0, "/com.samsung.android.service.travel/files/images/"

    .line 205
    .local v0, "TRAVEL_IMAGE_PATH":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lockscreen_wallpaper_path"

    const/4 v8, -0x2

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 208
    .local v4, "wallpaperPath":Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "/com.samsung.android.service.travel/files/images/"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v3, v5

    .line 211
    .local v3, "isPathExist":Z
    :goto_0
    if-eqz v3, :cond_3

    .line 213
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 214
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_0

    move v2, v5

    .line 216
    .local v2, "isFileExist":Z
    :cond_0
    if-eqz v2, :cond_2

    .line 217
    const-string v5, "SecKeyguardStatusUtils"

    const-string v6, "isTravelWallpaperSet(): travel wallpaper is set"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "isFileExist":Z
    :goto_1
    return v2

    .end local v3    # "isPathExist":Z
    :cond_1
    move v3, v2

    .line 208
    goto :goto_0

    .line 219
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "isFileExist":Z
    .restart local v3    # "isPathExist":Z
    :cond_2
    const-string v5, "SecKeyguardStatusUtils"

    const-string v6, "isTravelWallpaperSet(): No image for travel wallpaper"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 223
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "isFileExist":Z
    :cond_3
    const-string v5, "SecKeyguardStatusUtils"

    const-string v6, "isTravelWallpaperSet(): No path for travel wallpaper"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static isUltraPowerSavingMode(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 385
    if-nez p0, :cond_0

    .line 393
    :goto_0
    return v1

    .line 388
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "ultra_powersaving_mode"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 391
    .local v0, "isUltraPowerSavingEnabled":Z
    :goto_1
    const-string v1, "SecKeyguardStatusUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isUltraPowerSavingMode() :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 393
    goto :goto_0

    .end local v0    # "isUltraPowerSavingEnabled":Z
    :cond_1
    move v0, v1

    .line 388
    goto :goto_1
.end method

.method public static isVoiceCapable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 307
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 309
    .local v0, "telephony":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isWiFiOnlyDevice(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 313
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 315
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static setCoverState(Z)V
    .locals 0
    .param p0, "isCovered"    # Z

    .prologue
    .line 441
    sput-boolean p0, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->mIsCovered:Z

    .line 442
    return-void
.end method

.method public static setLiveWeatherSettingValue(Z)V
    .locals 0
    .param p0, "set"    # Z

    .prologue
    .line 456
    sput-boolean p0, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->mLiveweatherSettingValue:Z

    .line 457
    return-void
.end method
