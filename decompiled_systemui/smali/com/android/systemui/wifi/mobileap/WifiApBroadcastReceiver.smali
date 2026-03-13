.class public Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiApBroadcastReceiver.java"


# static fields
.field private static final CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

.field private static final DBG:Z

.field public static final DIALOG_HOTSPOT_NO_DATA:I = 0x1

.field public static final DIALOG_HOTSPOT_PROVISIONING_REQUEST:I = 0x6

.field public static final DIALOG_NAI_MISMATCH:I = 0x2

.field public static final DIALOG_TETHERING_DENIED:I = 0x3

.field public static final DIALOG_WIFI_AP_ENABLE_WARNING:I = 0x5

.field public static final DIALOG_WIFI_ENABLE_WARNING:I = 0x4

.field public static final DIALOG_WIFI_P2P_ENABLE_WARNING:I = 0x32

.field static final INTENT_KEY_ICC_STATE:Ljava/lang/String; = "ss"

.field static final INTENT_VALUE_ICC_IMSI:Ljava/lang/String; = "IMSI"

.field public static final PROVISION_DIALOG_DISMISSED:Ljava/lang/String; = "com.samsung.intent.action.PROVISION_DIALOG_DISMISSED"

.field private static final SUPPORTMOBILEAPWPSPBC:Z

.field private static final SUPPORTMOBILEAPWPSPIN:Z

.field private static final TAG:Ljava/lang/String; = "SystemUI_WifiApBroadcastReceiver"

.field public static final WIFIAP_ENABLE_WARNING:Ljava/lang/String; = "com.samsung.android.intent.action.WIFI_AP_ENABLE_WARNING"

.field public static final WIFIAP_MODEMNAI_MISSMATH:Ljava/lang/String; = "com.samsung.intent.action.MIP_ERROR"

.field public static final WIFIAP_TETHERING_DENIED:Ljava/lang/String; = "com.samsung.android.intent.action.TETHERING_DENIED"

.field public static final WIFIAP_TETHERING_FAILED:Ljava/lang/String; = "com.samsung.android.intent.action.TETHERING_FAILED"

.field public static final WIFIAP_WARNING_DIALOG:Ljava/lang/String; = "com.android.settings.wifi.mobileap.wifiapwarning"

.field public static final WIFIAP_WARNING_DIALOG_TYPE:Ljava/lang/String; = "wifiap_warning_dialog_type"

.field public static final WIFIP2P_ENABLE_WARNING:Ljava/lang/String; = "com.samsung.android.intent.action.WIFI_P2P_ENABLE_WARNING"

.field public static final WIFI_ENABLE_WARNING:Ljava/lang/String; = "com.samsung.android.intent.action.WIFI_ENABLE_WARNING"

.field static currentMccMnc:Ljava/lang/String;

.field private static final mHotspotActionForSimStatus:Ljava/lang/String;

.field public static mIsForegroundWifiSettings:Z


# instance fields
.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->DBG:Z

    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mIsForegroundWifiSettings:Z

    .line 56
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_ConfigHotSpotActionForSimStatus"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mHotspotActionForSimStatus:Ljava/lang/String;

    .line 57
    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget-boolean v0, Landroid/net/wifi/WifiApCust;->mSupportWPSPBC:Z

    sput-boolean v0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->SUPPORTMOBILEAPWPSPBC:Z

    .line 58
    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget-boolean v0, Landroid/net/wifi/WifiApCust;->mSupportWPSPIN:Z

    sput-boolean v0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->SUPPORTMOBILEAPWPSPIN:Z

    .line 59
    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget-object v0, Landroid/net/wifi/WifiApCust;->mMHSCustomer:Ljava/lang/String;

    sput-object v0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    .line 62
    const-string v0, ""

    sput-object v0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->currentMccMnc:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-void
.end method

.method private getRvfMode(Landroid/content/Context;)I
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 250
    const-string v3, "SystemUI_WifiApBroadcastReceiver"

    const-string v4, "getRvfMode"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const/4 v0, 0x0

    .line 252
    .local v0, "mRvfMode":I
    const-string v3, "wifi"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 253
    .local v1, "mWifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v1, :cond_0

    .line 254
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 255
    .local v2, "msg":Landroid/os/Message;
    const/16 v3, 0x1c

    iput v3, v2, Landroid/os/Message;->what:I

    .line 256
    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v0

    .line 258
    .end local v2    # "msg":Landroid/os/Message;
    :cond_0
    return v0
.end method

.method private showHotspotErrorDialog(Landroid/content/Context;ILandroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "DialogType"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 182
    const-string v7, "SystemUI_WifiApBroadcastReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[showHotspotErrorDialog] DialogType : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const-string v7, "wifi"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 184
    .local v1, "mWifiManager":Landroid/net/wifi/WifiManager;
    const/4 v0, -0x1

    .line 185
    .local v0, "extra_type":I
    const/4 v3, -0x1

    .line 187
    .local v3, "req_type":I
    :try_start_0
    const-string v7, "extra_type"

    const/4 v8, -0x1

    invoke-virtual {p3, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 188
    const-string v7, "req_type"

    const/4 v8, -0x1

    invoke-virtual {p3, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 193
    if-eqz v1, :cond_1

    .line 194
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v6

    .line 195
    .local v6, "wifiApState":I
    const/4 v7, 0x4

    if-ne p2, v7, :cond_2

    .line 197
    if-nez v3, :cond_0

    const/4 v7, 0x1

    if-ne v0, v7, :cond_0

    .line 200
    :cond_0
    const/16 v7, 0xc

    if-eq v6, v7, :cond_3

    const/16 v7, 0xd

    if-eq v6, v7, :cond_3

    add-int v7, v0, v3

    const/4 v8, 0x3

    if-eq v7, v8, :cond_3

    const/4 v7, 0x4

    if-eq v0, v7, :cond_3

    .line 238
    .end local v6    # "wifiApState":I
    :cond_1
    :goto_0
    return-void

    .line 189
    :catch_0
    move-exception v2

    .line 190
    .local v2, "re":Ljava/lang/RuntimeException;
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    .line 203
    .end local v2    # "re":Ljava/lang/RuntimeException;
    .restart local v6    # "wifiApState":I
    :cond_2
    const/4 v7, 0x5

    if-ne p2, v7, :cond_5

    .line 204
    const/16 v7, 0xc

    if-eq v6, v7, :cond_1

    const/16 v7, 0xd

    if-eq v6, v7, :cond_1

    .line 224
    :cond_3
    :goto_1
    const-string v7, "statusbar"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/StatusBarManager;

    .line 225
    .local v5, "statusBar":Landroid/app/StatusBarManager;
    if-eqz v5, :cond_4

    .line 226
    invoke-virtual {v5}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 228
    :cond_4
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 229
    .local v4, "startDialogIntent":Landroid/content/Intent;
    const-string v7, "com.android.settings"

    const-string v8, "com.android.settings.wifi.mobileap.WifiApWarning"

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    const/high16 v7, 0x10000000

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 232
    const-string v7, "com.android.settings.wifi.mobileap.wifiapwarning"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    const-string v7, "wifiap_warning_dialog_type"

    invoke-virtual {v4, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 234
    const-string v7, "req_type"

    invoke-virtual {v4, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 235
    const-string v7, "extra_type"

    invoke-virtual {v4, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 236
    invoke-virtual {p1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 207
    .end local v4    # "startDialogIntent":Landroid/content/Intent;
    .end local v5    # "statusBar":Landroid/app/StatusBarManager;
    :cond_5
    const/16 v7, 0x32

    if-ne p2, v7, :cond_6

    .line 215
    :cond_6
    const/16 v7, 0xc

    if-eq v6, v7, :cond_7

    const/16 v7, 0xd

    if-ne v6, v7, :cond_1

    .line 219
    :cond_7
    const-string v7, "SystemUI_WifiApBroadcastReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Mobile AP is disabled by [showHotspotErrorDialog] : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto :goto_1
.end method

.method private startWifiApSettings(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 241
    sget-boolean v1, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mIsForegroundWifiSettings:Z

    if-nez v1, :cond_0

    .line 242
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 243
    .local v0, "wifiApIntent":Landroid/content/Intent;
    const-string v1, "com.samsung.settings.WIFI_AP_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 245
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 247
    .end local v0    # "wifiApIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 65
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 66
    .local v4, "action":Ljava/lang/String;
    const-string v20, "SystemUI_WifiApBroadcastReceiver"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "onReceive: action "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    if-nez v4, :cond_1

    .line 68
    const-string v20, "SystemUI_WifiApBroadcastReceiver"

    const-string v21, "action is null"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    const-string v20, "android.net.wifi.WIFI_AP_STA_ASSOCIATED_ACTION"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 74
    const-string v20, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiManager;

    .line 75
    .local v10, "mWifiManager":Landroid/net/wifi/WifiManager;
    new-instance v13, Landroid/os/Message;

    invoke-direct {v13}, Landroid/os/Message;-><init>()V

    .line 76
    .local v13, "msg":Landroid/os/Message;
    const/16 v20, 0x4d

    move/from16 v0, v20

    iput v0, v13, Landroid/os/Message;->what:I

    .line 77
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 78
    .local v5, "args":Landroid/os/Bundle;
    const-string v20, "feature"

    const-string v21, "HOTS"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v20, "extra"

    const-string v21, "Hotspot_conn"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iput-object v5, v13, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 81
    invoke-virtual {v10, v13}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 83
    const-string v20, "SystemUI_WifiApBroadcastReceiver"

    const-string v21, "onReceive: WIFI_AP_STA_ASSOCIATED_ACTION"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 84
    .end local v5    # "args":Landroid/os/Bundle;
    .end local v10    # "mWifiManager":Landroid/net/wifi/WifiManager;
    .end local v13    # "msg":Landroid/os/Message;
    :cond_2
    const-string v20, "com.samsung.settings.WIFI_AP_SEC_SETTINGS"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 85
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->startWifiApSettings(Landroid/content/Context;)V

    goto :goto_0

    .line 86
    :cond_3
    const-string v20, "com.samsung.intent.action.MIP_ERROR"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_4

    const-string v20, "com.samsung.android.intent.action.TETHERING_DENIED"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_4

    const-string v20, "com.samsung.android.intent.action.TETHERING_FAILED"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 87
    :cond_4
    const-string v20, "SPRINT"

    sget-object v21, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->getRvfMode(Landroid/content/Context;)I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    .line 88
    const-string v20, "com.samsung.intent.action.MIP_ERROR"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 89
    const-string v20, "CODE"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 90
    .local v12, "mipErrorCode":Ljava/lang/String;
    const-string v20, "SystemUI_WifiApBroadcastReceiver"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "mipErrorCode : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    if-eqz v12, :cond_0

    const-string v20, "67"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 92
    const/16 v20, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->showHotspotErrorDialog(Landroid/content/Context;ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 93
    .end local v12    # "mipErrorCode":Ljava/lang/String;
    :cond_5
    const-string v20, "com.samsung.android.intent.action.TETHERING_DENIED"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 94
    const/16 v20, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->showHotspotErrorDialog(Landroid/content/Context;ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 96
    :cond_6
    sget-boolean v20, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->DBG:Z

    if-eqz v20, :cond_7

    const-string v20, "Provisioning.disable"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "1"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 97
    :cond_7
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->showHotspotErrorDialog(Landroid/content/Context;ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 100
    :cond_8
    const-string v20, "com.samsung.android.intent.action.WIFI_ENABLE_WARNING"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 101
    const/16 v20, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->showHotspotErrorDialog(Landroid/content/Context;ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 102
    :cond_9
    const-string v20, "com.samsung.android.intent.action.WIFI_P2P_ENABLE_WARNING"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 105
    :cond_a
    const-string v20, "com.samsung.android.intent.action.WIFI_AP_ENABLE_WARNING"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 106
    const-string v20, "SystemUI_WifiApBroadcastReceiver"

    const-string v21, "onReceive: WIFIAP_ENABLE_WARNING"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/16 v20, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->showHotspotErrorDialog(Landroid/content/Context;ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 108
    :cond_b
    const-string v20, "SPRINT"

    sget-object v21, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_10

    const-string v20, "android.intent.action.RADIO_TECHNOLOGY"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_10

    .line 109
    const-string v20, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/net/wifi/WifiManager;

    .line 110
    .local v19, "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v17

    .line 111
    .local v17, "wifiApState":I
    const/16 v20, 0xc

    move/from16 v0, v17

    move/from16 v1, v20

    if-eq v0, v1, :cond_c

    const/16 v20, 0xd

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 113
    :cond_c
    const-string v20, "phoneName"

    const/16 v21, 0x2

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 114
    .local v15, "phoneType":I
    const-string v20, "SystemUI_WifiApBroadcastReceiver"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Receive android.intent.action.RADIO_TECHNOLOGY, phoneType = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 116
    .local v7, "cr":Landroid/content/ContentResolver;
    const-string v20, "phone"

    invoke-static/range {v20 .. v20}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v14

    .line 117
    .local v14, "phone":Lcom/android/internal/telephony/ITelephony;
    const/16 v11, 0xa

    .line 120
    .local v11, "maxClientNum":I
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v15, v0, :cond_e

    .line 121
    :try_start_0
    const-string v20, "chameleon_gsmmaxuser"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v7, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 136
    :cond_d
    :goto_1
    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v11, v0, :cond_f

    .line 139
    :goto_2
    const-string v20, "SystemUI_WifiApBroadcastReceiver"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "maxClientNum = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    new-instance v13, Landroid/os/Message;

    invoke-direct {v13}, Landroid/os/Message;-><init>()V

    .line 142
    .restart local v13    # "msg":Landroid/os/Message;
    const/16 v20, 0xe

    move/from16 v0, v20

    iput v0, v13, Landroid/os/Message;->what:I

    .line 143
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 144
    .local v6, "b":Landroid/os/Bundle;
    const-string v20, "maxClient"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 145
    iput-object v6, v13, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 146
    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    goto/16 :goto_0

    .line 122
    .end local v6    # "b":Landroid/os/Bundle;
    .end local v13    # "msg":Landroid/os/Message;
    :cond_e
    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v15, v0, :cond_d

    .line 128
    :try_start_1
    const-string v20, "chameleon_maxuser"

    move-object/from16 v0, v20

    invoke-static {v7, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v11

    goto :goto_1

    .line 132
    :catch_0
    move-exception v8

    .line 133
    .local v8, "e":Landroid/provider/Settings$SettingNotFoundException;
    const/16 v11, 0xa

    goto :goto_1

    .line 138
    .end local v8    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v11, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    goto :goto_2

    .line 149
    .end local v7    # "cr":Landroid/content/ContentResolver;
    .end local v11    # "maxClientNum":I
    .end local v14    # "phone":Lcom/android/internal/telephony/ITelephony;
    .end local v15    # "phoneType":I
    .end local v17    # "wifiApState":I
    .end local v19    # "wm":Landroid/net/wifi/WifiManager;
    :cond_10
    sget-boolean v20, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->SUPPORTMOBILEAPWPSPBC:Z

    if-eqz v20, :cond_11

    const-string v20, "com.nttdocomo.intent.action.SHOW_WPSDIALOG"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_11

    .line 150
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->startWifiApSettings(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 151
    :cond_11
    sget-object v20, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mHotspotActionForSimStatus:Ljava/lang/String;

    if-eqz v20, :cond_12

    sget-object v20, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mHotspotActionForSimStatus:Ljava/lang/String;

    const-string v21, "turn off"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_12

    const-string v20, "android.intent.action.SIM_STATE_CHANGED"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_12

    .line 152
    const-string v20, "ss"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 153
    .local v16, "szSimState":Ljava/lang/String;
    const-string v20, "SystemUI_WifiApBroadcastReceiver"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Recieve Sim State Changed : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const-string v20, "IMSI"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 155
    const-string v20, "phone"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 156
    .local v9, "mTelephonyManager":Landroid/telephony/TelephonyManager;
    const-string v20, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/net/wifi/WifiManager;

    .line 157
    .restart local v19    # "wm":Landroid/net/wifi/WifiManager;
    const-string v20, "SystemUI_WifiApBroadcastReceiver"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "INTENT_VALUE_ICC_IMSI changed mccmnc old = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->currentMccMnc:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " ,  new = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v20

    sput-object v20, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->currentMccMnc:Ljava/lang/String;

    .line 160
    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto/16 :goto_0

    .line 162
    .end local v9    # "mTelephonyManager":Landroid/telephony/TelephonyManager;
    .end local v16    # "szSimState":Ljava/lang/String;
    .end local v19    # "wm":Landroid/net/wifi/WifiManager;
    :cond_12
    const-string v20, "com.samsung.intent.action.PROVISION_DIALOG_DISMISSED"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 166
    const/16 v18, 0x0

    .line 168
    .local v18, "wifiSavedState":I
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "wifi_saved_state"

    invoke-static/range {v20 .. v21}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v18

    .line 172
    :goto_3
    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 173
    const-string v20, "SystemUI_WifiApBroadcastReceiver"

    const-string v21, "Need to enabled Wifi since provision dialog got dismissed in onPause"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const-string v20, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/net/wifi/WifiManager;

    .line 175
    .restart local v19    # "wm":Landroid/net/wifi/WifiManager;
    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 176
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "wifi_saved_state"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 169
    .end local v19    # "wm":Landroid/net/wifi/WifiManager;
    :catch_1
    move-exception v8

    .line 170
    .restart local v8    # "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v20, "SystemUI_WifiApBroadcastReceiver"

    const-string v21, "SettingNotFoundException"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method
