.class final Lcom/android/systemui/power/PowerUI$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/power/PowerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerUI;


# direct methods
.method private constructor <init>(Lcom/android/systemui/power/PowerUI;)V
    .locals 0

    .prologue
    .line 486
    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/power/PowerUI;Lcom/android/systemui/power/PowerUI$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/power/PowerUI;
    .param p2, "x1"    # Lcom/android/systemui/power/PowerUI$1;

    .prologue
    .line 486
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI$Receiver;-><init>(Lcom/android/systemui/power/PowerUI;)V

    return-void
.end method

.method private updateSaverMode()V
    .locals 2

    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v1}, Lcom/android/systemui/power/PowerUI;->access$400(Lcom/android/systemui/power/PowerUI;)Landroid/os/PowerManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/power/PowerUI;->access$500(Lcom/android/systemui/power/PowerUI;Z)V

    .line 526
    return-void
.end method


# virtual methods
.method public init()V
    .locals 5

    .prologue
    .line 490
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 491
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 492
    const-string v2, "android.os.action.POWER_SAVE_MODE_CHANGING"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 493
    const-string v2, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 495
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 496
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v2, :cond_0

    .line 497
    const-string v2, "com.android.server.PowerManagerService.action.FAILED_TO_DETECT_FACE_BEFORE_DIM"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 499
    :cond_0
    const-string v2, "com.sec.factory.app.factorytest.FTA_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 500
    const-string v2, "com.sec.factory.app.factorytest.FTA_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 501
    const-string v2, "com.samsung.pen.INSERT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 502
    const-string v2, "com.sec.android.app.camera.ACTION_START_COVER_CAMERA"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 503
    const-string v2, "com.sec.android.app.camera.ACTION_STOP_COVER_CAMERA"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 505
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 506
    const-string v2, "LOW_BATTERY"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 507
    const-string v2, "com.samsung.android.app.cocktailbarservice.action.COCKTAIL_BAR_WAKE_UP_STATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 516
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v2, v2, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v4}, Lcom/android/systemui/power/PowerUI;->access$300(Lcom/android/systemui/power/PowerUI;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v2, p0, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 518
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 519
    .local v1, "permissionFilter":Landroid/content/IntentFilter;
    const-string v2, "com.samsung.CHECK_COOLDOWN_LEVEL"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 520
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v2, v2, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string v3, "com.samsung.android.permission.SSRM_NOTIFICATION_PERMISSION"

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v4}, Lcom/android/systemui/power/PowerUI;->access$300(Lcom/android/systemui/power/PowerUI;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v2, p0, v1, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 522
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 41
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 530
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 531
    .local v2, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_72

    .line 532
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$600(Lcom/android/systemui/power/PowerUI;)I

    move-result v22

    .line 533
    .local v22, "oldBatteryLevel":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v4, "level"

    const/16 v6, 0x64

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUI;->access$602(Lcom/android/systemui/power/PowerUI;I)I

    .line 534
    sget v25, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    .line 535
    .local v25, "oldBatteryStatus":I
    const-string v3, "status"

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    .line 537
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$700(Lcom/android/systemui/power/PowerUI;)I

    move-result v30

    .line 538
    .local v30, "oldPlugType":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v4, "plugged"

    const/4 v6, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUI;->access$702(Lcom/android/systemui/power/PowerUI;I)I

    .line 539
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$800(Lcom/android/systemui/power/PowerUI;)I

    move-result v29

    .line 540
    .local v29, "oldInvalidCharger":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v4, "invalid_charger"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUI;->access$802(Lcom/android/systemui/power/PowerUI;I)I

    .line 543
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v0, v3, Lcom/android/systemui/power/PowerUI;->mPogoState:I

    move/from16 v32, v0

    .line 544
    .local v32, "oldPogoState":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v0, v3, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    move/from16 v20, v0

    .line 545
    .local v20, "oldBatteryHealth":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v0, v3, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    move/from16 v23, v0

    .line 546
    .local v23, "oldBatteryOnline":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v0, v3, Lcom/android/systemui/power/PowerUI;->mBatteryChargetype:I

    move/from16 v19, v0

    .line 547
    .local v19, "oldBatteryChargetype":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-boolean v0, v3, Lcom/android/systemui/power/PowerUI;->mBatteryHighVoltageCharger:Z

    move/from16 v21, v0

    .line 549
    .local v21, "oldBatteryHighVoltageCharger":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v4, "pogo_plugged"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/android/systemui/power/PowerUI;->mPogoState:I

    .line 550
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v4, "health"

    const/4 v6, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    .line 552
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v4, "online"

    const/4 v6, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    .line 553
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v4, "charge_type"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/android/systemui/power/PowerUI;->mBatteryChargetype:I

    .line 554
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v4, "current_avg"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/android/systemui/power/PowerUI;->mBatteryCurrentavg:I

    .line 555
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v4, "temperature"

    const/16 v6, 0x14

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/android/systemui/power/PowerUI;->mBatteryTemperature:I

    .line 556
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v4, "hv_charger"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/systemui/power/PowerUI;->mBatteryHighVoltageCharger:Z

    .line 559
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$700(Lcom/android/systemui/power/PowerUI;)I

    move-result v3

    if-eqz v3, :cond_2

    const/16 v37, 0x1

    .line 560
    .local v37, "plugged":Z
    :goto_0
    if-eqz v30, :cond_3

    const/16 v31, 0x1

    .line 562
    .local v31, "oldPlugged":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move/from16 v0, v22

    invoke-static {v3, v0}, Lcom/android/systemui/power/PowerUI;->access$900(Lcom/android/systemui/power/PowerUI;I)I

    move-result v26

    .line 563
    .local v26, "oldBucket":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v4}, Lcom/android/systemui/power/PowerUI;->access$600(Lcom/android/systemui/power/PowerUI;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUI;->access$900(Lcom/android/systemui/power/PowerUI;I)I

    move-result v5

    .line 566
    .local v5, "bucket":I
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mShowFlashOverHeatPopUp:Z

    if-eqz v3, :cond_4

    .line 567
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-boolean v0, v3, Lcom/android/systemui/power/PowerUI;->mFlashOverHeated:Z

    move/from16 v28, v0

    .line 568
    .local v28, "oldFlashOverHeated":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v4, "1"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v7, "/sys/class/power_supply/battery/camera_limit"

    invoke-virtual {v6, v7}, Lcom/android/systemui/power/PowerUI;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/systemui/power/PowerUI;->mFlashOverHeated:Z

    .line 574
    :goto_2
    sget-boolean v3, Lcom/android/systemui/power/PowerUI;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 575
    const-string v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "buckets   ....."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v6}, Lcom/android/systemui/power/PowerUI;->access$1000(Lcom/android/systemui/power/PowerUI;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " .. "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v6}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)[I

    move-result-object v6

    const/4 v7, 0x0

    aget v6, v6, v7

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " .. "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v6}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)[I

    move-result-object v6

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    const-string v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "level          "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " --> "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v6}, Lcom/android/systemui/power/PowerUI;->access$600(Lcom/android/systemui/power/PowerUI;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    const-string v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "status         "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " --> "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v6, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    const-string v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "health         "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " --> "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v6, v6, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    const-string v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "plugType       "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " --> "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v6}, Lcom/android/systemui/power/PowerUI;->access$700(Lcom/android/systemui/power/PowerUI;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    const-string v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalidCharger "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " --> "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v6}, Lcom/android/systemui/power/PowerUI;->access$800(Lcom/android/systemui/power/PowerUI;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    const-string v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bucket         "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " --> "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    const-string v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "plugged        "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " --> "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    const-string v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "online  "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " --> "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v6, v6, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    const-string v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "chargeType  "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " --> "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v6, v6, Lcom/android/systemui/power/PowerUI;->mBatteryChargetype:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v4}, Lcom/android/systemui/power/PowerUI;->access$600(Lcom/android/systemui/power/PowerUI;)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v6}, Lcom/android/systemui/power/PowerUI;->access$100(Lcom/android/systemui/power/PowerUI;)J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v8, v8, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v9, v9, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v10, v10, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v11}, Lcom/android/systemui/power/PowerUI;->access$700(Lcom/android/systemui/power/PowerUI;)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-boolean v12, v12, Lcom/android/systemui/power/PowerUI;->mFlashOverHeated:Z

    invoke-interface/range {v3 .. v12}, Lcom/android/systemui/power/PowerUI$WarningsUI;->update(IIJIIIIZ)V

    .line 591
    if-nez v29, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$800(Lcom/android/systemui/power/PowerUI;)I

    move-result v3

    if-eqz v3, :cond_5

    .line 592
    const-string v3, "PowerUI"

    const-string v4, "showing invalid charger warning"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showInvalidChargerWarning()V

    .line 1293
    .end local v5    # "bucket":I
    .end local v19    # "oldBatteryChargetype":I
    .end local v20    # "oldBatteryHealth":I
    .end local v21    # "oldBatteryHighVoltageCharger":Z
    .end local v22    # "oldBatteryLevel":I
    .end local v23    # "oldBatteryOnline":I
    .end local v25    # "oldBatteryStatus":I
    .end local v26    # "oldBucket":I
    .end local v28    # "oldFlashOverHeated":Z
    .end local v29    # "oldInvalidCharger":I
    .end local v30    # "oldPlugType":I
    .end local v31    # "oldPlugged":Z
    .end local v32    # "oldPogoState":I
    .end local v37    # "plugged":Z
    :cond_1
    :goto_3
    return-void

    .line 559
    .restart local v19    # "oldBatteryChargetype":I
    .restart local v20    # "oldBatteryHealth":I
    .restart local v21    # "oldBatteryHighVoltageCharger":Z
    .restart local v22    # "oldBatteryLevel":I
    .restart local v23    # "oldBatteryOnline":I
    .restart local v25    # "oldBatteryStatus":I
    .restart local v29    # "oldInvalidCharger":I
    .restart local v30    # "oldPlugType":I
    .restart local v32    # "oldPogoState":I
    :cond_2
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 560
    .restart local v37    # "plugged":Z
    :cond_3
    const/16 v31, 0x0

    goto/16 :goto_1

    .line 570
    .restart local v5    # "bucket":I
    .restart local v26    # "oldBucket":I
    .restart local v31    # "oldPlugged":Z
    :cond_4
    const/16 v28, 0x0

    .line 571
    .restart local v28    # "oldFlashOverHeated":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/systemui/power/PowerUI;->mFlashOverHeated:Z

    goto/16 :goto_2

    .line 595
    :cond_5
    if-eqz v29, :cond_30

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$800(Lcom/android/systemui/power/PowerUI;)I

    move-result v3

    if-nez v3, :cond_30

    .line 596
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissInvalidChargerWarning()V

    .line 602
    :cond_6
    if-nez v37, :cond_33

    move/from16 v0, v26

    if-lt v5, v0, :cond_7

    if-eqz v31, :cond_33

    :cond_7
    sget v3, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_33

    if-gez v5, :cond_33

    .line 607
    move/from16 v0, v26

    if-ne v5, v0, :cond_8

    if-eqz v31, :cond_31

    :cond_8
    const/16 v36, 0x1

    .line 608
    .local v36, "playSound":Z
    :goto_4
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v3, :cond_32

    move/from16 v0, v26

    if-eq v5, v0, :cond_32

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->isLowBatteryWarningShowing()Z

    move-result v3

    if-eqz v3, :cond_32

    .line 609
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissLowBatteryWarning()V

    .line 610
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUI;->access$1302(Lcom/android/systemui/power/PowerUI;Z)Z

    .line 611
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$300(Lcom/android/systemui/power/PowerUI;)Landroid/os/Handler;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v4, v4, Lcom/android/systemui/power/PowerUI;->mLowBatteryWarningTask:Ljava/lang/Runnable;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 632
    .end local v36    # "playSound":Z
    :cond_9
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-boolean v0, v3, Lcom/android/systemui/power/PowerUI;->mCable:Z

    move/from16 v27, v0

    .line 633
    .local v27, "oldCable":Z
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-eq v3, v4, :cond_3a

    .line 634
    const/16 v3, 0xa

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-ne v3, v4, :cond_39

    .line 635
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v4}, Lcom/android/systemui/power/PowerUI;->access$700(Lcom/android/systemui/power/PowerUI;)I

    move-result v4

    if-eq v3, v4, :cond_a

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v4}, Lcom/android/systemui/power/PowerUI;->access$700(Lcom/android/systemui/power/PowerUI;)I

    move-result v4

    if-ne v3, v4, :cond_38

    .line 636
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/systemui/power/PowerUI;->mCable:Z

    .line 637
    const-string v3, "PowerUI"

    const-string v4, "cable connects while wireless charging"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    :goto_6
    const/16 v17, 0x1

    .line 656
    .local v17, "isIntentNeeded":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v3, v3, Lcom/android/systemui/power/PowerUI;->mPogoState:I

    move/from16 v0, v32

    if-eq v0, v3, :cond_40

    .line 657
    const/4 v3, 0x2

    move/from16 v0, v32

    if-ne v0, v3, :cond_3d

    .line 658
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v3, v3, Lcom/android/systemui/power/PowerUI;->mPogoState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3c

    .line 659
    const-string v3, "PowerUI"

    const-string v4, "AC or USB is disconnected while pogo is charging so show the cable disconnected popup"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/systemui/power/PowerUI;->mCable:Z

    .line 682
    :cond_b
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-boolean v3, v3, Lcom/android/systemui/power/PowerUI;->mCable:Z

    move/from16 v0, v27

    if-eq v0, v3, :cond_c

    if-nez v17, :cond_d

    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1400(Lcom/android/systemui/power/PowerUI;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 684
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-boolean v3, v3, Lcom/android/systemui/power/PowerUI;->mCable:Z

    if-eqz v3, :cond_41

    .line 685
    new-instance v13, Landroid/content/Intent;

    const-string v3, "com.samsung.systemui.power.action.ACTION_CABLE_CONNECTED"

    invoke-direct {v13, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 687
    .local v13, "cableIntent":Landroid/content/Intent;
    const-string v3, "power_sharing"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 688
    const-string v3, "power_sharing"

    const/4 v4, 0x1

    invoke-virtual {v13, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 695
    :cond_e
    :goto_8
    const-string v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cable  "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " --> "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-boolean v6, v6, Lcom/android/systemui/power/PowerUI;->mCable:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " mBootCompleted : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v6}, Lcom/android/systemui/power/PowerUI;->access$1500(Lcom/android/systemui/power/PowerUI;)Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    const-string v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sending cableIntent : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1500(Lcom/android/systemui/power/PowerUI;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 699
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 700
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUI;->access$1402(Lcom/android/systemui/power/PowerUI;Z)Z

    .line 710
    .end local v13    # "cableIntent":Landroid/content/Intent;
    :cond_f
    :goto_9
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v4, v4, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "LOW_BATTERY_DUMP"

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v3, v4, :cond_13

    .line 711
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$600(Lcom/android/systemui/power/PowerUI;)I

    move-result v3

    sub-int v3, v22, v3

    const/16 v4, 0xa

    if-ge v3, v4, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$600(Lcom/android/systemui/power/PowerUI;)I

    move-result v3

    sub-int v3, v3, v22

    const/16 v4, 0xa

    if-lt v3, v4, :cond_11

    :cond_10
    const/4 v3, -0x1

    move/from16 v0, v22

    if-ne v3, v0, :cond_12

    :cond_11
    move/from16 v0, v26

    if-ge v5, v0, :cond_13

    const/4 v3, -0x2

    if-ne v3, v5, :cond_13

    .line 716
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1500(Lcom/android/systemui/power/PowerUI;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 717
    const-string v3, "PowerUI"

    const-string v4, "Low battery dump"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.samsung.systemui.power.action.LOW_BATTERY_DUMP"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 719
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.android.systemui.power.action.LOW_BATTERY_DUMP"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 724
    :cond_13
    sget-boolean v3, Lcom/android/systemui/power/PowerUI$Sales;->ATT:Z

    if-eqz v3, :cond_18

    .line 725
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "isLowLevel"

    const/4 v6, 0x2

    const/4 v7, -0x2

    invoke-static {v3, v4, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v16

    .line 726
    .local v16, "isBatteryLowLevel":I
    const/16 v3, 0x14

    move/from16 v0, v22

    if-gt v0, v3, :cond_14

    const/4 v3, -0x1

    move/from16 v0, v22

    if-ne v3, v0, :cond_15

    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$600(Lcom/android/systemui/power/PowerUI;)I

    move-result v3

    const/16 v4, 0x14

    if-le v3, v4, :cond_17

    :cond_15
    const/4 v3, 0x1

    move/from16 v0, v16

    if-eq v0, v3, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$600(Lcom/android/systemui/power/PowerUI;)I

    move-result v3

    const/16 v4, 0x14

    if-le v3, v4, :cond_17

    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1600(Lcom/android/systemui/power/PowerUI;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 730
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "isLowLevel"

    const/4 v6, 0x1

    const/4 v7, -0x2

    invoke-static {v3, v4, v6, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 731
    new-instance v39, Landroid/content/Intent;

    const-string v3, "com.samsung.settings.POWERSAVING_AUTO_ENABLE"

    move-object/from16 v0, v39

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 732
    .local v39, "powerSavingModeAutoEnableIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1500(Lcom/android/systemui/power/PowerUI;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 733
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v39

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 734
    const-string v3, "PowerUI"

    const-string v4, "the battery level goes below the threshold of Power saving mode"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUI;->access$1602(Lcom/android/systemui/power/PowerUI;Z)Z

    .line 756
    .end local v16    # "isBatteryLowLevel":I
    .end local v39    # "powerSavingModeAutoEnableIntent":Landroid/content/Intent;
    :cond_18
    :goto_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-boolean v3, v3, Lcom/android/systemui/power/PowerUI;->mSupportLED:Z

    if-eqz v3, :cond_19

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mForceShowFullBatteryNotification:Z

    if-eqz v3, :cond_1d

    .line 757
    :cond_19
    sget v3, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    move/from16 v0, v25

    if-eq v0, v3, :cond_1d

    .line 758
    const/4 v3, 0x5

    sget v4, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-ne v3, v4, :cond_4a

    .line 763
    const/16 v40, 0x1

    .line 765
    .local v40, "show":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/os/PowerManager;

    .line 766
    .local v38, "powerManager":Landroid/os/PowerManager;
    invoke-static {}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getInstance()Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v18

    .line 767
    .local v18, "knoxCustomManager":Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    if-eqz v38, :cond_1c

    if-eqz v18, :cond_1c

    if-eqz v37, :cond_1c

    if-eqz v31, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$700(Lcom/android/systemui/power/PowerUI;)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1c

    :cond_1a
    invoke-virtual/range {v38 .. v38}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    if-nez v3, :cond_1c

    invoke-virtual/range {v18 .. v18}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getScreenWakeupOnPowerState()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 772
    sget-boolean v3, Lcom/android/systemui/power/PowerUI;->DEBUG:Z

    if-eqz v3, :cond_1b

    .line 773
    const-string v3, "PowerUI"

    const-string v4, "Knox Customization: PowerUI: not waking for full battery notification"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    :cond_1b
    const/16 v40, 0x0

    .line 777
    :cond_1c
    if-eqz v40, :cond_1d

    .line 779
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showFullBatteryNotice()V

    .line 791
    .end local v18    # "knoxCustomManager":Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    .end local v38    # "powerManager":Landroid/os/PowerManager;
    .end local v40    # "show":Z
    :cond_1d
    :goto_b
    const/4 v3, 0x4

    sget v4, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-ne v3, v4, :cond_4f

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-eq v3, v4, :cond_1e

    const/4 v3, 0x6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-eq v3, v4, :cond_1e

    const/4 v3, 0x7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-ne v3, v4, :cond_4f

    .line 795
    :cond_1e
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mShowFlashOverHeatPopUp:Z

    if-eqz v3, :cond_4b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-boolean v3, v3, Lcom/android/systemui/power/PowerUI;->mFlashOverHeated:Z

    if-eqz v3, :cond_4b

    .line 796
    const/4 v3, 0x4

    move/from16 v0, v25

    if-eq v3, v0, :cond_1f

    const/4 v3, 0x3

    move/from16 v0, v20

    if-eq v3, v0, :cond_1f

    .line 798
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showFlashHighTemperatureWarning(Z)V

    .line 800
    :cond_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v3, :cond_21

    .line 801
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissChargingInterruptionWarning()V

    .line 802
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUI;->access$1802(Lcom/android/systemui/power/PowerUI;Z)Z

    .line 804
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-boolean v3, v3, Lcom/android/systemui/power/PowerUI;->mDimKeeping:Z

    if-eqz v3, :cond_20

    .line 805
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 806
    :cond_20
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimLock:Landroid/os/PowerManager$WakeLock;

    .line 877
    :cond_21
    :goto_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1800(Lcom/android/systemui/power/PowerUI;)Z

    move-result v3

    if-eqz v3, :cond_22

    const/4 v3, 0x2

    sget v4, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-ne v3, v4, :cond_22

    .line 878
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissChargingInterruptionWarning()V

    .line 879
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUI;->access$1802(Lcom/android/systemui/power/PowerUI;Z)Z

    .line 882
    :cond_22
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v3, v3, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    move/from16 v0, v20

    if-eq v0, v3, :cond_24

    .line 883
    const/4 v3, 0x5

    move/from16 v0, v20

    if-eq v3, v0, :cond_23

    const/4 v3, 0x5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-eq v3, v4, :cond_23

    const/16 v3, 0x9

    move/from16 v0, v20

    if-eq v3, v0, :cond_23

    const/16 v3, 0x9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-ne v3, v4, :cond_24

    .line 887
    :cond_23
    const-string v3, "PowerUI"

    const-string v4, "Overvoltage/Undervoltage (recovered) so turn on the screen."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->turnOnScreen()V

    .line 892
    :cond_24
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$700(Lcom/android/systemui/power/PowerUI;)I

    move-result v3

    move/from16 v0, v30

    if-eq v0, v3, :cond_28

    .line 893
    if-eqz v30, :cond_25

    const/4 v3, -0x1

    move/from16 v0, v30

    if-ne v3, v0, :cond_28

    .line 894
    :cond_25
    if-nez v30, :cond_28

    .line 895
    const/4 v3, 0x4

    move/from16 v0, v25

    if-eq v3, v0, :cond_26

    const/4 v3, 0x4

    sget v4, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-ne v3, v4, :cond_26

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-eq v3, v4, :cond_27

    const/4 v3, 0x6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-eq v3, v4, :cond_27

    const/4 v3, 0x7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-eq v3, v4, :cond_27

    const/16 v3, 0x8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-eq v3, v4, :cond_27

    :cond_26
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "charging_sounds_enabled"

    const/4 v6, 0x1

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_57

    .line 902
    :cond_27
    const-string v3, "PowerUI"

    const-string v4, "charging interruption so don\'t play charger connection sound"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    :cond_28
    :goto_d
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mShowFlashOverHeatPopUp:Z

    if-eqz v3, :cond_29

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-boolean v3, v3, Lcom/android/systemui/power/PowerUI;->mFlashOverHeated:Z

    move/from16 v0, v28

    if-eq v0, v3, :cond_29

    .line 915
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-boolean v3, v3, Lcom/android/systemui/power/PowerUI;->mFlashOverHeated:Z

    if-eqz v3, :cond_59

    .line 916
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionPartialLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 917
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showFlashHighTemperatureWarning(Z)V

    .line 925
    :cond_29
    :goto_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v3, v3, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    move/from16 v0, v23

    if-eq v0, v3, :cond_2c

    .line 927
    const/4 v3, 0x1

    move/from16 v0, v23

    if-ne v3, v0, :cond_5a

    const/16 v3, 0xa

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-ne v3, v4, :cond_5a

    .line 929
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v3, :cond_2a

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mJPNWirelessChargerPopUp:Z

    if-eqz v3, :cond_2b

    .line 930
    :cond_2a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showWirelessChargingNotice()V

    .line 957
    :cond_2b
    :goto_f
    sget-boolean v3, Lcom/android/systemui/power/PowerUI$Sales;->VZW:Z

    if-eqz v3, :cond_2c

    .line 958
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v3, v3, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-nez v3, :cond_63

    .line 965
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showIncompatibleChargerWarning()V

    .line 1025
    :cond_2c
    :goto_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1900(Lcom/android/systemui/power/PowerUI;)Z

    move-result v3

    if-nez v3, :cond_65

    .line 1026
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-boolean v3, v3, Lcom/android/systemui/power/PowerUI;->mBatteryHighVoltageCharger:Z

    move/from16 v0, v21

    if-eq v0, v3, :cond_2d

    .line 1027
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-boolean v3, v3, Lcom/android/systemui/power/PowerUI;->mBatteryHighVoltageCharger:Z

    if-eqz v3, :cond_64

    .line 1028
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showHighVoltageChargerNotice()V

    .line 1096
    :cond_2d
    :goto_11
    sget-boolean v3, Lcom/android/systemui/power/PowerUI$Sales;->VZW:Z

    if-nez v3, :cond_2e

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    if-ne v3, v4, :cond_1

    .line 1097
    :cond_2e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v3, v3, Lcom/android/systemui/power/PowerUI;->mBatteryChargetype:I

    move/from16 v0, v19

    if-eq v0, v3, :cond_1

    .line 1098
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryChargetype:I

    if-ne v3, v4, :cond_71

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v3, v3, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-eqz v3, :cond_71

    .line 1100
    sget-boolean v3, Lcom/android/systemui/power/PowerUI$Sales;->VZW:Z

    if-eqz v3, :cond_2f

    .line 1101
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    if-ne v3, v4, :cond_70

    .line 1102
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0504

    const/4 v6, 0x1

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1106
    :cond_2f
    :goto_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showSlowChargerWarning()V

    .line 1108
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v3, v3, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    if-lez v3, :cond_1

    .line 1109
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissChargingNotice()V

    .line 1110
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x0

    iput v4, v3, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    goto/16 :goto_3

    .line 597
    .end local v17    # "isIntentNeeded":Z
    .end local v27    # "oldCable":Z
    :cond_30
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->isInvalidChargerWarningShowing()Z

    move-result v3

    if-eqz v3, :cond_6

    goto/16 :goto_3

    .line 607
    :cond_31
    const/16 v36, 0x0

    goto/16 :goto_4

    .line 613
    .restart local v36    # "playSound":Z
    :cond_32
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    move/from16 v0, v36

    invoke-interface {v3, v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showLowBatteryWarning(Z)V

    goto/16 :goto_5

    .line 615
    .end local v36    # "playSound":Z
    :cond_33
    if-nez v37, :cond_34

    move/from16 v0, v26

    if-le v5, v0, :cond_36

    if-lez v5, :cond_36

    .line 616
    :cond_34
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1300(Lcom/android/systemui/power/PowerUI;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 617
    const-string v3, "PowerUI"

    const-string v4, "removeCallbacks(mLowBatteryWarningTask)"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$300(Lcom/android/systemui/power/PowerUI;)Landroid/os/Handler;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v4, v4, Lcom/android/systemui/power/PowerUI;->mLowBatteryWarningTask:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 619
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUI;->access$1302(Lcom/android/systemui/power/PowerUI;Z)Z

    .line 621
    :cond_35
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/systemui/power/PowerUI;->mForceTest:Z

    .line 622
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissLowBatteryWarning()V

    goto/16 :goto_5

    .line 624
    :cond_36
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->isCocktailLowBatteryWarningShowing()Z

    move-result v3

    if-eqz v3, :cond_37

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$600(Lcom/android/systemui/power/PowerUI;)I

    move-result v3

    move/from16 v0, v22

    if-eq v0, v3, :cond_37

    .line 625
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/android/systemui/power/PowerUI$WarningsUI;->updateCocktailLowBatteryWarning(Z)V

    .line 627
    :cond_37
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/systemui/power/PowerUI;->mForceTest:Z

    .line 628
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->isLowBatteryWarningShowing()Z

    move-result v3

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$600(Lcom/android/systemui/power/PowerUI;)I

    move-result v3

    move/from16 v0, v22

    if-eq v0, v3, :cond_9

    .line 629
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->updateLowBatteryWarning()V

    goto/16 :goto_5

    .line 639
    .restart local v27    # "oldCable":Z
    :cond_38
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/systemui/power/PowerUI;->mCable:Z

    goto/16 :goto_6

    .line 642
    :cond_39
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/systemui/power/PowerUI;->mCable:Z

    goto/16 :goto_6

    .line 646
    :cond_3a
    const-string v3, "power_sharing"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 647
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/systemui/power/PowerUI;->mCable:Z

    goto/16 :goto_6

    .line 651
    :cond_3b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/systemui/power/PowerUI;->mCable:Z

    goto/16 :goto_6

    .line 661
    .restart local v17    # "isIntentNeeded":Z
    :cond_3c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v3, v3, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_b

    .line 662
    const-string v3, "PowerUI"

    const-string v4, "Both AC or USB and Pogo is disconnected so show the cable disconnected popup"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/systemui/power/PowerUI;->mCable:Z

    goto/16 :goto_7

    .line 665
    :cond_3d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v3, v3, Lcom/android/systemui/power/PowerUI;->mPogoState:I

    if-nez v3, :cond_3e

    .line 666
    const-string v3, "PowerUI"

    const-string v4, "Pogo is disconnected but not need to show the water damage popup"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/systemui/power/PowerUI;->mCable:Z

    .line 668
    const/16 v17, 0x0

    goto/16 :goto_7

    .line 669
    :cond_3e
    const/4 v3, 0x1

    move/from16 v0, v32

    if-ne v0, v3, :cond_3f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v3, v3, Lcom/android/systemui/power/PowerUI;->mPogoState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3f

    .line 670
    const-string v3, "PowerUI"

    const-string v4, "AC/USB is connected while pogo is connected"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/systemui/power/PowerUI;->mCable:Z

    goto/16 :goto_7

    .line 672
    :cond_3f
    if-nez v32, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v3, v3, Lcom/android/systemui/power/PowerUI;->mPogoState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_b

    const/4 v3, 0x3

    move/from16 v0, v23

    if-ne v0, v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v3, v3, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    const/16 v4, 0x17

    if-ne v3, v4, :cond_b

    .line 673
    const-string v3, "PowerUI"

    const-string v4, "AC is disconnected while pogo is connected"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/systemui/power/PowerUI;->mCable:Z

    goto/16 :goto_7

    .line 676
    :cond_40
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v3, v3, Lcom/android/systemui/power/PowerUI;->mPogoState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_b

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-eq v3, v4, :cond_b

    .line 677
    const-string v3, "PowerUI"

    const-string v4, "only pogo is connected, do not send connected intent!"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/systemui/power/PowerUI;->mCable:Z

    .line 679
    const/16 v17, 0x0

    goto/16 :goto_7

    .line 692
    :cond_41
    new-instance v13, Landroid/content/Intent;

    const-string v3, "com.samsung.systemui.power.action.ACTION_CABLE_DISCONNECTED"

    invoke-direct {v13, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v13    # "cableIntent":Landroid/content/Intent;
    goto/16 :goto_8

    .line 702
    :cond_42
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUI;->access$1402(Lcom/android/systemui/power/PowerUI;Z)Z

    goto/16 :goto_9

    .line 737
    .end local v13    # "cableIntent":Landroid/content/Intent;
    .restart local v16    # "isBatteryLowLevel":I
    .restart local v39    # "powerSavingModeAutoEnableIntent":Landroid/content/Intent;
    :cond_43
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUI;->access$1602(Lcom/android/systemui/power/PowerUI;Z)Z

    goto/16 :goto_a

    .line 739
    .end local v39    # "powerSavingModeAutoEnableIntent":Landroid/content/Intent;
    :cond_44
    const/16 v3, 0x14

    move/from16 v0, v22

    if-le v0, v3, :cond_45

    const/4 v3, -0x1

    move/from16 v0, v22

    if-ne v3, v0, :cond_46

    :cond_45
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$600(Lcom/android/systemui/power/PowerUI;)I

    move-result v3

    const/16 v4, 0x14

    if-gt v3, v4, :cond_48

    :cond_46
    if-eqz v16, :cond_47

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$600(Lcom/android/systemui/power/PowerUI;)I

    move-result v3

    const/16 v4, 0x14

    if-gt v3, v4, :cond_48

    :cond_47
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1700(Lcom/android/systemui/power/PowerUI;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 743
    :cond_48
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "isLowLevel"

    const/4 v6, 0x0

    const/4 v7, -0x2

    invoke-static {v3, v4, v6, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 744
    new-instance v39, Landroid/content/Intent;

    const-string v3, "com.samsung.settings.POWERSAVING_AUTO_ENABLE"

    move-object/from16 v0, v39

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 745
    .restart local v39    # "powerSavingModeAutoEnableIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1500(Lcom/android/systemui/power/PowerUI;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 746
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v39

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 747
    const-string v3, "PowerUI"

    const-string v4, "the battery level goes over the threshold of Power saving mode"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUI;->access$1702(Lcom/android/systemui/power/PowerUI;Z)Z

    goto/16 :goto_a

    .line 750
    :cond_49
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUI;->access$1702(Lcom/android/systemui/power/PowerUI;Z)Z

    goto/16 :goto_a

    .line 783
    .end local v16    # "isBatteryLowLevel":I
    .end local v39    # "powerSavingModeAutoEnableIntent":Landroid/content/Intent;
    :cond_4a
    const/4 v3, 0x5

    move/from16 v0, v25

    if-ne v3, v0, :cond_1d

    .line 784
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissFullBatteryNotice()V

    goto/16 :goto_b

    .line 808
    :cond_4b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimLock:Landroid/os/PowerManager$WakeLock;

    if-nez v3, :cond_4e

    .line 809
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/os/PowerManager;

    .line 810
    .restart local v38    # "powerManager":Landroid/os/PowerManager;
    if-nez v38, :cond_4c

    .line 811
    const-string v3, "PowerUI"

    const-string v4, "onReceive : fail to get PowerManager reference"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 813
    :cond_4c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const v4, 0x10000006

    const-string v6, "PowerUI"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, v3, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimLock:Landroid/os/PowerManager$WakeLock;

    .line 815
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-boolean v3, v3, Lcom/android/systemui/power/PowerUI;->mDimKeeping:Z

    if-nez v3, :cond_4d

    .line 816
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v6, 0xea60

    invoke-virtual {v3, v6, v7}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 820
    :goto_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionPartialLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 822
    sget-boolean v3, Lcom/android/systemui/power/PowerUI;->mBatterySwelling:Z

    if-nez v3, :cond_21

    .line 823
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showChargingInterruptionWarning()V

    goto/16 :goto_c

    .line 818
    :cond_4d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_13

    .line 826
    .end local v38    # "powerManager":Landroid/os/PowerManager;
    :cond_4e
    const/16 v3, 0x8

    move/from16 v0, v20

    if-ne v3, v0, :cond_21

    .line 827
    sget-boolean v3, Lcom/android/systemui/power/PowerUI;->mBatterySwelling:Z

    if-nez v3, :cond_21

    .line 828
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showChargingInterruptionWarning()V

    goto/16 :goto_c

    .line 831
    :cond_4f
    const/4 v3, 0x4

    sget v4, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-ne v3, v4, :cond_54

    const/16 v3, 0x8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-ne v3, v4, :cond_54

    .line 833
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimLock:Landroid/os/PowerManager$WakeLock;

    if-nez v3, :cond_52

    .line 834
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/os/PowerManager;

    .line 835
    .restart local v38    # "powerManager":Landroid/os/PowerManager;
    if-nez v38, :cond_50

    .line 836
    const-string v3, "PowerUI"

    const-string v4, "onReceive : fail to get PowerManager reference"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 838
    :cond_50
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const v4, 0x10000006

    const-string v6, "PowerUI"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, v3, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimLock:Landroid/os/PowerManager$WakeLock;

    .line 840
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-boolean v3, v3, Lcom/android/systemui/power/PowerUI;->mDimKeeping:Z

    if-nez v3, :cond_51

    .line 841
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v6, 0xea60

    invoke-virtual {v3, v6, v7}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 845
    :goto_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionPartialLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 847
    sget-boolean v3, Lcom/android/systemui/power/PowerUI;->mBatterySwelling:Z

    if-nez v3, :cond_21

    .line 848
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showChargingInterruptionWarning()V

    goto/16 :goto_c

    .line 843
    :cond_51
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_14

    .line 851
    .end local v38    # "powerManager":Landroid/os/PowerManager;
    :cond_52
    const/4 v3, 0x3

    move/from16 v0, v20

    if-ne v3, v0, :cond_21

    .line 852
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-boolean v3, v3, Lcom/android/systemui/power/PowerUI;->mDimKeeping:Z

    if-nez v3, :cond_53

    .line 853
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v6, 0xea60

    invoke-virtual {v3, v6, v7}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 856
    :cond_53
    sget-boolean v3, Lcom/android/systemui/power/PowerUI;->mBatterySwelling:Z

    if-nez v3, :cond_21

    .line 857
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showChargingInterruptionWarning()V

    goto/16 :goto_c

    .line 860
    :cond_54
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v3, :cond_21

    .line 861
    const/4 v3, 0x4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v4}, Lcom/android/systemui/power/PowerUI;->access$700(Lcom/android/systemui/power/PowerUI;)I

    move-result v4

    if-ne v3, v4, :cond_56

    const/4 v3, 0x3

    sget v4, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-ne v3, v4, :cond_56

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-ne v3, v4, :cond_56

    .line 863
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUI;->access$1802(Lcom/android/systemui/power/PowerUI;Z)Z

    .line 869
    :goto_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-boolean v3, v3, Lcom/android/systemui/power/PowerUI;->mDimKeeping:Z

    if-eqz v3, :cond_55

    .line 870
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 872
    :cond_55
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionPartialLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 874
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimLock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_c

    .line 865
    :cond_56
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissChargingInterruptionWarning()V

    .line 866
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUI;->access$1802(Lcom/android/systemui/power/PowerUI;Z)Z

    goto :goto_15

    .line 904
    :cond_57
    const/4 v3, 0x4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v4}, Lcom/android/systemui/power/PowerUI;->access$700(Lcom/android/systemui/power/PowerUI;)I

    move-result v4

    if-ne v3, v4, :cond_58

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-boolean v3, v3, Lcom/android/systemui/power/PowerUI;->mIsDeviceMoving:Z

    if-nez v3, :cond_58

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$200(Lcom/android/systemui/power/PowerUI;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 905
    :cond_58
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/android/systemui/power/PowerUI$WarningsUI;->playSound(I)V

    goto/16 :goto_d

    .line 919
    :cond_59
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissFlashHighTemperatureWarning()V

    .line 920
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionPartialLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_e

    .line 931
    :cond_5a
    const/16 v3, 0xa

    move/from16 v0, v23

    if-eq v3, v0, :cond_5b

    const/16 v3, 0x64

    move/from16 v0, v23

    if-ne v3, v0, :cond_5e

    :cond_5b
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-eq v3, v4, :cond_5c

    const/4 v3, 0x4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-ne v3, v4, :cond_5e

    .line 933
    :cond_5c
    const-string v3, "PowerUI"

    const-string v4, "switch from wireless to cable"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissWirelessChargingNotice()V

    .line 935
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v3

    if-nez v3, :cond_5d

    .line 936
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const v4, 0x7f0b04f7

    const/4 v6, 0x1

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 938
    :cond_5d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->turnOnScreen()V

    goto/16 :goto_f

    .line 939
    :cond_5e
    const/4 v3, 0x3

    move/from16 v0, v23

    if-eq v3, v0, :cond_5f

    const/4 v3, 0x4

    move/from16 v0, v23

    if-ne v3, v0, :cond_61

    :cond_5f
    const/16 v3, 0xa

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-ne v3, v4, :cond_61

    .line 941
    const-string v3, "PowerUI"

    const-string v4, "switch from cable to wireless"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v3

    if-nez v3, :cond_60

    .line 943
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const v4, 0x7f0b04f8

    const/4 v6, 0x1

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 945
    :cond_60
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->turnOnScreen()V

    goto/16 :goto_f

    .line 946
    :cond_61
    const/4 v3, 0x1

    move/from16 v0, v23

    if-eq v3, v0, :cond_2b

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-ne v3, v4, :cond_2b

    .line 948
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissWirelessChargingNotice()V

    .line 950
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mShowWirelessChargerDisconnectPopup:Z

    if-eqz v3, :cond_2b

    const/16 v3, 0xa

    move/from16 v0, v23

    if-eq v3, v0, :cond_62

    const/16 v3, 0x64

    move/from16 v0, v23

    if-ne v3, v0, :cond_2b

    .line 952
    :cond_62
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showWirelessChargingDisconnectWarning()V

    goto/16 :goto_f

    .line 966
    :cond_63
    if-nez v23, :cond_2c

    .line 967
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissIncompatibleChargerWarning()V

    goto/16 :goto_10

    .line 1030
    :cond_64
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissHighVoltageChargerNotice()V

    .line 1031
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->cancelHighVoltageChargerNotification()V

    goto/16 :goto_11

    .line 1038
    :cond_65
    sget-boolean v3, Lcom/android/systemui/power/PowerUI$Sales;->VZW:Z

    if-eqz v3, :cond_66

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryChargetype:I

    if-ne v3, v4, :cond_66

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v3, v3, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-nez v3, :cond_2d

    .line 1040
    :cond_66
    const/4 v3, 0x2

    sget v4, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-ne v3, v4, :cond_6f

    .line 1041
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v4}, Lcom/android/systemui/power/PowerUI;->access$700(Lcom/android/systemui/power/PowerUI;)I

    move-result v4

    if-eq v3, v4, :cond_67

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v4}, Lcom/android/systemui/power/PowerUI;->access$700(Lcom/android/systemui/power/PowerUI;)I

    move-result v4

    if-ne v3, v4, :cond_6c

    .line 1042
    :cond_67
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-boolean v3, v3, Lcom/android/systemui/power/PowerUI;->mBatteryHighVoltageCharger:Z

    if-eqz v3, :cond_6b

    .line 1043
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x2

    iput v4, v3, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    .line 1047
    :goto_16
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mShowChargerAnimation:Z

    if-eqz v3, :cond_68

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$2000(Lcom/android/systemui/power/PowerUI;)Z

    move-result v3

    if-nez v3, :cond_68

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$700(Lcom/android/systemui/power/PowerUI;)I

    move-result v3

    move/from16 v0, v30

    if-eq v0, v3, :cond_68

    const/4 v3, -0x1

    move/from16 v0, v30

    if-eq v0, v3, :cond_68

    .line 1049
    const-string v3, "PowerUI"

    const-string v4, "Cable charger connected"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUI;->access$2002(Lcom/android/systemui/power/PowerUI;Z)Z

    .line 1051
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$2100(Lcom/android/systemui/power/PowerUI;)V

    .line 1074
    :cond_68
    :goto_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v3, v3, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    if-lez v3, :cond_69

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$2000(Lcom/android/systemui/power/PowerUI;)Z

    move-result v3

    if-nez v3, :cond_69

    .line 1075
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    invoke-interface {v3, v4}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showChargingNotice(I)V

    .line 1077
    :cond_69
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v3, v3, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    if-lez v3, :cond_2d

    .line 1078
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mShowWirelessChargerDisconnectPopup:Z

    if-eqz v3, :cond_2d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-boolean v3, v3, Lcom/android/systemui/power/PowerUI;->mIsSContextEnabled:Z

    if-eqz v3, :cond_2d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-boolean v3, v3, Lcom/android/systemui/power/PowerUI;->mIsSContextListenerRigstered:Z

    if-nez v3, :cond_2d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v3, v3, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_6a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v3, v3, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2d

    .line 1080
    :cond_6a
    const-string v3, "PowerUI"

    const-string v4, "Register SContextListener"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v4}, Lcom/android/systemui/power/PowerUI;->access$2200(Lcom/android/systemui/power/PowerUI;)Landroid/hardware/scontext/SContextListener;

    move-result-object v4

    const/16 v6, 0x2e

    invoke-virtual {v3, v4, v6}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;I)Z

    .line 1082
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/systemui/power/PowerUI;->mIsSContextListenerRigstered:Z

    goto/16 :goto_11

    .line 1045
    :cond_6b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x1

    iput v4, v3, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    goto/16 :goto_16

    .line 1055
    :cond_6c
    const/4 v3, 0x4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v4}, Lcom/android/systemui/power/PowerUI;->access$700(Lcom/android/systemui/power/PowerUI;)I

    move-result v4

    if-ne v3, v4, :cond_6e

    .line 1056
    const/16 v3, 0x64

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-ne v3, v4, :cond_6d

    .line 1057
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x4

    iput v4, v3, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    .line 1061
    :goto_18
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mShowChargerAnimation:Z

    if-eqz v3, :cond_68

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$2000(Lcom/android/systemui/power/PowerUI;)Z

    move-result v3

    if-nez v3, :cond_68

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$700(Lcom/android/systemui/power/PowerUI;)I

    move-result v3

    move/from16 v0, v30

    if-eq v0, v3, :cond_68

    const/4 v3, -0x1

    move/from16 v0, v30

    if-eq v0, v3, :cond_68

    .line 1063
    const-string v3, "PowerUI"

    const-string v4, "Wireless charger connected"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUI;->access$2002(Lcom/android/systemui/power/PowerUI;Z)Z

    .line 1065
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$2100(Lcom/android/systemui/power/PowerUI;)V

    goto/16 :goto_17

    .line 1059
    :cond_6d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x3

    iput v4, v3, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    goto :goto_18

    .line 1070
    :cond_6e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissChargingNotice()V

    .line 1071
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x0

    iput v4, v3, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    goto/16 :goto_17

    .line 1086
    :cond_6f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v3, v3, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    if-lez v3, :cond_2d

    .line 1087
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissChargingNotice()V

    .line 1088
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x0

    iput v4, v3, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    goto/16 :goto_11

    .line 1104
    :cond_70
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0503

    const/4 v6, 0x1

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_12

    .line 1112
    :cond_71
    const/4 v3, 0x2

    move/from16 v0, v19

    if-ne v3, v0, :cond_1

    .line 1113
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissSlowChargerWarning()V

    goto/16 :goto_3

    .line 1127
    .end local v5    # "bucket":I
    .end local v17    # "isIntentNeeded":Z
    .end local v19    # "oldBatteryChargetype":I
    .end local v20    # "oldBatteryHealth":I
    .end local v21    # "oldBatteryHighVoltageCharger":Z
    .end local v22    # "oldBatteryLevel":I
    .end local v23    # "oldBatteryOnline":I
    .end local v25    # "oldBatteryStatus":I
    .end local v26    # "oldBucket":I
    .end local v27    # "oldCable":Z
    .end local v28    # "oldFlashOverHeated":Z
    .end local v29    # "oldInvalidCharger":I
    .end local v30    # "oldPlugType":I
    .end local v31    # "oldPlugged":Z
    .end local v32    # "oldPogoState":I
    .end local v37    # "plugged":Z
    :cond_72
    const-string v3, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_73

    .line 1128
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/power/PowerUI$Receiver;->updateSaverMode()V

    goto/16 :goto_3

    .line 1129
    :cond_73
    const-string v3, "android.os.action.POWER_SAVE_MODE_CHANGING"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_74

    .line 1130
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v4, "mode"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUI;->access$500(Lcom/android/systemui/power/PowerUI;Z)V

    goto/16 :goto_3

    .line 1133
    :cond_74
    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_79

    .line 1135
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-boolean v3, v3, Lcom/android/systemui/power/PowerUI;->mSupportLED:Z

    if-nez v3, :cond_75

    const/4 v3, 0x5

    sget v4, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-ne v3, v4, :cond_75

    .line 1136
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissFullBatteryNotice()V

    .line 1137
    const-string v3, "PowerUI"

    const-string v4, "Language is changed so notify FullBatteryNotification again"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showFullBatteryNotice()V

    .line 1142
    :cond_75
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v4}, Lcom/android/systemui/power/PowerUI;->access$600(Lcom/android/systemui/power/PowerUI;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUI;->access$900(Lcom/android/systemui/power/PowerUI;I)I

    move-result v5

    .line 1143
    .restart local v5    # "bucket":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->isLowBatteryWarningShowing()Z

    move-result v3

    if-eqz v3, :cond_76

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$700(Lcom/android/systemui/power/PowerUI;)I

    move-result v3

    if-nez v3, :cond_76

    sget v3, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_76

    if-gez v5, :cond_76

    .line 1146
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissLowBatteryWarning()V

    .line 1147
    const-string v3, "PowerUI"

    const-string v4, "Language is changed so notify LowBatteryNotification again"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUI;->access$1302(Lcom/android/systemui/power/PowerUI;Z)Z

    .line 1150
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$300(Lcom/android/systemui/power/PowerUI;)Landroid/os/Handler;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v4, v4, Lcom/android/systemui/power/PowerUI;->mLowBatteryWarningTask:Ljava/lang/Runnable;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1153
    :cond_76
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v3, v3, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    if-lez v3, :cond_77

    .line 1154
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissChargingNotice()V

    .line 1155
    const-string v3, "PowerUI"

    const-string v4, "Language is changed so notify ChargingNotification again"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    invoke-interface {v3, v4}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showChargingNotice(I)V

    .line 1159
    :cond_77
    sget-boolean v3, Lcom/android/systemui/power/PowerUI$Sales;->VZW:Z

    if-eqz v3, :cond_1

    .line 1161
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v3, v3, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-nez v3, :cond_78

    .line 1162
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissIncompatibleChargerWarning()V

    .line 1163
    const-string v3, "PowerUI"

    const-string v4, "Language is changed so notify incompatible charger again"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showIncompatibleChargerWarning()V

    goto/16 :goto_3

    .line 1168
    :cond_78
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryChargetype:I

    if-ne v3, v4, :cond_1

    .line 1169
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissSlowChargerWarning()V

    .line 1170
    const-string v3, "PowerUI"

    const-string v4, "Language is changed so notify slow charging again"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showSlowChargerWarning()V

    goto/16 :goto_3

    .line 1177
    .end local v5    # "bucket":I
    :cond_79
    const-string v3, "com.android.server.PowerManagerService.action.FAILED_TO_DETECT_FACE_BEFORE_DIM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7a

    .line 1178
    const-string v3, "PowerUI"

    const-string v4, "Face detection is failed before dimming"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->notifyFaceDetectionFailureNotification()V

    goto/16 :goto_3

    .line 1182
    :cond_7a
    const-string v3, "com.sec.factory.app.factorytest.FTA_ON"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 1183
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    .line 1184
    const-string v3, "PowerUI"

    const-string v4, "FTA mode ON"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1185
    :cond_7b
    const-string v3, "com.sec.factory.app.factorytest.FTA_OFF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7c

    .line 1186
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    .line 1187
    const-string v3, "PowerUI"

    const-string v4, "FTA mode OFF"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1188
    :cond_7c
    const-string v3, "com.samsung.pen.INSERT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7e

    .line 1189
    const-string v3, "penInsert"

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v35

    .line 1190
    .local v35, "penInsert":Z
    if-nez v35, :cond_1

    sget-boolean v3, Lcom/android/systemui/power/PowerUI;->mSPen:Z

    if-eqz v3, :cond_1

    const/16 v3, 0xa

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-eq v3, v4, :cond_7d

    const/16 v3, 0x64

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-ne v3, v4, :cond_1

    .line 1192
    :cond_7d
    const-string v3, "PowerUI"

    const-string v4, "S Pen is detached and wireless charging"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const v4, 0x7f0b04f9

    const/4 v6, 0x1

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3

    .line 1195
    .end local v35    # "penInsert":Z
    :cond_7e
    const-string v3, "com.sec.android.app.camera.ACTION_START_COVER_CAMERA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7f

    .line 1196
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/systemui/power/PowerUI;->mCoverCamera:Z

    .line 1197
    const-string v3, "PowerUI"

    const-string v4, "cover camera start"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v3, :cond_1

    .line 1199
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissLowBatteryWarning()V

    goto/16 :goto_3

    .line 1200
    :cond_7f
    const-string v3, "com.sec.android.app.camera.ACTION_STOP_COVER_CAMERA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_80

    .line 1201
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/systemui/power/PowerUI;->mCoverCamera:Z

    .line 1202
    const-string v3, "PowerUI"

    const-string v4, "cover camera stop"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1206
    :cond_80
    const-string v3, "com.samsung.CHECK_COOLDOWN_LEVEL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_85

    .line 1207
    sget-boolean v3, Lcom/android/systemui/power/PowerUI$Sales;->VZW:Z

    if-eqz v3, :cond_83

    .line 1208
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v0, v3, Lcom/android/systemui/power/PowerUI;->mSIOPLevel:I

    move/from16 v33, v0

    .line 1209
    .local v33, "oldSIOPLevel":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v4, "check_cooldown_level"

    const/4 v6, 0x5

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/android/systemui/power/PowerUI;->mSIOPLevel:I

    .line 1210
    const-string v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIOP Level = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v6, v6, Lcom/android/systemui/power/PowerUI;->mSIOPLevel:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v3, v3, Lcom/android/systemui/power/PowerUI;->mSIOPLevel:I

    move/from16 v0, v33

    if-eq v0, v3, :cond_1

    .line 1213
    const/16 v3, 0x8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mSIOPLevel:I

    if-ne v3, v4, :cond_81

    .line 1214
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    const v4, 0xea60

    invoke-interface {v3, v4}, Lcom/android/systemui/power/PowerUI$WarningsUI;->runOverheatShutdownWarningTask(I)V

    goto/16 :goto_3

    .line 1215
    :cond_81
    const/16 v3, 0x9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mSIOPLevel:I

    if-ne v3, v4, :cond_82

    .line 1216
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/android/systemui/power/PowerUI$WarningsUI;->runOverheatShutdownTask(I)V

    .line 1217
    const-string v3, "PowerUI"

    const-string v4, "SIOP level is critical so shutdown"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1218
    :cond_82
    const/16 v3, 0x8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mSIOPLevel:I

    if-le v3, v4, :cond_1

    const/16 v3, 0x8

    move/from16 v0, v33

    if-gt v3, v0, :cond_1

    .line 1219
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissOverheatShutdownWarning()V

    .line 1220
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->cancelOverheatShutdownWarningTask()V

    .line 1221
    const-string v3, "PowerUI"

    const-string v4, "SIOP level recovered from shutdown"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1225
    .end local v33    # "oldSIOPLevel":I
    :cond_83
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v0, v3, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    move/from16 v24, v0

    .line 1226
    .local v24, "oldBatteryOverheatLevel":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v4, "battery_overheat_level"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    .line 1227
    const-string v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Battery overheat Level = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v6, v6, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v3, v3, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    move/from16 v0, v24

    if-eq v0, v3, :cond_1

    .line 1230
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    if-ne v3, v4, :cond_84

    .line 1231
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    const v4, 0xea60

    invoke-interface {v3, v4}, Lcom/android/systemui/power/PowerUI$WarningsUI;->runOverheatShutdownWarningTask(I)V

    goto/16 :goto_3

    .line 1232
    :cond_84
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    if-le v3, v4, :cond_1

    const/4 v3, 0x2

    move/from16 v0, v24

    if-gt v3, v0, :cond_1

    .line 1233
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissOverheatShutdownWarning()V

    .line 1234
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->cancelOverheatShutdownWarningTask()V

    .line 1235
    const-string v3, "PowerUI"

    const-string v4, "Battery overheat level recovered from shutdown"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1239
    .end local v24    # "oldBatteryOverheatLevel":I
    :cond_85
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_88

    .line 1240
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string v4, "com.android.systemui.power_overheat_shutdown"

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v34

    .line 1241
    .local v34, "overheatShutdownSharedPrefs":Landroid/content/SharedPreferences;
    if-eqz v34, :cond_86

    .line 1242
    const-string v3, "OverheatShutdown"

    const/4 v4, 0x0

    move-object/from16 v0, v34

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_86

    .line 1243
    invoke-interface/range {v34 .. v34}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 1244
    .local v14, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "OverheatShutdown"

    const/4 v4, 0x0

    invoke-interface {v14, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1245
    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1247
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.android.systemui.power.action.ACTION_CLEAR_SHUTDOWN"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1248
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showOverheatShutdownNotice()V

    .line 1252
    .end local v14    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_86
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mShowFlashOverHeatPopUp:Z

    if-eqz v3, :cond_87

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-boolean v3, v3, Lcom/android/systemui/power/PowerUI;->mFlashOverHeated:Z

    if-nez v3, :cond_87

    .line 1253
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string v4, "com.android.systemui.power_flash_high_temperature"

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 1254
    .local v15, "flashHighTemperatureSharedPrefs":Landroid/content/SharedPreferences;
    if-eqz v15, :cond_87

    .line 1255
    const-string v3, "FlashHighTemperatureOccured"

    const/4 v4, 0x0

    invoke-interface {v15, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_87

    .line 1256
    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 1257
    .restart local v14    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "FlashHighTemperatureOccured"

    const/4 v4, 0x0

    invoke-interface {v14, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1258
    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1260
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showFlashHighTemperatureWarning(Z)V

    .line 1264
    .end local v14    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v15    # "flashHighTemperatureSharedPrefs":Landroid/content/SharedPreferences;
    :cond_87
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUI;->access$1502(Lcom/android/systemui/power/PowerUI;Z)Z

    goto/16 :goto_3

    .line 1267
    .end local v34    # "overheatShutdownSharedPrefs":Landroid/content/SharedPreferences;
    :cond_88
    const-string v3, "LOW_BATTERY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_89

    .line 1268
    const-string v3, "PowerUI"

    const-string v4, "LOW_BATTERY received"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showLowBatteryWarning(Z)V

    goto/16 :goto_3

    .line 1272
    :cond_89
    const-string v3, "com.samsung.android.app.cocktailbarservice.action.COCKTAIL_BAR_WAKE_UP_STATE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8a

    .line 1273
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v4, "cocktailbarWakeupState"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/systemui/power/PowerUI;->mCocktailWakeUpState:Z

    .line 1274
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->isCocktailLowBatteryWarningShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-boolean v3, v3, Lcom/android/systemui/power/PowerUI;->mCocktailWakeUpState:Z

    if-nez v3, :cond_1

    .line 1275
    const-string v3, "PowerUI"

    const-string v4, "CocktailWakeUpState has been changed. Remove low battery warning on cocktailbar!"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/android/systemui/power/PowerUI$WarningsUI;->updateCocktailLowBatteryWarning(Z)V

    goto/16 :goto_3

    .line 1291
    :cond_8a
    const-string v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unknown intent: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method
