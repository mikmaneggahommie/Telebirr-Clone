.class Lcom/android/systemui/keyguard/KeyguardViewMediator$14;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0

    .prologue
    .line 3199
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$14;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 3202
    const-string v4, "android.bluetooth.device.action.AUTO_LOCK_SERVICE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3204
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 3205
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    const-string v4, "com.sec.android.service.connectionmanager.extra.AUTO_LOCK_SERVICE"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 3208
    .local v2, "isEnabled":Z
    const-string v4, "KeyguardViewMediator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , mWearabledevice = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , isEnabled ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3210
    if-eqz v2, :cond_2

    .line 3211
    if-eqz v1, :cond_0

    .line 3212
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$14;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v4, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4002(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 3214
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$14;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const-string v5, "extra.AUTO_LOCK_SERVICE_VALID"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$7102(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z

    .line 3215
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$14;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$7100(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3216
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$14;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const-string v5, "extra.AUTO_LOCK_SERVICE_IN_CRITERIA"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4202(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)I

    .line 3217
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$14;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const-string v5, "extra.AUTO_LOCK_SERVICE_OUT_CRITERIA"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4302(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)I

    .line 3218
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$14;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const-string v5, "extra.AUTO_LOCK_SERVICE_IN_MARGIN"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4402(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)I

    .line 3219
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$14;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const-string v5, "extra.AUTO_LOCK_SERVICE_OUT_MARGIN"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4502(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)I

    .line 3227
    :goto_0
    const-string v4, "KeyguardViewMediator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AUTO_LOCK_SERVICE_VALID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$14;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$7100(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , mCriteria_IN_RSSI = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$14;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , mCriteria_OUT_RSSI ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$14;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , mOffset_IN_RSSI ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$14;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4400(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , mOffset_OUT_RSSI ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$14;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4500(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3298
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "isEnabled":Z
    :cond_0
    :goto_1
    return-void

    .line 3221
    .restart local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .restart local v2    # "isEnabled":Z
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$14;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v4, v7}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4202(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)I

    .line 3222
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$14;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v4, v7}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4302(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)I

    .line 3223
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$14;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4402(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)I

    .line 3224
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$14;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v4, v7}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4502(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)I

    goto :goto_0

    .line 3235
    :cond_2
    const-string v4, "KeyguardViewMediator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_AUTO_LOCK_SERVICE : Device = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , mWearabledevice ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$14;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3237
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$14;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    if-eqz v4, :cond_3

    if-eqz v1, :cond_3

    .line 3238
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$14;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3239
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$14;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4002(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 3240
    const-string v4, "KeyguardViewMediator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_AUTO_LOCK_SERVICE : isSmartUnlockEnabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$14;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3242
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$14;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$14;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3246
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$14;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/internal/widget/LockPatternUtils;->setSwipeSmartLock(Z)V

    .line 3247
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$14;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v4, v7}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$700(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)V

    .line 3248
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$14;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$400(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 3249
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$14;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto/16 :goto_1

    .line 3253
    :cond_3
    const-string v4, "KeyguardViewMediator"

    const-string v5, "ACTION_AUTO_LOCK_SERVICE : mWearabledevice =/= device !!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3256
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "isEnabled":Z
    :cond_4
    const-string v4, "android.bluetooth.device.action.ACTION_OUT_OF_RANGE_ALERT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3258
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$14;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$14;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$14;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isSwipeSmartLock()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$14;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$14;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4100(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3267
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$14;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1600(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$14;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$7200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3268
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$14;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1600(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$14;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$7200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3270
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$14;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1600(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$14;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$7200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-static {}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$7300()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 3272
    :cond_6
    const-string v4, "android.bluetooth.device.action.ACTION_IN_RANGE_ALERT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 3274
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$14;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 3275
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$14;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1600(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$14;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$7200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 3276
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$14;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1600(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$14;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$7200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3278
    :cond_7
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$14;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$14;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$14;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4100(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3285
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$14;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->setSwipeSmartLock(Z)V

    .line 3286
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$14;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$400(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 3287
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$14;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto/16 :goto_1

    .line 3290
    :cond_8
    const-string v4, "android.bluetooth.device.action.RSSI"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3292
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$14;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 3293
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 3294
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$14;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1600(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x19

    invoke-virtual {v4, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 3295
    .local v3, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$14;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1600(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1
.end method
