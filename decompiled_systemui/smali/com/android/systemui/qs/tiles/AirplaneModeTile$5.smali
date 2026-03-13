.class Lcom/android/systemui/qs/tiles/AirplaneModeTile$5;
.super Landroid/telephony/PhoneStateListener;
.source "AirplaneModeTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/AirplaneModeTile;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;I)V
    .locals 0
    .param p2, "x0"    # I

    .prologue
    .line 369
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$5;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 11
    .param p1, "state"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v10, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 372
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$5;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    iget v8, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$5;->mSubId:I

    invoke-static {v5, v8}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$1800(Lcom/android/systemui/qs/tiles/AirplaneModeTile;I)I

    move-result v3

    .line 374
    .local v3, "phoneId":I
    const-string v8, "AirplaneModeTile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onServiceStateChanged("

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ") : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$5;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$1900(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, " MSim "

    :goto_0
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$5;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$2000(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)[I

    move-result-object v5

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    aput v8, v5, v3

    .line 376
    const/4 v4, 0x0

    .line 378
    .local v4, "value":Z
    const/4 v2, 0x0

    .line 379
    .local v2, "numberOfSlotsInAirplaneMode":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$5;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$2100(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)I

    move-result v5

    if-ge v0, v5, :cond_5

    .line 380
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$5;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$2200(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 381
    invoke-static {v7}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->isSimCardInserted(I)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v6}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->isSimCardInserted(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 383
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$5;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$2000(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)[I

    move-result-object v5

    aget v5, v5, v7

    if-ne v5, v10, :cond_0

    .line 384
    const/4 v4, 0x1

    .line 379
    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 374
    .end local v0    # "i":I
    .end local v2    # "numberOfSlotsInAirplaneMode":I
    .end local v4    # "value":Z
    :cond_1
    const-string v5, ""

    goto :goto_0

    .line 387
    .restart local v0    # "i":I
    .restart local v2    # "numberOfSlotsInAirplaneMode":I
    .restart local v4    # "value":Z
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$5;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$2000(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)[I

    move-result-object v5

    aget v5, v5, v0

    if-ne v5, v10, :cond_3

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$5;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$300(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Lcom/android/systemui/qs/GlobalSetting;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v5

    if-ne v5, v6, :cond_3

    .line 389
    add-int/lit8 v2, v2, 0x1

    .line 392
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$5;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$2100(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)I

    move-result v5

    if-ne v2, v5, :cond_0

    .line 393
    const/4 v4, 0x1

    goto :goto_2

    .line 397
    :cond_4
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$5;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$2000(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)[I

    move-result-object v5

    aget v5, v5, v7

    if-ne v5, v10, :cond_0

    .line 398
    const/4 v4, 0x1

    goto :goto_2

    .line 403
    :cond_5
    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->EVR:Z

    if-eqz v5, :cond_a

    invoke-static {}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$800()Z

    move-result v5

    if-eqz v5, :cond_a

    move v1, v6

    .line 404
    .local v1, "mSupportEpdG":Z
    :goto_3
    invoke-static {}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$900()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-static {}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$1000()Z

    move-result v5

    if-nez v5, :cond_6

    if-eqz v1, :cond_7

    .line 405
    :cond_6
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$5;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$300(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Lcom/android/systemui/qs/GlobalSetting;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v5

    if-eqz v5, :cond_b

    move v4, v6

    .line 407
    :cond_7
    :goto_4
    const-string v5, "AirplaneModeTile"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mPhoneStateListener - inAirplaneMode : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$5;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$1400(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Landroid/app/AlertDialog;

    move-result-object v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$5;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$1400(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 409
    const-string v5, "AirplaneModeTile"

    const-string v8, "Alert Dialog is showing"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$5;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v5, v6}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$2302(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Z)Z

    .line 415
    :goto_5
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$5;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$2300(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 416
    const-string v5, "AirplaneModeTile"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " value : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", DB : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$5;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v9}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$300(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Lcom/android/systemui/qs/GlobalSetting;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$5;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$300(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Lcom/android/systemui/qs/GlobalSetting;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v5

    if-eqz v5, :cond_8

    move v7, v6

    :cond_8
    if-ne v4, v7, :cond_9

    .line 418
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$5;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$100(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 419
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$5;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    if-eqz v4, :cond_d

    :goto_6
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$2400(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Ljava/lang/Object;)V

    .line 420
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$5;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$2502(Lcom/android/systemui/qs/tiles/AirplaneModeTile;J)J

    .line 424
    :cond_9
    return-void

    .end local v1    # "mSupportEpdG":Z
    :cond_a
    move v1, v7

    .line 403
    goto/16 :goto_3

    .restart local v1    # "mSupportEpdG":Z
    :cond_b
    move v4, v7

    .line 405
    goto/16 :goto_4

    .line 412
    :cond_c
    const-string v5, "AirplaneModeTile"

    const-string v8, "Alert Dialog is not showing"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$5;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v5, v7}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$2302(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Z)Z

    goto :goto_5

    .line 419
    :cond_d
    const/4 v6, 0x2

    goto :goto_6
.end method
