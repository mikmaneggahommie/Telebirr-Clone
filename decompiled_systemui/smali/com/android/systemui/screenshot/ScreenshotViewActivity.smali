.class public Lcom/android/systemui/screenshot/ScreenshotViewActivity;
.super Landroid/app/Activity;
.source "ScreenshotViewActivity.java"


# static fields
.field private static final SCREENSHOT_NOTIFICATION_ID:I = 0x315

.field private static final TAG:Ljava/lang/String; = "ScreenshotViewActivity"


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private doFinish()V
    .locals 4

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotViewActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0526

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 120
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/android/systemui/screenshot/ScreenshotViewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 121
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    const/16 v1, 0x315

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 122
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotViewActivity;->finish()V

    .line 123
    return-void
.end method


# virtual methods
.method public getPathFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 102
    const/4 v7, 0x0

    .line 103
    .local v7, "path":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotViewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 105
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 110
    :cond_0
    if-eqz v6, :cond_1

    .line 111
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 114
    :cond_1
    return-object v7

    .line 110
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 111
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/systemui/screenshot/ScreenshotViewActivity;->requestWindowFeature(I)Z

    .line 49
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 50
    .local v4, "intent":Landroid/content/Intent;
    const-string v8, "imageUri"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, "imageUri":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 52
    const-string v8, "ScreenshotViewActivity"

    const-string v9, "onCreate : imageUri is null."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotViewActivity;->doFinish()V

    .line 99
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 58
    .local v7, "uri":Landroid/net/Uri;
    invoke-virtual {p0, v7}, Lcom/android/systemui/screenshot/ScreenshotViewActivity;->getPathFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    .line 59
    .local v6, "path":Ljava/lang/String;
    if-nez v6, :cond_1

    .line 60
    const-string v8, "ScreenshotViewActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onCreate : Item is not exist in media provider : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotViewActivity;->doFinish()V

    goto :goto_0

    .line 65
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 66
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    .line 67
    const-string v8, "ScreenshotViewActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onCreate : Item is not exist : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotViewActivity;->doFinish()V

    goto :goto_0

    .line 72
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotViewActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/screenshot/ScreenshotViewActivity;->mContext:Landroid/content/Context;

    .line 74
    iget-object v8, p0, Lcom/android/systemui/screenshot/ScreenshotViewActivity;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v1

    .line 75
    .local v1, "em":Lcom/sec/android/emergencymode/EmergencyManager;
    iget-object v8, p0, Lcom/android/systemui/screenshot/ScreenshotViewActivity;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 76
    const/16 v8, 0x200

    invoke-virtual {v1, v8}, Lcom/sec/android/emergencymode/EmergencyManager;->checkModeType(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 77
    const-string v8, "ScreenshotViewActivity"

    const-string v9, "onCreate : Ultra Power Saving Mode On"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotViewActivity;->doFinish()V

    goto :goto_0

    .line 80
    :cond_3
    const-string v8, "ScreenshotViewActivity"

    const-string v9, "onCreate : Emergency Mode On"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 86
    :cond_4
    const-string v8, "device_policy"

    invoke-virtual {p0, v8}, Lcom/android/systemui/screenshot/ScreenshotViewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 87
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 88
    const-string v8, "ScreenshotViewActivity"

    const-string v9, "onCreate : DO-NFC Mode On"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotViewActivity;->doFinish()V

    goto/16 :goto_0

    .line 94
    :cond_5
    new-instance v5, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 95
    .local v5, "launchIntent":Landroid/content/Intent;
    const-string v8, "image/png"

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    const/high16 v8, 0x10000000

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 97
    invoke-virtual {p0, v5}, Lcom/android/systemui/screenshot/ScreenshotViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotViewActivity;->finish()V

    goto/16 :goto_0
.end method
