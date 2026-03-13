.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$50;
.super Landroid/content/BroadcastReceiver;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    .prologue
    .line 5906
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$50;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const v11, 0x7f0b02ae

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 5908
    sget-boolean v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "PhoneStatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5909
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 5910
    .local v0, "action":Ljava/lang/String;
    const-string v5, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 5911
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$50;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$50;->getSendingUserId()I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$14100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 5912
    const/4 v2, 0x0

    .line 5913
    .local v2, "flags":I
    const-string v5, "reason"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5914
    .local v4, "reason":Ljava/lang/String;
    if-eqz v4, :cond_1

    const-string v5, "recentapps"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5915
    or-int/lit8 v2, v2, 0x2

    .line 5917
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$50;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v5, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels(I)V

    .line 6001
    .end local v2    # "flags":I
    .end local v4    # "reason":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 5919
    :cond_3
    const-string v5, "com.sec.android.sconnect.service.ENABLED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 5920
    const-string v5, "PhoneStatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "mQconnectEnable = true"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5921
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$50;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v5, v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$14202(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 5922
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$50;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showHideQConnectLayout()V

    goto :goto_0

    .line 5923
    :cond_4
    const-string v5, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 5925
    const-string v5, "PhoneStatusBar"

    const-string v6, "onReceive : ACTION_SHUTDOWN"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5926
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$50;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iput-boolean v9, v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsShutingdown:Z

    .line 5927
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$50;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$50;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCoverLauncher:Lcom/android/systemui/cover/SViewCoverLauncher;

    if-eqz v5, :cond_2

    .line 5928
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$50;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$50;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v6, v6, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    goto :goto_0

    .line 5930
    :cond_5
    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 5931
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$50;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const-string v6, "level"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$14302(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;I)I

    .line 5932
    const-string v5, "status"

    invoke-virtual {p2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 5933
    .local v1, "battStatus":I
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$50;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$14400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v3

    .line 5935
    .local v3, "oldBrightnessEnablebyBattery":Z
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$50;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$14300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$50;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$10000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 5936
    const-string v5, "PhoneStatusBar"

    const-string v6, "Battery level does not show the level for 0% in upsm and emergency mode"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5937
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$50;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$14500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$50;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v6, v6, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v6, v11, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5938
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$50;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$14600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$50;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v6, v6, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v6, v11, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5944
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$50;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$14300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I

    move-result v5

    const/4 v6, 0x5

    if-gt v5, v6, :cond_6

    const/4 v5, 0x2

    if-ne v1, v5, :cond_7

    :cond_6
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$50;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$14300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I

    move-result v5

    if-gt v5, v9, :cond_9

    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->mHideBrightnessOnCriticalBatteryLevel:Z

    if-eqz v5, :cond_9

    .line 5946
    :cond_7
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$50;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v5, v10}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$14402(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 5950
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$50;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$14400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v5

    if-eq v3, v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$50;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsFullyOpened:Z

    if-eqz v5, :cond_2

    .line 5951
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$50;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setBrightnessControllerVisivility()V

    .line 5952
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$50;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateQSpanelHeight()V

    .line 5953
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$50;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showHideQConnectLayout()V

    goto/16 :goto_0

    .line 5940
    :cond_8
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$50;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$14500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$50;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v6, v6, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    new-array v7, v9, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$50;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$14300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v6, v11, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5941
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$50;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$14600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$50;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v6, v6, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    new-array v7, v9, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$50;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$14300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v6, v11, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 5948
    :cond_9
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$50;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v5, v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$14402(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    goto :goto_2

    .line 5955
    .end local v1    # "battStatus":I
    .end local v3    # "oldBrightnessEnablebyBattery":Z
    :cond_a
    const-string v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "com.samsung.settings.SIMCARD_MGT_ACTIVATED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "android.intent.action.QCOMHOTSWAP"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 5959
    :cond_b
    const-string v5, "PhoneStatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " getReadySimCount() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$50;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$14700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5960
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$50;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$14800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 5961
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$50;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$14900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 5962
    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->CHN:Z

    if-eqz v5, :cond_2

    .line 5963
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$50;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$15000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    goto/16 :goto_0

    .line 5966
    :cond_c
    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 5967
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$50;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$15100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->CHN:Z

    if-eqz v5, :cond_2

    .line 5968
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$50;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$15000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    goto/16 :goto_0

    .line 5970
    :cond_d
    const-string v5, "android.intent.action.SUBSCREEN_OFF"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 5985
    const-string v5, "android.intent.action.SUBSCREEN_ON"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto/16 :goto_0
.end method
