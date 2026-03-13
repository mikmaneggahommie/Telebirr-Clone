.class Lcom/sec/android/sviewcover/SViewCoverView$2;
.super Landroid/content/BroadcastReceiver;
.source "SViewCoverView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/sviewcover/SViewCoverView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/sviewcover/SViewCoverView;


# direct methods
.method constructor <init>(Lcom/sec/android/sviewcover/SViewCoverView;)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 27
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 369
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 370
    .local v5, "action":Ljava/lang/String;
    const-string v23, "SViewCoverView"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "BroadcastReceiver onReceive() : action : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const-string v23, "com.samsung.cover.REMOTEVIEWS_UPDATE"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 373
    const-string v23, "type"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 374
    .local v19, "type":Ljava/lang/String;
    const-string v23, "visibility"

    const/16 v24, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v22

    .line 375
    .local v22, "visibility":Z
    const-string v23, "remote"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v15

    check-cast v15, Landroid/widget/RemoteViews;

    .line 376
    .local v15, "remoteView":Landroid/widget/RemoteViews;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/sviewcover/SViewCoverView;->access$400(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/os/Handler;

    move-result-object v23

    const/16 v24, 0x3

    new-instance v25, Lcom/sec/android/sviewcover/SViewCoverView$CoverRemoteViews;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v19

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3, v15}, Lcom/sec/android/sviewcover/SViewCoverView$CoverRemoteViews;-><init>(Lcom/sec/android/sviewcover/SViewCoverView;Ljava/lang/String;ZLandroid/widget/RemoteViews;)V

    invoke-virtual/range {v23 .. v25}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    .line 378
    .local v14, "remoteMsg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/sviewcover/SViewCoverView;->access$400(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/os/Handler;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 528
    .end local v14    # "remoteMsg":Landroid/os/Message;
    .end local v15    # "remoteView":Landroid/widget/RemoteViews;
    .end local v19    # "type":Ljava/lang/String;
    .end local v22    # "visibility":Z
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    const-string v23, "android.intent.action.CONFIGURATION_CHANGED"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/sviewcover/SViewCoverView;->access$500(Lcom/sec/android/sviewcover/SViewCoverView;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/sviewcover/SViewCoverView;->access$600(Lcom/sec/android/sviewcover/SViewCoverView;)Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;

    move-result-object v23

    if-eqz v23, :cond_2

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/sviewcover/SViewCoverView;->access$600(Lcom/sec/android/sviewcover/SViewCoverView;)Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;

    move-result-object v23

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;->stopAnimation(Z)V

    .line 384
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/sviewcover/SViewCoverView;->access$700(Lcom/sec/android/sviewcover/SViewCoverView;)V

    goto :goto_0

    .line 386
    :cond_3
    const-string v23, "android.intent.action.LOCALE_CHANGED"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_8

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/sviewcover/SViewCoverView;->access$000(Lcom/sec/android/sviewcover/SViewCoverView;)Lcom/sec/android/sviewcover/SViewCoverPager;

    move-result-object v23

    if-eqz v23, :cond_0

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/sviewcover/SViewCoverView;->access$800(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/view/View;

    move-result-object v23

    check-cast v23, Lcom/sec/android/sviewcover/SViewCoverShortcuts;

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/sviewcover/SViewCoverShortcuts;->replaceText()V

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/sviewcover/SViewCoverView;->access$900(Lcom/sec/android/sviewcover/SViewCoverView;)Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->replaceText()V

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/sviewcover/SViewCoverView;->access$1000(Lcom/sec/android/sviewcover/SViewCoverView;)Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    move-result-object v23

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mUpdated:Z

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/sviewcover/SViewCoverView;->access$1000(Lcom/sec/android/sviewcover/SViewCoverView;)Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->updateMissedEvents()V

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/sviewcover/SViewCoverView;->access$1100(Lcom/sec/android/sviewcover/SViewCoverView;)V

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/sviewcover/SViewCoverView;->access$1200(Lcom/sec/android/sviewcover/SViewCoverView;)Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->refreshClock()V

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/sviewcover/SViewCoverView;->access$1300(Lcom/sec/android/sviewcover/SViewCoverView;)Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;

    move-result-object v23

    if-eqz v23, :cond_4

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/sviewcover/SViewCoverView;->access$1300(Lcom/sec/android/sviewcover/SViewCoverView;)Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->refreshClock()V

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/sviewcover/SViewCoverView;->access$1300(Lcom/sec/android/sviewcover/SViewCoverView;)Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->replaceText()V

    .line 400
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/sec/android/sviewcover/SViewCoverView;->mUnlockAreaLevel:I

    move/from16 v23, v0

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/sviewcover/SViewCoverView;->access$1400(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/view/View;

    move-result-object v23

    if-eqz v23, :cond_5

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/sviewcover/SViewCoverView;->access$1400(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/view/View;

    move-result-object v23

    check-cast v23, Lcom/sec/android/sviewcover/SViewCoverSetting;

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/sviewcover/SViewCoverSetting;->replaceText()V

    .line 406
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/sviewcover/SViewCoverView;->access$1500(Lcom/sec/android/sviewcover/SViewCoverView;)Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    move-result-object v23

    if-eqz v23, :cond_6

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/sviewcover/SViewCoverView;->access$1500(Lcom/sec/android/sviewcover/SViewCoverView;)Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->setTTSMessage()V

    .line 410
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/sviewcover/SViewCoverView;->access$1600(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, v23

    instance-of v0, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    move/from16 v23, v0

    if-eqz v23, :cond_7

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/sviewcover/SViewCoverView;->access$1600(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    .line 412
    .local v7, "musicwidget":Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;
    invoke-virtual {v7}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->setTTSMessage()V

    .line 415
    .end local v7    # "musicwidget":Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sec/android/sviewcover/SViewCoverView;->mLastBatteryPlugged:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/sec/android/sviewcover/SViewCoverView;->mLastBatteryLevel:I

    move/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/sviewcover/SViewCoverView;->setBatteryInfoTextView(II)V

    goto/16 :goto_0

    .line 417
    :cond_8
    const-string v23, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_b

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/sviewcover/SViewCoverView;->access$1700(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/os/Handler;

    move-result-object v23

    const/16 v24, 0x14

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v23

    if-eqz v23, :cond_9

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/sviewcover/SViewCoverView;->access$1700(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/os/Handler;

    move-result-object v23

    const/16 v24, 0x14

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->removeMessages(I)V

    .line 422
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/sviewcover/SViewCoverView;->access$1500(Lcom/sec/android/sviewcover/SViewCoverView;)Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    move-result-object v23

    if-eqz v23, :cond_a

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/sviewcover/SViewCoverView;->access$1500(Lcom/sec/android/sviewcover/SViewCoverView;)Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->initMultiTouched()V

    .line 426
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/sviewcover/SViewCoverView;->moveToHomePage()V

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-static/range {v23 .. v24}, Lcom/sec/android/sviewcover/SViewCoverView;->access$1800(Lcom/sec/android/sviewcover/SViewCoverView;Z)V

    goto/16 :goto_0

    .line 428
    :cond_b
    const-string v23, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_c

    .line 429
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverView;->access$1900()Z

    move-result v23

    if-nez v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/sec/android/sviewcover/SViewCoverView;->mUnlockAreaLevel:I

    move/from16 v23, v0

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/sviewcover/SViewCoverView;->access$2000(Lcom/sec/android/sviewcover/SViewCoverView;)V

    goto/16 :goto_0

    .line 433
    :cond_c
    const-string v23, "android.intent.action.DATE_CHANGED"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_d

    .line 434
    const-string v23, "SViewCoverView"

    const-string v24, "onReceive() : ACTION_DATE_CHANGED "

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/sec/android/sviewcover/SViewCoverView;->mUnlockAreaLevel:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/sviewcover/SViewCoverView;->handleBackgroundColorUpdated()V

    goto/16 :goto_0

    .line 438
    :cond_d
    const-string v23, "com.samsung.cover.STATE_CHANGE"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_0

    .line 442
    const-string v23, "android.intent.action.PHONE_STATE"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_f

    .line 443
    const-string v23, "state"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 445
    .local v16, "state":Ljava/lang/String;
    const-string v23, "SViewCoverView"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "onReceive() : ACTION_PHONE_STATE_CHANGED = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    sget-object v23, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_e

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Lcom/sec/android/sviewcover/SViewCoverView;->access$2102(Lcom/sec/android/sviewcover/SViewCoverView;I)I

    goto/16 :goto_0

    .line 450
    :cond_e
    sget-object v23, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    invoke-static/range {v23 .. v24}, Lcom/sec/android/sviewcover/SViewCoverView;->access$2102(Lcom/sec/android/sviewcover/SViewCoverView;I)I

    goto/16 :goto_0

    .line 453
    .end local v16    # "state":Ljava/lang/String;
    :cond_f
    const-string v23, "com.samsung.pen.INSERT"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_10

    .line 454
    const-string v23, "penInsert"

    const/16 v24, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    .line 455
    .local v11, "penInsert":Z
    if-nez v11, :cond_0

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/sviewcover/SViewCoverView;->access$2200(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/os/PowerManager;

    move-result-object v23

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    const/16 v26, 0x6

    invoke-virtual/range {v23 .. v26}, Landroid/os/PowerManager;->wakeUp(JI)V

    goto/16 :goto_0

    .line 458
    .end local v11    # "penInsert":Z
    :cond_10
    const-string v23, "dualclock.dualclock_setting_changed"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_11

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/sviewcover/SViewCoverView;->access$2300(Lcom/sec/android/sviewcover/SViewCoverView;)V

    goto/16 :goto_0

    .line 460
    :cond_11
    const-string v23, "com.samsung.accessory.intent.action.DISASTER_SVIEW_COVER"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_12

    .line 461
    const-string v23, "title"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 462
    .local v18, "title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/sec/android/sviewcover/SViewCoverView;->access$2400(Lcom/sec/android/sviewcover/SViewCoverView;ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 463
    .end local v18    # "title":Ljava/lang/String;
    :cond_12
    const-string v23, "com.sec.android.sviewcover.CHANGE_COVER_BACKGROUND"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_14

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/sviewcover/SViewCoverView;->access$400(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/os/Handler;

    move-result-object v23

    const/16 v24, 0x6

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v23

    if-eqz v23, :cond_13

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/sviewcover/SViewCoverView;->access$400(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/os/Handler;

    move-result-object v23

    const/16 v24, 0x6

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->removeMessages(I)V

    .line 467
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/sviewcover/SViewCoverView;->access$400(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/os/Handler;

    move-result-object v23

    const/16 v24, 0x6

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 468
    :cond_14
    const-string v23, "android.intent.action.BATTERY_CHANGED"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_15

    .line 469
    const-string v23, "level"

    const/16 v24, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 470
    .local v6, "level":I
    const-string v23, "plugged"

    const/16 v24, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 471
    .local v12, "plugged":I
    const-string v23, "status"

    const/16 v24, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 474
    .local v17, "status":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iput v12, v0, Lcom/sec/android/sviewcover/SViewCoverView;->mLastBatteryPlugged:I

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iput v6, v0, Lcom/sec/android/sviewcover/SViewCoverView;->mLastBatteryLevel:I

    .line 476
    const-string v23, "SViewCoverView"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "level :"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " plugged : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/sviewcover/SViewCoverView;->access$2500(Lcom/sec/android/sviewcover/SViewCoverView;)V

    goto/16 :goto_0

    .line 478
    .end local v6    # "level":I
    .end local v12    # "plugged":I
    .end local v17    # "status":I
    :cond_15
    const-string v23, "android.intent.action.USER_SWITCHED"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_17

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/sviewcover/SViewCoverView;->access$2600(Lcom/sec/android/sviewcover/SViewCoverView;)I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    .line 481
    const/16 v4, 0x64

    .line 482
    .local v4, "KNOX_USER_ID":I
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v21

    .line 483
    .local v21, "versionInfo":Landroid/os/Bundle;
    const-string v23, "2.0"

    const-string v24, "version"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 484
    const-string v23, "android.intent.extra.user_handle"

    const/16 v24, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 485
    .local v8, "newUserId":I
    const-string v23, "old_user_id"

    const/16 v24, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 486
    .local v9, "oldUserId":I
    const/16 v23, 0x64

    move/from16 v0, v23

    if-lt v8, v0, :cond_16

    const/16 v23, 0x64

    move/from16 v0, v23

    if-ge v9, v0, :cond_16

    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverView;->access$1900()Z

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    .line 489
    :cond_16
    const/16 v23, 0x64

    move/from16 v0, v23

    if-ge v8, v0, :cond_0

    const/16 v23, 0x64

    move/from16 v0, v23

    if-lt v9, v0, :cond_0

    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverView;->access$1900()Z

    move-result v23

    if-nez v23, :cond_0

    goto/16 :goto_0

    .line 495
    .end local v4    # "KNOX_USER_ID":I
    .end local v8    # "newUserId":I
    .end local v9    # "oldUserId":I
    .end local v21    # "versionInfo":Landroid/os/Bundle;
    :cond_17
    const-string v23, "android.media.VOLUME_CHANGED_ACTION"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_18

    .line 496
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverView;->access$1900()Z

    move-result v23

    if-nez v23, :cond_0

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/sviewcover/SViewCoverView;->resetScreenOffTime()V

    goto/16 :goto_0

    .line 499
    :cond_18
    const-string v23, "com.bst.floatingmsg.quicktalkshow"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_19

    .line 500
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverView;->access$1900()Z

    move-result v23

    if-nez v23, :cond_0

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/sviewcover/SViewCoverView;->access$1700(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/os/Handler;

    move-result-object v23

    const/16 v24, 0x14

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/sviewcover/SViewCoverView;->access$1700(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/os/Handler;

    move-result-object v23

    const/16 v24, 0x14

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 504
    :cond_19
    const-string v23, "com.bst.floatingmsg.quicktalkhide"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1a

    .line 505
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverView;->access$1900()Z

    move-result v23

    if-nez v23, :cond_0

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/sviewcover/SViewCoverView;->resetScreenOffTime()V

    goto/16 :goto_0

    .line 508
    :cond_1a
    const-string v23, "android.intent.action.PACKAGE_CHANGED"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1b

    .line 509
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v20

    .line 511
    .local v20, "uri":Landroid/net/Uri;
    if-eqz v20, :cond_0

    .line 515
    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    .line 516
    .local v10, "packageName":Ljava/lang/String;
    const/16 v23, 0x3a

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v23

    add-int/lit8 v23, v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 518
    const-string v23, "com.sec.android.app.shealth"

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/sviewcover/SViewCoverView;->access$2700(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/widget/FrameLayout;

    move-result-object v23

    if-eqz v23, :cond_0

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/sviewcover/SViewCoverView;->access$2700(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/widget/FrameLayout;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/widget/FrameLayout;->removeAllViews()V

    goto/16 :goto_0

    .line 521
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v20    # "uri":Landroid/net/Uri;
    :cond_1b
    const-string v23, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 522
    const-string v23, "reason"

    const/16 v24, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 523
    .local v13, "reason":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/sviewcover/SViewCoverView;->access$900(Lcom/sec/android/sviewcover/SViewCoverView;)Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->setEmergencyMode(I)V

    .line 524
    const/16 v23, 0x3

    move/from16 v0, v23

    if-eq v13, v0, :cond_1c

    const/16 v23, 0x2

    move/from16 v0, v23

    if-ne v13, v0, :cond_0

    .line 525
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/sviewcover/SViewCoverView;->access$900(Lcom/sec/android/sviewcover/SViewCoverView;)Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    move-result-object v23

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/sviewcover/SViewCoverView;->access$900(Lcom/sec/android/sviewcover/SViewCoverView;)Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->hideColorSelectorView()V

    goto/16 :goto_0
.end method
