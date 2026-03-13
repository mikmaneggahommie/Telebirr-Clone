.class Lcom/android/systemui/usb/StorageNotification$5;
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
    .line 197
    iput-object p1, p0, Lcom/android/systemui/usb/StorageNotification$5;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 200
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "action":Ljava/lang/String;
    const-string v9, "volId"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 202
    .local v6, "volId":Ljava/lang/String;
    const-string v9, "volUUID"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 203
    .local v7, "volUUID":Ljava/lang/String;
    const/4 v4, 0x0

    .line 206
    .local v4, "sdCardVolInfo":Landroid/os/storage/VolumeInfo;
    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification$5;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-static {v9}, Lcom/android/systemui/usb/StorageNotification;->access$400(Lcom/android/systemui/usb/StorageNotification;)Landroid/content/SharedPreferences;

    move-result-object v9

    const-string v10, "persist.systemUI.sdUUID"

    const-string v11, "none"

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, "curSdUUID":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification$5;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-static {v9}, Lcom/android/systemui/usb/StorageNotification;->access$100(Lcom/android/systemui/usb/StorageNotification;)Landroid/os/storage/StorageManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v8

    .line 210
    .local v8, "volumes":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeInfo;>;"
    invoke-static {}, Landroid/os/storage/VolumeInfo;->getDescriptionComparator()Ljava/util/Comparator;

    move-result-object v9

    invoke-static {v8, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 212
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/VolumeInfo;

    .line 213
    .local v5, "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v9

    if-nez v9, :cond_0

    .line 214
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 215
    move-object v4, v5

    .line 221
    .end local v5    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_1
    const-string v9, "samsung.systemui.usb.STORAGE_NOTIFICATION_CANCEL"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 222
    const-string v9, "StorageNotification"

    const-string v10, "SD Card Noti is deleted."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    if-eqz v4, :cond_4

    .line 225
    const-string v9, "StorageNotification"

    const-string v10, "SD Card is NOT removed."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v1

    .line 236
    :cond_2
    :goto_0
    if-eqz v1, :cond_5

    .line 237
    const-string v9, "StorageNotification"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mNotiDeleteReceiver Set STORAGE_NOTIFICATION_SD_CARD_UUID with Current SD Card UUID["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification$5;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-static {v9}, Lcom/android/systemui/usb/StorageNotification;->access$400(Lcom/android/systemui/usb/StorageNotification;)Landroid/content/SharedPreferences;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 240
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v9, "persist.systemUI.sdUUID"

    invoke-interface {v2, v9, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 241
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 250
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_3
    :goto_1
    return-void

    .line 229
    :cond_4
    if-nez v4, :cond_2

    if-eqz v7, :cond_2

    .line 230
    const-string v9, "StorageNotification"

    const-string v10, "SD Card is removed."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    move-object v1, v7

    goto :goto_0

    .line 243
    :cond_5
    const-string v9, "StorageNotification"

    const-string v10, "mNotiDeleteReceiver Set STORAGE_NOTIFICATION_SD_CARD_UUID with NONE for SD Card UUID NO VALUE"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
