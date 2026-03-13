.class Lcom/android/systemui/statusbar/BaseStatusBar$5;
.super Landroid/content/BroadcastReceiver;
.source "BaseStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/BaseStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/BaseStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 0

    .prologue
    .line 1067
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1070
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1071
    .local v0, "action":Ljava/lang/String;
    const-string v9, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1072
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    const-string v10, "android.intent.extra.user_handle"

    const/4 v11, -0x1

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    iput v10, v9, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    .line 1073
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$500(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    .line 1074
    const-string v9, "StatusBar"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "userId "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget v11, v11, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is in the house"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateLockscreenNotificationSetting()V

    .line 1078
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget v10, v10, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/BaseStatusBar;->userSwitched(I)V

    .line 1080
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/BaseStatusBar;->isDeviceProvisioned()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1081
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$600(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    .line 1154
    :cond_0
    :goto_0
    return-void

    .line 1084
    :cond_1
    const-string v9, "android.intent.action.USER_ADDED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1086
    const-string v9, "android.intent.extra.user_handle"

    const/4 v10, -0x1

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1087
    .local v2, "id":I
    invoke-static {v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1088
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-static {v9, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$700(Lcom/android/systemui/statusbar/BaseStatusBar;I)V

    .line 1089
    sget-boolean v9, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v9, :cond_2

    .line 1090
    const-string v9, "KnoxNotification"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "add a peronaObserver for newly added user "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    :cond_2
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$500(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    .line 1095
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/BaseStatusBar;->userAddRemove()V

    goto :goto_0

    .line 1096
    .end local v2    # "id":I
    :cond_3
    const-string v9, "android.intent.action.USER_REMOVED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1097
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/BaseStatusBar;->userAddRemove()V

    goto :goto_0

    .line 1098
    :cond_4
    const-string v9, "android.intent.action.USER_PRESENT"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1099
    const/4 v5, 0x0

    .line 1101
    .local v5, "recentTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x5

    iget-object v12, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget v12, v12, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    invoke-interface {v9, v10, v11, v12}, Landroid/app/IActivityManager;->getRecentTasks(III)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 1108
    :goto_1
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 1109
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$800(Lcom/android/systemui/statusbar/BaseStatusBar;)Landroid/os/UserManager;

    move-result-object v10

    const/4 v9, 0x0

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RecentTaskInfo;

    iget v9, v9, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    invoke-virtual {v10, v9}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v8

    .line 1110
    .local v8, "user":Landroid/content/pm/UserInfo;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1111
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const v10, 0x7f0b0645

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    .line 1114
    .local v7, "toast":Landroid/widget/Toast;
    invoke-virtual {v7}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v9

    const v10, 0x102000b

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1116
    .local v6, "text":Landroid/widget/TextView;
    const v9, 0x7f02048f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v6, v9, v10, v11, v12}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 1118
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a04e5

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 1120
    .local v4, "paddingPx":I
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 1121
    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1124
    .end local v4    # "paddingPx":I
    .end local v5    # "recentTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v6    # "text":Landroid/widget/TextView;
    .end local v7    # "toast":Landroid/widget/Toast;
    .end local v8    # "user":Landroid/content/pm/UserInfo;
    :cond_5
    const-string v9, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1126
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$100(Lcom/android/systemui/statusbar/BaseStatusBar;)Landroid/util/SparseBooleanArray;

    move-result-object v9

    invoke-virtual {v9}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1127
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateLockscreenNotificationSetting()V

    .line 1128
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotifications()V

    goto/16 :goto_0

    .line 1129
    :cond_6
    const-string v9, "com.android.systemui.statusbar.banner_action_cancel"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    const-string v9, "com.android.systemui.statusbar.banner_action_setup"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1130
    :cond_7
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v10, "notification"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 1132
    .local v3, "noMan":Landroid/app/NotificationManager;
    const/16 v9, 0x2710

    invoke-virtual {v3, v9}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1134
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "show_note_about_notification_hiding"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1136
    const-string v9, "com.android.systemui.statusbar.banner_action_setup"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1137
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Lcom/android/systemui/statusbar/BaseStatusBar;->animateCollapsePanels(IZ)V

    .line 1139
    :try_start_1
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.settings.ACTION_APP_NOTIFICATION_REDACTION"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v11, 0x10000000

    invoke-virtual {v10, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1142
    :catch_0
    move-exception v1

    .line 1143
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v9, "StatusBar"

    const-string v10, "unable to start activity - ACTION_APP_NOTIFICATION_REDACTION "

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1105
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    .end local v3    # "noMan":Landroid/app/NotificationManager;
    .restart local v5    # "recentTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :catch_1
    move-exception v9

    goto/16 :goto_1
.end method
