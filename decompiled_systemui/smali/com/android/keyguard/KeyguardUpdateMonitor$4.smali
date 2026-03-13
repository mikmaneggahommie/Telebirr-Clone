.class Lcom/android/keyguard/KeyguardUpdateMonitor$4;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .prologue
    .line 755
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$4;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 32
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 759
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    .line 760
    .local v13, "action":Ljava/lang/String;
    const-string v6, "KeyguardUpdateMonitor"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "received broadcast "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    const-string v6, "PERF"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "received broadcast "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    const-string v6, "android.intent.action.TIME_TICK"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "android.intent.action.TIME_SET"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 766
    :cond_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$4;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1900(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v6

    const/16 v28, 0x12d

    move/from16 v0, v28

    invoke-virtual {v6, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 897
    :cond_1
    :goto_0
    return-void

    .line 767
    :cond_2
    const-string v6, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 768
    const-string v6, "subscription"

    const/16 v28, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v27

    .line 769
    .local v27, "subId":I
    invoke-static/range {v27 .. v27}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPhoneId(I)I

    move-result v22

    .line 771
    .local v22, "phoneId":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$4;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2100(Lcom/android/keyguard/KeyguardUpdateMonitor;)[Ljava/lang/CharSequence;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$4;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2200(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v28

    aput-object v28, v6, v22

    .line 772
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$4;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2300(Lcom/android/keyguard/KeyguardUpdateMonitor;)[Ljava/lang/CharSequence;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$4;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2400(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v28

    aput-object v28, v6, v22

    .line 774
    const-string v6, "KeyguardUpdateMonitor"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Received SPN update on phoneId :"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " , mTelephonyPlmn["

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "]"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$4;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2100(Lcom/android/keyguard/KeyguardUpdateMonitor;)[Ljava/lang/CharSequence;

    move-result-object v29

    aget-object v29, v29, v22

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " , mTelephonySpn["

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "]"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$4;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2300(Lcom/android/keyguard/KeyguardUpdateMonitor;)[Ljava/lang/CharSequence;

    move-result-object v29

    aget-object v29, v29, v22

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$4;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1900(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v6

    const/16 v28, 0x12f

    move/from16 v0, v28

    invoke-virtual {v6, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v20

    .line 778
    .local v20, "msg":Landroid/os/Message;
    move/from16 v0, v22

    move-object/from16 v1, v20

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 779
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$4;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1900(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 781
    .end local v20    # "msg":Landroid/os/Message;
    .end local v22    # "phoneId":I
    .end local v27    # "subId":I
    :cond_3
    const-string v6, "com.samsung.settings.SIMCARD_MGT_ACTIVATED"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 782
    const-string v6, "simcard_sim_id"

    const/16 v28, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v25

    .line 783
    .local v25, "simId":I
    const-string v6, "simcard_sim_activate"

    const/16 v28, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 784
    .local v14, "activate":I
    const/4 v6, 0x1

    if-ne v14, v6, :cond_4

    .line 786
    const-string v6, "KeyguardUpdateMonitor"

    const-string v28, "ACTION_SIM_MGT_ACTIVATED_CHANGED - ON"

    move-object/from16 v0, v28

    invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$4;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1900(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$4;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1900(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v28

    const/16 v29, 0x14f

    invoke-virtual/range {v28 .. v29}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v28

    const-wide/16 v30, 0x64

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-virtual {v6, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 791
    :goto_1
    const-string v6, "KeyguardUpdateMonitor"

    const-string v28, "ACTION_SIM_MGT_ACTIVATED_CHANGED -OFF"

    move-object/from16 v0, v28

    invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    const-string v6, "KeyguardUpdateMonitor"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "action "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " simId"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "activate"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$4;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1900(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$4;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1900(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v28

    const/16 v29, 0x12f

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    invoke-virtual/range {v28 .. v30}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 789
    :cond_4
    const-string v6, "KeyguardUpdateMonitor"

    const-string v28, "ACTION_SIM_MGT_ACTIVATED_CHANGED - OFF"

    move-object/from16 v0, v28

    invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 796
    .end local v14    # "activate":I
    .end local v25    # "simId":I
    :cond_5
    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 797
    const-string v6, "status"

    const/16 v28, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 798
    .local v7, "status":I
    const-string v6, "plugged"

    const/16 v28, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 799
    .local v9, "plugged":I
    const-string v6, "level"

    const/16 v28, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 800
    .local v8, "level":I
    const-string v6, "health"

    const/16 v28, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 801
    .local v10, "health":I
    const-string v6, "online"

    const/16 v28, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 802
    .local v11, "online":I
    const-string v6, "hv_charger"

    const/16 v28, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    .line 803
    .local v12, "highVoltage":Z
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$4;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1900(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v28

    const/16 v29, 0x12e

    new-instance v6, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    invoke-direct/range {v6 .. v12}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;-><init>(IIIIIZ)V

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v0, v1, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v20

    .line 805
    .restart local v20    # "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$4;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1900(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 806
    .end local v7    # "status":I
    .end local v8    # "level":I
    .end local v9    # "plugged":I
    .end local v10    # "health":I
    .end local v11    # "online":I
    .end local v12    # "highVoltage":Z
    .end local v20    # "msg":Landroid/os/Message;
    :cond_6
    const-string v6, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 807
    invoke-static/range {p2 .. p2}, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->fromIntent(Landroid/content/Intent;)Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    move-result-object v16

    .line 808
    .local v16, "args":Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;
    const-string v6, "KeyguardUpdateMonitor"

    const-string v28, "ACTION_SIM_STATE_CHANGED"

    move-object/from16 v0, v28

    invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    const-string v6, "KeyguardUpdateMonitor"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "action "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " state: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "ss"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " slotId: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " subid: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$4;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1900(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v6

    const/16 v28, 0x130

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    move/from16 v29, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    move/from16 v30, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v31, v0

    move/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v30

    move-object/from16 v3, v31

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 816
    .end local v16    # "args":Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;
    :cond_7
    const-string v6, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 817
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$4;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1900(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$4;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1900(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v28

    const/16 v29, 0x131

    const-string v30, "android.media.EXTRA_RINGER_MODE"

    const/16 v31, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v30

    const/16 v31, 0x0

    invoke-virtual/range {v28 .. v31}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 819
    :cond_8
    const-string v6, "android.intent.action.PHONE_STATE"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 820
    const-string v6, "state"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 821
    .local v26, "state":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$4;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1900(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$4;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1900(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v28

    const/16 v29, 0x132

    move-object/from16 v0, v28

    move/from16 v1, v29

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 822
    .end local v26    # "state":Ljava/lang/String;
    :cond_9
    const-string v6, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 823
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$4;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1900(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v6

    const/16 v28, 0x149

    move/from16 v0, v28

    invoke-virtual {v6, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 824
    :cond_a
    const-string v6, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 825
    const/4 v6, 0x0

    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V

    .line 826
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$4;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchBootCompleted()V

    goto/16 :goto_0

    .line 827
    :cond_b
    const-string v6, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 828
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v24

    .line 829
    .local v24, "serviceState":Landroid/telephony/ServiceState;
    const-string v6, "subscription"

    const/16 v28, -0x1

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v27

    .line 832
    .restart local v27    # "subId":I
    const-string v6, "KeyguardUpdateMonitor"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "action "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " serviceState="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " subId="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$4;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1900(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$4;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1900(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v28

    const/16 v29, 0x154

    const/16 v30, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v27

    move/from16 v3, v30

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 837
    .end local v24    # "serviceState":Landroid/telephony/ServiceState;
    .end local v27    # "subId":I
    :cond_c
    const-string v6, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 838
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 839
    const-string v6, "ril.MSIMM"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 840
    .local v19, "mSIMM":Ljava/lang/String;
    const-string v6, "1"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 841
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$4;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2100(Lcom/android/keyguard/KeyguardUpdateMonitor;)[Ljava/lang/CharSequence;

    move-result-object v6

    const/16 v28, 0x1

    aget-object v6, v6, v28

    if-eqz v6, :cond_d

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$4;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2100(Lcom/android/keyguard/KeyguardUpdateMonitor;)[Ljava/lang/CharSequence;

    move-result-object v6

    const/16 v28, 0x1

    aget-object v6, v6, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$4;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2500(Lcom/android/keyguard/KeyguardUpdateMonitor;)Ljava/lang/CharSequence;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 843
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$4;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2100(Lcom/android/keyguard/KeyguardUpdateMonitor;)[Ljava/lang/CharSequence;

    move-result-object v6

    const/16 v28, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$4;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$4;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getDefaultPlmn()Ljava/lang/CharSequence;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2502(Lcom/android/keyguard/KeyguardUpdateMonitor;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v29

    aput-object v29, v6, v28

    .line 844
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$4;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1900(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v6

    const/16 v28, 0x12f

    move/from16 v0, v28

    invoke-virtual {v6, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v20

    .line 845
    .restart local v20    # "msg":Landroid/os/Message;
    const/4 v6, 0x1

    move-object/from16 v0, v20

    iput v6, v0, Landroid/os/Message;->arg1:I

    .line 846
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$4;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1900(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 848
    .end local v20    # "msg":Landroid/os/Message;
    :cond_d
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$4;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$4;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getDefaultPlmn()Ljava/lang/CharSequence;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v6, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2502(Lcom/android/keyguard/KeyguardUpdateMonitor;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 852
    .end local v19    # "mSIMM":Ljava/lang/String;
    :cond_e
    const-string v6, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 854
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$4;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2600(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v28, "airplane_mode_on"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-static {v6, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    .line 855
    .local v15, "airPlaneEnabled":I
    const-string v6, "KeyguardUpdateMonitor"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Received  ACTION_AIRPLANE_MODE_CHANGED = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$4;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1900(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v6

    const/16 v28, 0x141

    const/16 v29, 0x0

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v6, v0, v15, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v20

    .line 857
    .restart local v20    # "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$4;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1900(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 858
    .end local v15    # "airPlaneEnabled":I
    .end local v20    # "msg":Landroid/os/Message;
    :cond_f
    const-string v6, "com.samsung.android.intent.action.FINGERPRINT_ADDED"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 859
    const-string v6, "KeyguardSPassPopupGuideInt"

    const/16 v28, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-static {v0, v6, v1}, Lcom/android/keyguard/sec/SecPopupManager;->setRemainCount(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 860
    :cond_10
    const-string v6, "com.samsung.android.intent.action.FINGERPRINT_LOCK_SET"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 861
    const-string v6, "KeyguardSPassPopupGuideInt"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/android/keyguard/sec/SecPopupManager;->getRemainCount(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-gtz v6, :cond_1

    .line 862
    const-string v6, "KeyguardSPassPopupGuideInt"

    const/16 v28, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-static {v0, v6, v1}, Lcom/android/keyguard/sec/SecPopupManager;->setRemainCount(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 864
    :cond_11
    const-string v6, "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 865
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v28, "device_provisioned"

    const/16 v29, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-static {v6, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 866
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$4;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$4;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2800(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z

    move-result v28

    move/from16 v0, v28

    invoke-static {v6, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2702(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)Z

    .line 867
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$4;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2700(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 868
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$4;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1900(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v6

    const/16 v28, 0x134

    move/from16 v0, v28

    invoke-virtual {v6, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 870
    :cond_12
    const-string v6, "com.samsung.android.theme.themecenter.THEME_APPLY"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 872
    :try_start_0
    const-string v6, "packageName"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 873
    .local v17, "currentThemePackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$4;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1900(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$4;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1900(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v28

    const/16 v29, 0x14d

    move-object/from16 v0, v28

    move/from16 v1, v29

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 874
    .end local v17    # "currentThemePackageName":Ljava/lang/String;
    :catch_0
    move-exception v23

    .line 875
    .local v23, "re":Ljava/lang/RuntimeException;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto/16 :goto_0

    .line 877
    .end local v23    # "re":Ljava/lang/RuntimeException;
    :cond_13
    const-string v6, "com.samsung.intent.action.ICC_CARD_STATE_CHANGED"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 878
    const-string v6, "status"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 879
    .local v18, "iccStatus":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$4;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1900(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$4;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1900(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v28

    const/16 v29, 0x14e

    move-object/from16 v0, v28

    move/from16 v1, v29

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 880
    .end local v18    # "iccStatus":Ljava/lang/String;
    :cond_14
    const-string v6, "android.broadcom.sap.CONNECTION_STATE_CHANGED"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 881
    const-string v6, "android.bluetooth.profile.extra.STATE"

    const/16 v28, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 882
    .restart local v7    # "status":I
    const-string v6, "KeyguardUpdateMonitor"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "CONNECTION_STATE_CHANGED status: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    const/4 v6, 0x1

    if-eq v7, v6, :cond_15

    const/4 v6, 0x2

    if-ne v7, v6, :cond_16

    .line 884
    :cond_15
    const/4 v6, 0x1

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2902(Z)Z

    .line 888
    :goto_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$4;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1900(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v6

    const/16 v28, 0x151

    move/from16 v0, v28

    invoke-virtual {v6, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 886
    :cond_16
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2902(Z)Z

    goto :goto_2

    .line 889
    .end local v7    # "status":I
    :cond_17
    const-string v6, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_18

    const-string v6, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 891
    :cond_18
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v21

    .line 892
    .local v21, "packageName":Ljava/lang/String;
    const/16 v6, 0x3a

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    .line 893
    const-string v6, "com.sec.android.app.shealth"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 894
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$4;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1900(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$4;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1900(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v28

    const/16 v29, 0x150

    move-object/from16 v0, v28

    move/from16 v1, v29

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
