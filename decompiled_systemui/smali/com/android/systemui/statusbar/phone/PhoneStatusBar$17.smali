.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$17;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->makeStatusBarView()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
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
    .line 1518
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$17;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1521
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$17;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$8000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 1522
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$17;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const-string v5, "CLEARALL"

    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$8300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Ljava/lang/String;)V

    .line 1525
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$17;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$8400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v5

    monitor-enter v5

    .line 1526
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$17;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$8500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v1

    .line 1527
    .local v1, "entryArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 1528
    .local v0, "e":Lcom/android/systemui/statusbar/NotificationData$Entry;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.accessory.intent.action.CHECK_NOTIFICATION_ITEM"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1529
    .local v3, "iForClear":Landroid/content/Intent;
    const-string v4, "NOTIFICATION_PACKAGE_NAME"

    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1530
    const-string v4, "NOTIFICATION_ID"

    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v6

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1531
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$17;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 1537
    .end local v0    # "e":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v1    # "entryArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "iForClear":Landroid/content/Intent;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1534
    .restart local v1    # "entryArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$17;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.android.sms.action.CLEAR_ALL"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1536
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$17;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.samsung.sms.action.CLEAR_ALL"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1537
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1539
    return-void
.end method
