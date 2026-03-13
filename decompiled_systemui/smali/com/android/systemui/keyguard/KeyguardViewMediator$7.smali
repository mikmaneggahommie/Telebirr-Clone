.class Lcom/android/systemui/keyguard/KeyguardViewMediator$7;
.super Landroid/os/Handler;
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
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;
    .param p3, "x1"    # Landroid/os/Handler$Callback;
    .param p4, "x2"    # Z

    .prologue
    .line 2325
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-direct {p0, p2, p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2328
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 2414
    :goto_0
    :pswitch_0
    return-void

    .line 2330
    :pswitch_1
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    invoke-static {v3, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4700(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto :goto_0

    .line 2333
    :pswitch_2
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4800(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto :goto_0

    .line 2336
    :pswitch_3
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4900(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto :goto_0

    .line 2339
    :pswitch_4
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$5000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto :goto_0

    .line 2342
    :pswitch_5
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$5100(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto :goto_0

    .line 2345
    :pswitch_6
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/policy/IKeyguardDrawnCallback;

    invoke-static {v3, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$5200(Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/internal/policy/IKeyguardDrawnCallback;)V

    goto :goto_0

    .line 2348
    :pswitch_7
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$5300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto :goto_0

    .line 2351
    :pswitch_8
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$5400(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto :goto_0

    .line 2354
    :pswitch_9
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$5500(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto :goto_0

    .line 2358
    :pswitch_a
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_0

    move v2, v3

    :goto_1
    iget v6, p1, Landroid/os/Message;->arg2:I

    if-eqz v6, :cond_1

    :goto_2
    invoke-static {v5, v2, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$5600(Lcom/android/systemui/keyguard/KeyguardViewMediator;ZZ)V

    goto :goto_0

    :cond_0
    move v2, v4

    goto :goto_1

    :cond_1
    move v3, v4

    goto :goto_2

    .line 2361
    :pswitch_b
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$5700(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto :goto_0

    .line 2364
    :pswitch_c
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v2, v3, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->keyguardDone(ZZ)V

    goto :goto_0

    .line 2367
    :pswitch_d
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_2

    :goto_3
    invoke-static {v2, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$5800(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)V

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_3

    .line 2370
    :pswitch_e
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    monitor-enter v3

    .line 2371
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    invoke-static {v4, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$100(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    .line 2372
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2375
    :pswitch_f
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleDismiss()V

    goto :goto_0

    .line 2378
    :pswitch_10
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;

    .line 2379
    .local v1, "params":Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-wide v4, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->startTime:J

    iget-wide v6, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->fadeoutDuration:J

    invoke-static {v2, v4, v5, v6, v7}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$5900(Lcom/android/systemui/keyguard/KeyguardViewMediator;JJ)V

    goto/16 :goto_0

    .line 2382
    .end local v1    # "params":Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;
    :pswitch_11
    const-string v2, "KeyguardViewMediator"

    const-string v3, "Timeout while waiting for activity drawn!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2385
    :pswitch_12
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$6000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto/16 :goto_0

    .line 2388
    :pswitch_13
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleSetAdaptiveEvent(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 2391
    :pswitch_14
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleRemoveAdaptiveEvent(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 2394
    :pswitch_15
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleUpdateAdaptiveEvent(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 2397
    :pswitch_16
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 2398
    .local v0, "b":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v2, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$6100(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 2402
    .end local v0    # "b":Landroid/os/Bundle;
    :pswitch_17
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$6200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto/16 :goto_0

    .line 2406
    :pswitch_18
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleLunchPersoLock()V

    goto/16 :goto_0

    .line 2410
    :pswitch_19
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$6300(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 2328
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_10
        :pswitch_12
        :pswitch_11
        :pswitch_9
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_18
        :pswitch_19
        :pswitch_a
        :pswitch_17
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
