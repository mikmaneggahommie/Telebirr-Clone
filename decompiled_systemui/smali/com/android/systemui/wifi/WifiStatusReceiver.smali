.class public Lcom/android/systemui/wifi/WifiStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiStatusReceiver.java"


# static fields
.field private static final CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

.field static final CSC_EAP_METHOD:Ljava/lang/String;

.field static final CSC_WIFI_ERRORCODE:Z

.field static final DEBUG:Z

.field static final ENABLE_WIFI_CONNECTION_TYPE:Z

.field static final EXTRA_INFO_TYPE:Ljava/lang/String; = "info_type"

.field static final EXTRA_SHOW_ONCE:Ljava/lang/String; = "show_dialog_once"

.field static final INFO_TYPE_DISABLE_HOTSPOT:I = 0x1

.field static final INFO_TYPE_DPM_HOTSPOT:I = 0x3

.field static final INFO_TYPE_DPM_WIFI:I = 0x2

.field static final INFO_TYPE_EAP_MESSAGE:I = 0x14

.field static final INFO_TYPE_EDM_HOTSPOT:I = 0xa

.field static final INFO_TYPE_UNABLE_TO_TURNON_IBSS:I = 0x6

.field static final INFO_TYPE_UNABLE_TO_TURNON_WIFI:I = 0x5

.field static final INFO_TYPE_UNABLE_TO_TURNON_WIFI_AT_AIRPLANE_MODE:I = 0x7

.field static final TAG:Ljava/lang/String; = "WifiStatusReceiver"

.field private static final VendorNotificationStyle:Ljava/lang/String;

.field private static mShowOnceFlag:Z

.field private static mShownConnectedToast:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 58
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_0

    move v0, v1

    :cond_0
    sput-boolean v0, Lcom/android/systemui/wifi/WifiStatusReceiver;->DEBUG:Z

    .line 72
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Wifi_EnableDetailEapErrorCodesAndState"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/wifi/WifiStatusReceiver;->CSC_WIFI_ERRORCODE:Z

    .line 74
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Wifi_EapMethodSetting"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/wifi/WifiStatusReceiver;->CSC_EAP_METHOD:Ljava/lang/String;

    .line 76
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Wifi_EnableMenuConnectionType"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/wifi/WifiStatusReceiver;->ENABLE_WIFI_CONNECTION_TYPE:Z

    .line 78
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Wifi_ConfigWifiNotificationStyle"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/wifi/WifiStatusReceiver;->VendorNotificationStyle:Ljava/lang/String;

    .line 80
    sput-boolean v1, Lcom/android/systemui/wifi/WifiStatusReceiver;->mShowOnceFlag:Z

    .line 81
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Wifi_ConfigOpBranding"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/wifi/WifiStatusReceiver;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    .line 84
    sput-boolean v1, Lcom/android/systemui/wifi/WifiStatusReceiver;->mShownConnectedToast:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static enableToShowWifiPickerDialog(Z)V
    .locals 3
    .param p0, "flag"    # Z

    .prologue
    .line 492
    sget-boolean v0, Lcom/android/systemui/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiStatusReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Want to show AP LIST:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_0
    sput-boolean p0, Lcom/android/systemui/wifi/WifiStatusReceiver;->mShowOnceFlag:Z

    .line 494
    return-void
.end method

.method private static isSameSecurity(Landroid/net/wifi/ScanResult;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 4
    .param p0, "result"    # Landroid/net/wifi/ScanResult;
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 506
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "EAP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 507
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 527
    :cond_1
    :goto_0
    return v0

    .line 511
    :cond_2
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 512
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 513
    goto :goto_0

    .line 516
    :cond_3
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "WEP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 517
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    move v0, v1

    .line 518
    goto :goto_0

    .line 524
    :cond_4
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_1

    move v0, v1

    .line 525
    goto :goto_0
.end method

.method private readSdcard(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 464
    const/4 v3, 0x0

    .line 465
    .local v3, "reader":Ljava/io/BufferedReader;
    const-string v6, "WifiStatusReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Download filename :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 467
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 469
    .local v0, "credInfo":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, p2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 471
    .local v2, "line":Ljava/lang/String;
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 472
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 476
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 477
    .end local v2    # "line":Ljava/lang/String;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 478
    const/4 v0, 0x0

    .line 481
    if-eqz v3, :cond_0

    .line 482
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 488
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_2
    return-object v0

    .line 475
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :cond_1
    :try_start_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    .line 481
    if-eqz v4, :cond_2

    .line 482
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_2
    move-object v3, v4

    .line 486
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 484
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v1

    .line 485
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 487
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 484
    .end local v2    # "line":Ljava/lang/String;
    .local v1, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 485
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 480
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 481
    :goto_3
    if-eqz v3, :cond_3

    .line 482
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 486
    :cond_3
    :goto_4
    throw v6

    .line 484
    :catch_3
    move-exception v1

    .line 485
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 480
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 476
    .end local v2    # "line":Ljava/lang/String;
    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method public static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 497
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 498
    .local v0, "length":I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 500
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 502
    .end local p0    # "string":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private startWifiPickerActivity(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 436
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 437
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x14800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 442
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    :goto_0
    return-void

    .line 443
    :catch_0
    move-exception v0

    .line 444
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v2, "WifiStatusReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can\'t start picker activity:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startWifiPickerDialog(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 449
    sget-boolean v2, Lcom/android/systemui/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "WifiStatusReceiver"

    const-string v3, "Call AP LIST dialog"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.net.wifi.SEC_PICK_WIFI_NETWORK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 451
    .local v1, "startDialogIntent":Landroid/content/Intent;
    const-string v2, "type"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 454
    const-string v2, "force_show_dialog"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 455
    const-string v2, "force_show_dialog"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 456
    .local v0, "show":Z
    const-string v2, "force_show_dialog"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 460
    .end local v0    # "show":Z
    :cond_1
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 461
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 47
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 88
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 89
    .local v4, "action":Ljava/lang/String;
    sget-boolean v41, Lcom/android/systemui/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v41, :cond_0

    const-string v41, "WifiStatusReceiver"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "action: "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    const-string v41, "com.samsung.android.net.wifi.SHOW_AP_LIST_DIALOG"

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_3

    .line 92
    sget-boolean v41, Lcom/android/systemui/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v41, :cond_1

    const-string v41, "WifiStatusReceiver"

    const-string v42, "ACTION CAME : com.samsung.android.net.wifi.SHOW_AP_LIST_DIALOG"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_1
    const-string v41, "force_show_dialog"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_2

    .line 96
    const-string v41, "force_show_dialog"

    const/16 v42, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v41

    if-eqz v41, :cond_2

    .line 97
    invoke-direct/range {p0 .. p2}, Lcom/android/systemui/wifi/WifiStatusReceiver;->startWifiPickerDialog(Landroid/content/Context;Landroid/content/Intent;)V

    .line 429
    :cond_2
    :goto_0
    return-void

    .line 102
    :cond_3
    const-string v41, "com.samsung.android.net.wifi.SHOW_INFO_MESSAGE"

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_f

    .line 103
    const-string v41, "info_type"

    const/16 v42, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v29

    .line 105
    .local v29, "msgId":I
    sparse-switch v29, :sswitch_data_0

    goto :goto_0

    .line 107
    :sswitch_0
    const v41, 0x7f0b0367

    const/16 v42, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v41

    move/from16 v2, v42

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 110
    :sswitch_1
    const v41, 0x7f0b0368

    const/16 v42, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v41

    move/from16 v2, v42

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 113
    :sswitch_2
    const v41, 0x7f0b0369

    const/16 v42, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v41

    move/from16 v2, v42

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 116
    :sswitch_3
    const v41, 0x7f0b036a

    const/16 v42, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v41

    move/from16 v2, v42

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 119
    :sswitch_4
    const v41, 0x7f0b036b

    const/16 v42, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v41

    move/from16 v2, v42

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 122
    :sswitch_5
    const v41, 0x7f0b036c

    const/16 v42, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v41

    move/from16 v2, v42

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 126
    :sswitch_6
    const v41, 0x7f0b036d

    const/16 v42, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v41

    move/from16 v2, v42

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 131
    :sswitch_7
    sget-boolean v41, Lcom/android/systemui/wifi/WifiStatusReceiver;->CSC_WIFI_ERRORCODE:Z

    if-eqz v41, :cond_e

    .line 132
    const-string v41, "message"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 133
    .local v26, "message":Ljava/lang/String;
    const-string v41, "ssid"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 134
    .local v33, "ssid":Ljava/lang/String;
    const-string v41, "WifiStatusReceiver"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "SHOW EAP SIM MESSAGE ACTION: "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    if-eqz v26, :cond_2

    .line 136
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v41

    const-string v42, "CscFeature_Wifi_SupportEapAka"

    invoke-virtual/range {v41 .. v42}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_6

    .line 137
    const-string v41, "General failure"

    move-object/from16 v0, v26

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_5

    .line 138
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v41

    const v42, 0x7f0b036f

    invoke-virtual/range {v41 .. v42}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 142
    :cond_4
    :goto_1
    const/16 v41, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move/from16 v2, v41

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 139
    :cond_5
    const-string v41, "Not subscribed to the requested service"

    move-object/from16 v0, v26

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_4

    if-eqz v33, :cond_4

    .line 140
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v41

    const v42, 0x7f0b0372

    const/16 v43, 0x1

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    aput-object v33, v43, v44

    invoke-virtual/range {v41 .. v43}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    goto :goto_1

    .line 144
    :cond_6
    const/16 v20, 0x1

    .line 145
    .local v20, "isVzwMessage":Z
    const-string v41, "There is a problem connecting you to Verizon Wi-Fi Access"

    move-object/from16 v0, v26

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_7

    .line 146
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v41

    const v42, 0x7f0b0373

    invoke-virtual/range {v41 .. v42}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 162
    :goto_2
    if-eqz v20, :cond_2

    .line 163
    const/16 v41, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move/from16 v2, v41

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 147
    :cond_7
    const-string v41, "There is a problem with your Verizon Wi-Fi Access account"

    move-object/from16 v0, v26

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_8

    .line 148
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v41

    const v42, 0x7f0b0374

    invoke-virtual/range {v41 .. v42}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v26

    goto :goto_2

    .line 149
    :cond_8
    const-string v41, "You are not subscribed to Verizon Wi-Fi Access"

    move-object/from16 v0, v26

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_9

    .line 150
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v41

    const v42, 0x7f0b0375

    invoke-virtual/range {v41 .. v42}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v26

    goto :goto_2

    .line 151
    :cond_9
    const-string v41, "You can\'t connect to Verizon Wi-Fi Access from outside the Verizon coverage area"

    move-object/from16 v0, v26

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_a

    .line 152
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v41

    const v42, 0x7f0b0376

    invoke-virtual/range {v41 .. v42}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v26

    goto :goto_2

    .line 153
    :cond_a
    const-string v41, "There is a problem with your Verizon Wi-Fi Access account2"

    move-object/from16 v0, v26

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_b

    .line 154
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v41

    const v42, 0x7f0b0374

    invoke-virtual/range {v41 .. v42}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v26

    goto :goto_2

    .line 155
    :cond_b
    const-string v41, "You are already connected to Verizon Wi-Fi Access"

    move-object/from16 v0, v26

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_c

    .line 156
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v41

    const v42, 0x7f0b0377

    invoke-virtual/range {v41 .. v42}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_2

    .line 157
    :cond_c
    const-string v41, "Verizon Wi-Fi Access is not available from your location"

    move-object/from16 v0, v26

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_d

    .line 158
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v41

    const v42, 0x7f0b0378

    invoke-virtual/range {v41 .. v42}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_2

    .line 160
    :cond_d
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 166
    .end local v20    # "isVzwMessage":Z
    .end local v26    # "message":Ljava/lang/String;
    .end local v33    # "ssid":Ljava/lang/String;
    :cond_e
    sget-object v41, Lcom/android/systemui/wifi/WifiStatusReceiver;->CSC_EAP_METHOD:Ljava/lang/String;

    const-string v42, "AKA"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_2

    .line 167
    const-string v41, "message"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 168
    .restart local v26    # "message":Ljava/lang/String;
    const-string v41, "WifiStatusReceiver"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "onReceive, message of received: "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    if-eqz v26, :cond_2

    .line 171
    const-string v41, "KTT"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v42

    const-string v43, "CscFeature_Wifi_ConfigAuthMsgDisplayPolicy"

    invoke-virtual/range {v42 .. v43}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_2

    .line 172
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v41

    const v42, 0x7f0b036e

    invoke-virtual/range {v41 .. v42}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v26

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_2

    .line 174
    const-string v41, "General failure"

    move-object/from16 v0, v26

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_2

    .line 175
    const/16 v41, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move/from16 v2, v41

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 185
    .end local v26    # "message":Ljava/lang/String;
    .end local v29    # "msgId":I
    :cond_f
    const-string v41, "KTT"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v42

    const-string v43, "CscFeature_Wifi_ConfigAuthMsgDisplayPolicy"

    invoke-virtual/range {v42 .. v43}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_18

    const-string v41, "com.kt.wifiapi.OEMExtension.NOTIFICATION"

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_18

    .line 187
    const-string v41, "ERROR_NOTIFICATION"

    const/16 v42, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 188
    .local v15, "err":I
    const-string v41, "EAP_AKA_NOTIFICATION"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 189
    .local v13, "eapAkaNotiStr":Ljava/lang/String;
    const-string v41, "EAP_NOTIFICATION"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 190
    .local v14, "eapNotiStr":Ljava/lang/String;
    const-string v41, "ERROR_NOTIFICATION"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 191
    .local v17, "errNotiStr":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v41

    const v42, 0x7f0b036f

    invoke-virtual/range {v41 .. v42}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 193
    .local v5, "authFailStr":Ljava/lang/String;
    const/16 v26, 0x0

    .line 195
    .restart local v26    # "message":Ljava/lang/String;
    if-eqz v13, :cond_10

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_12

    :cond_10
    if-eqz v14, :cond_11

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_12

    :cond_11
    if-eqz v17, :cond_14

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_14

    .line 198
    :cond_12
    move-object/from16 v26, v5

    .line 203
    :cond_13
    if-eqz v15, :cond_2

    .line 206
    const/16 v41, 0x4

    move/from16 v0, v41

    if-ne v15, v0, :cond_15

    .line 207
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v41

    const v42, 0x7f0b037a

    invoke-virtual/range {v41 .. v42}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 219
    :goto_3
    const/16 v41, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move/from16 v2, v41

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 199
    :cond_14
    const/16 v41, -0x1

    move/from16 v0, v41

    if-ne v15, v0, :cond_13

    goto/16 :goto_0

    .line 208
    :cond_15
    const/16 v41, 0x5

    move/from16 v0, v41

    if-ne v15, v0, :cond_16

    .line 209
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v41

    const v42, 0x7f0b0371

    invoke-virtual/range {v41 .. v42}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v26

    goto :goto_3

    .line 210
    :cond_16
    const/16 v41, 0x6

    move/from16 v0, v41

    if-ne v15, v0, :cond_17

    .line 211
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v41

    const v42, 0x7f0b0379

    invoke-virtual/range {v41 .. v42}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 212
    goto/16 :goto_0

    .line 213
    :cond_17
    if-eqz v26, :cond_2

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_2

    .line 214
    const-string v41, "WifiStatusReceiver"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "KT toast message : "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 221
    .end local v5    # "authFailStr":Ljava/lang/String;
    .end local v13    # "eapAkaNotiStr":Ljava/lang/String;
    .end local v14    # "eapNotiStr":Ljava/lang/String;
    .end local v15    # "err":I
    .end local v17    # "errNotiStr":Ljava/lang/String;
    .end local v26    # "message":Ljava/lang/String;
    :cond_18
    const-string v41, "android.net.wifi.STATE_CHANGE"

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_28

    .line 222
    const-string v41, "networkInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v30

    check-cast v30, Landroid/net/NetworkInfo;

    .line 223
    .local v30, "networkInfo":Landroid/net/NetworkInfo;
    const/16 v22, 0x0

    .line 225
    .local v22, "mCheckSsid":I
    if-eqz v30, :cond_26

    invoke-virtual/range {v30 .. v30}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v41

    if-eqz v41, :cond_26

    .line 226
    const/16 v41, 0x0

    sput-boolean v41, Lcom/android/systemui/wifi/WifiStatusReceiver;->mShowOnceFlag:Z

    .line 227
    const-string v41, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/net/wifi/WifiManager;

    .line 228
    .local v39, "wifiManager":Landroid/net/wifi/WifiManager;
    const-string v41, "wifiInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v38

    check-cast v38, Landroid/net/wifi/WifiInfo;

    .line 230
    .local v38, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v38, :cond_20

    .line 231
    const-string v25, "<unknown ssid>"

    .line 232
    .local v25, "mUnknownSsid":Ljava/lang/String;
    invoke-virtual/range {v39 .. v39}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_1e

    invoke-virtual/range {v38 .. v38}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_1e

    const/16 v22, 0x1

    .line 235
    :cond_19
    :goto_4
    sget-boolean v41, Lcom/android/systemui/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v41, :cond_1a

    .line 236
    const-string v41, "WifiStatusReceiver"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "getConnectionInfo.SSID : "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v39 .. v39}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const-string v41, "WifiStatusReceiver"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "wifiInfo : "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v38 .. v38}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_1a
    const-string v41, "CMCC"

    sget-object v42, Lcom/android/systemui/wifi/WifiStatusReceiver;->VendorNotificationStyle:Ljava/lang/String;

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_1c

    invoke-virtual/range {v38 .. v38}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v41

    const-string v42, "CMCC"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v41

    if-nez v41, :cond_1b

    invoke-virtual/range {v38 .. v38}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v41

    const-string v42, "\"CMCC\""

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v41

    if-eqz v41, :cond_1c

    .line 245
    :cond_1b
    const-string v41, "WifiStatusReceiver"

    const-string v42, "CMCC are included at the name of AP "

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 247
    .local v3, "WLANCmccChargeWarningIntent":Landroid/content/Intent;
    const-string v41, "com.android.settings"

    const-string v42, "com.android.settings.wifi.CMCCChargeWarningDialog"

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    const/high16 v41, 0x14800000

    move/from16 v0, v41

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 249
    const-string v41, "dialog_type"

    const-string v42, "cmcc_ap_enable_warning"

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    const-string v41, "WifiStatusReceiver"

    const-string v42, "systemui cmcc_ap_enable_warning"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    .end local v3    # "WLANCmccChargeWarningIntent":Landroid/content/Intent;
    :cond_1c
    :goto_5
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v41

    const-string v42, "CscFeature_Wifi_SupportWifiAggregation"

    invoke-virtual/range {v41 .. v42}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_1d

    invoke-virtual/range {v38 .. v38}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v41

    const-string v42, "VerizonWiFi"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_2

    invoke-virtual/range {v38 .. v38}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v41

    const-string v42, "\"VerizonWiFi\""

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_2

    .line 263
    :cond_1d
    invoke-static {}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getInstance()Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v21

    .line 264
    .local v21, "knoxCustomManager":Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    if-eqz v21, :cond_21

    invoke-virtual/range {v21 .. v21}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getWifiConnectedMessageState()Z

    move-result v41

    if-nez v41, :cond_21

    .line 265
    sget-boolean v41, Lcom/android/systemui/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v41, :cond_2

    const-string v41, "WifiStatusReceiver"

    const-string v42, "Knox Customization: suppressing Wifi connected toast"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 233
    .end local v21    # "knoxCustomManager":Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    :cond_1e
    invoke-virtual/range {v39 .. v39}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_1f

    const/16 v22, 0x2

    goto/16 :goto_4

    .line 234
    :cond_1f
    invoke-virtual/range {v38 .. v38}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_19

    const/16 v22, 0x3

    goto/16 :goto_4

    .line 240
    .end local v25    # "mUnknownSsid":Ljava/lang/String;
    :cond_20
    const-string v41, "WifiStatusReceiver"

    const-string v42, "wifiinfo is null"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 253
    .restart local v3    # "WLANCmccChargeWarningIntent":Landroid/content/Intent;
    .restart local v25    # "mUnknownSsid":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 254
    .local v12, "e":Ljava/lang/IllegalStateException;
    const-string v41, "WifiStatusReceiver"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "can\'t start picker activity:"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual {v12}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 269
    .end local v3    # "WLANCmccChargeWarningIntent":Landroid/content/Intent;
    .end local v12    # "e":Ljava/lang/IllegalStateException;
    .restart local v21    # "knoxCustomManager":Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    :cond_21
    new-instance v28, Landroid/os/Message;

    invoke-direct/range {v28 .. v28}, Landroid/os/Message;-><init>()V

    .line 270
    .local v28, "msg1":Landroid/os/Message;
    const/16 v41, 0xdc

    move/from16 v0, v41

    move-object/from16 v1, v28

    iput v0, v1, Landroid/os/Message;->what:I

    .line 272
    invoke-virtual/range {v39 .. v39}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v41

    if-eqz v41, :cond_2

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v41

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v42

    invoke-static/range {v42 .. v42}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v42

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_2

    move-object/from16 v0, v39

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v41

    if-nez v41, :cond_2

    .line 275
    const-string v41, "ro.build.scafe.cream"

    invoke-static/range {v41 .. v41}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    const-string v42, "white"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v41

    if-eqz v41, :cond_22

    .line 276
    new-instance v10, Landroid/view/ContextThemeWrapper;

    const v41, 0x103012b

    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-direct {v10, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .end local p1    # "context":Landroid/content/Context;
    .local v10, "context":Landroid/content/Context;
    move-object/from16 p1, v10

    .line 279
    .end local v10    # "context":Landroid/content/Context;
    .restart local p1    # "context":Landroid/content/Context;
    :cond_22
    const-string v23, ""

    .line 280
    .local v23, "mMsg":Ljava/lang/String;
    const/16 v41, 0x1

    move/from16 v0, v22

    move/from16 v1, v41

    if-eq v0, v1, :cond_25

    .line 281
    const/16 v41, 0x3

    move/from16 v0, v22

    move/from16 v1, v41

    if-ne v0, v1, :cond_23

    invoke-virtual/range {v39 .. v39}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Lcom/android/systemui/wifi/WifiStatusReceiver;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 284
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v41

    const v42, 0x7f0c0044

    invoke-virtual/range {v41 .. v42}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v41

    const-string v42, "#ff"

    const-string v43, "#"

    invoke-virtual/range {v41 .. v43}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 285
    .local v6, "colorText":Ljava/lang/String;
    const-string v41, "#DEAD00"

    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_24

    .line 286
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v41

    const v42, 0x7f0b037b

    const/16 v43, 0x1

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    aput-object v23, v43, v44

    invoke-virtual/range {v41 .. v43}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    .line 288
    .local v27, "msg":Ljava/lang/String;
    const/16 v41, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    move/from16 v2, v41

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 282
    .end local v6    # "colorText":Ljava/lang/String;
    .end local v27    # "msg":Ljava/lang/String;
    :cond_23
    invoke-virtual/range {v38 .. v38}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Lcom/android/systemui/wifi/WifiStatusReceiver;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    goto :goto_6

    .line 291
    .restart local v6    # "colorText":Ljava/lang/String;
    :cond_24
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v41

    const v42, 0x7f0b037b

    const/16 v43, 0x1

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "<font color="

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, ">"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-static/range {v23 .. v23}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "</font>"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    aput-object v45, v43, v44

    invoke-virtual/range {v41 .. v43}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    .line 294
    .restart local v27    # "msg":Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v41

    const/16 v42, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v35

    .line 295
    .local v35, "toast":Landroid/widget/Toast;
    invoke-virtual/range {v35 .. v35}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v41

    const v42, 0x102000b

    invoke-virtual/range {v41 .. v42}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v36

    check-cast v36, Landroid/widget/TextView;

    .line 296
    .local v36, "tv":Landroid/widget/TextView;
    const/16 v41, 0x11

    move-object/from16 v0, v36

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 297
    invoke-virtual/range {v35 .. v35}, Landroid/widget/Toast;->show()V

    .line 298
    const/16 v41, 0x1

    sput-boolean v41, Lcom/android/systemui/wifi/WifiStatusReceiver;->mShownConnectedToast:Z
    :try_end_1
    .catch Ljava/util/UnknownFormatConversionException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 299
    .end local v27    # "msg":Ljava/lang/String;
    .end local v35    # "toast":Landroid/widget/Toast;
    .end local v36    # "tv":Landroid/widget/TextView;
    :catch_1
    move-exception v12

    .line 300
    .local v12, "e":Ljava/util/UnknownFormatConversionException;
    const-string v41, "WifiStatusReceiver"

    invoke-virtual {v12}, Ljava/util/UnknownFormatConversionException;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 304
    .end local v6    # "colorText":Ljava/lang/String;
    .end local v12    # "e":Ljava/util/UnknownFormatConversionException;
    :cond_25
    const-string v41, "WifiStatusReceiver"

    const-string v42, "Ignore wifi connected toast. Because wifi is not enabled"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 307
    .end local v21    # "knoxCustomManager":Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    .end local v23    # "mMsg":Ljava/lang/String;
    .end local v25    # "mUnknownSsid":Ljava/lang/String;
    .end local v28    # "msg1":Landroid/os/Message;
    .end local v38    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v39    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_26
    if-eqz v30, :cond_2

    .line 308
    const-string v41, "VZW"

    sget-object v42, Lcom/android/systemui/wifi/WifiStatusReceiver;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_2

    .line 309
    sget-boolean v41, Lcom/android/systemui/wifi/WifiStatusReceiver;->mShownConnectedToast:Z

    if-eqz v41, :cond_27

    .line 310
    const v41, 0x7f0b037d

    const/16 v42, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v41

    move/from16 v2, v42

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v35

    .line 311
    .restart local v35    # "toast":Landroid/widget/Toast;
    invoke-virtual/range {v35 .. v35}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v41

    const v42, 0x102000b

    invoke-virtual/range {v41 .. v42}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v36

    check-cast v36, Landroid/widget/TextView;

    .line 312
    .restart local v36    # "tv":Landroid/widget/TextView;
    const/16 v41, 0x11

    move-object/from16 v0, v36

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 313
    invoke-virtual/range {v35 .. v35}, Landroid/widget/Toast;->show()V

    .line 315
    .end local v35    # "toast":Landroid/widget/Toast;
    .end local v36    # "tv":Landroid/widget/TextView;
    :cond_27
    const/16 v41, 0x0

    sput-boolean v41, Lcom/android/systemui/wifi/WifiStatusReceiver;->mShownConnectedToast:Z

    goto/16 :goto_0

    .line 318
    .end local v22    # "mCheckSsid":I
    .end local v30    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_28
    const-string v41, "com.samsung.intent.action.BCS_REQUEST"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_2d

    .line 319
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    .line 320
    .local v11, "data":Landroid/os/Bundle;
    if-nez v11, :cond_29

    .line 321
    const-string v41, "WifiStatusReceiver"

    const-string v42, "there is no extras"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 324
    :cond_29
    const-string v41, "command"

    move-object/from16 v0, v41

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 325
    .local v7, "command":Ljava/lang/String;
    if-eqz v7, :cond_2a

    .line 327
    const-string v41, " "

    const-string v42, ""

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 329
    :cond_2a
    const-string v41, "AT+WIFIVALUE"

    move-object/from16 v0, v41

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_2

    .line 330
    const-string v41, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/net/wifi/WifiManager;

    .line 331
    .restart local v39    # "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v39 .. v39}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v40

    .line 332
    .local v40, "wifiState":I
    const/16 v41, 0x2

    move/from16 v0, v40

    move/from16 v1, v41

    if-eq v0, v1, :cond_2b

    const/16 v41, 0x3

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_2c

    .line 333
    :cond_2b
    new-instance v41, Landroid/content/Intent;

    const-string v42, "com.samsung.intent.action.BCS_RESPONSE"

    invoke-direct/range {v41 .. v42}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v42, "response"

    const-string v43, "ON"

    invoke-virtual/range {v41 .. v43}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v41

    move-object/from16 v0, p1

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 336
    :cond_2c
    new-instance v41, Landroid/content/Intent;

    const-string v42, "com.samsung.intent.action.BCS_RESPONSE"

    invoke-direct/range {v41 .. v42}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v42, "response"

    const-string v43, "OFF"

    invoke-virtual/range {v41 .. v43}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v41

    move-object/from16 v0, p1

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 340
    .end local v7    # "command":Ljava/lang/String;
    .end local v11    # "data":Landroid/os/Bundle;
    .end local v39    # "wifiManager":Landroid/net/wifi/WifiManager;
    .end local v40    # "wifiState":I
    :cond_2d
    const-string v41, "android.net.wifi.SCAN_RESULTS"

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_38

    .line 341
    sget-boolean v41, Lcom/android/systemui/wifi/WifiStatusReceiver;->mShowOnceFlag:Z

    if-eqz v41, :cond_2

    .line 342
    const/16 v41, 0x0

    sput-boolean v41, Lcom/android/systemui/wifi/WifiStatusReceiver;->mShowOnceFlag:Z

    .line 343
    const-string v41, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/net/wifi/WifiManager;

    .line 345
    .restart local v39    # "wifiManager":Landroid/net/wifi/WifiManager;
    const/4 v9, 0x0

    .line 346
    .local v9, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual/range {v39 .. v39}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v32

    .line 348
    .local v32, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual/range {v39 .. v39}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v41

    if-eqz v41, :cond_2e

    .line 349
    invoke-virtual/range {v39 .. v39}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v9

    .line 354
    :cond_2e
    const/16 v34, 0x0

    .line 356
    .local v34, "ssid_count":I
    if-nez v9, :cond_31

    .line 357
    const-string v41, "WifiStatusReceiver"

    const-string v42, "constructAccessPoints config is null"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_2f
    :goto_7
    const-string v41, "WifiStatusReceiver"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "SCAN_RESULTS_AVAILABLE_ACTION RECEIVED : mShowOnceFlag - true, ssid_count - "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-virtual/range {v39 .. v39}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v41

    if-eqz v41, :cond_37

    sget-boolean v41, Lcom/android/systemui/wifi/WifiStatusReceiver;->ENABLE_WIFI_CONNECTION_TYPE:Z

    if-eqz v41, :cond_37

    .line 379
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v41

    const-string v42, "wifi_cmcc_manual"

    const/16 v43, 0x0

    invoke-static/range {v41 .. v43}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v37

    .line 380
    .local v37, "wifiConnectionType":I
    const-string v41, "WifiStatusReceiver"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "wifiConnectionType is"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const/16 v41, 0x2

    move/from16 v0, v37

    move/from16 v1, v41

    if-eq v0, v1, :cond_2

    if-eqz v34, :cond_30

    if-eqz v37, :cond_2

    .line 382
    :cond_30
    invoke-direct/range {p0 .. p2}, Lcom/android/systemui/wifi/WifiStatusReceiver;->startWifiPickerDialog(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 359
    .end local v37    # "wifiConnectionType":I
    :cond_31
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_32
    :goto_8
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v41

    if-eqz v41, :cond_2f

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiConfiguration;

    .line 360
    .local v8, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v8, :cond_33

    .line 361
    const-string v41, "WifiStatusReceiver"

    const-string v42, "constructAccessPoints config is null"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 364
    :cond_33
    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v41, v0

    if-nez v41, :cond_36

    const-string v33, ""

    .line 365
    .restart local v33    # "ssid":Ljava/lang/String;
    :goto_9
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :cond_34
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v41

    if-eqz v41, :cond_35

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/net/wifi/ScanResult;

    .line 366
    .local v31, "result":Landroid/net/wifi/ScanResult;
    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 368
    .local v24, "mScanSSid":Ljava/lang/String;
    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_34

    move-object/from16 v0, v31

    invoke-static {v0, v8}, Lcom/android/systemui/wifi/WifiStatusReceiver;->isSameSecurity(Landroid/net/wifi/ScanResult;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v41

    if-eqz v41, :cond_34

    .line 369
    add-int/lit8 v34, v34, 0x1

    .line 373
    .end local v24    # "mScanSSid":Ljava/lang/String;
    .end local v31    # "result":Landroid/net/wifi/ScanResult;
    :cond_35
    if-eqz v34, :cond_32

    goto/16 :goto_7

    .line 364
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v33    # "ssid":Ljava/lang/String;
    :cond_36
    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lcom/android/systemui/wifi/WifiStatusReceiver;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    goto :goto_9

    .line 383
    .end local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_37
    invoke-virtual/range {v39 .. v39}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v41

    if-eqz v41, :cond_2

    if-nez v34, :cond_2

    .line 384
    invoke-direct/range {p0 .. p2}, Lcom/android/systemui/wifi/WifiStatusReceiver;->startWifiPickerDialog(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 387
    .end local v9    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v32    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .end local v34    # "ssid_count":I
    .end local v39    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_38
    const-string v41, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_3a

    .line 388
    const-string v41, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/net/wifi/WifiManager;

    .line 389
    .restart local v39    # "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v39 .. v39}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v41

    if-eqz v41, :cond_2

    .line 390
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v41

    if-eqz v41, :cond_2

    .line 391
    const-string v41, "WifiStatusReceiver"

    const-string v42, "Factory Mode is ON. Turn off Wi-Fi"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const/16 v41, 0x0

    move-object/from16 v0, v39

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 393
    const-string v41, "ATT"

    sget-object v42, Lcom/android/systemui/wifi/WifiStatusReceiver;->VendorNotificationStyle:Ljava/lang/String;

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_39

    .line 394
    const-string v41, "WifiStatusReceiver"

    const-string v42, "Factory Mode is ON. Disabled internet service check"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v41

    const-string v42, "wifi_watchdog_poor_network_test_enabled"

    const/16 v43, 0x0

    invoke-static/range {v41 .. v43}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 398
    :cond_39
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v41

    const v42, 0x7f0b037e

    invoke-virtual/range {v41 .. v42}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 399
    .local v16, "errMsg":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v41

    const/16 v42, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 404
    .end local v16    # "errMsg":Ljava/lang/String;
    .end local v39    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_3a
    const-string v41, "ACTION_AGGREGATION_DELAY"

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_3d

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v41

    const-string v42, "CscFeature_Wifi_SupportWifiAggregation"

    invoke-virtual/range {v41 .. v42}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_3d

    .line 405
    const-string v41, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/net/wifi/WifiManager;

    .line 406
    .restart local v39    # "wifiManager":Landroid/net/wifi/WifiManager;
    const/16 v33, 0x0

    .line 407
    .restart local v33    # "ssid":Ljava/lang/String;
    if-eqz v39, :cond_3b

    .line 408
    invoke-virtual/range {v39 .. v39}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v33

    .line 409
    :cond_3b
    if-eqz v33, :cond_2

    .line 410
    const-string v41, "ro.build.scafe.cream"

    invoke-static/range {v41 .. v41}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    const-string v42, "white"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v41

    if-eqz v41, :cond_3c

    .line 411
    new-instance v10, Landroid/view/ContextThemeWrapper;

    const v41, 0x103012b

    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-direct {v10, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .end local p1    # "context":Landroid/content/Context;
    .restart local v10    # "context":Landroid/content/Context;
    move-object/from16 p1, v10

    .line 413
    .end local v10    # "context":Landroid/content/Context;
    .restart local p1    # "context":Landroid/content/Context;
    :cond_3c
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v41

    const v42, 0x7f0c0044

    invoke-virtual/range {v41 .. v42}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v41

    const-string v42, "#ff"

    const-string v43, "#"

    invoke-virtual/range {v41 .. v43}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 414
    .restart local v6    # "colorText":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v41

    const v42, 0x7f0b037b

    const/16 v43, 0x1

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "<font color="

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, ">"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-static/range {v33 .. v33}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "</font>"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    aput-object v45, v43, v44

    invoke-virtual/range {v41 .. v43}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    .line 417
    .restart local v27    # "msg":Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v41

    const/16 v42, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v35

    .line 418
    .restart local v35    # "toast":Landroid/widget/Toast;
    invoke-virtual/range {v35 .. v35}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v41

    const v42, 0x102000b

    invoke-virtual/range {v41 .. v42}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v36

    check-cast v36, Landroid/widget/TextView;

    .line 419
    .restart local v36    # "tv":Landroid/widget/TextView;
    const/16 v41, 0x11

    move-object/from16 v0, v36

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 420
    invoke-virtual/range {v35 .. v35}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 423
    .end local v6    # "colorText":Ljava/lang/String;
    .end local v27    # "msg":Ljava/lang/String;
    .end local v33    # "ssid":Ljava/lang/String;
    .end local v35    # "toast":Landroid/widget/Toast;
    .end local v36    # "tv":Landroid/widget/TextView;
    .end local v39    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_3d
    const-string v41, "ACTION_AGGREGATION_DISCONNECT"

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_2

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v41

    const-string v42, "CscFeature_Wifi_SupportWifiAggregation"

    invoke-virtual/range {v41 .. v42}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_2

    .line 424
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v41

    const v42, 0x7f0b037c

    invoke-virtual/range {v41 .. v42}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 425
    .restart local v27    # "msg":Ljava/lang/String;
    const/16 v41, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    move/from16 v2, v41

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v35

    .line 426
    .restart local v35    # "toast":Landroid/widget/Toast;
    invoke-virtual/range {v35 .. v35}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 105
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x5 -> :sswitch_3
        0x6 -> :sswitch_4
        0x7 -> :sswitch_5
        0xa -> :sswitch_6
        0x14 -> :sswitch_7
    .end sparse-switch
.end method
