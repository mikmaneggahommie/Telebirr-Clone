.class public Lcom/android/systemui/cooldown/OverheatReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OverheatReceiver.java"


# static fields
.field public static final ACTION_CHECK_COOLDOWN_LEVEL:Ljava/lang/String; = "com.samsung.CHECK_COOLDOWN_LEVEL"

.field public static final ACTION_PROCESS_SIOP:Ljava/lang/String; = "com.samsung.PROCESS_SIOP"

.field static final DEBUG:Z = true

.field private static final MESSAGE_ID:I = 0x1c379

.field private static final MESSAGE_SAFEMODE_ID:I = 0x22354

.field private static final ONE_SECOND:J = 0x3e8L

.field private static final SAFE_MODE_ACTION:Ljava/lang/String; = "com.sec.android.intent.action.SAFEMODE_ENABLE"

.field private static final TAG:Ljava/lang/String; = "OverheatReceiver"

.field private static final THIRTY_SECONDS:J = 0x7530L


# instance fields
.field private Compare_cool_level:I

.field private final NOTI_END_LEVEL:I

.field private final NOTI_END_LEVEL_GLOBAL:I

.field private final NOTI_LEVEL:I

.field private final NOTI_LEVEL_GLOBAL_1:I

.field private final NOTI_LEVEL_GLOBAL_2:I

.field private isSafeMode:Z

.field isVZW:Z

.field final mSalesCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 35
    iput-boolean v1, p0, Lcom/android/systemui/cooldown/OverheatReceiver;->isSafeMode:Z

    .line 38
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/systemui/cooldown/OverheatReceiver;->NOTI_LEVEL:I

    .line 40
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/systemui/cooldown/OverheatReceiver;->NOTI_END_LEVEL:I

    .line 45
    iput v1, p0, Lcom/android/systemui/cooldown/OverheatReceiver;->NOTI_END_LEVEL_GLOBAL:I

    .line 46
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/cooldown/OverheatReceiver;->NOTI_LEVEL_GLOBAL_1:I

    .line 47
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/cooldown/OverheatReceiver;->NOTI_LEVEL_GLOBAL_2:I

    .line 54
    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/cooldown/OverheatReceiver;->mSalesCode:Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/android/systemui/cooldown/OverheatReceiver;->mSalesCode:Ljava/lang/String;

    const-string v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/cooldown/OverheatReceiver;->isVZW:Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 62
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_2

    .line 63
    :cond_0
    const-string v17, "OverheatReceiver"

    const-string v18, "onReceive(): context or , intent.getAction() is null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_1
    :goto_0
    return-void

    .line 68
    :cond_2
    const-string v17, "OverheatReceiver"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "onReceive() getAction : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string v18, "com.samsung.CHECK_COOLDOWN_LEVEL"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/cooldown/OverheatReceiver;->isVZW:Z

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 73
    :try_start_0
    const-string v17, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 75
    .local v8, "notiManager":Landroid/app/NotificationManager;
    const-string v17, "check_cooldown_level"

    const/16 v18, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/cooldown/OverheatReceiver;->Compare_cool_level:I

    .line 76
    const-string v17, "OverheatReceiver"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "into Cooling +"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/cooldown/OverheatReceiver;->Compare_cool_level:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/16 v17, 0x0

    new-instance v18, Landroid/content/Intent;

    const-string v19, "com.samsung.PROCESS_SIOP"

    invoke-direct/range {v18 .. v19}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 82
    .local v10, "overheatIntent":Landroid/app/PendingIntent;
    const-string v17, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/app/AlarmManager;

    move-object/from16 v0, v17

    check-cast v0, Landroid/app/AlarmManager;

    move-object v4, v0

    .line 86
    .local v4, "alarmManager":Landroid/app/AlarmManager;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/cooldown/OverheatReceiver;->Compare_cool_level:I

    move/from16 v17, v0

    if-ltz v17, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/cooldown/OverheatReceiver;->Compare_cool_level:I

    move/from16 v17, v0

    const/16 v18, 0x6

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_3

    .line 87
    const-string v17, "OverheatReceiver"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "into level condition 6up +"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/cooldown/OverheatReceiver;->Compare_cool_level:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const/16 v17, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    const-wide/16 v20, 0x7530

    add-long v18, v18, v20

    move/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-virtual {v4, v0, v1, v2, v10}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 96
    .end local v4    # "alarmManager":Landroid/app/AlarmManager;
    .end local v8    # "notiManager":Landroid/app/NotificationManager;
    .end local v10    # "overheatIntent":Landroid/app/PendingIntent;
    :catch_0
    move-exception v6

    .line 97
    .local v6, "e5":Ljava/lang/Exception;
    const-string v17, "OverheatReceiver"

    const-string v18, "Failed try statement"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 90
    .end local v6    # "e5":Ljava/lang/Exception;
    .restart local v4    # "alarmManager":Landroid/app/AlarmManager;
    .restart local v8    # "notiManager":Landroid/app/NotificationManager;
    .restart local v10    # "overheatIntent":Landroid/app/PendingIntent;
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/cooldown/OverheatReceiver;->Compare_cool_level:I

    move/from16 v17, v0

    if-ltz v17, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/cooldown/OverheatReceiver;->Compare_cool_level:I

    move/from16 v17, v0

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_1

    .line 91
    const v17, 0x1c379

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 92
    invoke-virtual {v4, v10}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 93
    const-string v17, "OverheatReceiver"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "into level condition 5 down -"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/cooldown/OverheatReceiver;->Compare_cool_level:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 99
    .end local v4    # "alarmManager":Landroid/app/AlarmManager;
    .end local v8    # "notiManager":Landroid/app/NotificationManager;
    .end local v10    # "overheatIntent":Landroid/app/PendingIntent;
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string v18, "com.samsung.CHECK_COOLDOWN_LEVEL"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/cooldown/OverheatReceiver;->isVZW:Z

    move/from16 v17, v0

    if-nez v17, :cond_5

    .line 102
    const v15, 0x7f0b05ca

    .line 103
    .local v15, "tickerTitle":I
    const v12, 0x7f0b05c6

    .line 104
    .local v12, "tickerText":I
    const v13, 0x7f0b05cb

    .line 106
    .local v13, "tickerText2":I
    :try_start_2
    const-string v17, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 107
    .restart local v8    # "notiManager":Landroid/app/NotificationManager;
    const-string v17, "battery_overheat_level"

    const/16 v18, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/cooldown/OverheatReceiver;->Compare_cool_level:I

    .line 108
    const-string v17, "OverheatReceiver"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "into Cooling +"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/cooldown/OverheatReceiver;->Compare_cool_level:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 111
    .local v5, "coolingintent":Landroid/content/Intent;
    const-string v17, "com.android.systemui"

    const-string v18, "com.android.systemui.cooldown.Overheat"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v5, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 115
    .local v11, "pendingIntent":Landroid/app/PendingIntent;
    const/4 v9, 0x0

    .line 117
    .local v9, "notification":Landroid/app/Notification;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/cooldown/OverheatReceiver;->Compare_cool_level:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 153
    const-string v17, "OverheatReceiver"

    const-string v18, "Ivalid level value"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 161
    .end local v5    # "coolingintent":Landroid/content/Intent;
    .end local v8    # "notiManager":Landroid/app/NotificationManager;
    .end local v9    # "notification":Landroid/app/Notification;
    .end local v11    # "pendingIntent":Landroid/app/PendingIntent;
    :catch_1
    move-exception v6

    .line 162
    .restart local v6    # "e5":Ljava/lang/Exception;
    const-string v17, "OverheatReceiver"

    const-string v18, "Failed try statement"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 120
    .end local v6    # "e5":Ljava/lang/Exception;
    .restart local v5    # "coolingintent":Landroid/content/Intent;
    .restart local v8    # "notiManager":Landroid/app/NotificationManager;
    .restart local v9    # "notification":Landroid/app/Notification;
    .restart local v11    # "pendingIntent":Landroid/app/PendingIntent;
    :pswitch_0
    const v17, 0x1c379

    :try_start_3
    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    .line 125
    :pswitch_1
    new-instance v9, Landroid/app/Notification;

    .end local v9    # "notification":Landroid/app/Notification;
    const v17, 0x7f0203b7

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-direct {v9, v0, v1, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 128
    .restart local v9    # "notification":Landroid/app/Notification;
    iget v0, v9, Landroid/app/Notification;->flags:I

    move/from16 v17, v0

    or-int/lit8 v17, v17, 0x20

    move/from16 v0, v17

    iput v0, v9, Landroid/app/Notification;->flags:I

    .line 129
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v9, v0, v1, v2, v11}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 133
    const v17, 0x1c379

    move/from16 v0, v17

    invoke-virtual {v8, v0, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 137
    :pswitch_2
    new-instance v17, Landroid/app/Notification$BigTextStyle;

    new-instance v18, Landroid/app/Notification$Builder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v18

    const v19, 0x7f0203b7

    invoke-virtual/range {v18 .. v19}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/app/Notification$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v9

    .line 148
    iget v0, v9, Landroid/app/Notification;->flags:I

    move/from16 v17, v0

    or-int/lit8 v17, v17, 0x20

    move/from16 v0, v17

    iput v0, v9, Landroid/app/Notification;->flags:I

    .line 149
    const v17, 0x1c379

    move/from16 v0, v17

    invoke-virtual {v8, v0, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 164
    .end local v5    # "coolingintent":Landroid/content/Intent;
    .end local v8    # "notiManager":Landroid/app/NotificationManager;
    .end local v9    # "notification":Landroid/app/Notification;
    .end local v11    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v12    # "tickerText":I
    .end local v13    # "tickerText2":I
    .end local v15    # "tickerTitle":I
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string v18, "com.samsung.PROCESS_SIOP"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 166
    :try_start_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/cooldown/OverheatReceiver;->isVZW:Z

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 168
    const-string v17, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 170
    .restart local v8    # "notiManager":Landroid/app/NotificationManager;
    const v15, 0x7f0b05cc

    .line 171
    .restart local v15    # "tickerTitle":I
    const v12, 0x7f0b05ce

    .line 174
    .restart local v12    # "tickerText":I
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 175
    .restart local v5    # "coolingintent":Landroid/content/Intent;
    const-string v17, "com.android.systemui"

    const-string v18, "com.android.systemui.cooldown.Overheat"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v5, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 180
    .restart local v11    # "pendingIntent":Landroid/app/PendingIntent;
    new-instance v9, Landroid/app/Notification;

    const v17, 0x7f0203b7

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-direct {v9, v0, v1, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 183
    .restart local v9    # "notification":Landroid/app/Notification;
    iget v0, v9, Landroid/app/Notification;->flags:I

    move/from16 v17, v0

    or-int/lit8 v17, v17, 0x10

    move/from16 v0, v17

    iput v0, v9, Landroid/app/Notification;->flags:I

    .line 184
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v9, v0, v1, v2, v11}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 188
    const v17, 0x1c379

    move/from16 v0, v17

    invoke-virtual {v8, v0, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 214
    .end local v5    # "coolingintent":Landroid/content/Intent;
    .end local v8    # "notiManager":Landroid/app/NotificationManager;
    .end local v9    # "notification":Landroid/app/Notification;
    .end local v11    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v12    # "tickerText":I
    .end local v15    # "tickerTitle":I
    :catch_2
    move-exception v7

    .line 215
    .local v7, "e6":Ljava/lang/Exception;
    const-string v17, "OverheatReceiver"

    const-string v18, "Failed try statement"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 192
    .end local v7    # "e6":Ljava/lang/Exception;
    :cond_6
    :try_start_5
    const-string v17, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 194
    .restart local v8    # "notiManager":Landroid/app/NotificationManager;
    const v15, 0x7f0b05c4

    .line 195
    .restart local v15    # "tickerTitle":I
    const v12, 0x7f0b05c6

    .line 198
    .restart local v12    # "tickerText":I
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 199
    .restart local v5    # "coolingintent":Landroid/content/Intent;
    const-string v17, "com.android.systemui"

    const-string v18, "com.android.systemui.cooldown.Overheat"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v5, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 204
    .restart local v11    # "pendingIntent":Landroid/app/PendingIntent;
    new-instance v9, Landroid/app/Notification;

    const v17, 0x7f0203b7

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-direct {v9, v0, v1, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 207
    .restart local v9    # "notification":Landroid/app/Notification;
    iget v0, v9, Landroid/app/Notification;->flags:I

    move/from16 v17, v0

    or-int/lit8 v17, v17, 0x20

    move/from16 v0, v17

    iput v0, v9, Landroid/app/Notification;->flags:I

    .line 208
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v9, v0, v1, v2, v11}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 212
    const v17, 0x1c379

    move/from16 v0, v17

    invoke-virtual {v8, v0, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 217
    .end local v5    # "coolingintent":Landroid/content/Intent;
    .end local v8    # "notiManager":Landroid/app/NotificationManager;
    .end local v9    # "notification":Landroid/app/Notification;
    .end local v11    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v12    # "tickerText":I
    .end local v15    # "tickerTitle":I
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string v18, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_8

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string v18, "com.sec.android.intent.action.SAFEMODE_ENABLE"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 219
    :cond_8
    :try_start_6
    const-string v17, "OverheatReceiver"

    const-string v18, "into the SAFE_MODE_ACTION"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const-string v17, "OverheatReceiver"

    const-string v18, "VZW on -> change to Global UX [safe mode]"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const-string v17, "window"

    invoke-static/range {v17 .. v17}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/view/IWindowManager;->isSafeModeEnabled()Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/cooldown/OverheatReceiver;->isSafeMode:Z

    .line 222
    const-string v17, "OverheatReceiver"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "isSafeMode = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/cooldown/OverheatReceiver;->isSafeMode:Z

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/cooldown/OverheatReceiver;->isVZW:Z

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/cooldown/OverheatReceiver;->isSafeMode:Z

    move/from16 v17, v0

    if-eqz v17, :cond_9

    .line 225
    const-string v17, "OverheatReceiver"

    const-string v18, "VZW on"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const-string v17, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 228
    .restart local v8    # "notiManager":Landroid/app/NotificationManager;
    const v16, 0x7f0b05dd

    .line 229
    .local v16, "tickerTitle_safemode":I
    const v14, 0x7f0b05de

    .line 232
    .local v14, "tickerText_safemode":I
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 233
    .restart local v5    # "coolingintent":Landroid/content/Intent;
    const-string v17, "com.android.systemui"

    const-string v18, "com.android.systemui.cooldown.SafeMode"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v5, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 239
    .restart local v11    # "pendingIntent":Landroid/app/PendingIntent;
    new-instance v9, Landroid/app/Notification;

    const v17, 0x7f0203bf

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-direct {v9, v0, v1, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 242
    .restart local v9    # "notification":Landroid/app/Notification;
    iget v0, v9, Landroid/app/Notification;->flags:I

    move/from16 v17, v0

    or-int/lit8 v17, v17, 0x20

    move/from16 v0, v17

    iput v0, v9, Landroid/app/Notification;->flags:I

    .line 243
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v9, v0, v1, v2, v11}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 247
    const v17, 0x22354

    move/from16 v0, v17

    invoke-virtual {v8, v0, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    .line 276
    .end local v5    # "coolingintent":Landroid/content/Intent;
    .end local v8    # "notiManager":Landroid/app/NotificationManager;
    .end local v9    # "notification":Landroid/app/Notification;
    .end local v11    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v14    # "tickerText_safemode":I
    .end local v16    # "tickerTitle_safemode":I
    :catch_3
    move-exception v6

    .line 277
    .restart local v6    # "e5":Ljava/lang/Exception;
    const-string v17, "TAG"

    const-string v18, "SAFEMODE Exception catch!!"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 249
    .end local v6    # "e5":Ljava/lang/Exception;
    :cond_9
    :try_start_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/cooldown/OverheatReceiver;->isVZW:Z

    move/from16 v17, v0

    if-nez v17, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/cooldown/OverheatReceiver;->isSafeMode:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 251
    const-string v17, "OverheatReceiver"

    const-string v18, "Global on"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const-string v17, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 254
    .restart local v8    # "notiManager":Landroid/app/NotificationManager;
    const v16, 0x7f0b05d7

    .line 255
    .restart local v16    # "tickerTitle_safemode":I
    const v14, 0x7f0b05d8

    .line 258
    .restart local v14    # "tickerText_safemode":I
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 259
    .restart local v5    # "coolingintent":Landroid/content/Intent;
    const-string v17, "com.android.systemui"

    const-string v18, "com.android.systemui.cooldown.SafeMode"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v5, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 265
    .restart local v11    # "pendingIntent":Landroid/app/PendingIntent;
    new-instance v9, Landroid/app/Notification;

    const v17, 0x7f0203bf

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-direct {v9, v0, v1, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 268
    .restart local v9    # "notification":Landroid/app/Notification;
    iget v0, v9, Landroid/app/Notification;->flags:I

    move/from16 v17, v0

    or-int/lit8 v17, v17, 0x20

    move/from16 v0, v17

    iput v0, v9, Landroid/app/Notification;->flags:I

    .line 269
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v9, v0, v1, v2, v11}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 273
    const v17, 0x22354

    move/from16 v0, v17

    invoke-virtual {v8, v0, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_0

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
