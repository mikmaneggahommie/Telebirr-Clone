.class public Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;
.super Landroid/widget/FrameLayout;
.source "SViewCoverWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/sviewcover/SViewCoverWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Weather"
.end annotation


# static fields
.field public static final ACCU_CURRENT_WEATHERINFO_URI:Landroid/net/Uri;

.field public static final ACCU_SETTING_URI:Landroid/net/Uri;

.field public static ACTION_CURRENT_LOCATION_WEATHER_DATA:Ljava/lang/String; = null

.field private static final ACTION_CWEATHER_DATE_SYNC:Ljava/lang/String; = "com.sec.android.widgetapp.cmaweatherdaemon.action.WEATHER_DATE_SYNC"

.field private static final ACTION_KWEATHER_DATE_SYNC:Ljava/lang/String; = "com.sec.android.widgetapp.ap.kweatherdaemon.action.WEATHER_DATE_SYNC"

.field private static ACTION_SEC_AUTO_REFRESH:Ljava/lang/String; = null

.field private static ACTION_SEC_CHANGE_SETTING:Ljava/lang/String; = null

.field private static ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String; = null

.field public static final CMA_SETTING_URI:Landroid/net/Uri;

.field public static final CMA_WEATHERINFO_URI:Landroid/net/Uri;

.field private static final DAEMON_ACCUWEATHER:Ljava/lang/String; = "accuweather"

.field private static final DAEMON_CMAWEATHER:Ljava/lang/String; = "Cmaweather"

.field private static final DAEMON_DIVISION_2015:Ljava/lang/String; = "2015"

.field private static final DAEMON_DIVISION_TLOS:Ljava/lang/String; = "\'TLOS\'"

.field private static final DAEMON_JPWEATHER:Ljava/lang/String; = "weathernewsjp"

.field private static final DAEMON_KWEATHER:Ljava/lang/String; = "kweather"

.field public static final K_CURRENT_WEATHERINFO_URI:Landroid/net/Uri;

.field public static final K_SETTING_URI:Landroid/net/Uri;

.field public static final WEATHER_NEWS_SETTING_URI:Landroid/net/Uri;

.field public static final WEATHER_NEWS_WEATHERINFO_URI:Landroid/net/Uri;

.field private static mCPName:Ljava/lang/String;


# instance fields
.field private ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

.field private final CITYID_CURRENT_LOCATION_SEC:Ljava/lang/String;

.field private final COL_CHECK_CURRENT_CITY_LOCATION:Ljava/lang/String;

.field private final KEY_CITY_ID:Ljava/lang/String;

.field private final KEY_CITY_ID_SEC:Ljava/lang/String;

.field private final KEY_CITY_NAME:Ljava/lang/String;

.field private final KEY_CITY_NAME_SEC:Ljava/lang/String;

.field private final KEY_COUNTRY_NAME_SEC:Ljava/lang/String;

.field private final KEY_CURRENT_TEMP:Ljava/lang/String;

.field private final KEY_CURRENT_TEMP_SEC:Ljava/lang/String;

.field private final KEY_HIGH_TEMP:Ljava/lang/String;

.field private final KEY_HIGH_TEMP_SEC:Ljava/lang/String;

.field private final KEY_ICON_NUM:Ljava/lang/String;

.field private final KEY_ICON_NUM_CHN:Ljava/lang/String;

.field private final KEY_ICON_NUM_SEC:Ljava/lang/String;

.field private final KEY_LOW_TEMP:Ljava/lang/String;

.field private final KEY_LOW_TEMP_SEC:Ljava/lang/String;

.field private final KEY_TEMP_SCALE:Ljava/lang/String;

.field private final KEY_TEMP_SCALE_SEC:Ljava/lang/String;

.field private final KEY_TIMEZONE:Ljava/lang/String;

.field private final KEY_TODAY_SUNRISE_TIME:Ljava/lang/String;

.field private final KEY_TODAY_SUNSET_TIME:Ljava/lang/String;

.field private final KEY_WEATHER_REFRESH_TIME_SEC:Ljava/lang/String;

.field private final KEY_WEATHER_STRING_SEC:Ljava/lang/String;

.field private final KEY_WEATHER_TEXT:Ljava/lang/String;

.field public SETTING_URI:Landroid/net/Uri;

.field private final TEMP_SCALE_CENTIGRADE:I

.field private final TEMP_SCALE_FAHRENHEIT:I

.field public WEATHERINFO_URI:Landroid/net/Uri;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mContentObserver:Landroid/database/ContentObserver;

.field mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mDaemonDivision:Ljava/lang/String;

.field private mDivider:Landroid/widget/ImageView;

.field private mIntent:Landroid/content/Intent;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsWeather:Z

.field private mWeatherCity:Landroid/widget/TextView;

.field private mWeatherContainer:Landroid/widget/LinearLayout;

.field private mWeatherContainerHighLow:Landroid/widget/LinearLayout;

.field private mWeatherIcon:Landroid/widget/ImageView;

.field private mWeatherStatus:Landroid/widget/TextView;

.field private mWeatherTemp:Landroid/widget/TextView;

.field private mWeatherTempHigh:Landroid/widget/TextView;

.field private mWeatherTempLow:Landroid/widget/TextView;

.field private mWeatherUnit:Landroid/widget/ImageView;

.field private mWeatherUnitHigh:Landroid/widget/ImageView;

.field private mWeatherUnitLow:Landroid/widget/ImageView;

.field private mWeatherWidget:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1500
    const-string v0, "accuweather"

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mCPName:Ljava/lang/String;

    .line 1506
    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->ACTION_CURRENT_LOCATION_WEATHER_DATA:Ljava/lang/String;

    .line 1533
    const-string v0, "content://com.sec.android.daemonapp.ap.accuweather.provider/current_weatherinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->ACCU_CURRENT_WEATHERINFO_URI:Landroid/net/Uri;

    .line 1535
    const-string v0, "content://com.sec.android.daemonapp.ap.accuweather.provider/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->ACCU_SETTING_URI:Landroid/net/Uri;

    .line 1537
    const-string v0, "content://com.sec.android.daemonapp.ap.kweather.provider/current_weatherinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->K_CURRENT_WEATHERINFO_URI:Landroid/net/Uri;

    .line 1539
    const-string v0, "content://com.sec.android.daemonapp.ap.kweather.provider/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->K_SETTING_URI:Landroid/net/Uri;

    .line 1541
    const-string v0, "content://com.sec.android.daemonapp.cmaweather.provider/current_weatherinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->CMA_WEATHERINFO_URI:Landroid/net/Uri;

    .line 1543
    const-string v0, "content://com.sec.android.daemonapp.cmaweather.provider/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->CMA_SETTING_URI:Landroid/net/Uri;

    .line 1545
    const-string v0, "content://com.sec.android.daemonapp.ap.weathernewsjp.provider/current_weatherinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->WEATHER_NEWS_WEATHERINFO_URI:Landroid/net/Uri;

    .line 1547
    const-string v0, "content://com.sec.android.daemonapp.ap.weathernewsjp.provider/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->WEATHER_NEWS_SETTING_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1563
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1464
    iput-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mDaemonDivision:Ljava/lang/String;

    .line 1480
    iput-boolean v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mIsWeather:Z

    .line 1481
    iput v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->TEMP_SCALE_FAHRENHEIT:I

    .line 1482
    iput v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->TEMP_SCALE_CENTIGRADE:I

    .line 1485
    const-string v0, "aw_daemon_service_key_loc_code"

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->KEY_CITY_ID:Ljava/lang/String;

    .line 1486
    const-string v0, "aw_daemon_service_key_city_name"

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->KEY_CITY_NAME:Ljava/lang/String;

    .line 1487
    const-string v0, "aw_daemon_service_key_current_temp"

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->KEY_CURRENT_TEMP:Ljava/lang/String;

    .line 1488
    const-string v0, "aw_daemon_service_key_temp_scale"

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->KEY_TEMP_SCALE:Ljava/lang/String;

    .line 1489
    const-string v0, "aw_daemon_service_key_icon_num"

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->KEY_ICON_NUM:Ljava/lang/String;

    .line 1490
    const-string v0, "aw_daemon_service_key_weather_text"

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->KEY_WEATHER_TEXT:Ljava/lang/String;

    .line 1491
    const-string v0, "aw_daemon_service_key_high_temp"

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->KEY_HIGH_TEMP:Ljava/lang/String;

    .line 1492
    const-string v0, "aw_daemon_service_key_low_temp"

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->KEY_LOW_TEMP:Ljava/lang/String;

    .line 1494
    iput-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mIntent:Landroid/content/Intent;

    .line 1507
    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.WEATHER_DATE_SYNC"

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    .line 1512
    const-string v0, "Location=\"%s\""

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "cityId:current"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->CITYID_CURRENT_LOCATION_SEC:Ljava/lang/String;

    .line 1514
    const-string v0, "TODAY_TEMP"

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->KEY_CURRENT_TEMP_SEC:Ljava/lang/String;

    .line 1515
    const-string v0, "TODAY_HIGH_TEMP"

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->KEY_HIGH_TEMP_SEC:Ljava/lang/String;

    .line 1516
    const-string v0, "TODAY_LOW_TEMP"

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->KEY_LOW_TEMP_SEC:Ljava/lang/String;

    .line 1517
    const-string v0, "STATE"

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->KEY_COUNTRY_NAME_SEC:Ljava/lang/String;

    .line 1518
    const-string v0, "TODAY_ICON_NUM"

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->KEY_ICON_NUM_SEC:Ljava/lang/String;

    .line 1519
    const-string v0, "WEATHER_ICON_NUM"

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->KEY_ICON_NUM_CHN:Ljava/lang/String;

    .line 1520
    const-string v0, "REAL_LOCATION"

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->KEY_CITY_ID_SEC:Ljava/lang/String;

    .line 1521
    const-string v0, "LOCATION"

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->KEY_CITY_NAME_SEC:Ljava/lang/String;

    .line 1522
    const-string v0, "TODAY_WEATHER_TEXT"

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->KEY_WEATHER_STRING_SEC:Ljava/lang/String;

    .line 1523
    const-string v0, "UPDATE_DATE"

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->KEY_WEATHER_REFRESH_TIME_SEC:Ljava/lang/String;

    .line 1524
    const-string v0, "TIMEZONE"

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->KEY_TIMEZONE:Ljava/lang/String;

    .line 1525
    const-string v0, "TODAY_SUNRISE_TIME"

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->KEY_TODAY_SUNRISE_TIME:Ljava/lang/String;

    .line 1526
    const-string v0, "TODAY_SUNSET_TIME"

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->KEY_TODAY_SUNSET_TIME:Ljava/lang/String;

    .line 1527
    const-string v0, "CHECK_CURRENT_CITY_LOCATION"

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->COL_CHECK_CURRENT_CITY_LOCATION:Ljava/lang/String;

    .line 1532
    const-string v0, "TEMP_SCALE"

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->KEY_TEMP_SCALE_SEC:Ljava/lang/String;

    .line 1549
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->ACCU_CURRENT_WEATHERINFO_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->WEATHERINFO_URI:Landroid/net/Uri;

    .line 1550
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->K_SETTING_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->SETTING_URI:Landroid/net/Uri;

    .line 1553
    new-instance v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather$1;-><init>(Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContentObserver:Landroid/database/ContentObserver;

    .line 1564
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    .line 1565
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContentResolver:Landroid/content/ContentResolver;

    .line 1567
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->initWeatherDaemonInfo()V

    .line 1569
    new-instance v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather$2;

    invoke-direct {v0, p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather$2;-><init>(Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;)V

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1600
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mIntentFilter:Landroid/content/IntentFilter;

    .line 1601
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mIntentFilter:Landroid/content/IntentFilter;

    sget-object v1, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1602
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mIntentFilter:Landroid/content/IntentFilter;

    sget-object v1, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1603
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mIntentFilter:Landroid/content/IntentFilter;

    sget-object v1, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1604
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1605
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mIntentFilter:Landroid/content/IntentFilter;

    sget-object v1, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->ACTION_CURRENT_LOCATION_WEATHER_DATA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1606
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1607
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1609
    const-string v0, "kweather"

    sget-object v1, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mCPName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1610
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1611
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1612
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1613
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1614
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1615
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.sec.android.widgetapp.ap.kweatherdaemon.action.WEATHER_DATE_SYNC"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1620
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->init()V

    .line 1621
    return-void

    .line 1616
    :cond_1
    const-string v0, "Cmaweather"

    sget-object v1, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mCPName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1617
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.sec.android.widgetapp.cmaweatherdaemon.action.WEATHER_DATE_SYNC"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$1700(Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;

    .prologue
    .line 1460
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->init()V

    return-void
.end method

.method static synthetic access$1802(Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 1460
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;

    .prologue
    .line 1460
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;

    .prologue
    .line 1460
    iget-boolean v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mIsWeather:Z

    return v0
.end method

.method static synthetic access$2100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1460
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mCPName:Ljava/lang/String;

    return-object v0
.end method

.method private checkDayOrNight()Z
    .locals 11

    .prologue
    const/16 v10, 0x12

    const/4 v9, 0x6

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2965
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2966
    .local v0, "calendar":Ljava/util/Calendar;
    if-eqz v0, :cond_8

    .line 2967
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2969
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v3, v6, 0x1

    .line 2970
    .local v3, "month":I
    const/16 v6, 0xb

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 2971
    .local v1, "hour":I
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkDayOrNight, month = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", hour = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2973
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2974
    .local v2, "locale":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkDayOrNight, locale = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2976
    if-eqz v2, :cond_6

    .line 2977
    const-string v6, "ko_KR"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2978
    const/4 v6, 0x3

    if-lt v3, v6, :cond_2

    const/16 v6, 0xa

    if-ge v3, v6, :cond_2

    .line 2979
    if-lt v1, v9, :cond_0

    const/16 v6, 0x13

    if-lt v1, v6, :cond_1

    :cond_0
    move v4, v5

    .line 3003
    .end local v1    # "hour":I
    .end local v2    # "locale":Ljava/lang/String;
    .end local v3    # "month":I
    :cond_1
    :goto_0
    return v4

    .line 2984
    .restart local v1    # "hour":I
    .restart local v2    # "locale":Ljava/lang/String;
    .restart local v3    # "month":I
    :cond_2
    const/4 v6, 0x7

    if-lt v1, v6, :cond_3

    if-lt v1, v10, :cond_1

    :cond_3
    move v4, v5

    .line 2985
    goto :goto_0

    .line 2990
    :cond_4
    if-lt v1, v9, :cond_5

    if-lt v1, v10, :cond_1

    :cond_5
    move v4, v5

    .line 2991
    goto :goto_0

    .line 2996
    :cond_6
    if-lt v1, v9, :cond_7

    if-lt v1, v10, :cond_1

    :cond_7
    move v4, v5

    .line 2997
    goto :goto_0

    .line 3002
    .end local v1    # "hour":I
    .end local v2    # "locale":Ljava/lang/String;
    .end local v3    # "month":I
    :cond_8
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v5

    const-string v6, "checkDayOrNight, mCalendar is null, return true"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getCPName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2757
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverView;->isKoreaFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2758
    const-string v0, "kweather"

    .line 2762
    :goto_0
    return-object v0

    .line 2759
    :cond_0
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverView;->isChinaFeature()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2760
    const-string v0, "Cmaweather"

    goto :goto_0

    .line 2762
    :cond_1
    const-string v0, "accuweather"

    goto :goto_0
.end method

.method private getEmergencyModeEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2714
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "emergency_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private getKidsModeEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2718
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "kids_home_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private getValidTemp(F)Ljava/lang/String;
    .locals 4
    .param p1, "temp"    # F

    .prologue
    .line 3008
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 3011
    .local v0, "results":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "999"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3012
    :cond_0
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3013
    const-string v0, "-"

    .line 3016
    .end local v0    # "results":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private getWeatherEnabled()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2704
    const-string v2, "2015"

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mDaemonDivision:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "\'TLOS\'"

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mDaemonDivision:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2706
    :cond_0
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->isWeatherWidgetEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 2708
    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_additional_weather"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eq v2, v0, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method private getWeatherSettingUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 1676
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverView;->isKoreaFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1677
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->K_SETTING_URI:Landroid/net/Uri;

    .line 1681
    :goto_0
    return-object v0

    .line 1678
    :cond_0
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverView;->isChinaFeature()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1679
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->CMA_SETTING_URI:Landroid/net/Uri;

    goto :goto_0

    .line 1681
    :cond_1
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->ACCU_SETTING_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method private init()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1624
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->getEmergencyModeEnabled()Z

    move-result v0

    .line 1625
    .local v0, "isEmergencyModeEnabled":Z
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->getKidsModeEnabled()Z

    move-result v1

    .line 1626
    .local v1, "isKidsModeEnabled":Z
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->getWeatherEnabled()Z

    move-result v2

    .line 1628
    .local v2, "isWeatherWidgetEnabled":Z
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isEmergencyModeEnabled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isKidsModeEnabled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isWeatherWidgetEnabled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-ne v2, v3, :cond_0

    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v5}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->getCheckCurrentCityLocation(Landroid/content/Context;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 1637
    .local v3, "needToShowWeather":Z
    :goto_0
    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {p0, v4}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->setVisibility(I)V

    .line 1638
    return-void

    .end local v3    # "needToShowWeather":Z
    :cond_0
    move v3, v4

    .line 1633
    goto :goto_0

    .line 1637
    .restart local v3    # "needToShowWeather":Z
    :cond_1
    const/16 v4, 0x8

    goto :goto_1
.end method

.method private initWeatherDaemonInfo()V
    .locals 3

    .prologue
    .line 2771
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->getCPName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mCPName:Ljava/lang/String;

    .line 2772
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initWeatherDaemonInfo, getCPName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mCPName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2773
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mCPName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    sget-object v1, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mCPName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2774
    :cond_0
    const-string v0, "accuweather"

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mCPName:Ljava/lang/String;

    .line 2776
    :cond_1
    const-string v0, "kweather"

    sget-object v1, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mCPName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2777
    const-string v0, "com.sec.android.widgetapp.ap.kweatherdaemon.action.CHANGE_SETTING"

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

    .line 2778
    const-string v0, "com.sec.android.widgetapp.ap.kweatherdaemon.action.AUTO_REFRESH"

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

    .line 2779
    const-string v0, "com.sec.android.widgetapp.ap.kweatherdaemon.action.CHANGE_WEATHER_DATA"

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

    .line 2780
    const-string v0, "com.sec.android.widgetapp.ap.kweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->ACTION_CURRENT_LOCATION_WEATHER_DATA:Ljava/lang/String;

    .line 2781
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->K_CURRENT_WEATHERINFO_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->WEATHERINFO_URI:Landroid/net/Uri;

    .line 2803
    :goto_0
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->getDaemonDivision(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mDaemonDivision:Ljava/lang/String;

    .line 2804
    return-void

    .line 2782
    :cond_2
    const-string v0, "Cmaweather"

    sget-object v1, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mCPName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2783
    const-string v0, "com.sec.android.widgetapp.cmaweatherdaemon.action.CHANGE_SETTING"

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

    .line 2784
    const-string v0, "com.sec.android.widgetapp.cmaweatherdaemon.action.AUTO_REFRESH"

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

    .line 2785
    const-string v0, "com.sec.android.widgetapp.ap.cmaweatherdaemon.action.CHANGE_WEATHER_DATA"

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

    .line 2786
    const-string v0, "com.sec.android.widgetapp.cmaweatherdaemon.action.WEATHER_DATE_SYNC"

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    .line 2787
    const-string v0, "com.sec.android.widgetapp.cmaweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->ACTION_CURRENT_LOCATION_WEATHER_DATA:Ljava/lang/String;

    .line 2788
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->CMA_WEATHERINFO_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->WEATHERINFO_URI:Landroid/net/Uri;

    goto :goto_0

    .line 2789
    :cond_3
    const-string v0, "weathernewsjp"

    sget-object v1, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mCPName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2790
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->WEATHER_NEWS_WEATHERINFO_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->WEATHERINFO_URI:Landroid/net/Uri;

    .line 2791
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->WEATHER_NEWS_SETTING_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->SETTING_URI:Landroid/net/Uri;

    .line 2792
    const-string v0, "com.sec.android.widgetapp.ap.weathernewsjpdaemon.action.CHANGE_SETTING"

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

    .line 2793
    const-string v0, "com.sec.android.widgetapp.ap.weathernewsjpdaemon.action.AUTO_REFRESH"

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

    .line 2794
    const-string v0, "com.sec.android.widgetapp.ap.weathernewsjpdaemon.action.CHANGE_WEATHER_DATA"

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

    .line 2795
    const-string v0, "com.sec.android.widgetapp.ap.weathernewsjpdaemon.action.WEATHER_DATE_SYNC"

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    .line 2796
    const-string v0, "com.sec.android.widgetapp.ap.weathernewsjpdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->ACTION_CURRENT_LOCATION_WEATHER_DATA:Ljava/lang/String;

    goto :goto_0

    .line 2798
    :cond_4
    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CHANE_SETTING"

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

    .line 2799
    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.AUTO_REFRESH"

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

    .line 2800
    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CHANGE_WEATHER_DATA"

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

    goto :goto_0
.end method

.method private updateWeatherEnabledStatus()V
    .locals 1

    .prologue
    .line 2767
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->getWeatherEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mIsWeather:Z

    .line 2768
    return-void
.end method


# virtual methods
.method public checkDayOrNightForChina()Z
    .locals 8

    .prologue
    .line 2809
    const/4 v3, 0x0

    .line 2810
    .local v3, "t":Ljava/util/TimeZone;
    const/4 v0, 0x0

    .line 2812
    .local v0, "mIsDay":Z
    const-string v5, "TIMEZONE"

    invoke-virtual {p0, v5}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->getWeatherInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2813
    .local v4, "timezone":Ljava/lang/String;
    const-string v5, "TODAY_SUNRISE_TIME"

    invoke-virtual {p0, v5}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->getWeatherInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2814
    .local v1, "sunrise":Ljava/lang/String;
    const-string v5, "TODAY_SUNSET_TIME"

    invoke-virtual {p0, v5}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->getWeatherInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2815
    .local v2, "sunset":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkDayOrNightforChina T = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", SR: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",SS:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2818
    if-eqz v4, :cond_0

    .line 2819
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    .line 2822
    :cond_0
    invoke-virtual {p0, v3, v1, v2}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->isDay(Ljava/util/TimeZone;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 2823
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkDayOrNightforChina, mIsDay = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2824
    return v0
.end method

.method public getCheckCurrentCityLocation(Landroid/content/Context;)I
    .locals 10
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 1641
    const/4 v8, 0x0

    .line 1642
    .local v8, "result":I
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->getWeatherSettingUri()Landroid/net/Uri;

    move-result-object v1

    .line 1643
    .local v1, "settingUri":Landroid/net/Uri;
    if-nez p1, :cond_0

    .line 1644
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getCheckCurrent: context is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v8

    .line 1672
    .end local v8    # "result":I
    .local v9, "result":I
    :goto_0
    return v9

    .line 1648
    .end local v9    # "result":I
    .restart local v8    # "result":I
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1649
    .local v0, "cp":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 1651
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 1653
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "CHECK_CURRENT_CITY_LOCATION"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1657
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1658
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 1665
    :cond_1
    if-eqz v6, :cond_2

    .line 1666
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1670
    :cond_2
    :goto_1
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCheckCurrent: result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v8

    .line 1672
    .end local v8    # "result":I
    .restart local v9    # "result":I
    goto :goto_0

    .line 1660
    .end local v9    # "result":I
    .restart local v8    # "result":I
    :catch_0
    move-exception v7

    .line 1661
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCheckCurrent occur SQLiteException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1665
    if-eqz v6, :cond_2

    .line 1666
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1662
    .end local v7    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v7

    .line 1663
    .local v7, "e":Ljava/lang/NumberFormatException;
    :try_start_2
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCheckCurrent occur NumberFormatException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Ljava/lang/NumberFormatException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1665
    if-eqz v6, :cond_2

    .line 1666
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1665
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v2

    if-eqz v6, :cond_3

    .line 1666
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2
.end method

.method public getCityId()Ljava/lang/String;
    .locals 10

    .prologue
    .line 1714
    const-string v6, ""

    .line 1715
    .local v6, "cityname":Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    move-object v7, v6

    .line 1739
    .end local v6    # "cityname":Ljava/lang/String;
    .local v7, "cityname":Ljava/lang/String;
    :goto_0
    return-object v7

    .line 1719
    .end local v7    # "cityname":Ljava/lang/String;
    .restart local v6    # "cityname":Ljava/lang/String;
    :cond_0
    const/4 v8, 0x0

    .line 1721
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_1

    .line 1722
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->WEATHERINFO_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "REAL_LOCATION"

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->CITYID_CURRENT_LOCATION_SEC:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1725
    if-eqz v8, :cond_1

    .line 1726
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1727
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 1734
    :cond_1
    if-eqz v8, :cond_2

    .line 1735
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v7, v6

    .line 1739
    .end local v6    # "cityname":Ljava/lang/String;
    .restart local v7    # "cityname":Ljava/lang/String;
    goto :goto_0

    .line 1731
    .end local v7    # "cityname":Ljava/lang/String;
    .restart local v6    # "cityname":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 1734
    .local v9, "e":Ljava/lang/Exception;
    if-eqz v8, :cond_3

    .line 1735
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v7, v6

    .end local v6    # "cityname":Ljava/lang/String;
    .restart local v7    # "cityname":Ljava/lang/String;
    goto :goto_0

    .line 1734
    .end local v7    # "cityname":Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v6    # "cityname":Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_4

    .line 1735
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public getCityName()Ljava/lang/String;
    .locals 10

    .prologue
    .line 1743
    const-string v6, ""

    .line 1744
    .local v6, "cityname":Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    move-object v7, v6

    .line 1767
    .end local v6    # "cityname":Ljava/lang/String;
    .local v7, "cityname":Ljava/lang/String;
    :goto_0
    return-object v7

    .line 1748
    .end local v7    # "cityname":Ljava/lang/String;
    .restart local v6    # "cityname":Ljava/lang/String;
    :cond_0
    const/4 v8, 0x0

    .line 1750
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_1

    .line 1751
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->WEATHERINFO_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "LOCATION"

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->CITYID_CURRENT_LOCATION_SEC:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1754
    if-eqz v8, :cond_1

    .line 1755
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1756
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 1763
    :cond_1
    if-eqz v8, :cond_2

    .line 1764
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v7, v6

    .line 1767
    .end local v6    # "cityname":Ljava/lang/String;
    .restart local v7    # "cityname":Ljava/lang/String;
    goto :goto_0

    .line 1760
    .end local v7    # "cityname":Ljava/lang/String;
    .restart local v6    # "cityname":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 1763
    .local v9, "e":Ljava/lang/Exception;
    if-eqz v8, :cond_3

    .line 1764
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v7, v6

    .end local v6    # "cityname":Ljava/lang/String;
    .restart local v7    # "cityname":Ljava/lang/String;
    goto :goto_0

    .line 1763
    .end local v7    # "cityname":Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v6    # "cityname":Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_4

    .line 1764
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public getCountryName()Ljava/lang/String;
    .locals 10

    .prologue
    .line 1924
    const-string v8, ""

    .line 1925
    .local v8, "mCountryName":Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    move-object v9, v8

    .line 1949
    .end local v8    # "mCountryName":Ljava/lang/String;
    .local v9, "mCountryName":Ljava/lang/String;
    :goto_0
    return-object v9

    .line 1929
    .end local v9    # "mCountryName":Ljava/lang/String;
    .restart local v8    # "mCountryName":Ljava/lang/String;
    :cond_0
    const/4 v6, 0x0

    .line 1931
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_1

    .line 1932
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->WEATHERINFO_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "STATE"

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->CITYID_CURRENT_LOCATION_SEC:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1935
    if-eqz v6, :cond_1

    .line 1936
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1937
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 1944
    :cond_1
    if-eqz v6, :cond_2

    .line 1945
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v9, v8

    .line 1949
    .end local v8    # "mCountryName":Ljava/lang/String;
    .restart local v9    # "mCountryName":Ljava/lang/String;
    goto :goto_0

    .line 1941
    .end local v9    # "mCountryName":Ljava/lang/String;
    .restart local v8    # "mCountryName":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 1944
    .local v7, "e":Ljava/lang/Exception;
    if-eqz v6, :cond_3

    .line 1945
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v9, v8

    .end local v8    # "mCountryName":Ljava/lang/String;
    .restart local v9    # "mCountryName":Ljava/lang/String;
    goto :goto_0

    .line 1944
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v9    # "mCountryName":Ljava/lang/String;
    .restart local v8    # "mCountryName":Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 1945
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public getDaemonDivision(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 1982
    const/4 v8, 0x0

    .line 1983
    .local v8, "result":Ljava/lang/String;
    if-nez p1, :cond_0

    move-object v9, v8

    .line 2017
    .end local v8    # "result":Ljava/lang/String;
    .local v9, "result":Ljava/lang/String;
    :goto_0
    return-object v9

    .line 1987
    .end local v9    # "result":Ljava/lang/String;
    .restart local v8    # "result":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1988
    .local v0, "cp":Landroid/content/ContentResolver;
    if-eqz v0, :cond_2

    .line 1989
    const/4 v6, 0x0

    .line 1991
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->ACCU_SETTING_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "DAEMON_DIVISION_CHECK"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1994
    if-eqz v6, :cond_1

    .line 1995
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 1997
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .line 2010
    :cond_1
    :goto_1
    if-eqz v6, :cond_2

    .line 2011
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2016
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_2
    :goto_2
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDaemonDivisionCheck result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v8

    .line 2017
    .end local v8    # "result":Ljava/lang/String;
    .restart local v9    # "result":Ljava/lang/String;
    goto :goto_0

    .line 1998
    .end local v9    # "result":Ljava/lang/String;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "result":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 1999
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2003
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 2004
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    :try_start_3
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "occur IllegalArgumentException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2005
    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2010
    if-eqz v6, :cond_2

    .line 2011
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 2006
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v7

    .line 2007
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_4
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "occur SQLiteException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2008
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2010
    if-eqz v6, :cond_2

    .line 2011
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 2010
    .end local v7    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_3

    .line 2011
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method public getHighTemperature()F
    .locals 9

    .prologue
    .line 1800
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    .line 1801
    .local v6, "HighTemperature":Ljava/lang/Float;
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 1802
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1825
    :cond_0
    :goto_0
    return v0

    .line 1805
    :cond_1
    const/4 v7, 0x0

    .line 1807
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_2

    .line 1808
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->WEATHERINFO_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "TODAY_HIGH_TEMP"

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->CITYID_CURRENT_LOCATION_SEC:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1811
    if-eqz v7, :cond_2

    .line 1812
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1813
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 1820
    :cond_2
    if-eqz v7, :cond_3

    .line 1821
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1825
    :cond_3
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    .line 1817
    :catch_0
    move-exception v8

    .line 1818
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 1820
    if-eqz v7, :cond_0

    .line 1821
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1820
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 1821
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public getHourAndMin(Ljava/lang/String;)[I
    .locals 8
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 2930
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 2960
    :cond_0
    :goto_0
    return-object v5

    .line 2934
    :cond_1
    const-string v6, ":"

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 2935
    .local v0, "colonIndex":I
    const-string v6, " "

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 2936
    .local v4, "spaceIndex":I
    const/4 v2, 0x0

    .line 2937
    .local v2, "hour":I
    const/4 v3, 0x0

    .line 2939
    .local v3, "min":I
    const/4 v6, -0x1

    if-le v0, v6, :cond_0

    .line 2941
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2942
    const-string v6, "pm"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "PM"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2943
    :cond_2
    add-int/lit8 v2, v2, 0xc

    .line 2946
    :cond_3
    if-le v4, v0, :cond_4

    .line 2947
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 2955
    :goto_1
    const/4 v6, 0x2

    new-array v5, v6, [I

    .line 2956
    .local v5, "timeInt":[I
    aput v2, v5, v7

    .line 2957
    const/4 v6, 0x1

    aput v3, v5, v6

    goto :goto_0

    .line 2949
    .end local v5    # "timeInt":[I
    :cond_4
    add-int/lit8 v6, v0, 0x1

    :try_start_1
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    goto :goto_1

    .line 2951
    :catch_0
    move-exception v1

    .line 2952
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method getImageIcon(I)I
    .locals 3
    .param p1, "iconNum"    # I

    .prologue
    .line 2244
    const-string v0, "kweather"

    sget-object v1, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mCPName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2245
    packed-switch p1, :pswitch_data_0

    .line 2306
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_01:I

    .line 2633
    :goto_0
    return v0

    .line 2247
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->checkDayOrNight()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2248
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_01:I

    goto :goto_0

    .line 2250
    :cond_0
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_18:I

    goto :goto_0

    .line 2255
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->checkDayOrNight()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2256
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_02:I

    goto :goto_0

    .line 2258
    :cond_1
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_19:I

    goto :goto_0

    .line 2262
    :pswitch_2
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_03:I

    goto :goto_0

    .line 2264
    :pswitch_3
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_04:I

    goto :goto_0

    .line 2268
    :pswitch_4
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_05:I

    goto :goto_0

    .line 2272
    :pswitch_5
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_06:I

    goto :goto_0

    .line 2274
    :pswitch_6
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_07:I

    goto :goto_0

    .line 2280
    :pswitch_7
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_09:I

    goto :goto_0

    .line 2284
    :pswitch_8
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_11:I

    goto :goto_0

    .line 2290
    :pswitch_9
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_12:I

    goto :goto_0

    .line 2304
    :pswitch_a
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_13:I

    goto :goto_0

    .line 2308
    :cond_2
    const-string v0, "Cmaweather"

    sget-object v1, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mCPName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2309
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "iconNum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2311
    packed-switch p1, :pswitch_data_1

    .line 2372
    :pswitch_b
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_02:I

    goto :goto_0

    .line 2313
    :pswitch_c
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->checkDayOrNightForChina()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2314
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_01:I

    goto :goto_0

    .line 2316
    :cond_3
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_18:I

    goto :goto_0

    .line 2319
    :pswitch_d
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_03:I

    goto :goto_0

    .line 2321
    :pswitch_e
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->checkDayOrNightForChina()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2322
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_02:I

    goto :goto_0

    .line 2324
    :cond_4
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_19:I

    goto :goto_0

    .line 2329
    :pswitch_f
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_09:I

    goto :goto_0

    .line 2332
    :pswitch_10
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_04:I

    goto :goto_0

    .line 2338
    :pswitch_11
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_05:I

    goto/16 :goto_0

    .line 2340
    :pswitch_12
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_06:I

    goto/16 :goto_0

    .line 2342
    :pswitch_13
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_07:I

    goto/16 :goto_0

    .line 2346
    :pswitch_14
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_10:I

    goto/16 :goto_0

    .line 2348
    :pswitch_15
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_11:I

    goto/16 :goto_0

    .line 2352
    :pswitch_16
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_12:I

    goto/16 :goto_0

    .line 2355
    :pswitch_17
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_13:I

    goto/16 :goto_0

    .line 2357
    :pswitch_18
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_14:I

    goto/16 :goto_0

    .line 2359
    :pswitch_19
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_20:I

    goto/16 :goto_0

    .line 2363
    :pswitch_1a
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_21:I

    goto/16 :goto_0

    .line 2368
    :pswitch_1b
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_22:I

    goto/16 :goto_0

    .line 2370
    :pswitch_1c
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2374
    :cond_5
    const-string v0, "weathernewsjp"

    sget-object v1, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mCPName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2375
    sparse-switch p1, :sswitch_data_0

    .line 2561
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_01:I

    goto/16 :goto_0

    .line 2384
    :sswitch_0
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_01:I

    goto/16 :goto_0

    .line 2398
    :sswitch_1
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_02:I

    goto/16 :goto_0

    .line 2403
    :sswitch_2
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_03:I

    goto/16 :goto_0

    .line 2417
    :sswitch_3
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_09:I

    goto/16 :goto_0

    .line 2438
    :sswitch_4
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_06:I

    goto/16 :goto_0

    .line 2458
    :sswitch_5
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_05:I

    goto/16 :goto_0

    .line 2467
    :sswitch_6
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_06:I

    goto/16 :goto_0

    .line 2473
    :sswitch_7
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_05:I

    goto/16 :goto_0

    .line 2485
    :sswitch_8
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_06:I

    goto/16 :goto_0

    .line 2489
    :sswitch_9
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_06:I

    goto/16 :goto_0

    .line 2516
    :sswitch_a
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_10:I

    goto/16 :goto_0

    .line 2522
    :sswitch_b
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_11:I

    goto/16 :goto_0

    .line 2532
    :sswitch_c
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_12:I

    goto/16 :goto_0

    .line 2551
    :sswitch_d
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_13:I

    goto/16 :goto_0

    .line 2554
    :sswitch_e
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_14:I

    goto/16 :goto_0

    .line 2557
    :sswitch_f
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_15:I

    goto/16 :goto_0

    .line 2564
    :cond_6
    packed-switch p1, :pswitch_data_2

    .line 2633
    :pswitch_1d
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_01:I

    goto/16 :goto_0

    .line 2567
    :pswitch_1e
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->checkDayOrNight()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2568
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_01:I

    goto/16 :goto_0

    .line 2570
    :cond_7
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_18:I

    goto/16 :goto_0

    .line 2575
    :pswitch_1f
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->checkDayOrNight()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2576
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_02:I

    goto/16 :goto_0

    .line 2578
    :cond_8
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_19:I

    goto/16 :goto_0

    .line 2584
    :pswitch_20
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_03:I

    goto/16 :goto_0

    .line 2586
    :pswitch_21
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_04:I

    goto/16 :goto_0

    .line 2591
    :pswitch_22
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_05:I

    goto/16 :goto_0

    .line 2593
    :pswitch_23
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_06:I

    goto/16 :goto_0

    .line 2597
    :pswitch_24
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_07:I

    goto/16 :goto_0

    .line 2600
    :pswitch_25
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_08:I

    goto/16 :goto_0

    .line 2602
    :pswitch_26
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_09:I

    goto/16 :goto_0

    .line 2605
    :pswitch_27
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_10:I

    goto/16 :goto_0

    .line 2608
    :pswitch_28
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_11:I

    goto/16 :goto_0

    .line 2612
    :pswitch_29
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_12:I

    goto/16 :goto_0

    .line 2614
    :pswitch_2a
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_13:I

    goto/16 :goto_0

    .line 2618
    :pswitch_2b
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_14:I

    goto/16 :goto_0

    .line 2620
    :pswitch_2c
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_15:I

    goto/16 :goto_0

    .line 2622
    :pswitch_2d
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_16:I

    goto/16 :goto_0

    .line 2624
    :pswitch_2e
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_17:I

    goto/16 :goto_0

    .line 2626
    :pswitch_2f
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_18:I

    goto/16 :goto_0

    .line 2631
    :pswitch_30
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_19:I

    goto/16 :goto_0

    .line 2245
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_6
        :pswitch_3
    .end packed-switch

    .line 2311
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_12
        :pswitch_13
        :pswitch_19
        :pswitch_17
        :pswitch_f
        :pswitch_f
        :pswitch_1a
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_15
        :pswitch_14
        :pswitch_14
        :pswitch_16
        :pswitch_18
        :pswitch_10
        :pswitch_17
        :pswitch_1b
        :pswitch_f
        :pswitch_1a
        :pswitch_1a
        :pswitch_11
        :pswitch_11
        :pswitch_14
        :pswitch_16
        :pswitch_16
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1c
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_10
    .end packed-switch

    .line 2375
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_4
        0x67 -> :sswitch_4
        0x68 -> :sswitch_b
        0x69 -> :sswitch_b
        0x6a -> :sswitch_4
        0x6b -> :sswitch_4
        0x6c -> :sswitch_4
        0x6e -> :sswitch_1
        0x6f -> :sswitch_1
        0x70 -> :sswitch_4
        0x71 -> :sswitch_4
        0x72 -> :sswitch_4
        0x73 -> :sswitch_c
        0x74 -> :sswitch_c
        0x75 -> :sswitch_c
        0x76 -> :sswitch_4
        0x77 -> :sswitch_4
        0x78 -> :sswitch_4
        0x79 -> :sswitch_4
        0x7a -> :sswitch_4
        0x7b -> :sswitch_0
        0x7c -> :sswitch_0
        0x7d -> :sswitch_4
        0x7e -> :sswitch_4
        0x7f -> :sswitch_4
        0x80 -> :sswitch_4
        0x81 -> :sswitch_4
        0x82 -> :sswitch_0
        0x83 -> :sswitch_0
        0x84 -> :sswitch_1
        0x8c -> :sswitch_4
        0xa0 -> :sswitch_b
        0xaa -> :sswitch_b
        0xb5 -> :sswitch_c
        0xc8 -> :sswitch_2
        0xc9 -> :sswitch_1
        0xca -> :sswitch_5
        0xcb -> :sswitch_5
        0xcc -> :sswitch_a
        0xcd -> :sswitch_a
        0xce -> :sswitch_5
        0xcf -> :sswitch_5
        0xd0 -> :sswitch_5
        0xd1 -> :sswitch_2
        0xd2 -> :sswitch_1
        0xd3 -> :sswitch_1
        0xd4 -> :sswitch_5
        0xd5 -> :sswitch_5
        0xd6 -> :sswitch_5
        0xd7 -> :sswitch_a
        0xd8 -> :sswitch_a
        0xd9 -> :sswitch_a
        0xda -> :sswitch_5
        0xdb -> :sswitch_5
        0xdc -> :sswitch_5
        0xdd -> :sswitch_5
        0xde -> :sswitch_5
        0xdf -> :sswitch_1
        0xe0 -> :sswitch_5
        0xe1 -> :sswitch_5
        0xe2 -> :sswitch_5
        0xe3 -> :sswitch_5
        0xe4 -> :sswitch_a
        0xe5 -> :sswitch_a
        0xe6 -> :sswitch_a
        0xe7 -> :sswitch_2
        0xf0 -> :sswitch_5
        0xfa -> :sswitch_a
        0x104 -> :sswitch_a
        0x10e -> :sswitch_a
        0x119 -> :sswitch_a
        0x12c -> :sswitch_3
        0x12d -> :sswitch_6
        0x12e -> :sswitch_7
        0x12f -> :sswitch_d
        0x130 -> :sswitch_3
        0x132 -> :sswitch_3
        0x134 -> :sswitch_3
        0x135 -> :sswitch_d
        0x137 -> :sswitch_6
        0x139 -> :sswitch_7
        0x13a -> :sswitch_d
        0x13b -> :sswitch_d
        0x13c -> :sswitch_6
        0x13d -> :sswitch_7
        0x140 -> :sswitch_6
        0x141 -> :sswitch_7
        0x142 -> :sswitch_d
        0x143 -> :sswitch_6
        0x144 -> :sswitch_6
        0x145 -> :sswitch_6
        0x146 -> :sswitch_d
        0x147 -> :sswitch_d
        0x148 -> :sswitch_3
        0x149 -> :sswitch_3
        0x154 -> :sswitch_a
        0x15e -> :sswitch_3
        0x169 -> :sswitch_c
        0x173 -> :sswitch_a
        0x190 -> :sswitch_a
        0x191 -> :sswitch_c
        0x192 -> :sswitch_a
        0x193 -> :sswitch_d
        0x195 -> :sswitch_a
        0x196 -> :sswitch_a
        0x197 -> :sswitch_a
        0x199 -> :sswitch_d
        0x19b -> :sswitch_c
        0x19d -> :sswitch_a
        0x19e -> :sswitch_d
        0x1a4 -> :sswitch_c
        0x1a5 -> :sswitch_a
        0x1a6 -> :sswitch_d
        0x1a7 -> :sswitch_d
        0x1a8 -> :sswitch_d
        0x1a9 -> :sswitch_a
        0x1aa -> :sswitch_a
        0x1ab -> :sswitch_a
        0x1ae -> :sswitch_e
        0x1c2 -> :sswitch_a
        0x1f4 -> :sswitch_0
        0x226 -> :sswitch_f
        0x228 -> :sswitch_1
        0x229 -> :sswitch_8
        0x22e -> :sswitch_8
        0x232 -> :sswitch_1
        0x233 -> :sswitch_8
        0x238 -> :sswitch_8
        0x23c -> :sswitch_1
        0x23d -> :sswitch_8
        0x246 -> :sswitch_1
        0x247 -> :sswitch_8
        0x258 -> :sswitch_0
        0x352 -> :sswitch_3
        0x353 -> :sswitch_8
        0x355 -> :sswitch_3
        0x356 -> :sswitch_d
        0x357 -> :sswitch_8
        0x35d -> :sswitch_8
        0x35f -> :sswitch_3
        0x360 -> :sswitch_d
        0x361 -> :sswitch_8
        0x367 -> :sswitch_9
        0x369 -> :sswitch_3
        0x36a -> :sswitch_d
        0x371 -> :sswitch_9
        0x373 -> :sswitch_3
        0x374 -> :sswitch_d
    .end sparse-switch

    .line 2564
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_1e
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_1d
        :pswitch_1d
        :pswitch_21
        :pswitch_22
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_28
        :pswitch_29
        :pswitch_29
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_1d
        :pswitch_1d
        :pswitch_2a
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_20
        :pswitch_22
        :pswitch_22
        :pswitch_24
        :pswitch_24
        :pswitch_27
        :pswitch_29
    .end packed-switch
.end method

.method getIntegratedImageIcon(I)I
    .locals 1
    .param p1, "iconNum"    # I

    .prologue
    .line 2639
    packed-switch p1, :pswitch_data_0

    .line 2679
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_02:I

    :goto_0
    return v0

    .line 2641
    :pswitch_0
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_01:I

    goto :goto_0

    .line 2643
    :pswitch_1
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_02:I

    goto :goto_0

    .line 2645
    :pswitch_2
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_03:I

    goto :goto_0

    .line 2647
    :pswitch_3
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_04:I

    goto :goto_0

    .line 2649
    :pswitch_4
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_05:I

    goto :goto_0

    .line 2651
    :pswitch_5
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_06:I

    goto :goto_0

    .line 2653
    :pswitch_6
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_07:I

    goto :goto_0

    .line 2655
    :pswitch_7
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_08:I

    goto :goto_0

    .line 2657
    :pswitch_8
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_09:I

    goto :goto_0

    .line 2659
    :pswitch_9
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_10:I

    goto :goto_0

    .line 2661
    :pswitch_a
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_11:I

    goto :goto_0

    .line 2663
    :pswitch_b
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_12:I

    goto :goto_0

    .line 2665
    :pswitch_c
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_13:I

    goto :goto_0

    .line 2667
    :pswitch_d
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_14:I

    goto :goto_0

    .line 2669
    :pswitch_e
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_15:I

    goto :goto_0

    .line 2671
    :pswitch_f
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_16:I

    goto :goto_0

    .line 2673
    :pswitch_10
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_17:I

    goto :goto_0

    .line 2675
    :pswitch_11
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_18:I

    goto :goto_0

    .line 2677
    :pswitch_12
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_19:I

    goto :goto_0

    .line 2639
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method public getLowTemperature()F
    .locals 9

    .prologue
    .line 1829
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    .line 1830
    .local v8, "mLowTemperature":Ljava/lang/Float;
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 1831
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1854
    :cond_0
    :goto_0
    return v0

    .line 1834
    :cond_1
    const/4 v6, 0x0

    .line 1836
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_2

    .line 1837
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->WEATHERINFO_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "TODAY_LOW_TEMP"

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->CITYID_CURRENT_LOCATION_SEC:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1840
    if-eqz v6, :cond_2

    .line 1841
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1842
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 1849
    :cond_2
    if-eqz v6, :cond_3

    .line 1850
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1854
    :cond_3
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    .line 1846
    :catch_0
    move-exception v7

    .line 1847
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 1849
    if-eqz v6, :cond_0

    .line 1850
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1849
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 1850
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public getTemperature()F
    .locals 9

    .prologue
    .line 1771
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    .line 1772
    .local v8, "mTemperature":Ljava/lang/Float;
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 1773
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1796
    :cond_0
    :goto_0
    return v0

    .line 1776
    :cond_1
    const/4 v6, 0x0

    .line 1778
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_2

    .line 1779
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->WEATHERINFO_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "TODAY_TEMP"

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->CITYID_CURRENT_LOCATION_SEC:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1782
    if-eqz v6, :cond_2

    .line 1783
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1784
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 1791
    :cond_2
    if-eqz v6, :cond_3

    .line 1792
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1796
    :cond_3
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    .line 1788
    :catch_0
    move-exception v7

    .line 1789
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 1791
    if-eqz v6, :cond_0

    .line 1792
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1791
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 1792
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public getTemperatureScale()I
    .locals 10

    .prologue
    .line 1686
    const/4 v8, 0x0

    .line 1687
    .local v8, "mTemperatureScale":I
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    move v9, v8

    .line 1710
    .end local v8    # "mTemperatureScale":I
    .local v9, "mTemperatureScale":I
    :goto_0
    return v9

    .line 1691
    .end local v9    # "mTemperatureScale":I
    .restart local v8    # "mTemperatureScale":I
    :cond_0
    const/4 v6, 0x0

    .line 1693
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_1

    .line 1694
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->WEATHERINFO_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "TEMP_SCALE"

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->CITYID_CURRENT_LOCATION_SEC:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1697
    if-eqz v6, :cond_1

    .line 1698
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1699
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 1706
    :cond_1
    if-eqz v6, :cond_2

    .line 1707
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v9, v8

    .line 1710
    .end local v8    # "mTemperatureScale":I
    .restart local v9    # "mTemperatureScale":I
    goto :goto_0

    .line 1703
    .end local v9    # "mTemperatureScale":I
    .restart local v8    # "mTemperatureScale":I
    :catch_0
    move-exception v7

    .line 1706
    .local v7, "e":Ljava/lang/Exception;
    if-eqz v6, :cond_3

    .line 1707
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v9, v8

    .end local v8    # "mTemperatureScale":I
    .restart local v9    # "mTemperatureScale":I
    goto :goto_0

    .line 1706
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v9    # "mTemperatureScale":I
    .restart local v8    # "mTemperatureScale":I
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 1707
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public getWeatherImage()I
    .locals 11

    .prologue
    .line 1858
    const/4 v8, 0x0

    .line 1859
    .local v8, "iconNum":I
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    move v9, v8

    .line 1891
    .end local v8    # "iconNum":I
    .local v9, "iconNum":I
    :goto_0
    return v9

    .line 1863
    .end local v9    # "iconNum":I
    .restart local v8    # "iconNum":I
    :cond_0
    const/4 v6, 0x0

    .line 1865
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_2

    .line 1866
    const-string v10, "TODAY_ICON_NUM"

    .line 1868
    .local v10, "keyName":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverView;->isLentisMR()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1869
    const-string v10, "WEATHER_ICON_NUM"

    .line 1872
    :cond_1
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->WEATHERINFO_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v10, v2, v3

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->CITYID_CURRENT_LOCATION_SEC:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1876
    if-eqz v6, :cond_2

    .line 1877
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1878
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1879
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1886
    .end local v10    # "keyName":Ljava/lang/String;
    :cond_2
    if-eqz v6, :cond_3

    .line 1887
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v9, v8

    .line 1891
    .end local v8    # "iconNum":I
    .restart local v9    # "iconNum":I
    goto :goto_0

    .line 1883
    .end local v9    # "iconNum":I
    .restart local v8    # "iconNum":I
    :catch_0
    move-exception v7

    .line 1886
    .local v7, "e":Ljava/lang/Exception;
    if-eqz v6, :cond_4

    .line 1887
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    move v9, v8

    .end local v8    # "iconNum":I
    .restart local v9    # "iconNum":I
    goto :goto_0

    .line 1886
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v9    # "iconNum":I
    .restart local v8    # "iconNum":I
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 1887
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method public getWeatherInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "KeyString"    # Ljava/lang/String;

    .prologue
    .line 2828
    const-string v8, ""

    .line 2829
    .local v8, "mRetString":Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    move-object v9, v8

    .line 2852
    .end local v8    # "mRetString":Ljava/lang/String;
    .local v9, "mRetString":Ljava/lang/String;
    :goto_0
    return-object v9

    .line 2833
    .end local v9    # "mRetString":Ljava/lang/String;
    .restart local v8    # "mRetString":Ljava/lang/String;
    :cond_0
    const/4 v6, 0x0

    .line 2835
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_1

    .line 2836
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->WEATHERINFO_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->CITYID_CURRENT_LOCATION_SEC:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2839
    if-eqz v6, :cond_1

    .line 2840
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2841
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 2848
    :cond_1
    if-eqz v6, :cond_2

    .line 2849
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v9, v8

    .line 2852
    .end local v8    # "mRetString":Ljava/lang/String;
    .restart local v9    # "mRetString":Ljava/lang/String;
    goto :goto_0

    .line 2845
    .end local v9    # "mRetString":Ljava/lang/String;
    .restart local v8    # "mRetString":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 2848
    .local v7, "e":Ljava/lang/Exception;
    if-eqz v6, :cond_3

    .line 2849
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v9, v8

    .end local v8    # "mRetString":Ljava/lang/String;
    .restart local v9    # "mRetString":Ljava/lang/String;
    goto :goto_0

    .line 2848
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v9    # "mRetString":Ljava/lang/String;
    .restart local v8    # "mRetString":Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 2849
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public getWeatherRefreshTime()J
    .locals 12

    .prologue
    .line 1953
    const-wide/16 v8, 0x0

    .line 1954
    .local v8, "mRefreshTime":J
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    move-wide v10, v8

    .line 1978
    .end local v8    # "mRefreshTime":J
    .local v10, "mRefreshTime":J
    :goto_0
    return-wide v10

    .line 1958
    .end local v10    # "mRefreshTime":J
    .restart local v8    # "mRefreshTime":J
    :cond_0
    const/4 v6, 0x0

    .line 1960
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_1

    .line 1961
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->WEATHERINFO_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UPDATE_DATE"

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->CITYID_CURRENT_LOCATION_SEC:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1964
    if-eqz v6, :cond_1

    .line 1965
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1966
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v8

    .line 1973
    :cond_1
    if-eqz v6, :cond_2

    .line 1974
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-wide v10, v8

    .line 1978
    .end local v8    # "mRefreshTime":J
    .restart local v10    # "mRefreshTime":J
    goto :goto_0

    .line 1970
    .end local v10    # "mRefreshTime":J
    .restart local v8    # "mRefreshTime":J
    :catch_0
    move-exception v7

    .line 1973
    .local v7, "e":Ljava/lang/Exception;
    if-eqz v6, :cond_3

    .line 1974
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-wide v10, v8

    .end local v8    # "mRefreshTime":J
    .restart local v10    # "mRefreshTime":J
    goto :goto_0

    .line 1973
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v10    # "mRefreshTime":J
    .restart local v8    # "mRefreshTime":J
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 1974
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public getWeatherString()Ljava/lang/String;
    .locals 10

    .prologue
    .line 1895
    const-string v8, ""

    .line 1896
    .local v8, "mWeather":Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    move-object v9, v8

    .line 1920
    .end local v8    # "mWeather":Ljava/lang/String;
    .local v9, "mWeather":Ljava/lang/String;
    :goto_0
    return-object v9

    .line 1900
    .end local v9    # "mWeather":Ljava/lang/String;
    .restart local v8    # "mWeather":Ljava/lang/String;
    :cond_0
    const/4 v6, 0x0

    .line 1902
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_1

    .line 1903
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->WEATHERINFO_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "TODAY_WEATHER_TEXT"

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->CITYID_CURRENT_LOCATION_SEC:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1906
    if-eqz v6, :cond_1

    .line 1907
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1908
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 1915
    :cond_1
    if-eqz v6, :cond_2

    .line 1916
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v9, v8

    .line 1920
    .end local v8    # "mWeather":Ljava/lang/String;
    .restart local v9    # "mWeather":Ljava/lang/String;
    goto :goto_0

    .line 1912
    .end local v9    # "mWeather":Ljava/lang/String;
    .restart local v8    # "mWeather":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 1915
    .local v7, "e":Ljava/lang/Exception;
    if-eqz v6, :cond_3

    .line 1916
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v9, v8

    .end local v8    # "mWeather":Ljava/lang/String;
    .restart local v9    # "mWeather":Ljava/lang/String;
    goto :goto_0

    .line 1915
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v9    # "mWeather":Ljava/lang/String;
    .restart local v8    # "mWeather":Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 1916
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public isChinaLocation(Landroid/content/Context;)Z
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2061
    const-string v6, ""

    .line 2062
    .local v6, "cityname":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 2063
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "isChinaLocation: context is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v9

    .line 2096
    :goto_0
    return v1

    .line 2067
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2069
    .local v0, "cp":Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 2071
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->WEATHERINFO_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "STATE"

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->CITYID_CURRENT_LOCATION_SEC:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2074
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cursor :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2075
    if-eqz v7, :cond_1

    .line 2076
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2077
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 2083
    :cond_1
    if-eqz v7, :cond_2

    .line 2084
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2087
    :cond_2
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cityname :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2089
    if-eqz v6, :cond_3

    const-string v1, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_3
    move v1, v9

    .line 2090
    goto :goto_0

    .line 2080
    :catch_0
    move-exception v8

    .line 2083
    .local v8, "e":Ljava/lang/Exception;
    if-eqz v7, :cond_4

    .line 2084
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    move v1, v9

    goto :goto_0

    .line 2083
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_5

    .line 2084
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1

    .line 2092
    :cond_6
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sec/android/sviewcover/R$string;->china_country_name:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v10

    .line 2093
    goto/16 :goto_0

    :cond_7
    move v1, v9

    .line 2096
    goto/16 :goto_0
.end method

.method public isDay(Ljava/util/TimeZone;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "timeZone"    # Ljava/util/TimeZone;
    .param p2, "sunrise"    # Ljava/lang/String;
    .param p3, "sunset"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2856
    const/4 v0, 0x0

    .line 2857
    .local v0, "cal":Ljava/util/Calendar;
    if-eqz p1, :cond_2

    .line 2858
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 2863
    :goto_0
    const/16 v7, 0xb

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 2864
    .local v2, "hour":I
    const/16 v7, 0xc

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 2865
    .local v3, "minute":I
    invoke-virtual {p0, p2, v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->parseSunrise(Ljava/lang/String;Ljava/util/Calendar;)[I

    move-result-object v1

    .line 2866
    .local v1, "dayTime":[I
    invoke-virtual {p0, p3, v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->parseSunSet(Ljava/lang/String;Ljava/util/Calendar;)[I

    move-result-object v4

    .line 2867
    .local v4, "nightTime":[I
    if-eqz v1, :cond_1

    if-eqz v4, :cond_1

    .line 2868
    aget v7, v1, v5

    if-gt v2, v7, :cond_0

    aget v7, v1, v5

    if-ne v2, v7, :cond_1

    aget v7, v1, v6

    if-lt v3, v7, :cond_1

    .line 2869
    :cond_0
    aget v7, v4, v5

    if-gt v2, v7, :cond_1

    aget v7, v4, v5

    if-ne v2, v7, :cond_3

    aget v7, v4, v6

    if-lt v3, v7, :cond_3

    .line 2876
    :cond_1
    :goto_1
    return v5

    .line 2860
    .end local v1    # "dayTime":[I
    .end local v2    # "hour":I
    .end local v3    # "minute":I
    .end local v4    # "nightTime":[I
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    goto :goto_0

    .restart local v1    # "dayTime":[I
    .restart local v2    # "hour":I
    .restart local v3    # "minute":I
    .restart local v4    # "nightTime":[I
    :cond_3
    move v5, v6

    .line 2872
    goto :goto_1
.end method

.method public isWeatherWidgetEnabled(Landroid/content/Context;)Z
    .locals 11
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 2021
    const/4 v8, 0x0

    .line 2022
    .local v8, "result":I
    if-nez p1, :cond_0

    .line 2057
    :goto_0
    return v10

    .line 2026
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2027
    .local v0, "cp":Landroid/content/ContentResolver;
    if-eqz v0, :cond_2

    .line 2028
    const/4 v6, 0x0

    .line 2030
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->ACCU_SETTING_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "LOCKSCREEN_AND_S_VIEW_COVER"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2033
    if-eqz v6, :cond_1

    .line 2034
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 2036
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    .line 2050
    :cond_1
    :goto_1
    if-eqz v6, :cond_2

    .line 2051
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2056
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_2
    :goto_2
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isWeatherWidgetEnabled result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2057
    if-eqz v8, :cond_4

    move v1, v9

    :goto_3
    move v10, v1

    goto :goto_0

    .line 2037
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 2038
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2043
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 2044
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    :try_start_3
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "occur IllegalArgumentException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2045
    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2050
    if-eqz v6, :cond_2

    .line 2051
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 2046
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v7

    .line 2047
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_4
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "occur SQLiteException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2048
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2050
    if-eqz v6, :cond_2

    .line 2051
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 2050
    .end local v7    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_3

    .line 2051
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1

    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_4
    move v1, v10

    .line 2057
    goto :goto_3
.end method

.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 2723
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2724
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2725
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_additional_weather"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2727
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_show_info"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2729
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_additional_info"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2731
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "emergency_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2733
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "kids_home_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2735
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Weather onAttachedToWindow"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2737
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->updateWeatherEnabledStatus()V

    .line 2739
    iget-boolean v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mIsWeather:Z

    if-eqz v1, :cond_0

    .line 2740
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->ACTION_CURRENT_LOCATION_WEATHER_DATA:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2741
    .local v0, "mIntent":Landroid/content/Intent;
    const-string v1, "START"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2742
    const-string v1, "PACKAGE"

    const-string v2, "com.sec.android.sviewcover"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2743
    const-string v1, "CP"

    sget-object v2, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mCPName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2744
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2746
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->updateWeatherInfoSec()V

    .line 2748
    .end local v0    # "mIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 2752
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2753
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2754
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 2685
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2686
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_contextual_holder:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherWidget:Landroid/view/View;

    .line 2687
    sget v0, Lcom/sec/android/sviewcover/R$id;->weather_icon:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherIcon:Landroid/widget/ImageView;

    .line 2688
    sget v0, Lcom/sec/android/sviewcover/R$id;->temporature:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherContainer:Landroid/widget/LinearLayout;

    .line 2689
    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_weather_temp:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherTemp:Landroid/widget/TextView;

    .line 2690
    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_weather_unit:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherUnit:Landroid/widget/ImageView;

    .line 2693
    sget v0, Lcom/sec/android/sviewcover/R$id;->temporature_high_low:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherContainerHighLow:Landroid/widget/LinearLayout;

    .line 2694
    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_weather_temp_high:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherTempHigh:Landroid/widget/TextView;

    .line 2695
    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_weather_unit_high:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherUnitHigh:Landroid/widget/ImageView;

    .line 2696
    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_weather_divider:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mDivider:Landroid/widget/ImageView;

    .line 2697
    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_weather_temp_low:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherTempLow:Landroid/widget/TextView;

    .line 2698
    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_weather_unit_low:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherUnitLow:Landroid/widget/ImageView;

    .line 2701
    return-void
.end method

.method public parseSunSet(Ljava/lang/String;Ljava/util/Calendar;)[I
    .locals 7
    .param p1, "sunset"    # Ljava/lang/String;
    .param p2, "cal"    # Ljava/util/Calendar;

    .prologue
    const/16 v6, 0x15

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2906
    invoke-virtual {p2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 2907
    .local v0, "month":I
    const/4 v1, 0x0

    .line 2908
    .local v1, "nightTime":[I
    invoke-virtual {p0, p1}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->getHourAndMin(Ljava/lang/String;)[I

    move-result-object v1

    .line 2909
    if-eqz v1, :cond_2

    .line 2911
    aget v2, v1, v4

    if-ge v2, v6, :cond_0

    aget v2, v1, v4

    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    .line 2912
    :cond_0
    aput v6, v1, v4

    .line 2913
    aput v4, v1, v5

    .line 2925
    :cond_1
    :goto_0
    return-object v1

    .line 2916
    :cond_2
    new-array v1, v3, [I

    .line 2917
    const/4 v2, 0x3

    if-lt v0, v2, :cond_3

    const/16 v2, 0xa

    if-ge v0, v2, :cond_3

    .line 2918
    const/16 v2, 0x13

    aput v2, v1, v4

    .line 2922
    :goto_1
    aput v4, v1, v5

    goto :goto_0

    .line 2920
    :cond_3
    const/16 v2, 0x12

    aput v2, v1, v4

    goto :goto_1
.end method

.method public parseSunrise(Ljava/lang/String;Ljava/util/Calendar;)[I
    .locals 7
    .param p1, "sunrise"    # Ljava/lang/String;
    .param p2, "cal"    # Ljava/util/Calendar;

    .prologue
    const/4 v6, 0x4

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2882
    invoke-virtual {p2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 2883
    .local v1, "month":I
    const/4 v0, 0x0

    .line 2884
    .local v0, "dayTime":[I
    invoke-virtual {p0, p1}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->getHourAndMin(Ljava/lang/String;)[I

    move-result-object v0

    .line 2885
    if-eqz v0, :cond_2

    .line 2887
    aget v2, v0, v4

    if-lt v2, v6, :cond_0

    aget v2, v0, v4

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 2888
    :cond_0
    aput v6, v0, v4

    .line 2889
    aput v4, v0, v5

    .line 2900
    :cond_1
    :goto_0
    return-object v0

    .line 2892
    :cond_2
    new-array v0, v3, [I

    .line 2893
    const/4 v2, 0x3

    if-lt v1, v2, :cond_3

    const/16 v2, 0xa

    if-ge v1, v2, :cond_3

    .line 2894
    const/4 v2, 0x6

    aput v2, v0, v4

    .line 2898
    :goto_1
    aput v4, v0, v5

    goto :goto_0

    .line 2896
    :cond_3
    const/4 v2, 0x7

    aput v2, v0, v4

    goto :goto_1
.end method

.method updateWeatherInfoSec()V
    .locals 19

    .prologue
    .line 2100
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherWidget:Landroid/view/View;

    if-nez v15, :cond_1

    .line 2241
    :cond_0
    :goto_0
    return-void

    .line 2104
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->getCityId()Ljava/lang/String;

    move-result-object v1

    .line 2105
    .local v1, "cityId":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "cityId="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2106
    if-eqz v1, :cond_f

    const-string v15, ""

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_f

    .line 2110
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->getWeatherImage()I

    move-result v8

    .line 2112
    .local v8, "iconNum":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherIcon:Landroid/widget/ImageView;

    if-eqz v15, :cond_2

    .line 2113
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverView;->isLentisMR()Z

    move-result v15

    if-eqz v15, :cond_9

    .line 2114
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherIcon:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->getIntegratedImageIcon(I)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2121
    :cond_2
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->getCityName()Ljava/lang/String;

    move-result-object v2

    .line 2122
    .local v2, "currentCityName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherCity:Landroid/widget/TextView;

    if-eqz v15, :cond_3

    .line 2123
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherCity:Landroid/widget/TextView;

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2127
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->getWeatherString()Ljava/lang/String;

    move-result-object v5

    .line 2128
    .local v5, "currentWeatherText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherStatus:Landroid/widget/TextView;

    if-eqz v15, :cond_4

    .line 2129
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherStatus:Landroid/widget/TextView;

    invoke-virtual {v15, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2132
    :cond_4
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverView;->isChinaFeature()Z

    move-result v15

    if-eqz v15, :cond_c

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->isChinaLocation(Landroid/content/Context;)Z

    move-result v15

    if-nez v15, :cond_c

    .line 2134
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->getHighTemperature()F

    move-result v6

    .line 2135
    .local v6, "highTemp":F
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->getLowTemperature()F

    move-result v9

    .line 2136
    .local v9, "lowTemp":F
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->getValidTemp(F)Ljava/lang/String;

    move-result-object v7

    .line 2137
    .local v7, "highTempString":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->getValidTemp(F)Ljava/lang/String;

    move-result-object v10

    .line 2139
    .local v10, "lowTempString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherContainer:Landroid/widget/LinearLayout;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2140
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherContainerHighLow:Landroid/widget/LinearLayout;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2141
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherWidget:Landroid/view/View;

    new-instance v16, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v17, -0x2

    const/16 v18, -0x2

    invoke-direct/range {v16 .. v18}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2144
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lcom/sec/android/sviewcover/R$dimen;->sview_cover_weather_image_size_changed:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    float-to-int v14, v15

    .line 2146
    .local v14, "width":I
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v11, v14, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2147
    .local v11, "par":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lcom/sec/android/sviewcover/R$dimen;->sview_cover_weather_image_margin_top:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    float-to-int v15, v15

    iput v15, v11, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 2149
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lcom/sec/android/sviewcover/R$dimen;->sview_cover_weather_image_margin_right:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    float-to-int v15, v15

    iput v15, v11, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 2151
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherIcon:Landroid/widget/ImageView;

    if-eqz v15, :cond_5

    .line 2152
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherIcon:Landroid/widget/ImageView;

    invoke-virtual {v15, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2154
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherTempHigh:Landroid/widget/TextView;

    if-eqz v15, :cond_7

    .line 2155
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherTempHigh:Landroid/widget/TextView;

    invoke-virtual {v15, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2157
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->getTemperatureScale()I

    move-result v12

    .line 2158
    .local v12, "tempScale":I
    const-string v13, ""

    .line 2159
    .local v13, "unit":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherUnitHigh:Landroid/widget/ImageView;

    if-eqz v15, :cond_6

    .line 2160
    if-nez v12, :cond_a

    .line 2161
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherUnitHigh:Landroid/widget/ImageView;

    sget v16, Lcom/sec/android/sviewcover/R$drawable;->weather_events_f:I

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2162
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    sget v17, Lcom/sec/android/sviewcover/R$string;->zzz_tts_temperature:I

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    sget v17, Lcom/sec/android/sviewcover/R$string;->zzz_tts_temp_fahrenheit:I

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2174
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherContainerHighLow:Landroid/widget/LinearLayout;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2176
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "cityId="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " highTemp="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " tempScale="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " iconNum="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2180
    .end local v12    # "tempScale":I
    .end local v13    # "unit":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherTempLow:Landroid/widget/TextView;

    if-eqz v15, :cond_0

    .line 2181
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mDivider:Landroid/widget/ImageView;

    sget v16, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_slash:I

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2182
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherTempLow:Landroid/widget/TextView;

    invoke-virtual {v15, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2184
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->getTemperatureScale()I

    move-result v12

    .line 2186
    .restart local v12    # "tempScale":I
    const-string v13, ""

    .line 2187
    .restart local v13    # "unit":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherUnitLow:Landroid/widget/ImageView;

    if-eqz v15, :cond_8

    .line 2188
    if-nez v12, :cond_b

    .line 2189
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherUnitLow:Landroid/widget/ImageView;

    sget v16, Lcom/sec/android/sviewcover/R$drawable;->weather_events_f:I

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2190
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    sget v17, Lcom/sec/android/sviewcover/R$string;->zzz_tts_temperature:I

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    sget v17, Lcom/sec/android/sviewcover/R$string;->zzz_tts_temp_fahrenheit:I

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2202
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherContainerHighLow:Landroid/widget/LinearLayout;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v9}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2204
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "cityId="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " lowTemp="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " tempScale="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " iconNum="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2116
    .end local v2    # "currentCityName":Ljava/lang/String;
    .end local v5    # "currentWeatherText":Ljava/lang/String;
    .end local v6    # "highTemp":F
    .end local v7    # "highTempString":Ljava/lang/String;
    .end local v9    # "lowTemp":F
    .end local v10    # "lowTempString":Ljava/lang/String;
    .end local v11    # "par":Landroid/widget/LinearLayout$LayoutParams;
    .end local v12    # "tempScale":I
    .end local v13    # "unit":Ljava/lang/String;
    .end local v14    # "width":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherIcon:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->getImageIcon(I)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 2167
    .restart local v2    # "currentCityName":Ljava/lang/String;
    .restart local v5    # "currentWeatherText":Ljava/lang/String;
    .restart local v6    # "highTemp":F
    .restart local v7    # "highTempString":Ljava/lang/String;
    .restart local v9    # "lowTemp":F
    .restart local v10    # "lowTempString":Ljava/lang/String;
    .restart local v11    # "par":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v12    # "tempScale":I
    .restart local v13    # "unit":Ljava/lang/String;
    .restart local v14    # "width":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherUnitHigh:Landroid/widget/ImageView;

    sget v16, Lcom/sec/android/sviewcover/R$drawable;->weather_events_c:I

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2168
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    sget v17, Lcom/sec/android/sviewcover/R$string;->zzz_tts_temperature:I

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    sget v17, Lcom/sec/android/sviewcover/R$string;->zzz_tts_temp_celsius:I

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_2

    .line 2195
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherUnitLow:Landroid/widget/ImageView;

    sget v16, Lcom/sec/android/sviewcover/R$drawable;->weather_events_c:I

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2196
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    sget v17, Lcom/sec/android/sviewcover/R$string;->zzz_tts_temperature:I

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    sget v17, Lcom/sec/android/sviewcover/R$string;->zzz_tts_temp_celsius:I

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_3

    .line 2209
    .end local v6    # "highTemp":F
    .end local v7    # "highTempString":Ljava/lang/String;
    .end local v9    # "lowTemp":F
    .end local v10    # "lowTempString":Ljava/lang/String;
    .end local v11    # "par":Landroid/widget/LinearLayout$LayoutParams;
    .end local v12    # "tempScale":I
    .end local v13    # "unit":Ljava/lang/String;
    .end local v14    # "width":I
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->getTemperature()F

    move-result v15

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 2210
    .local v3, "currentTemp":I
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 2211
    .local v4, "currentTempString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherTemp:Landroid/widget/TextView;

    if-eqz v15, :cond_0

    .line 2212
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherTemp:Landroid/widget/TextView;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2214
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->getTemperatureScale()I

    move-result v12

    .line 2216
    .restart local v12    # "tempScale":I
    const-string v13, ""

    .line 2217
    .restart local v13    # "unit":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherUnit:Landroid/widget/ImageView;

    if-eqz v15, :cond_d

    .line 2218
    if-nez v12, :cond_e

    .line 2219
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherUnit:Landroid/widget/ImageView;

    sget v16, Lcom/sec/android/sviewcover/R$drawable;->weather_events_f:I

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2220
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    sget v17, Lcom/sec/android/sviewcover/R$string;->zzz_tts_temperature:I

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    sget v17, Lcom/sec/android/sviewcover/R$string;->zzz_tts_temp_fahrenheit:I

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2232
    :cond_d
    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherContainer:Landroid/widget/LinearLayout;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2233
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "cityId="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " currentTemp="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " tempScale="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " iconNum="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2225
    :cond_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherUnit:Landroid/widget/ImageView;

    sget v16, Lcom/sec/android/sviewcover/R$drawable;->weather_events_c:I

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2226
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    sget v17, Lcom/sec/android/sviewcover/R$string;->zzz_tts_temperature:I

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    sget v17, Lcom/sec/android/sviewcover/R$string;->zzz_tts_temp_celsius:I

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 2238
    .end local v2    # "currentCityName":Ljava/lang/String;
    .end local v3    # "currentTemp":I
    .end local v4    # "currentTempString":Ljava/lang/String;
    .end local v5    # "currentWeatherText":Ljava/lang/String;
    .end local v8    # "iconNum":I
    .end local v12    # "tempScale":I
    .end local v13    # "unit":Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherWidget:Landroid/view/View;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    .line 2239
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "cityId="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
