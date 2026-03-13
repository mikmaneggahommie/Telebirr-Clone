.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$49;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateCoverWindow()V
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
    .line 5835
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$49;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const v9, 0x7f0f01fe

    const/4 v8, 0x2

    const/16 v7, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5837
    const-string v3, "CoverUI"

    const-string v4, "updateCoverWindow() start ----------"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5839
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$49;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "automatic_unlock"

    const/4 v5, -0x2

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_8

    move v0, v1

    .line 5841
    .local v0, "isAutoUnlockEnabled":Z
    :goto_0
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 5842
    const-string v3, "CoverUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAutoUnlockEnabled in PhonStatusBar = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5846
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$49;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$13500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isSecure()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$49;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$13600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 5848
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$49;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$13700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/keyguard/ViewMediatorCallback;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/android/keyguard/ViewMediatorCallback;->keyguardDone(Z)V

    .line 5851
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$49;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-nez v3, :cond_9

    .line 5852
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$49;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$13800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$49;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSViewCoverCovered:Z

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$49;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAppCoverCovered:Z

    invoke-virtual {v3, v4, v5, v8}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setCoverShowing(ZZI)V

    .line 5857
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$49;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSViewCoverCovered:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$49;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAppCoverCovered:Z

    if-nez v3, :cond_2

    .line 5858
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$49;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getCoverHolder()Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5861
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$49;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isSupportNotificationOnCover()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5862
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$49;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSViewCoverCovered:Z

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$49;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAppCoverCovered:Z

    if-nez v3, :cond_a

    .line 5863
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$49;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showCover()V

    .line 5869
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$49;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSViewCoverCovered:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$49;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAppCoverCovered:Z

    if-eqz v3, :cond_b

    .line 5870
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$49;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v1, v9}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 5871
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$49;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v3, 0x7f0f0205

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 5872
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->isSupportNotificationOnCover()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5873
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$49;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateViewVisibilityForCover(I)V

    .line 5876
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$49;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$49;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$13900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$49;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$14000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I

    move-result v4

    invoke-virtual {v1, v3, v4, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->disable(IIZ)V

    .line 5877
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$49;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v1, :cond_6

    .line 5878
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$49;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$49;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setCoverMargin(I)V

    .line 5880
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$49;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1, v2, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setIconsDark(ZZ)V

    .line 5896
    :cond_7
    :goto_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$49;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSViewCoverCovered:Z

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$49;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAppCoverCovered:Z

    if-nez v1, :cond_e

    .line 5900
    :goto_4
    const-string v1, "CoverUI"

    const-string v2, "updateCoverWindow() end ----------"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5901
    return-void

    .end local v0    # "isAutoUnlockEnabled":Z
    :cond_8
    move v0, v2

    .line 5839
    goto/16 :goto_0

    .line 5854
    .restart local v0    # "isAutoUnlockEnabled":Z
    :cond_9
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$49;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$13800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$49;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSViewCoverCovered:Z

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$49;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAppCoverCovered:Z

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$49;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v6, v6, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v6, v6, Lcom/samsung/android/cover/CoverState;->type:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setCoverShowing(ZZI)V

    goto/16 :goto_1

    .line 5865
    :cond_a
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$49;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->hideCover()V

    goto/16 :goto_2

    .line 5882
    :cond_b
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$49;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v3, v9}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5883
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$49;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0f0205

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5884
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->isSupportNotificationOnCover()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 5885
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$49;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateViewVisibilityForCover(I)V

    .line 5888
    :cond_c
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$49;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->disableExpand(Z)V

    .line 5889
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$49;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$49;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$13900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$49;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$14000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I

    move-result v5

    invoke-virtual {v3, v4, v5, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->disable(IIZ)V

    .line 5890
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$49;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v3, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setCoverMargin(I)V

    .line 5891
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$49;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCallBackgroundMode:I

    if-nez v3, :cond_7

    .line 5892
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$49;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$49;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLightStatusBarMode:Z

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$49;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/BatteryController;->isPowerSave()Z

    move-result v4

    if-nez v4, :cond_d

    :goto_5
    invoke-virtual {v3, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setIconsDark(ZZ)V

    goto/16 :goto_3

    :cond_d
    move v1, v2

    goto :goto_5

    .line 5898
    :cond_e
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$49;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getCoverHolder()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_4
.end method
