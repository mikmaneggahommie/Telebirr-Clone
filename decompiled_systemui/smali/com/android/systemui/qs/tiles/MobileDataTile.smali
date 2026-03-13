.class public Lcom/android/systemui/qs/tiles/MobileDataTile;
.super Lcom/android/systemui/qs/QSTile;
.source "MobileDataTile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$MultiState;",
        ">;"
    }
.end annotation


# static fields
.field private static final DATA_OFF_ALERT:I = 0x0

.field private static final DATA_ON_ALERT:I = 0x1

.field private static final DATA_ROAMING_ON_ALERT:I = 0x2

.field private static final DB_MOBILE_DATA:Ljava/lang/String; = "mobile_data"

.field private static final DB_ROAMING_MOBILE_DATA:Ljava/lang/String; = "data_roaming"

.field private static final KNOX_MODE_USER_ID:I = 0x64

.field private static final MOBILE_DATA_WARNING_CHECKED:Ljava/lang/String; = "quickpanel_mobiledata_checked"

.field private static final TAG:Ljava/lang/String; = "MobileDataTile"

.field private static toastAlert:Landroid/widget/Toast;


# instance fields
.field private isAirPlaneMode:Z

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mErrorMsgResId:I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mMobileData:Z

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mSettingAirplane:Lcom/android/systemui/qs/GlobalSetting;

.field private final mSettingMobile:Lcom/android/systemui/qs/GlobalSetting;

.field private final mSettingMobileDataWarningCheck:Lcom/android/systemui/qs/SecureSetting;

.field private final mSettingRoamingMobile:Lcom/android/systemui/qs/GlobalSetting;

.field private mSettingToddlerMode:Lcom/android/systemui/qs/ToddlerModeSetting;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 4
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 110
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mErrorMsgResId:I

    .line 262
    new-instance v0, Lcom/android/systemui/qs/tiles/MobileDataTile$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$5;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1072
    new-instance v0, Lcom/android/systemui/qs/tiles/MobileDataTile$19;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$19;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 115
    new-instance v0, Lcom/android/systemui/qs/tiles/MobileDataTile$1;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v3, "airplane_mode_on"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/MobileDataTile$1;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingAirplane:Lcom/android/systemui/qs/GlobalSetting;

    .line 123
    new-instance v0, Lcom/android/systemui/qs/tiles/MobileDataTile$2;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v3, "mobile_data"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/MobileDataTile$2;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingMobile:Lcom/android/systemui/qs/GlobalSetting;

    .line 137
    new-instance v0, Lcom/android/systemui/qs/tiles/MobileDataTile$3;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v3, "data_roaming"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/MobileDataTile$3;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingRoamingMobile:Lcom/android/systemui/qs/GlobalSetting;

    .line 147
    new-instance v0, Lcom/android/systemui/qs/tiles/MobileDataTile$4;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v3, "quickpanel_mobiledata_checked"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/MobileDataTile$4;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingMobileDataWarningCheck:Lcom/android/systemui/qs/SecureSetting;

    .line 153
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mSupportToddlerMode:Z

    if-eqz v0, :cond_0

    .line 154
    new-instance v0, Lcom/android/systemui/qs/ToddlerModeSetting;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/qs/ToddlerModeSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingToddlerMode:Lcom/android/systemui/qs/ToddlerModeSetting;

    .line 155
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingToddlerMode:Lcom/android/systemui/qs/ToddlerModeSetting;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/ToddlerModeSetting;->setListening(Z)V

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->toastAlert:Landroid/widget/Toast;

    .line 160
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->init()V

    .line 161
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/qs/tiles/MobileDataTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/MobileDataTile;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->isAirPlaneMode:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/MobileDataTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/MobileDataTile;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isDataRoaming()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/tiles/MobileDataTile;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/MobileDataTile;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/systemui/qs/tiles/MobileDataTile;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/MobileDataTile;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/tiles/MobileDataTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/MobileDataTile;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->onDisplayMobileDataOnAlert()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/tiles/MobileDataTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/MobileDataTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/tiles/MobileDataTile;)Lcom/android/systemui/qs/SecureSetting;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/MobileDataTile;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingMobileDataWarningCheck:Lcom/android/systemui/qs/SecureSetting;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/qs/tiles/MobileDataTile;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/MobileDataTile;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->setMobileDataEnabled(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/MobileDataTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/MobileDataTile;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mMobileData:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/qs/tiles/MobileDataTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/MobileDataTile;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mMobileData:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/MobileDataTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/MobileDataTile;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->updateStatus()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/MobileDataTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/MobileDataTile;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/MobileDataTile;)Lcom/android/systemui/qs/GlobalSetting;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/MobileDataTile;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingAirplane:Lcom/android/systemui/qs/GlobalSetting;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/MobileDataTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/MobileDataTile;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->getMobileData()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/MobileDataTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/MobileDataTile;

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isMSim()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/MobileDataTile;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/MobileDataTile;

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->getReadySimCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/tiles/MobileDataTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/MobileDataTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method private getAppNameByPID(I)Ljava/lang/String;
    .locals 12
    .param p1, "pid"    # I

    .prologue
    .line 1020
    const-string v6, ""

    .line 1021
    .local v6, "processName":Ljava/lang/String;
    const-string v2, ""

    .line 1022
    .local v2, "appLabel":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const-string v10, "activity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 1024
    .local v1, "am":Landroid/app/ActivityManager;
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v8

    .line 1025
    .local v8, "runningAppProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1027
    .local v7, "runningAppProcessInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :try_start_0
    iget v9, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v9, p1, :cond_0

    .line 1029
    iget-object v6, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 1031
    iget-object v9, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 1033
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v9, 0x0

    :try_start_1
    invoke-virtual {v5, v6, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1037
    :goto_1
    :try_start_2
    const-string v9, "MobileDataTile"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " getAppNameByPID :processName  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", appLabel "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1039
    .end local v5    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v3

    .line 1040
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1034
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v5    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v3

    .line 1035
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 1043
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v7    # "runningAppProcessInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    return-object v2
.end method

.method private getMobileData()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 391
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 392
    .local v0, "SimState":I
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isMSim()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 393
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v3, :cond_6

    .line 396
    const/4 v3, 0x3

    invoke-static {v3}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultSubscriptionId(I)I

    move-result v2

    .line 397
    .local v2, "subId":I
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 398
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v1

    .line 403
    .local v1, "ret":Z
    :goto_0
    const-string v3, "MobileDataTile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MultiSim getMobileData() ret="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " subid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    .end local v1    # "ret":Z
    .end local v2    # "subId":I
    :goto_1
    return v1

    .line 400
    .restart local v2    # "subId":I
    :cond_0
    invoke-static {v4}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultSubscriptionId(I)I

    move-result v2

    .line 401
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getDataEnabled(I)Z

    move-result v1

    .restart local v1    # "ret":Z
    goto :goto_0

    .line 406
    .end local v1    # "ret":Z
    .end local v2    # "subId":I
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isDataRoaming()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 407
    const-string v5, "MobileDataTile"

    const-string v6, "getMobileData : isDataRoaming !! "

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingRoamingMobile:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v5}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v5

    if-eqz v5, :cond_2

    :goto_2
    move v1, v3

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_2

    .line 410
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v5, :cond_6

    if-eqz v0, :cond_4

    if-ne v0, v3, :cond_5

    :cond_4
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v3

    const-string v5, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_SIM_CHECK"

    invoke-virtual {v3, v5}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 413
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    goto :goto_1

    :cond_6
    move v1, v4

    .line 416
    goto :goto_1
.end method

.method private handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;

    .prologue
    const v1, 0x7f0206b2

    .line 245
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v0, :cond_0

    .line 246
    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 260
    :goto_0
    return-void

    .line 248
    :cond_0
    iget v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 250
    :pswitch_0
    const v0, 0x7f0206b3

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 253
    :pswitch_1
    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 256
    :pswitch_2
    const v0, 0x7f0206b1

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 248
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private hasGSM()Z
    .locals 5

    .prologue
    .line 1178
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1179
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x1

    .line 1181
    .local v1, "hasGsm":Z
    :try_start_0
    const-string v3, "com.google.android.gms"

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1187
    :goto_0
    return v1

    .line 1182
    :catch_0
    move-exception v0

    .line 1183
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    .line 1184
    const-string v3, "MobileDataTile"

    const-string v4, "package GSM not found"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isAvailableMccmnc()Z
    .locals 3

    .prologue
    .line 431
    const-string v1, "gsm.sim.operator.numeric"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 432
    .local v0, "mccmnc":Ljava/lang/String;
    const-string v1, "43235"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "45001"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 435
    :cond_0
    const/4 v1, 0x1

    .line 437
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isDataRoaming()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1047
    const/4 v1, 0x0

    .line 1048
    .local v1, "isOversea":Z
    const-string v2, "ril.currentplmn"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1050
    .local v0, "currentPlmn":Ljava/lang/String;
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseDataRoamingDB:Z

    if-nez v2, :cond_1

    .line 1069
    :cond_0
    :goto_0
    return v3

    .line 1054
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v2, :cond_2

    .line 1055
    const-string v2, "MobileDataTile"

    const-string v4, "isDataRoaming : mTelephonyManager null "

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_0

    .line 1060
    :cond_2
    if-nez v0, :cond_3

    .line 1061
    const-string v2, "MobileDataTile"

    const-string v4, "isDataRoaming : currentPlmn null "

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1065
    :cond_3
    const-string v2, "oversea"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1067
    const-string v2, "MobileDataTile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDataRoaming : isNetworkRoaming :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " currentplmn :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " oversea = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    if-nez v1, :cond_4

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    const/4 v2, 0x1

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_5
    move v2, v3

    goto :goto_1
.end method

.method private isSimReady()Z
    .locals 10

    .prologue
    const/16 v9, 0x7d8

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 507
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 508
    .local v0, "SimState":I
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isMSim()Z

    move-result v7

    if-nez v7, :cond_1

    if-eqz v0, :cond_0

    if-ne v0, v5, :cond_1

    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v7

    const-string v8, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_SIM_CHECK"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isMSim()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->getReadySimCount()I

    move-result v7

    if-nez v7, :cond_4

    .line 512
    :cond_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-direct {v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 513
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mUseUimCard:Z

    if-eqz v7, :cond_5

    .line 514
    const v7, 0x7f0b0473

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 515
    const v7, 0x7f0b0474

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 520
    :goto_0
    const v7, 0x104000a

    new-instance v8, Lcom/android/systemui/qs/tiles/MobileDataTile$6;

    invoke-direct {v8, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$6;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 527
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v7}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 529
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    .line 532
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v8, Lcom/android/systemui/qs/tiles/MobileDataTile$7;

    invoke-direct {v8, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$7;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 539
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v7}, Lcom/android/systemui/qs/QSTile$Host;->getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v4

    .line 540
    .local v4, "mKeyguard":Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    if-eqz v4, :cond_3

    .line 541
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v2

    .line 542
    .local v2, "mIsKeyguardOn":Z
    if-eqz v2, :cond_6

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v7

    if-eqz v7, :cond_6

    move v3, v5

    .line 544
    .local v3, "mIsKeyguardSecure":Z
    :goto_1
    if-eqz v2, :cond_8

    .line 545
    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v5, :cond_7

    if-eqz v3, :cond_7

    .line 546
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/Window;->setType(I)V

    .line 556
    .end local v2    # "mIsKeyguardOn":Z
    .end local v3    # "mIsKeyguardSecure":Z
    :cond_3
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    move v5, v6

    .line 559
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v4    # "mKeyguard":Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    :cond_4
    return v5

    .line 517
    .restart local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_5
    const v7, 0x7f0b0471

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 518
    const v7, 0x7f0b0472

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .restart local v2    # "mIsKeyguardOn":Z
    .restart local v4    # "mKeyguard":Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    :cond_6
    move v3, v6

    .line 542
    goto :goto_1

    .line 549
    .restart local v3    # "mIsKeyguardSecure":Z
    :cond_7
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v7, 0x7d9

    invoke-virtual {v5, v7}, Landroid/view/Window;->setType(I)V

    goto :goto_2

    .line 553
    :cond_8
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/Window;->setType(I)V

    goto :goto_2
.end method

.method private isVoiceCapable()Z
    .locals 3

    .prologue
    .line 627
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 629
    .local v0, "mgr":Landroid/telephony/TelephonyManager;
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

.method private isVolteEnabled()Z
    .locals 9

    .prologue
    const/16 v8, 0x5d

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1005
    const/4 v0, 0x0

    .line 1006
    .local v0, "isVolteProvisioned":Z
    const/4 v6, 0x7

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-static {v6, v7}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    .line 1007
    .local v1, "mImsInterfaceForGeneral":Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;
    if-eqz v1, :cond_0

    .line 1008
    new-array v2, v4, [I

    aput v8, v2, v5

    .line 1009
    .local v2, "reqFields":[I
    invoke-interface {v1, v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->getIMSSettingValues([I)Landroid/util/SparseArray;

    move-result-object v3

    .line 1010
    .local v3, "result":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const-string v6, "1"

    invoke-virtual {v3, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1011
    const/4 v0, 0x1

    .line 1014
    .end local v2    # "reqFields":[I
    .end local v3    # "result":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_0
    if-eqz v0, :cond_1

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->isServiceAvailable(ILandroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    :goto_0
    return v4

    :cond_1
    move v4, v5

    goto :goto_0
.end method

.method private onCTCDisplayMobileDataOnAlert()V
    .locals 7

    .prologue
    const/16 v6, 0x7d8

    .line 775
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 776
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0b042b

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 778
    const v4, 0x7f0b061f

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 780
    const v4, 0x7f0b0620

    new-instance v5, Lcom/android/systemui/qs/tiles/MobileDataTile$14;

    invoke-direct {v5, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$14;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 786
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v4}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 788
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    .line 790
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v4}, Lcom/android/systemui/qs/QSTile$Host;->getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v3

    .line 791
    .local v3, "mKeyguard":Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    if-eqz v3, :cond_0

    .line 792
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v1

    .line 793
    .local v1, "mIsKeyguardOn":Z
    if-eqz v1, :cond_1

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    .line 795
    .local v2, "mIsKeyguardSecure":Z
    :goto_0
    if-eqz v1, :cond_3

    .line 796
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v4, :cond_2

    if-eqz v2, :cond_2

    .line 797
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/Window;->setType(I)V

    .line 807
    .end local v1    # "mIsKeyguardOn":Z
    .end local v2    # "mIsKeyguardSecure":Z
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 808
    return-void

    .line 793
    .restart local v1    # "mIsKeyguardOn":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 800
    .restart local v2    # "mIsKeyguardSecure":Z
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d9

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    goto :goto_1

    .line 804
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/Window;->setType(I)V

    goto :goto_1
.end method

.method private onDisplayMobileDataAlert(I)V
    .locals 12
    .param p1, "aletType"    # I

    .prologue
    .line 811
    iget-object v9, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const v10, 0x7f0400c6

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 815
    .local v6, "mobileDataAlertView":Landroid/view/View;
    const v9, 0x7f0f03e1

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 817
    .local v8, "textView":Landroid/widget/TextView;
    const v9, 0x7f0f03e2

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 819
    .local v2, "disableAlertCheckBox":Landroid/widget/CheckBox;
    sget-boolean v9, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v9, :cond_0

    .line 820
    iget-object v9, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a03ec

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 821
    .local v7, "padding":I
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 822
    const/16 v9, 0x8

    invoke-virtual {v2, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 825
    .end local v7    # "padding":I
    :cond_0
    move v0, p1

    .line 827
    .local v0, "alert":I
    if-eqz p1, :cond_3

    .line 828
    const/16 v9, 0x8

    invoke-virtual {v2, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 829
    const/4 v9, 0x1

    if-ne p1, v9, :cond_2

    const v9, 0x7f0b028d

    :goto_0
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 851
    :goto_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-direct {v1, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 852
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v9, 0x2

    if-eq p1, v9, :cond_6

    const v9, 0x7f0b0450

    :goto_2
    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 854
    const v9, 0x104000a

    new-instance v10, Lcom/android/systemui/qs/tiles/MobileDataTile$16;

    invoke-direct {v10, p0, v0}, Lcom/android/systemui/qs/tiles/MobileDataTile$16;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;I)V

    invoke-virtual {v1, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 862
    const/high16 v9, 0x1040000

    new-instance v10, Lcom/android/systemui/qs/tiles/MobileDataTile$17;

    invoke-direct {v10, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$17;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    invoke-virtual {v1, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 871
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 873
    iget-object v9, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v9}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 875
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    iput-object v9, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    .line 876
    iget-object v9, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v10, Lcom/android/systemui/qs/tiles/MobileDataTile$18;

    invoke-direct {v10, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$18;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 883
    iget-object v9, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v9}, Lcom/android/systemui/qs/QSTile$Host;->getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v5

    .line 884
    .local v5, "mKeyguard":Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    if-eqz v5, :cond_1

    .line 885
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v3

    .line 886
    .local v3, "mIsKeyguardOn":Z
    if-eqz v3, :cond_7

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v9

    if-eqz v9, :cond_7

    const/4 v4, 0x1

    .line 888
    .local v4, "mIsKeyguardSecure":Z
    :goto_3
    if-eqz v3, :cond_9

    .line 889
    sget-boolean v9, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v9, :cond_8

    if-eqz v4, :cond_8

    .line 890
    iget-object v9, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x7d8

    invoke-virtual {v9, v10}, Landroid/view/Window;->setType(I)V

    .line 900
    .end local v3    # "mIsKeyguardOn":Z
    .end local v4    # "mIsKeyguardSecure":Z
    :cond_1
    :goto_4
    iget-object v9, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    .line 901
    return-void

    .line 829
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v5    # "mKeyguard":Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    :cond_2
    const v9, 0x7f0b028e

    goto :goto_0

    .line 832
    :cond_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_RIL_ForceConnectMMS"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 833
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->hasGSM()Z

    move-result v9

    if-eqz v9, :cond_5

    const v9, 0x7f0b028f

    :goto_5
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 837
    :cond_4
    new-instance v9, Lcom/android/systemui/qs/tiles/MobileDataTile$15;

    invoke-direct {v9, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$15;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    invoke-virtual {v2, v9}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_1

    .line 833
    :cond_5
    const v9, 0x7f0b061e

    goto :goto_5

    .line 852
    .restart local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_6
    const v9, 0x7f0b028b

    goto/16 :goto_2

    .line 886
    .restart local v3    # "mIsKeyguardOn":Z
    .restart local v5    # "mKeyguard":Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    :cond_7
    const/4 v4, 0x0

    goto :goto_3

    .line 893
    .restart local v4    # "mIsKeyguardSecure":Z
    :cond_8
    iget-object v9, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x7d9

    invoke-virtual {v9, v10}, Landroid/view/Window;->setType(I)V

    goto :goto_4

    .line 897
    :cond_9
    iget-object v9, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x7d8

    invoke-virtual {v9, v10}, Landroid/view/Window;->setType(I)V

    goto :goto_4
.end method

.method private onDisplayMobileDataOffAlert()V
    .locals 13

    .prologue
    const v12, 0x7f0b048a

    const/16 v11, 0x7d8

    const/4 v3, 0x0

    .line 633
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const v9, 0x7f0400c6

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 634
    .local v5, "mobileDataAlertView":Landroid/view/View;
    const v8, 0x7f0f03e1

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 636
    .local v7, "textView":Landroid/widget/TextView;
    sget-boolean v8, Lcom/android/systemui/statusbar/Feature;->mMobileDataStringForVZW:Z

    if-eqz v8, :cond_5

    .line 637
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isVoiceCapable()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 638
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isVolteEnabled()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 639
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const v9, 0x7f0b048b

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 653
    :goto_0
    const v8, 0x7f0f03e2

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 656
    .local v1, "disableAlertCheckBox":Landroid/widget/CheckBox;
    sget-boolean v8, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v8, :cond_0

    .line 657
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a03ec

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 658
    .local v6, "padding":I
    invoke-virtual {v7, v3, v3, v3, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 659
    const/16 v8, 0x8

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 662
    .end local v6    # "padding":I
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-direct {v0, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 663
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget-boolean v8, Lcom/android/systemui/statusbar/Feature;->mMobileDataStringForVZW:Z

    if-eqz v8, :cond_7

    .line 664
    const v8, 0x7f0b0489

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 668
    :goto_1
    const v8, 0x104000a

    new-instance v9, Lcom/android/systemui/qs/tiles/MobileDataTile$8;

    invoke-direct {v9, p0, v1}, Lcom/android/systemui/qs/tiles/MobileDataTile$8;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 679
    const/high16 v8, 0x1040000

    new-instance v9, Lcom/android/systemui/qs/tiles/MobileDataTile$9;

    invoke-direct {v9, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$9;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 686
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 688
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v8}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 690
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    .line 691
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v9, Lcom/android/systemui/qs/tiles/MobileDataTile$10;

    invoke-direct {v9, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$10;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 698
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v8}, Lcom/android/systemui/qs/QSTile$Host;->getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v4

    .line 699
    .local v4, "mKeyguard":Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    if-eqz v4, :cond_2

    .line 700
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v2

    .line 701
    .local v2, "mIsKeyguardOn":Z
    if-eqz v2, :cond_1

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v3, 0x1

    .line 703
    .local v3, "mIsKeyguardSecure":Z
    :cond_1
    if-eqz v2, :cond_9

    .line 704
    sget-boolean v8, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v8, :cond_8

    if-eqz v3, :cond_8

    .line 705
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/view/Window;->setType(I)V

    .line 715
    .end local v2    # "mIsKeyguardOn":Z
    .end local v3    # "mIsKeyguardSecure":Z
    :cond_2
    :goto_2
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    .line 716
    return-void

    .line 641
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "disableAlertCheckBox":Landroid/widget/CheckBox;
    .end local v4    # "mKeyguard":Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    :cond_3
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 644
    :cond_4
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 646
    :cond_5
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Setting_EnablePromptPopupWhenActivatingDataConnection"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 648
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const v9, 0x7f0b048f

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 650
    :cond_6
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const v9, 0x7f0b048c

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 666
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .restart local v1    # "disableAlertCheckBox":Landroid/widget/CheckBox;
    :cond_7
    const v8, 0x7f0b042b

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 708
    .restart local v2    # "mIsKeyguardOn":Z
    .restart local v3    # "mIsKeyguardSecure":Z
    .restart local v4    # "mKeyguard":Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    :cond_8
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x7d9

    invoke-virtual {v8, v9}, Landroid/view/Window;->setType(I)V

    goto :goto_2

    .line 712
    :cond_9
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/view/Window;->setType(I)V

    goto :goto_2
.end method

.method private onDisplayMobileDataOnAlert()V
    .locals 7

    .prologue
    const/16 v6, 0x7d8

    .line 719
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 720
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0b042b

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 722
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mIsDomesticModelForKor:Z

    if-eqz v4, :cond_1

    .line 723
    const v4, 0x7f0b048e

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 728
    :goto_0
    const v4, 0x104000a

    new-instance v5, Lcom/android/systemui/qs/tiles/MobileDataTile$11;

    invoke-direct {v5, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$11;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 735
    const/high16 v4, 0x1040000

    new-instance v5, Lcom/android/systemui/qs/tiles/MobileDataTile$12;

    invoke-direct {v5, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$12;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 743
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v4}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 746
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    .line 747
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/android/systemui/qs/tiles/MobileDataTile$13;

    invoke-direct {v5, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$13;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 754
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v4}, Lcom/android/systemui/qs/QSTile$Host;->getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v3

    .line 755
    .local v3, "mKeyguard":Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    if-eqz v3, :cond_0

    .line 756
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v1

    .line 757
    .local v1, "mIsKeyguardOn":Z
    if-eqz v1, :cond_2

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v2, 0x1

    .line 759
    .local v2, "mIsKeyguardSecure":Z
    :goto_1
    if-eqz v1, :cond_4

    .line 760
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v4, :cond_3

    if-eqz v2, :cond_3

    .line 761
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/Window;->setType(I)V

    .line 771
    .end local v1    # "mIsKeyguardOn":Z
    .end local v2    # "mIsKeyguardSecure":Z
    :cond_0
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 772
    return-void

    .line 725
    .end local v3    # "mKeyguard":Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    :cond_1
    const v4, 0x7f0b0497

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 757
    .restart local v1    # "mIsKeyguardOn":Z
    .restart local v3    # "mKeyguard":Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 764
    .restart local v2    # "mIsKeyguardSecure":Z
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d9

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    goto :goto_2

    .line 768
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/Window;->setType(I)V

    goto :goto_2
.end method

.method private setDataRoaming(Z)V
    .locals 4
    .param p1, "on"    # Z

    .prologue
    .line 494
    const-string v1, "MobileDataTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataRoaming() on="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    if-eqz p1, :cond_0

    .line 497
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->refreshState(Ljava/lang/Object;)V

    .line 498
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v1}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 499
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SKT_ROAMING_DATA_POPUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 500
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 504
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 502
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->setRoamingDataEnabled(Z)V

    goto :goto_0
.end method

.method private setMobileData(Z)V
    .locals 8
    .param p1, "on"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 441
    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v5, :cond_0

    move v2, v3

    .line 443
    .local v2, "value":I
    :goto_0
    const-string v5, "MobileDataTile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setMobileData() on="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", value="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v5, :cond_1

    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->mShowMobileDataOffPopup:Z

    if-nez v5, :cond_1

    if-nez p1, :cond_1

    .line 446
    const-string v3, "MobileDataTile"

    const-string v4, "Do not show MobileData OFF popup"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->setMobileDataEnabled(Z)V

    .line 491
    :goto_1
    return-void

    .line 441
    .end local v2    # "value":I
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingMobileDataWarningCheck:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v5}, Lcom/android/systemui/qs/SecureSetting;->getValue()I

    move-result v2

    goto :goto_0

    .line 451
    .restart local v2    # "value":I
    :cond_1
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CTC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 452
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "EverPoppedUp"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 454
    .local v1, "mCheckedRoamingOn":I
    const-string v5, "true"

    const-string v6, "gsm.operator.isroaming"

    const-string v7, "false"

    invoke-static {v6, v3, v7}, Lcom/android/systemui/qs/tiles/MobileDataTile;->getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "true"

    const-string v6, "gsm.operator.isroaming"

    const-string v7, "false"

    invoke-static {v6, v4, v7}, Lcom/android/systemui/qs/tiles/MobileDataTile;->getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_2
    move v0, v4

    .line 456
    .local v0, "isRoaming":Z
    :goto_2
    if-eqz p1, :cond_5

    if-eqz v0, :cond_5

    if-nez v1, :cond_5

    .line 457
    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    .line 458
    const-string v3, "MobileDataTile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCheckedRoamingOn (CTC): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "EverPoppedUp"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 460
    invoke-direct {p0, v4}, Lcom/android/systemui/qs/tiles/MobileDataTile;->setMobileDataEnabled(Z)V

    .line 462
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->onCTCDisplayMobileDataOnAlert()V

    goto :goto_1

    .end local v0    # "isRoaming":Z
    :cond_4
    move v0, v3

    .line 454
    goto :goto_2

    .line 464
    .restart local v0    # "isRoaming":Z
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->setMobileDataEnabled(Z)V

    goto :goto_1

    .line 466
    .end local v0    # "isRoaming":Z
    .end local v1    # "mCheckedRoamingOn":I
    :cond_6
    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->mUseDataRoamingDB:Z

    if-eqz v5, :cond_9

    .line 467
    if-nez p1, :cond_8

    .line 468
    if-nez v2, :cond_7

    .line 469
    invoke-direct {p0, v3}, Lcom/android/systemui/qs/tiles/MobileDataTile;->onDisplayMobileDataAlert(I)V

    goto/16 :goto_1

    .line 471
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->setMobileDataEnabled(Z)V

    goto/16 :goto_1

    .line 473
    :cond_8
    invoke-direct {p0, v4}, Lcom/android/systemui/qs/tiles/MobileDataTile;->onDisplayMobileDataAlert(I)V

    goto/16 :goto_1

    .line 476
    :cond_9
    if-nez v2, :cond_c

    .line 477
    if-eqz p1, :cond_b

    .line 478
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Setting_EnablePromptPopupWhenActivatingDataConnection"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 480
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->onDisplayMobileDataOnAlert()V

    goto/16 :goto_1

    .line 482
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->setMobileDataEnabled(Z)V

    goto/16 :goto_1

    .line 485
    :cond_b
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->onDisplayMobileDataOffAlert()V

    goto/16 :goto_1

    .line 488
    :cond_c
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->setMobileDataEnabled(Z)V

    goto/16 :goto_1
.end method

.method private setMobileDataEnabled(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    .line 563
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mMobileData:Z

    .line 564
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isMSim()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 565
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_2

    .line 566
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->getMobileData()Z

    move-result v2

    if-ne v2, p1, :cond_0

    .line 567
    const-string v2, "MobileDataTile"

    const-string v3, "isMSim: MobileData is same to new one to be updated!"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->getMobileData()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mMobileData:Z

    .line 570
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->updateStatus()V

    .line 608
    :goto_0
    return-void

    .line 575
    :cond_0
    const/4 v2, 0x3

    invoke-static {v2}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultSubscriptionId(I)I

    move-result v0

    .line 577
    .local v0, "subId":I
    const-string v2, "MobileDataTile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isMSim- setMobileDataEnabled :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " subId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 579
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    goto :goto_0

    .line 581
    :cond_1
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultSubscriptionId(I)I

    move-result v0

    .line 582
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    goto :goto_0

    .line 585
    .end local v0    # "subId":I
    :cond_2
    const-string v2, "MobileDataTile"

    const-string v3, "isMSim : setMobileDataEnabled : mTelephonyManager = null"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 587
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isDataRoaming()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 588
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->setRoamingDataEnabled(Z)V

    goto :goto_0

    .line 590
    :cond_4
    const-string v2, "MobileDataTile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMobileDataEnabled() enabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v2, :cond_6

    .line 592
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->getMobileData()Z

    move-result v2

    if-ne v2, p1, :cond_5

    .line 593
    const-string v2, "MobileDataTile"

    const-string v3, "The current MobileData is same to new one to be updated!"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->getMobileData()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mMobileData:Z

    .line 596
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->updateStatus()V

    goto/16 :goto_0

    .line 599
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 601
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    goto/16 :goto_0

    .line 604
    .end local v1    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_6
    const-string v2, "MobileDataTile"

    const-string v3, "setMobileDataEnabled : connectivityManager = null"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private setRoamingDataEnabled(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    const/4 v2, 0x0

    .line 611
    const-string v1, "MobileDataTile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRoamingDataEnabled : DataRoaming set to  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingRoamingMobile:Lcom/android/systemui/qs/GlobalSetting;

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v1}, Lcom/android/systemui/qs/GlobalSetting;->setValue(I)V

    .line 614
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mShowRoamingToastForLGT:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    .line 616
    new-instance v0, Landroid/content/Intent;

    const-string v1, "kr.co.uplus.RESTRICT_BACKGROUND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 617
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "ENABLED"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 618
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 620
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/qs/tiles/MobileDataTile;->toastAlert:Landroid/widget/Toast;

    .line 621
    sget-object v1, Lcom/android/systemui/qs/tiles/MobileDataTile;->toastAlert:Landroid/widget/Toast;

    const v2, 0x7f0b028c

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(I)V

    .line 622
    sget-object v1, Lcom/android/systemui/qs/tiles/MobileDataTile;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 624
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 612
    goto :goto_0
.end method

.method private updateStatus()V
    .locals 2

    .prologue
    const/4 v0, 0x2

    .line 420
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isMSim()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->getReadySimCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 421
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->refreshState(Ljava/lang/Object;)V

    .line 428
    :goto_0
    return-void

    .line 422
    :cond_0
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mSupportMTNSimForTHR:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isAvailableMccmnc()Z

    move-result v1

    if-nez v1, :cond_1

    .line 423
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->refreshState(Ljava/lang/Object;)V

    goto :goto_0

    .line 426
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mMobileData:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->isAirPlaneMode:Z

    if-eqz v1, :cond_3

    :cond_2
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->refreshState(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getActionMessageOnCover()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1164
    iget v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mErrorMsgResId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1165
    const-string v1, ""

    .line 1173
    :goto_0
    return-object v1

    .line 1168
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mErrorMsgResId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1170
    .local v0, "message":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    .line 1171
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1173
    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method public getActionTypeOnCover()I
    .locals 18

    .prologue
    .line 1093
    const/4 v14, 0x1

    new-array v10, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "false"

    aput-object v15, v10, v14

    .line 1094
    .local v10, "selectionArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const-string v15, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v16, "isCellularDataAllowed"

    move-object/from16 v0, v16

    invoke-static {v14, v15, v0, v10}, Lcom/android/systemui/qs/tiles/MobileDataTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 1096
    .local v2, "isCellularDataAllowed":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const-string v15, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v16, "isSettingsChangesAllowed"

    move-object/from16 v0, v16

    invoke-static {v14, v15, v0, v10}, Lcom/android/systemui/qs/tiles/MobileDataTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 1098
    .local v7, "isSettingsChangesAllowed":I
    const/4 v14, -0x1

    if-eq v2, v14, :cond_2

    const/4 v14, -0x1

    if-eq v7, v14, :cond_2

    .line 1099
    if-eqz v2, :cond_0

    if-nez v7, :cond_2

    .line 1100
    :cond_0
    const v14, 0x1040c0f

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mErrorMsgResId:I

    .line 1101
    const/4 v1, 0x3

    .line 1159
    :cond_1
    :goto_0
    return v1

    .line 1106
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->isAirPlaneMode:Z

    if-eqz v14, :cond_3

    .line 1107
    const v14, 0x7f0b0493

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mErrorMsgResId:I

    .line 1108
    const/4 v1, 0x3

    goto :goto_0

    .line 1111
    :cond_3
    sget-boolean v14, Lcom/android/systemui/statusbar/Feature;->mSupportToddlerMode:Z

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingToddlerMode:Lcom/android/systemui/qs/ToddlerModeSetting;

    invoke-virtual {v14}, Lcom/android/systemui/qs/ToddlerModeSetting;->isActivated()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 1112
    const v14, 0x7f0b0494

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mErrorMsgResId:I

    .line 1113
    const/4 v1, 0x3

    goto :goto_0

    .line 1116
    :cond_4
    sget-boolean v14, Lcom/android/systemui/statusbar/Feature;->mMobileDataStringForVZW:Z

    if-eqz v14, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isVolteEnabled()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 1117
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const-string v15, "phone"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/TelephonyManager;

    .line 1119
    .local v13, "telephonyManager":Landroid/telephony/TelephonyManager;
    const-string v14, "volte"

    invoke-virtual {v13, v14}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 1120
    const v14, 0x7f0b0490

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mErrorMsgResId:I

    .line 1121
    const/4 v1, 0x3

    goto :goto_0

    .line 1125
    .end local v13    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_5
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v12

    .line 1126
    .local v12, "simState":I
    if-eqz v12, :cond_6

    const/4 v14, 0x1

    if-ne v12, v14, :cond_9

    :cond_6
    const/4 v5, 0x1

    .line 1127
    .local v5, "isNoSim":Z
    :goto_1
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v14

    const-string v15, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_SIM_CHECK"

    invoke-virtual {v14, v15}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    .line 1128
    .local v8, "isSupportSimCheck":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isMSim()Z

    move-result v4

    .line 1129
    .local v4, "isMultipleSim":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingMobile:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v14}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v14

    if-nez v14, :cond_a

    const/4 v3, 0x1

    .line 1131
    .local v3, "isMobileDataOn":Z
    :goto_2
    if-nez v4, :cond_7

    if-eqz v5, :cond_7

    if-nez v8, :cond_8

    :cond_7
    if-eqz v4, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->getReadySimCount()I

    move-result v14

    if-nez v14, :cond_c

    .line 1132
    :cond_8
    sget-boolean v14, Lcom/android/systemui/statusbar/Feature;->mUseUimCard:Z

    if-eqz v14, :cond_b

    .line 1133
    const v14, 0x7f0b0474

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mErrorMsgResId:I

    .line 1138
    :goto_3
    const/4 v1, 0x3

    goto/16 :goto_0

    .line 1126
    .end local v3    # "isMobileDataOn":Z
    .end local v4    # "isMultipleSim":Z
    .end local v5    # "isNoSim":Z
    .end local v8    # "isSupportSimCheck":Z
    :cond_9
    const/4 v5, 0x0

    goto :goto_1

    .line 1129
    .restart local v4    # "isMultipleSim":Z
    .restart local v5    # "isNoSim":Z
    .restart local v8    # "isSupportSimCheck":Z
    :cond_a
    const/4 v3, 0x0

    goto :goto_2

    .line 1135
    .restart local v3    # "isMobileDataOn":Z
    :cond_b
    const v14, 0x7f0b0472

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mErrorMsgResId:I

    goto :goto_3

    .line 1142
    :cond_c
    const/4 v1, 0x2

    .line 1143
    .local v1, "adjustedCoverAction":I
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v14

    const-string v15, "CTC"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 1144
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "EverPoppedUp"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 1145
    .local v9, "mCheckedRoamingOn":I
    const-string v14, "true"

    const-string v15, "gsm.operator.isroaming"

    const/16 v16, 0x0

    const-string v17, "false"

    invoke-static/range {v15 .. v17}, Lcom/android/systemui/qs/tiles/MobileDataTile;->getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_d

    const-string v14, "true"

    const-string v15, "gsm.operator.isroaming"

    const/16 v16, 0x1

    const-string v17, "false"

    invoke-static/range {v15 .. v17}, Lcom/android/systemui/qs/tiles/MobileDataTile;->getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    :cond_d
    const/4 v6, 0x1

    .line 1148
    .local v6, "isRoaming":Z
    :goto_4
    if-eqz v3, :cond_1

    if-eqz v6, :cond_1

    if-nez v9, :cond_1

    .line 1149
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1145
    .end local v6    # "isRoaming":Z
    :cond_e
    const/4 v6, 0x0

    goto :goto_4

    .line 1152
    .end local v9    # "mCheckedRoamingOn":I
    :cond_f
    sget-boolean v14, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v14, :cond_10

    const/4 v11, 0x1

    .line 1154
    .local v11, "shouldShowMobileDataAlert":Z
    :goto_5
    if-nez v3, :cond_1

    if-eqz v11, :cond_1

    .line 1155
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1152
    .end local v11    # "shouldShowMobileDataAlert":Z
    :cond_10
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingMobileDataWarningCheck:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v14}, Lcom/android/systemui/qs/SecureSetting;->getValue()I

    move-result v14

    if-nez v14, :cond_11

    const/4 v11, 0x1

    goto :goto_5

    :cond_11
    const/4 v11, 0x0

    goto :goto_5
.end method

.method public handleClick()V
    .locals 12

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x0

    const/4 v9, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 310
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isCoveredState()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 311
    const-string v7, "MobileDataTile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleClick : isCoveredState()"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v4, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v4, v4, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v4, p0}, Lcom/android/systemui/qs/QSTile$Host;->onClickQSButtonOnKeyguard(Lcom/android/systemui/qs/QSTile;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/tiles/MobileDataTile;->refreshState(Ljava/lang/Object;)V

    .line 316
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingMobile:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v4}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v4

    if-nez v4, :cond_2

    move v4, v5

    :goto_1
    invoke-direct {p0, v4}, Lcom/android/systemui/qs/tiles/MobileDataTile;->setMobileData(Z)V

    goto :goto_0

    :cond_2
    move v4, v6

    goto :goto_1

    .line 321
    :cond_3
    new-array v2, v5, [Ljava/lang/String;

    const-string v4, "false"

    aput-object v4, v2, v6

    .line 322
    .local v2, "selectionArgs":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const-string v7, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v8, "isCellularDataAllowed"

    invoke-static {v4, v7, v8, v2}, Lcom/android/systemui/qs/tiles/MobileDataTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 324
    .local v0, "isCellularDataAllowed":I
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const-string v7, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v8, "isSettingsChangesAllowed"

    invoke-static {v4, v7, v8, v2}, Lcom/android/systemui/qs/tiles/MobileDataTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 326
    .local v1, "isSettingsChangesAllowed":I
    if-eq v0, v11, :cond_5

    if-eq v1, v11, :cond_5

    .line 327
    if-eqz v0, :cond_4

    if-nez v1, :cond_5

    .line 328
    :cond_4
    const-string v4, "MobileDataTile"

    const-string v5, "onClick(): MobileData state change is not allowed by EDM"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-static {v4, v10, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    sput-object v4, Lcom/android/systemui/qs/tiles/MobileDataTile;->toastAlert:Landroid/widget/Toast;

    .line 330
    sget-object v4, Lcom/android/systemui/qs/tiles/MobileDataTile;->toastAlert:Landroid/widget/Toast;

    const v5, 0x1040c0f

    invoke-virtual {v4, v5}, Landroid/widget/Toast;->setText(I)V

    .line 331
    sget-object v4, Lcom/android/systemui/qs/tiles/MobileDataTile;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 337
    :cond_5
    const-string v7, "MobileDataTile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleClick : "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v4, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v4, v4, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v4, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v4, v4, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-eq v4, v9, :cond_0

    .line 342
    iget-boolean v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->isAirPlaneMode:Z

    if-eqz v4, :cond_6

    .line 345
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-static {v4, v10, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    sput-object v4, Lcom/android/systemui/qs/tiles/MobileDataTile;->toastAlert:Landroid/widget/Toast;

    .line 346
    sget-object v4, Lcom/android/systemui/qs/tiles/MobileDataTile;->toastAlert:Landroid/widget/Toast;

    const v5, 0x7f0b0493

    invoke-virtual {v4, v5}, Landroid/widget/Toast;->setText(I)V

    .line 347
    sget-object v4, Lcom/android/systemui/qs/tiles/MobileDataTile;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->setShowForAllUsers()V

    .line 348
    sget-object v4, Lcom/android/systemui/qs/tiles/MobileDataTile;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 353
    :cond_6
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mSupportToddlerMode:Z

    if-eqz v4, :cond_7

    .line 354
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingToddlerMode:Lcom/android/systemui/qs/ToddlerModeSetting;

    invoke-virtual {v4}, Lcom/android/systemui/qs/ToddlerModeSetting;->isActivated()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 355
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingToddlerMode:Lcom/android/systemui/qs/ToddlerModeSetting;

    const v5, 0x7f0b0494

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/ToddlerModeSetting;->showToast(I)V

    goto/16 :goto_0

    .line 361
    :cond_7
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mMobileDataStringForVZW:Z

    if-eqz v4, :cond_8

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isVolteEnabled()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 362
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const-string v7, "phone"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 365
    .local v3, "telephonyManager":Landroid/telephony/TelephonyManager;
    const-string v4, "volte"

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 366
    const-string v5, "MobileDataTile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onClick(): MobileData state change is not allowed during volte : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v4, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v4, v4, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-static {v4, v10, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    sput-object v4, Lcom/android/systemui/qs/tiles/MobileDataTile;->toastAlert:Landroid/widget/Toast;

    .line 369
    sget-object v4, Lcom/android/systemui/qs/tiles/MobileDataTile;->toastAlert:Landroid/widget/Toast;

    const v5, 0x7f0b0490

    invoke-virtual {v4, v5}, Landroid/widget/Toast;->setText(I)V

    .line 370
    sget-object v4, Lcom/android/systemui/qs/tiles/MobileDataTile;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 377
    .end local v3    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_8
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v4, p0}, Lcom/android/systemui/qs/QSTile$Host;->onClickQSButtonOnKeyguard(Lcom/android/systemui/qs/QSTile;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 381
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/tiles/MobileDataTile;->refreshState(Ljava/lang/Object;)V

    .line 382
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isSimReady()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 383
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isDataRoaming()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 384
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingRoamingMobile:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v4}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v4

    if-nez v4, :cond_9

    :goto_2
    invoke-direct {p0, v5}, Lcom/android/systemui/qs/tiles/MobileDataTile;->setDataRoaming(Z)V

    goto/16 :goto_0

    :cond_9
    move v5, v6

    goto :goto_2

    .line 386
    :cond_a
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingMobile:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v4}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v4

    if-nez v4, :cond_b

    :goto_3
    invoke-direct {p0, v5}, Lcom/android/systemui/qs/tiles/MobileDataTile;->setMobileData(Z)V

    goto/16 :goto_0

    :cond_b
    move v5, v6

    goto :goto_3
.end method

.method protected handleDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 906
    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    .line 907
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 908
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingAirplane:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 909
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingMobile:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 910
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseDataRoamingDB:Z

    if-eqz v0, :cond_0

    .line 911
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingRoamingMobile:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 912
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 913
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 915
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingMobileDataWarningCheck:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    .line 917
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mSupportToddlerMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingToddlerMode:Lcom/android/systemui/qs/ToddlerModeSetting;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/ToddlerModeSetting;->setListening(Z)V

    .line 918
    :cond_1
    return-void
.end method

.method public handleLongClick()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 929
    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "true"

    aput-object v3, v2, v6

    .line 930
    .local v2, "selectionArgs":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const-string v4, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v5, "isCellularDataAllowed"

    invoke-static {v3, v4, v5, v2}, Lcom/android/systemui/qs/tiles/MobileDataTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 932
    .local v0, "isCellularDataAllowed":I
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const-string v4, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v5, "isSettingsChangesAllowed"

    invoke-static {v3, v4, v5, v2}, Lcom/android/systemui/qs/tiles/MobileDataTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 934
    .local v1, "isSettingsChangesAllowed":I
    if-eq v0, v7, :cond_2

    if-eq v1, v7, :cond_2

    .line 935
    if-eqz v0, :cond_0

    if-nez v1, :cond_2

    .line 936
    :cond_0
    const-string v3, "MobileDataTile"

    const-string v4, "onLongClick(): MobileData state change is not allowed by EDM"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-static {v3, v9, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    sput-object v3, Lcom/android/systemui/qs/tiles/MobileDataTile;->toastAlert:Landroid/widget/Toast;

    .line 938
    sget-object v3, Lcom/android/systemui/qs/tiles/MobileDataTile;->toastAlert:Landroid/widget/Toast;

    const v4, 0x1040c0f

    invoke-virtual {v3, v4}, Landroid/widget/Toast;->setText(I)V

    .line 939
    sget-object v3, Lcom/android/systemui/qs/tiles/MobileDataTile;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 997
    :cond_1
    :goto_0
    return-void

    .line 944
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingAirplane:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v3}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v3

    if-ne v3, v8, :cond_3

    .line 945
    const-string v3, "MobileDataTile"

    const-string v4, "MobileData Long - disabled in Airplanemode"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-static {v3, v9, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    sput-object v3, Lcom/android/systemui/qs/tiles/MobileDataTile;->toastAlert:Landroid/widget/Toast;

    .line 948
    sget-object v3, Lcom/android/systemui/qs/tiles/MobileDataTile;->toastAlert:Landroid/widget/Toast;

    const v4, 0x7f0b0493

    invoke-virtual {v3, v4}, Landroid/widget/Toast;->setText(I)V

    .line 949
    sget-object v3, Lcom/android/systemui/qs/tiles/MobileDataTile;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 954
    :cond_3
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mSupportToddlerMode:Z

    if-eqz v3, :cond_4

    .line 955
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingToddlerMode:Lcom/android/systemui/qs/ToddlerModeSetting;

    invoke-virtual {v3}, Lcom/android/systemui/qs/ToddlerModeSetting;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 956
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingToddlerMode:Lcom/android/systemui/qs/ToddlerModeSetting;

    const v4, 0x7f0b0494

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/ToddlerModeSetting;->showToast(I)V

    goto :goto_0

    .line 961
    :cond_4
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mSupportMumButton:Z

    if-eqz v3, :cond_5

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    if-eqz v3, :cond_5

    .line 962
    const-string v3, "MobileDataTile"

    const-string v4, "Blocked onLongClick() - MobileNetworkSettings activity."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 966
    :cond_5
    const-string v3, "MobileDataTile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleLongClick : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mMobileData:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isSimReady()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 968
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isMSim()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CTC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 969
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v3, :cond_6

    .line 970
    const-string v3, "com.samsung.settings.DATA_SLOT"

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/tiles/MobileDataTile;->startSettingsActivity(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 973
    :cond_6
    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.DataSlotChoice"

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/qs/tiles/MobileDataTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 975
    :cond_7
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v3, :cond_a

    .line 976
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mLinkToCdmaSetting:Z

    if-eqz v3, :cond_8

    .line 977
    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.CdmaSettingsEnhancedActivity"

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/qs/tiles/MobileDataTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 979
    :cond_8
    const-string v3, "LGT"

    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isDataRoaming()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 980
    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings$GlobalRoamingSettingsActivity"

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/qs/tiles/MobileDataTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 982
    :cond_9
    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.MobileNetworkSettings"

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/qs/tiles/MobileDataTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 985
    :cond_a
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isDataRoaming()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 986
    const-string v3, "LGT"

    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 987
    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings$GlobalRoamingSettingsActivity"

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/qs/tiles/MobileDataTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 989
    :cond_b
    const-string v3, "com.samsung.settings.T_ROAMING_SETTINGS"

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/tiles/MobileDataTile;->startSettingsActivity(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 992
    :cond_c
    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings$DataUsageSummaryActivity"

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/qs/tiles/MobileDataTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public handleSecondaryClick()V
    .locals 0

    .prologue
    .line 923
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->handleLongClick()V

    .line 924
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 6
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const v5, 0x7f0b042b

    .line 203
    instance-of v3, p2, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 204
    .local v2, "value":I
    :goto_0
    const/4 v1, 0x0

    .line 205
    .local v1, "isUserMode":Z
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 207
    .local v0, "currentUserId":I
    iget-boolean v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->isAirPlaneMode:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mSupportMumButton:Z

    if-eqz v3, :cond_0

    .line 208
    if-eqz v0, :cond_0

    .line 209
    const/4 v1, 0x1

    .line 213
    :cond_0
    if-eqz v1, :cond_2

    .line 214
    const/4 v3, 0x3

    iput v3, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 219
    :goto_1
    const/4 v3, 0x1

    iput-boolean v3, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    .line 220
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isDataRoaming()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 221
    const-string v3, "MobileDataTile"

    const-string v4, "handleUpdateState :   isDataRoaming, TextId is quickpanel_data_roaming_text"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const v4, 0x7f0b028b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    .line 226
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V

    .line 227
    packed-switch v2, :pswitch_data_0

    .line 242
    :goto_3
    return-void

    .line 203
    .end local v0    # "currentUserId":I
    .end local v1    # "isUserMode":Z
    .end local v2    # "value":I
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v3, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v2, v3, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    .line 216
    .end local p2    # "arg":Ljava/lang/Object;
    .restart local v0    # "currentUserId":I
    .restart local v1    # "isUserMode":Z
    .restart local v2    # "value":I
    :cond_2
    iput v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_1

    .line 224
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0450

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    goto :goto_2

    .line 229
    :pswitch_0
    const v3, 0x7f0b041a

    invoke-virtual {p0, v5, v3}, Lcom/android/systemui/qs/tiles/MobileDataTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_3

    .line 234
    :pswitch_1
    const v3, 0x7f0b041b

    invoke-virtual {p0, v5, v3}, Lcom/android/systemui/qs/tiles/MobileDataTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_3

    .line 239
    :pswitch_2
    const/4 v3, 0x0

    iput-object v3, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_3

    .line 227
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 80
    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    .end local p1    # "x0":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/MobileDataTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method public init()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 164
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 166
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 169
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->getMobileData()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mMobileData:Z

    .line 170
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mMobileData:Z

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    iput v2, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 171
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingAirplane:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v1}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v1

    if-ne v1, v3, :cond_2

    move v1, v3

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->isAirPlaneMode:Z

    .line 174
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 175
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 177
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    const-string v1, "com.samsung.settings.SIMCARD_MGT_ACTIVATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    const-string v1, "ACTION_SET_PROPERTY_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    const-string v1, "android.net.conn.MOBILE_DATA_ENABLE_POPUP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 182
    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 185
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingAirplane:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 186
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingMobile:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 187
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUseDataRoamingDB:Z

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingRoamingMobile:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 189
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    .line 190
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 192
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingMobileDataWarningCheck:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    .line 194
    return-void

    .line 170
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    .line 171
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$MultiState;
    .locals 1

    .prologue
    .line 198
    new-instance v0, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$MultiState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 0
    .param p1, "listening"    # Z

    .prologue
    .line 306
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1001
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public userSwitch(I)V
    .locals 2
    .param p1, "newUserId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1084
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingAirplane:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/GlobalSetting;->onChange(Z)V

    .line 1085
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingMobile:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/GlobalSetting;->onChange(Z)V

    .line 1086
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingMobileDataWarningCheck:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SecureSetting;->userSwitched(I)V

    .line 1087
    return-void
.end method
