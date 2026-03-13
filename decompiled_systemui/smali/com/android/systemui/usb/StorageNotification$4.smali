.class Lcom/android/systemui/usb/StorageNotification$4;
.super Landroid/content/BroadcastReceiver;
.source "StorageNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/usb/StorageNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/usb/StorageNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/usb/StorageNotification;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/systemui/usb/StorageNotification$4;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const v12, 0x53505542

    const/4 v11, 0x3

    .line 145
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "action":Ljava/lang/String;
    const/4 v5, 0x0

    .line 148
    .local v5, "sdVolInfo":Landroid/os/storage/VolumeInfo;
    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification$4;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-static {v9}, Lcom/android/systemui/usb/StorageNotification;->access$100(Lcom/android/systemui/usb/StorageNotification;)Landroid/os/storage/StorageManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v8

    .line 149
    .local v8, "volumes":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeInfo;>;"
    invoke-static {}, Landroid/os/storage/VolumeInfo;->getDescriptionComparator()Ljava/util/Comparator;

    move-result-object v9

    invoke-static {v8, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 151
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/storage/VolumeInfo;

    .line 152
    .local v7, "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v9

    if-nez v9, :cond_0

    .line 153
    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 154
    move-object v5, v7

    .line 160
    .end local v7    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_1
    if-eqz v5, :cond_2

    .line 161
    const-string v9, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 162
    const-string v9, "reason"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 166
    .local v3, "reason":I
    if-ne v3, v11, :cond_3

    .line 167
    const-string v9, "StorageNotification"

    const-string v10, "mUPSMReceiver UPSM is ON"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification$4;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-static {v9}, Lcom/android/systemui/usb/StorageNotification;->access$200(Lcom/android/systemui/usb/StorageNotification;)Landroid/app/NotificationManager;

    move-result-object v9

    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v10, v12, v11}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 194
    .end local v3    # "reason":I
    :cond_2
    :goto_0
    return-void

    .line 170
    .restart local v3    # "reason":I
    :cond_3
    const/4 v9, 0x5

    if-ne v3, v9, :cond_6

    .line 171
    const-string v9, "StorageNotification"

    const-string v10, "mUPSMReceiver UPSM is OFF"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v9

    const/4 v10, 0x2

    if-eq v9, v10, :cond_4

    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v9

    if-ne v9, v11, :cond_2

    .line 174
    :cond_4
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v4

    .line 175
    .local v4, "sdCardUUID":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification$4;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-static {v9}, Lcom/android/systemui/usb/StorageNotification;->access$400(Lcom/android/systemui/usb/StorageNotification;)Landroid/content/SharedPreferences;

    move-result-object v9

    const-string v10, "persist.systemUI.sdUUID"

    const-string v11, "none"

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 177
    .local v6, "sysPropSdUUID":Ljava/lang/String;
    const-string v9, "StorageNotification"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mUPSMReceiver current SD Card UUID is ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const-string v9, "StorageNotification"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mUPSMReceiver current SharedPreferences UUID is ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    if-eqz v4, :cond_5

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 180
    const-string v9, "StorageNotification"

    const-string v10, "mUPSMReceiver show SD Card Noti"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification$4;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-static {v9, v5}, Lcom/android/systemui/usb/StorageNotification;->access$500(Lcom/android/systemui/usb/StorageNotification;Landroid/os/storage/VolumeInfo;)Landroid/app/Notification;

    move-result-object v2

    .line 182
    .local v2, "notif":Landroid/app/Notification;
    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification$4;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-static {v9}, Lcom/android/systemui/usb/StorageNotification;->access$200(Lcom/android/systemui/usb/StorageNotification;)Landroid/app/NotificationManager;

    move-result-object v9

    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v10, v12, v2, v11}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 184
    .end local v2    # "notif":Landroid/app/Notification;
    :cond_5
    const-string v9, "StorageNotification"

    const-string v10, "mUPSMReceiver NOT show SD Card Noti"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 188
    .end local v4    # "sdCardUUID":Ljava/lang/String;
    .end local v6    # "sysPropSdUUID":Ljava/lang/String;
    :cond_6
    const-string v9, "StorageNotification"

    const-string v10, "UPSM state is unknown."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
