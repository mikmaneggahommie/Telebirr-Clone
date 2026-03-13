.class final Lcom/android/systemui/volume/VolumeDialogController$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "VolumeDialogController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeDialogController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/volume/VolumeDialogController;)V
    .locals 0

    .prologue
    .line 910
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogController$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/VolumeDialogController;Lcom/android/systemui/volume/VolumeDialogController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/volume/VolumeDialogController;
    .param p2, "x1"    # Lcom/android/systemui/volume/VolumeDialogController$1;

    .prologue
    .line 910
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogController$Receiver;-><init>(Lcom/android/systemui/volume/VolumeDialogController;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 928
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogController;->access$2100(Lcom/android/systemui/volume/VolumeDialogController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 929
    return-void
.end method

.method public init()V
    .locals 4

    .prologue
    .line 913
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 914
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 915
    const-string v1, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 916
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 917
    const-string v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 918
    const-string v1, "android.media.STREAM_MUTE_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 919
    const-string v1, "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 920
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 921
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 922
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 923
    const-string v1, "com.samsung.android.theme.themecenter.THEME_APPLY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 924
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogController;->access$2100(Lcom/android/systemui/volume/VolumeDialogController;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialogController;->access$700(Lcom/android/systemui/volume/VolumeDialogController;)Lcom/android/systemui/volume/VolumeDialogController$W;

    move-result-object v3

    invoke-virtual {v1, p0, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 925
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, -0x1

    .line 933
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 934
    .local v0, "action":Ljava/lang/String;
    const/4 v1, 0x0

    .line 935
    .local v1, "changed":Z
    const-string v9, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 936
    const-string v9, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 937
    .local v8, "stream":I
    const-string v9, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 938
    .local v3, "level":I
    const-string v9, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 940
    .local v6, "oldLevel":I
    sget-boolean v9, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v9, :cond_0

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogController;->access$500()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onReceive VOLUME_CHANGED_ACTION stream="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " level="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " oldLevel="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    .end local v3    # "level":I
    .end local v6    # "oldLevel":I
    .end local v8    # "stream":I
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 990
    iget-object v9, p0, Lcom/android/systemui/volume/VolumeDialogController$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v9}, Lcom/android/systemui/volume/VolumeDialogController;->access$1500(Lcom/android/systemui/volume/VolumeDialogController;)Lcom/android/systemui/volume/VolumeDialogController$C;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/volume/VolumeDialogController$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v10}, Lcom/android/systemui/volume/VolumeDialogController;->access$2600(Lcom/android/systemui/volume/VolumeDialogController;)Lcom/android/systemui/volume/VolumeDialogController$State;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/systemui/volume/VolumeDialogController$C;->onStateChanged(Lcom/android/systemui/volume/VolumeDialogController$State;)V

    .line 992
    :cond_1
    return-void

    .line 943
    :cond_2
    const-string v9, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 944
    const-string v9, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 945
    .restart local v8    # "stream":I
    const-string v9, "android.media.EXTRA_VOLUME_STREAM_DEVICES"

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 947
    .local v2, "devices":I
    const-string v9, "android.media.EXTRA_PREV_VOLUME_STREAM_DEVICES"

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 949
    .local v5, "oldDevices":I
    sget-boolean v9, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v9, :cond_3

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogController;->access$500()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onReceive STREAM_DEVICES_CHANGED_ACTION stream="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " devices="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " oldDevices="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    :cond_3
    sget-boolean v9, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    if-nez v9, :cond_4

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 953
    :cond_4
    iget-object v9, p0, Lcom/android/systemui/volume/VolumeDialogController$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v9}, Lcom/android/systemui/volume/VolumeDialogController;->access$1000(Lcom/android/systemui/volume/VolumeDialogController;)V

    goto :goto_0

    .line 955
    .end local v2    # "devices":I
    .end local v5    # "oldDevices":I
    .end local v8    # "stream":I
    :cond_5
    const-string v9, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 956
    const-string v9, "android.media.EXTRA_RINGER_MODE"

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 957
    .local v7, "rm":I
    sget-boolean v9, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v9, :cond_6

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogController;->access$500()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onReceive RINGER_MODE_CHANGED_ACTION rm="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v7}, Lcom/android/systemui/volume/Util;->ringerModeToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    :cond_6
    iget-object v9, p0, Lcom/android/systemui/volume/VolumeDialogController$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v9, v7}, Lcom/android/systemui/volume/VolumeDialogController;->access$2700(Lcom/android/systemui/volume/VolumeDialogController;I)Z

    move-result v1

    .line 960
    goto/16 :goto_0

    .end local v7    # "rm":I
    :cond_7
    const-string v9, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 961
    const-string v9, "android.media.EXTRA_RINGER_MODE"

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 962
    .restart local v7    # "rm":I
    sget-boolean v9, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v9, :cond_8

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogController;->access$500()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onReceive INTERNAL_RINGER_MODE_CHANGED_ACTION rm="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v7}, Lcom/android/systemui/volume/Util;->ringerModeToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    :cond_8
    iget-object v9, p0, Lcom/android/systemui/volume/VolumeDialogController$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v9, v7}, Lcom/android/systemui/volume/VolumeDialogController;->access$2800(Lcom/android/systemui/volume/VolumeDialogController;I)Z

    move-result v1

    .line 965
    goto/16 :goto_0

    .end local v7    # "rm":I
    :cond_9
    const-string v9, "android.media.STREAM_MUTE_CHANGED_ACTION"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 966
    const-string v9, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 967
    .restart local v8    # "stream":I
    const-string v9, "android.media.EXTRA_STREAM_VOLUME_MUTED"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 969
    .local v4, "muted":Z
    sget-boolean v9, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v9, :cond_a

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogController;->access$500()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onReceive STREAM_MUTE_CHANGED_ACTION stream="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " muted="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    :cond_a
    iget-object v9, p0, Lcom/android/systemui/volume/VolumeDialogController$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v9, v8, v4}, Lcom/android/systemui/volume/VolumeDialogController;->access$2900(Lcom/android/systemui/volume/VolumeDialogController;IZ)Z

    move-result v1

    .line 972
    goto/16 :goto_0

    .end local v4    # "muted":Z
    .end local v8    # "stream":I
    :cond_b
    const-string v9, "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 973
    sget-boolean v9, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v9, :cond_c

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogController;->access$500()Ljava/lang/String;

    move-result-object v9

    const-string v10, "onReceive ACTION_EFFECTS_SUPPRESSOR_CHANGED"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    :cond_c
    iget-object v9, p0, Lcom/android/systemui/volume/VolumeDialogController$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    iget-object v10, p0, Lcom/android/systemui/volume/VolumeDialogController$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v10}, Lcom/android/systemui/volume/VolumeDialogController;->access$3000(Lcom/android/systemui/volume/VolumeDialogController;)Landroid/app/NotificationManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/NotificationManager;->getEffectsSuppressor()Landroid/content/ComponentName;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/systemui/volume/VolumeDialogController;->access$3100(Lcom/android/systemui/volume/VolumeDialogController;Landroid/content/ComponentName;)Z

    move-result v1

    goto/16 :goto_0

    .line 975
    :cond_d
    const-string v9, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 976
    sget-boolean v9, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v9, :cond_e

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogController;->access$500()Ljava/lang/String;

    move-result-object v9

    const-string v10, "onReceive ACTION_CONFIGURATION_CHANGED"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    :cond_e
    iget-object v9, p0, Lcom/android/systemui/volume/VolumeDialogController$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v9}, Lcom/android/systemui/volume/VolumeDialogController;->access$1500(Lcom/android/systemui/volume/VolumeDialogController;)Lcom/android/systemui/volume/VolumeDialogController$C;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/systemui/volume/VolumeDialogController$C;->onConfigurationChanged()V

    goto/16 :goto_0

    .line 979
    :cond_f
    const-string v9, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 980
    sget-boolean v9, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v9, :cond_10

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogController;->access$500()Ljava/lang/String;

    move-result-object v9

    const-string v10, "onReceive ACTION_SCREEN_OFF"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    :cond_10
    iget-object v9, p0, Lcom/android/systemui/volume/VolumeDialogController$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v9}, Lcom/android/systemui/volume/VolumeDialogController;->access$1500(Lcom/android/systemui/volume/VolumeDialogController;)Lcom/android/systemui/volume/VolumeDialogController$C;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/systemui/volume/VolumeDialogController$C;->onScreenOff()V

    goto/16 :goto_0

    .line 982
    :cond_11
    const-string v9, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 983
    sget-boolean v9, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v9, :cond_12

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogController;->access$500()Ljava/lang/String;

    move-result-object v9

    const-string v10, "onReceive ACTION_CLOSE_SYSTEM_DIALOGS"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    :cond_12
    iget-object v9, p0, Lcom/android/systemui/volume/VolumeDialogController$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v9}, Lcom/android/systemui/volume/VolumeDialogController;->dismiss()V

    goto/16 :goto_0

    .line 985
    :cond_13
    const-string v9, "com.samsung.android.theme.themecenter.THEME_APPLY"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 986
    sget-boolean v9, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v9, :cond_14

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogController;->access$500()Ljava/lang/String;

    move-result-object v9

    const-string v10, "onReceive THEME_APPLY"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    :cond_14
    iget-object v9, p0, Lcom/android/systemui/volume/VolumeDialogController$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v9}, Lcom/android/systemui/volume/VolumeDialogController;->access$1500(Lcom/android/systemui/volume/VolumeDialogController;)Lcom/android/systemui/volume/VolumeDialogController$C;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/systemui/volume/VolumeDialogController$C;->onThemeChanged()V

    goto/16 :goto_0
.end method
