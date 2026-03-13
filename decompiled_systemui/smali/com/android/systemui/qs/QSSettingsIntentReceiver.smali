.class public Lcom/android/systemui/qs/QSSettingsIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "QSSettingsIntentReceiver.java"


# static fields
.field private static final DB_LIST_RESET:Ljava/lang/String; = "notification_panel_active_app_list_for_reset"

.field private static final DB_LIST_UPDATE:Ljava/lang/String; = "notification_panel_active_app_list"

.field private static final TAG:Ljava/lang/String; = "QSSettingsIntentReceiver"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private checkQSTileRecovery()V
    .locals 8

    .prologue
    const/4 v7, -0x2

    .line 116
    const-string v4, "QSSettingsIntentReceiver"

    const-string v5, "checkQSTileRecovery "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    if-eqz v4, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/qs/QSSettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 126
    iget-object v4, p0, Lcom/android/systemui/qs/QSSettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "shopdemo"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    .line 130
    iget-object v4, p0, Lcom/android/systemui/qs/QSSettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "notification_panel_active_app_list"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "existingList":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/qs/QSSettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "notification_panel_active_app_list_for_reset"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, "existingListForRest":Ljava/lang/String;
    const-string v4, "QSSettingsIntentReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "app_list_reset "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const-string v4, "QSSettingsIntentReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "old app_list "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 137
    move-object v3, v0

    .line 138
    .local v3, "newList":Ljava/lang/String;
    const/4 v2, 0x0

    .line 139
    .local v2, "needToUpdate":Z
    const-string v4, "MobileData"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "MobileData"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 141
    const-string v4, "Bluetooth;"

    const-string v5, "Bluetooth;MobileData;"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 142
    const/4 v2, 0x1

    .line 145
    :cond_2
    const-string v4, "WiFiHotspot"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "WiFiHotspot"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 146
    const-string v4, "WiFiHotspot;"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 147
    const/4 v2, 0x1

    .line 150
    :cond_3
    const-string v4, "PersonalMode"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "PersonalMode"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 151
    const-string v4, "PersonalMode;"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 152
    const/4 v2, 0x1

    .line 155
    :cond_4
    if-eqz v2, :cond_0

    .line 156
    iget-object v4, p0, Lcom/android/systemui/qs/QSSettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "notification_panel_active_app_list"

    invoke-static {v4, v5, v3, v7}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 157
    const-string v4, "QSSettingsIntentReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "new app_list "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 48
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 50
    .local v8, "resolver":Landroid/content/ContentResolver;
    iput-object p1, p0, Lcom/android/systemui/qs/QSSettingsIntentReceiver;->mContext:Landroid/content/Context;

    .line 52
    const-string v10, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 53
    .local v9, "salesCode":Ljava/lang/String;
    const-string v10, "ro.build.characteristics"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "deviceType":Ljava/lang/String;
    const/4 v5, 0x0

    .line 55
    .local v5, "isTablet":Z
    if-eqz v1, :cond_0

    .line 56
    const-string v10, "tablet"

    invoke-virtual {v1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 58
    :cond_0
    const-string v10, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 61
    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/qs/QSSettingsIntentReceiver;->checkQSTileRecovery()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    sget-boolean v10, Lcom/android/systemui/statusbar/Feature;->mShowVoLteQSB:Z

    if-eqz v10, :cond_4

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 68
    const-string v10, "notification_panel_active_app_list"

    const/4 v11, -0x2

    invoke-static {v8, v10, v11}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, "existingList":Ljava/lang/String;
    const-string v10, "notification_panel_active_app_list_for_reset"

    const/4 v11, -0x2

    invoke-static {v8, v10, v11}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 72
    .local v4, "existingListForRest":Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string v10, "VoLte"

    invoke-virtual {v3, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 74
    const-string v10, "MobileData"

    const-string v11, "MobileData;VoLte"

    invoke-virtual {v3, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 75
    .local v6, "newList":Ljava/lang/String;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    .line 76
    const-string v10, "notification_panel_active_app_list"

    const/4 v11, -0x2

    invoke-static {v8, v10, v6, v11}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 80
    .end local v6    # "newList":Ljava/lang/String;
    :cond_1
    if-eqz v4, :cond_2

    const-string v10, "VoLte"

    invoke-virtual {v4, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 82
    const-string v10, "MobileData"

    const-string v11, "MobileData;VoLte"

    invoke-virtual {v4, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 83
    .local v7, "newListForRest":Ljava/lang/String;
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    .line 84
    const-string v10, "notification_panel_active_app_list_for_reset"

    const/4 v11, -0x2

    invoke-static {v8, v10, v7, v11}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 108
    .end local v3    # "existingList":Ljava/lang/String;
    .end local v4    # "existingListForRest":Ljava/lang/String;
    .end local v7    # "newListForRest":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 109
    invoke-static {p1}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->handleVoWifi(Landroid/content/Context;)V

    .line 113
    :cond_3
    return-void

    .line 62
    :catch_0
    move-exception v2

    .line 63
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 88
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    sget-boolean v10, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v10, :cond_2

    const-string v10, "KOREA"

    const-string v11, "ro.csc.country_code"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    if-eqz v5, :cond_2

    .line 90
    const-string v10, "notification_panel_active_app_list"

    const/4 v11, -0x2

    invoke-static {v8, v10, v11}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 91
    .restart local v3    # "existingList":Ljava/lang/String;
    const-string v10, "notification_panel_active_app_list_for_reset"

    const/4 v11, -0x2

    invoke-static {v8, v10, v11}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 92
    .restart local v4    # "existingListForRest":Ljava/lang/String;
    const-string v10, "QSSettingsIntentReceiver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "intent "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    if-eqz v3, :cond_5

    const-string v10, "Ebook"

    invoke-virtual {v3, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 95
    const-string v10, "QSSettingsIntentReceiver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[update EbookTile] country? "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "ro.csc.country_code"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "tablet ? "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const-string v10, "DormantMode"

    const-string v11, "DormantMode;Ebook"

    invoke-virtual {v3, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 97
    .restart local v6    # "newList":Ljava/lang/String;
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_5

    .line 98
    const-string v10, "notification_panel_active_app_list"

    const/4 v11, -0x2

    invoke-static {v8, v10, v6, v11}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 101
    .end local v6    # "newList":Ljava/lang/String;
    :cond_5
    if-eqz v4, :cond_2

    const-string v10, "Ebook"

    invoke-virtual {v4, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 102
    const-string v10, "DormantMode"

    const-string v11, "DormantMode;Ebook"

    invoke-virtual {v4, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 103
    .restart local v7    # "newListForRest":Ljava/lang/String;
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    .line 104
    const-string v10, "notification_panel_active_app_list_for_reset"

    const/4 v11, -0x2

    invoke-static {v8, v10, v7, v11}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto/16 :goto_1
.end method
