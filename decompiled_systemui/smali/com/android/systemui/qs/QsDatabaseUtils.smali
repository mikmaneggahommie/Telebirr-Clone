.class public Lcom/android/systemui/qs/QsDatabaseUtils;
.super Ljava/lang/Object;
.source "QsDatabaseUtils.java"


# static fields
.field private static final DB_LIST_RESET:Ljava/lang/String; = "notification_panel_active_app_list_for_reset"

.field private static final DB_LIST_UPDATE:Ljava/lang/String; = "notification_panel_active_app_list"

.field private static final DB_NUMBER_OF_APPS:Ljava/lang/String; = "notification_panel_active_number_of_apps"

.field private static final RETAIL_MODE:Ljava/lang/String; = "kr.co.rightbrain.RetailMode.TR"

.field private static final RETAIL_MODE_TAG:Ljava/lang/String; = "PersonalMode"

.field private static final SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field private static final TAG:Ljava/lang/String; = "QsDatabaseUtils"

.field private static final TMO_WFC_QUICK_SETTING_TAG:Ljava/lang/String; = "WifiCalling"

.field private static final WFC_APP_PACKAGE_NAME:Ljava/lang/String; = "com.oem.smartwifisupport"

.field private static final WFC_QUICK_SETTING_TAG:Ljava/lang/String; = "VoWiFi"

.field private static final WIFI_CALLING_ACTION:Ljava/lang/String; = "com.oem.smartwifisupport.WIFI_CALLING"


# instance fields
.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mBroadcastReceiverSimChange:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 512
    new-instance v0, Lcom/android/systemui/qs/QsDatabaseUtils$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QsDatabaseUtils$1;-><init>(Lcom/android/systemui/qs/QsDatabaseUtils;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QsDatabaseUtils;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 623
    new-instance v0, Lcom/android/systemui/qs/QsDatabaseUtils$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QsDatabaseUtils$4;-><init>(Lcom/android/systemui/qs/QsDatabaseUtils;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QsDatabaseUtils;->mBroadcastReceiverSimChange:Landroid/content/BroadcastReceiver;

    .line 91
    iput-object p1, p0, Lcom/android/systemui/qs/QsDatabaseUtils;->mContext:Landroid/content/Context;

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/QsDatabaseUtils;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QsDatabaseUtils;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/systemui/qs/QsDatabaseUtils;->handleVoWifi()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/QsDatabaseUtils;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QsDatabaseUtils;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/systemui/qs/QsDatabaseUtils;->handleRetailMode()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/QsDatabaseUtils;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QsDatabaseUtils;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/systemui/qs/QsDatabaseUtils;->updateVoWifiIfNeeded()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/QsDatabaseUtils;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QsDatabaseUtils;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/systemui/qs/QsDatabaseUtils;->updateRetailMode()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/QsDatabaseUtils;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QsDatabaseUtils;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/systemui/qs/QsDatabaseUtils;->updateWfcIcon()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/QsDatabaseUtils;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QsDatabaseUtils;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/systemui/qs/QsDatabaseUtils;->updateWfcIconIfNeeded()V

    return-void
.end method

.method private addApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "appName"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x2

    .line 599
    iget-object v2, p0, Lcom/android/systemui/qs/QsDatabaseUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 600
    .local v1, "cr":Landroid/content/ContentResolver;
    invoke-static {v1, p1, v4}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 601
    .local v0, "appList":Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 606
    :goto_0
    return-void

    .line 603
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 605
    invoke-static {v1, p1, v0, v4}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private getCountryCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 508
    const-string v1, "ro.csc.country_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 509
    .local v0, "country_code":Ljava/lang/String;
    return-object v0
.end method

.method private getDpiOfDevice(Landroid/content/Context;)I
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 490
    const-string v6, "window"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 491
    .local v5, "wm":Landroid/view/WindowManager;
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 492
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 493
    .local v3, "point":Landroid/graphics/Point;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 494
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 495
    iget v0, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 496
    .local v0, "density":I
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v4

    .line 498
    .local v4, "rotation":I
    if-eqz v4, :cond_0

    const/4 v6, 0x2

    if-ne v4, v6, :cond_1

    .line 499
    :cond_0
    iget v6, v3, Landroid/graphics/Point;->y:I

    mul-int/lit16 v6, v6, 0xa0

    div-int v1, v6, v0

    .line 504
    .local v1, "dpi":I
    :goto_0
    return v1

    .line 501
    .end local v1    # "dpi":I
    :cond_1
    iget v6, v3, Landroid/graphics/Point;->x:I

    mul-int/lit16 v6, v6, 0xa0

    div-int v1, v6, v0

    .restart local v1    # "dpi":I
    goto :goto_0
.end method

.method private getQuickSettingsList(Landroid/content/Context;)Ljava/lang/String;
    .locals 17
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 104
    .local v13, "res":Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getSalesCode()Ljava/lang/String;

    move-result-object v14

    .line 105
    .local v14, "salesCode":Ljava/lang/String;
    const-string v15, "ro.product.name"

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 107
    .local v10, "productName":Ljava/lang/String;
    const-string v15, "ro.build.characteristics"

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, "deviceType":Ljava/lang/String;
    const/4 v5, 0x0

    .line 109
    .local v5, "isTablet":Z
    if-eqz v3, :cond_0

    .line 110
    const-string v15, "tablet"

    invoke-virtual {v3, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 112
    :cond_0
    const-string v15, "user"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/UserManager;

    .line 113
    .local v9, "mUserManager":Landroid/os/UserManager;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v8

    .line 115
    .local v8, "mUserHandle":I
    const/4 v7, 0x0

    .line 116
    .local v7, "mIsRestricted":Z
    if-nez v8, :cond_5

    const/4 v6, 0x1

    .line 117
    .local v6, "mIsOwnerProfile":Z
    :goto_0
    if-eqz v9, :cond_1

    .line 119
    invoke-virtual {v9, v8}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v7

    .line 123
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0900dd

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, "defaultQuickArr":[Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 125
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0900e9

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 128
    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v15

    const-string v16, "CscFeature_Setting_DefQuickPanelOrder"

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_6

    .line 129
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v15

    const-string v16, "CscFeature_Setting_DefQuickPanelOrder"

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, ";"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 182
    :cond_3
    :goto_1
    if-nez v2, :cond_1d

    .line 183
    const/4 v12, 0x0

    .line 418
    :cond_4
    return-object v12

    .line 116
    .end local v2    # "defaultQuickArr":[Ljava/lang/String;
    .end local v6    # "mIsOwnerProfile":Z
    :cond_5
    const/4 v6, 0x0

    goto :goto_0

    .line 130
    .restart local v2    # "defaultQuickArr":[Ljava/lang/String;
    .restart local v6    # "mIsOwnerProfile":Z
    :cond_6
    const-string v15, "CTC"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 131
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0900e2

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 132
    :cond_7
    const-string v15, "CHN"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_8

    const-string v15, "CHM"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_8

    const-string v15, "CHU"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_8

    const-string v15, "CHC"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 133
    :cond_8
    if-nez v5, :cond_9

    .line 134
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0900e3

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 136
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0900ee

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 138
    :cond_a
    const-string v15, "VZW"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 139
    if-nez v5, :cond_b

    .line 140
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0900de

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 142
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0900ea

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 144
    :cond_c
    const-string v15, "ATT"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_d

    const-string v15, "AIO"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_f

    :cond_d
    sget-boolean v15, Lcom/android/systemui/statusbar/Feature;->mSupportGloabalQslist:Z

    if-nez v15, :cond_f

    .line 145
    if-nez v5, :cond_e

    .line 146
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0900df

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 148
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0900ec

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 150
    :cond_f
    const-string v15, "TMO"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_10

    const-string v15, "TMB"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_12

    .line 151
    :cond_10
    if-nez v5, :cond_11

    .line 152
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0900e0

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 154
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0900eb

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 156
    :cond_12
    const-string v15, "SPR"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_13

    const-string v15, "kltesprsports"

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_15

    .line 157
    :cond_13
    if-nez v5, :cond_14

    .line 158
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0900e1

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 160
    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0900ed

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 162
    :cond_15
    const-string v15, "TGY"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_16

    const-string v15, "BRI"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_18

    .line 163
    :cond_16
    if-nez v5, :cond_17

    .line 164
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0900e4

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 166
    :cond_17
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0900ef

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 168
    :cond_18
    const-string v15, "JP"

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/qs/QsDatabaseUtils;->getCountryCode()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1a

    .line 169
    sget-boolean v15, Lcom/android/systemui/statusbar/Feature;->mIsXcover3ForDCM:Z

    if-eqz v15, :cond_19

    .line 170
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0900e8

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 172
    :cond_19
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0900e7

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 173
    :cond_1a
    const-string v15, "KOREA"

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/qs/QsDatabaseUtils;->getCountryCode()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1b

    sget-boolean v15, Lcom/android/systemui/statusbar/Feature;->mPublicSafetyProject:Z

    if-eqz v15, :cond_3

    :cond_1b
    if-nez v5, :cond_3

    .line 174
    sget-boolean v15, Lcom/android/systemui/statusbar/Feature;->mPublicSafetyProject:Z

    if-eqz v15, :cond_1c

    .line 175
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0900e6

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 178
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0900e5

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 187
    :cond_1d
    const-string v12, ""

    .line 188
    .local v12, "quickSettingsList":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    array-length v15, v2

    if-ge v4, v15, :cond_4

    .line 189
    aget-object v11, v2, v4

    .line 191
    .local v11, "quickSetting":Ljava/lang/String;
    const-string v15, "Wifi"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1f

    .line 192
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    const-string v16, "android.hardware.wifi"

    invoke-virtual/range {v15 .. v16}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_20

    .line 188
    :cond_1e
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 195
    :cond_1f
    const-string v15, "Location"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_21

    .line 415
    :cond_20
    :goto_4
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ";"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    .line 197
    :cond_21
    const-string v15, "Ebook"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_22

    .line 198
    if-eqz v5, :cond_1e

    goto :goto_4

    .line 202
    :cond_22
    const-string v15, "AdaptiveDisplay"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_23

    .line 203
    sget-boolean v15, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v15, :cond_1e

    if-eqz v5, :cond_1e

    goto :goto_4

    .line 208
    :cond_23
    const-string v15, "SilentMode"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_20

    .line 210
    const-string v15, "AutoRotate"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_24

    .line 211
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x112003b

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v15

    if-nez v15, :cond_20

    goto :goto_3

    .line 214
    :cond_24
    const-string v15, "Bluetooth"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_25

    .line 215
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    const-string v16, "android.hardware.bluetooth"

    invoke-virtual/range {v15 .. v16}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_20

    goto :goto_3

    .line 218
    :cond_25
    const-string v15, "MobileData"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_26

    .line 219
    sget-boolean v15, Lcom/android/systemui/statusbar/Feature;->mNotShowMoileDataQSB:Z

    if-nez v15, :cond_1e

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/qs/QsDatabaseUtils;->isShopdemoEnable(Landroid/content/Context;)Z

    move-result v15

    if-nez v15, :cond_1e

    if-nez v6, :cond_20

    goto/16 :goto_3

    .line 225
    :cond_26
    const-string v15, "UDS"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_27

    .line 226
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v15

    const-string v16, "CscFeature_SmartManager_ConfigSubFeatures"

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "UDS"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_20

    goto/16 :goto_3

    .line 229
    :cond_27
    const-string v15, "VoLte"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_28

    .line 230
    sget-boolean v15, Lcom/android/systemui/statusbar/Feature;->mShowVoLteQSB:Z

    if-eqz v15, :cond_1e

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/qs/QsDatabaseUtils;->isSupportVoLte()Z

    move-result v15

    if-eqz v15, :cond_1e

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v15

    const-string v16, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_20

    goto/16 :goto_3

    .line 235
    :cond_28
    const-string v15, "PowerSaving"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_29

    .line 236
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v15

    const-string v16, "SEC_FLOATING_FEATURE_SETTINGS_CAMERA_ONLY_MODEL"

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_1e

    goto/16 :goto_4

    .line 240
    :cond_29
    const-string v15, "AllShareCast"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2a

    .line 241
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    const-string v16, "com.sec.feature.wfd_support"

    invoke-virtual/range {v15 .. v16}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_20

    goto/16 :goto_3

    .line 244
    :cond_2a
    const-string v15, "MultiWindow"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2b

    .line 245
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    const-string v16, "com.sec.feature.multiwindow"

    invoke-virtual/range {v15 .. v16}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_20

    goto/16 :goto_3

    .line 248
    :cond_2b
    const-string v15, "WiFiHotspot"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2c

    .line 249
    sget-boolean v15, Lcom/android/systemui/statusbar/Feature;->mNotShowMoileHotspotQSB:Z

    if-nez v15, :cond_1e

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/qs/QsDatabaseUtils;->isShopdemoEnable(Landroid/content/Context;)Z

    move-result v15

    if-nez v15, :cond_1e

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v15

    const-string v16, "CscFeature_Common_UseChameleon"

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_1e

    if-nez v6, :cond_20

    goto/16 :goto_3

    .line 256
    :cond_2c
    const-string v15, "SBeam"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1e

    .line 263
    const-string v15, "Nfc"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2d

    .line 264
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    const-string v16, "android.hardware.nfc"

    invoke-virtual/range {v15 .. v16}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1e

    if-eqz v5, :cond_20

    goto/16 :goto_3

    .line 268
    :cond_2d
    const-string v15, "AirView"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1e

    .line 274
    const-string v15, "AirGesture"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2e

    .line 275
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v15

    const-string v16, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AIR_MOTION"

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1e

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v15

    const-string v16, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2014"

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_20

    goto/16 :goto_3

    .line 279
    :cond_2e
    const-string v15, "DrivingMode"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2f

    .line 280
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v15

    const-string v16, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DRIVING_MODE"

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1e

    goto/16 :goto_3

    .line 284
    :cond_2f
    const-string v15, "SmartStay"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_20

    .line 288
    const-string v15, "SmartPause"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_20

    .line 293
    const-string v15, "SmartScroll"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_20

    .line 298
    const-string v15, "Sync"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_30

    .line 299
    if-eqz v7, :cond_20

    goto/16 :goto_3

    .line 302
    :cond_30
    const-string v15, "AirplaneMode"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_31

    .line 303
    if-eqz v7, :cond_20

    .line 304
    const-string v15, "QsDatabaseUtils"

    const-string v16, "AirplaneMode removed by mIsRestricted"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 307
    :cond_31
    const-string v15, "SmartNetwork"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_32

    .line 308
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v15

    const-string v16, "SEC_FLOATING_FEATURE_SETTINGS_CAMERA_ONLY_MODEL"

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_20

    goto/16 :goto_3

    .line 311
    :cond_32
    const-string v15, "PersonalMode"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_33

    .line 312
    if-eqz v6, :cond_1e

    sget-boolean v15, Lcom/android/systemui/statusbar/Feature;->mIsLDUDevice:Z

    if-nez v15, :cond_1e

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/qs/QsDatabaseUtils;->isShopdemoEnable(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_20

    goto/16 :goto_3

    .line 318
    :cond_33
    const-string v15, "CarMode"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_34

    .line 319
    const-string v15, "com.sec.android.automotive.drivelink"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v15, v1}, Lcom/android/systemui/qs/QsDatabaseUtils;->hasApplication(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v15

    if-nez v15, :cond_20

    const-string v15, "com.sec.android.app.automotive.carmode"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v15, v1}, Lcom/android/systemui/qs/QsDatabaseUtils;->hasApplication(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v15

    if-nez v15, :cond_20

    goto/16 :goto_3

    .line 323
    :cond_34
    const-string v15, "DefaultData"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_35

    .line 324
    const-string v15, "DCGG"

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_20

    const-string v15, "DCGS"

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_20

    const-string v15, "DCGGS"

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_20

    const-string v15, "CG"

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_20

    goto/16 :goto_3

    .line 331
    :cond_35
    const-string v15, "WifiCalling"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_37

    .line 333
    sget-boolean v15, Lcom/android/systemui/statusbar/Feature;->mShowWifiCallingTileForEUR:Z

    if-nez v15, :cond_36

    sget-boolean v15, Lcom/android/systemui/statusbar/Feature;->mShowWifiCallingTileForTMO:Z

    if-eqz v15, :cond_1e

    :cond_36
    if-nez v6, :cond_20

    goto/16 :goto_3

    .line 339
    :cond_37
    const-string v15, "VoWiFi"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_38

    .line 340
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v15

    const-string v16, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_20

    goto/16 :goto_3

    .line 343
    :cond_38
    const-string v15, "NetworkBooster"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_39

    .line 344
    if-eqz v6, :cond_1e

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v15

    const-string v16, "CscFeature_RIL_DisableSmartBonding"

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_1e

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/systemui/qs/QsDatabaseUtils;->isTFGDisableSmartBonding(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_1e

    const-string v15, "kltevzw"

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_20

    goto/16 :goto_3

    .line 351
    :cond_39
    const-string v15, "Toolbox"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3a

    .line 352
    if-eqz v7, :cond_20

    goto/16 :goto_3

    .line 356
    :cond_3a
    const-string v15, "CameraAccess"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1e

    .line 361
    const-string v15, "SFinder"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3b

    .line 362
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    const-string v16, "com.sec.feature.findo"

    invoke-virtual/range {v15 .. v16}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1e

    sget-boolean v15, Lcom/android/systemui/statusbar/Feature;->mShowSFinderQConnectQSB:Z

    if-eqz v15, :cond_1e

    if-nez v7, :cond_1e

    if-nez v6, :cond_20

    goto/16 :goto_3

    .line 368
    :cond_3b
    const-string v15, "QuickConnect"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3c

    .line 369
    const-string v15, "com.samsung.android.sconnect"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v15, v1}, Lcom/android/systemui/qs/QsDatabaseUtils;->hasApplication(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_1e

    sget-boolean v15, Lcom/android/systemui/statusbar/Feature;->mShowSFinderQConnectQSB:Z

    if-eqz v15, :cond_1e

    if-nez v7, :cond_1e

    if-nez v6, :cond_20

    goto/16 :goto_3

    .line 375
    :cond_3c
    const-string v15, "TouchSensitivity"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3d

    .line 376
    sget-boolean v15, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v15, :cond_1e

    sget-boolean v15, Lcom/android/systemui/statusbar/Feature;->mShowTouchSensitivityQSB:Z

    if-nez v15, :cond_20

    goto/16 :goto_3

    .line 380
    :cond_3d
    const-string v15, "UltraPowerSaving"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3e

    .line 381
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v15

    const-string v16, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ULTRA_POWER_SAVING"

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1e

    if-nez v6, :cond_20

    goto/16 :goto_3

    .line 385
    :cond_3e
    const-string v15, "FlashLight"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3f

    .line 386
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    const-string v16, "android.hardware.camera.flash"

    invoke-virtual/range {v15 .. v16}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_20

    goto/16 :goto_3

    .line 389
    :cond_3f
    const-string v15, "SideKey"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_40

    .line 390
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    const-string v16, "com.sec.feature.floating_side_softkey"

    invoke-virtual/range {v15 .. v16}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_20

    goto/16 :goto_3

    .line 393
    :cond_40
    const-string v15, "Apn"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_20

    .line 395
    const-string v15, "TorchLight"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_41

    .line 396
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    const-string v16, "android.hardware.camera.flash"

    invoke-virtual/range {v15 .. v16}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_20

    goto/16 :goto_3

    .line 401
    :cond_41
    const-string v15, "FloatingMessage"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_42

    .line 402
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v15

    const-string v16, "CscFeature_Common_EnableAirMessage"

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_20

    goto/16 :goto_3

    .line 408
    :cond_42
    const-string v15, "DormantMode"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_20

    goto/16 :goto_4
.end method

.method private handleRetailMode()V
    .locals 2

    .prologue
    .line 542
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/systemui/qs/QsDatabaseUtils$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QsDatabaseUtils$3;-><init>(Lcom/android/systemui/qs/QsDatabaseUtils;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 547
    return-void
.end method

.method private handleVoWifi()V
    .locals 2

    .prologue
    .line 534
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/systemui/qs/QsDatabaseUtils$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QsDatabaseUtils$2;-><init>(Lcom/android/systemui/qs/QsDatabaseUtils;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 539
    return-void
.end method

.method private hasApplication(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 446
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 447
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x1

    .line 449
    .local v2, "result":Z
    const/16 v3, 0x80

    :try_start_0
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    :goto_0
    return v2

    .line 450
    :catch_0
    move-exception v0

    .line 451
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isSBeamSupported(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 431
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.android.directshare"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 432
    :catch_0
    move-exception v0

    .line 433
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private isShopdemoEnable(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 439
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "shopdemo"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 442
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isSupportVoLte()Z
    .locals 2

    .prologue
    .line 619
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/qs/QsDatabaseUtils;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->isServiceAvailable(ILandroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private isTFGDisableSmartBonding(Ljava/lang/String;)Z
    .locals 9
    .param p1, "sales_code"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 457
    const-string v7, "TFG"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 486
    :cond_0
    :goto_0
    return v6

    .line 461
    :cond_1
    const-string v7, "ril.product_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 462
    .local v4, "productCode":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 463
    const-string v1, "/system/etc/smart_bonding_not_supported"

    .line 464
    .local v1, "fileName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 466
    .local v2, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    const-string v8, "/system/etc/smart_bonding_not_supported"

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    .end local v2    # "in":Ljava/io/BufferedReader;
    .local v3, "in":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 468
    .local v5, "string":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x3

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v7

    if-eqz v7, :cond_2

    .line 469
    const/4 v6, 0x1

    .line 478
    if-eqz v3, :cond_0

    .line 479
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 480
    :catch_0
    move-exception v0

    .line 481
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 478
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    if-eqz v3, :cond_0

    .line 479
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 480
    :catch_1
    move-exception v0

    .line 481
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 470
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "in":Ljava/io/BufferedReader;
    .end local v5    # "string":Ljava/lang/String;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :catch_2
    move-exception v0

    .line 471
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 478
    if-eqz v2, :cond_0

    .line 479
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 480
    :catch_3
    move-exception v0

    .line 481
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 472
    .end local v0    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 473
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 478
    if-eqz v2, :cond_0

    .line 479
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_0

    .line 480
    :catch_5
    move-exception v0

    .line 481
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 474
    .end local v0    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v0

    .line 475
    .local v0, "e":Ljava/lang/StringIndexOutOfBoundsException;
    :goto_3
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/StringIndexOutOfBoundsException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 478
    if-eqz v2, :cond_0

    .line 479
    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_0

    .line 480
    :catch_7
    move-exception v0

    .line 481
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 477
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 478
    :goto_4
    if-eqz v2, :cond_3

    .line 479
    :try_start_a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 482
    :cond_3
    :goto_5
    throw v6

    .line 480
    :catch_8
    move-exception v0

    .line 481
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 477
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_4

    .line 474
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catch_9
    move-exception v0

    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_3

    .line 472
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catch_a
    move-exception v0

    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_2

    .line 470
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catch_b
    move-exception v0

    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method private removeApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "appName"    # Ljava/lang/String;

    .prologue
    const/4 v9, -0x2

    .line 583
    iget-object v7, p0, Lcom/android/systemui/qs/QsDatabaseUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 584
    .local v2, "cr":Landroid/content/ContentResolver;
    invoke-static {v2, p1, v9}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 585
    .local v6, "oldAppList":Ljava/lang/String;
    invoke-virtual {v6, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 596
    :goto_0
    return-void

    .line 587
    :cond_0
    const-string v5, ""

    .line 589
    .local v5, "newAppList":Ljava/lang/String;
    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v0, v1, v3

    .line 590
    .local v0, "app":Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 591
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 589
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 595
    .end local v0    # "app":Ljava/lang/String;
    :cond_2
    invoke-static {v2, p1, v5, v9}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private updateRetailMode()V
    .locals 3

    .prologue
    .line 551
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/QsDatabaseUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.oem.smartwifisupport"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    .line 552
    .local v0, "appState":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 553
    const-string v1, "notification_panel_active_app_list_for_reset"

    const-string v2, "PersonalMode"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/qs/QsDatabaseUtils;->removeApp(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    const-string v1, "notification_panel_active_app_list"

    const-string v2, "PersonalMode"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/qs/QsDatabaseUtils;->removeApp(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    .end local v0    # "appState":I
    :cond_0
    :goto_0
    return-void

    .line 555
    .restart local v0    # "appState":I
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 556
    const-string v1, "notification_panel_active_app_list_for_reset"

    const-string v2, "PersonalMode"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/qs/QsDatabaseUtils;->addApp(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    const-string v1, "notification_panel_active_app_list"

    const-string v2, "PersonalMode"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/qs/QsDatabaseUtils;->addApp(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 559
    .end local v0    # "appState":I
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private updateVoWifiIfNeeded()V
    .locals 3

    .prologue
    .line 565
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 580
    :cond_0
    :goto_0
    return-void

    .line 569
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/QsDatabaseUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.oem.smartwifisupport"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    .line 570
    .local v0, "appState":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 571
    const-string v1, "notification_panel_active_app_list_for_reset"

    const-string v2, "VoWiFi"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/qs/QsDatabaseUtils;->removeApp(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    const-string v1, "notification_panel_active_app_list"

    const-string v2, "VoWiFi"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/qs/QsDatabaseUtils;->removeApp(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 577
    .end local v0    # "appState":I
    :catch_0
    move-exception v1

    goto :goto_0

    .line 573
    .restart local v0    # "appState":I
    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 574
    const-string v1, "notification_panel_active_app_list_for_reset"

    const-string v2, "VoWiFi"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/qs/QsDatabaseUtils;->addApp(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    const-string v1, "notification_panel_active_app_list"

    const-string v2, "VoWiFi"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/qs/QsDatabaseUtils;->addApp(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private updateWfcIcon()V
    .locals 2

    .prologue
    .line 636
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/systemui/qs/QsDatabaseUtils$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QsDatabaseUtils$5;-><init>(Lcom/android/systemui/qs/QsDatabaseUtils;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 641
    return-void
.end method

.method private updateWfcIconIfNeeded()V
    .locals 2

    .prologue
    .line 644
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/qs/QsDatabaseUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/tmowfc/wfcutils/WfcUtilsHelper;->isValidSim(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 645
    const-string v0, "notification_panel_active_app_list_for_reset"

    const-string v1, "WifiCalling"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/qs/QsDatabaseUtils;->removeApp(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    const-string v0, "notification_panel_active_app_list"

    const-string v1, "WifiCalling"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/qs/QsDatabaseUtils;->removeApp(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    :goto_0
    return-void

    .line 648
    :cond_0
    const-string v0, "notification_panel_active_app_list_for_reset"

    const-string v1, "WifiCalling"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/qs/QsDatabaseUtils;->addApp(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    const-string v0, "notification_panel_active_app_list"

    const-string v1, "WifiCalling"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/qs/QsDatabaseUtils;->addApp(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 651
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public registerReceiver()V
    .locals 3

    .prologue
    .line 609
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 610
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 611
    iget-object v1, p0, Lcom/android/systemui/qs/QsDatabaseUtils;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/QsDatabaseUtils;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 612
    return-void
.end method

.method public registerReceiverSimChange()V
    .locals 3

    .prologue
    .line 656
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 657
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 658
    iget-object v1, p0, Lcom/android/systemui/qs/QsDatabaseUtils;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/QsDatabaseUtils;->mBroadcastReceiverSimChange:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 659
    return-void
.end method

.method public final setDefaultQsActiveButtons(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 424
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 425
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f0e004e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 426
    .local v0, "buttonNumber":I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "notification_panel_active_number_of_apps"

    const/4 v4, -0x2

    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 427
    return-void
.end method

.method public final setDefaultQsTilesList(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x2

    .line 95
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QsDatabaseUtils;->getQuickSettingsList(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "defaultTileList":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "notification_panel_active_app_list"

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "notification_panel_active_app_list_for_reset"

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 99
    return-object v0
.end method

.method public unRegisterReceiver()V
    .locals 2

    .prologue
    .line 615
    iget-object v0, p0, Lcom/android/systemui/qs/QsDatabaseUtils;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/QsDatabaseUtils;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 616
    return-void
.end method

.method public unRegisterReceiverSimChange()V
    .locals 2

    .prologue
    .line 662
    iget-object v0, p0, Lcom/android/systemui/qs/QsDatabaseUtils;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/QsDatabaseUtils;->mBroadcastReceiverSimChange:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 663
    return-void
.end method
