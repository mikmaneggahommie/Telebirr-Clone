.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;
.super Landroid/database/ContentObserver;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmergencyModeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 1

    .prologue
    .line 2322
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 2323
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2324
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 14
    .param p1, "selfChange"    # Z

    .prologue
    const/16 v11, 0x8

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 2327
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2329
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v12, "emergency_mode"

    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v13}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$9900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I

    move-result v13

    invoke-static {v10, v12, v9, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    if-ne v10, v8, :cond_b

    move v3, v8

    .line 2331
    .local v3, "mEnabled":Z
    :goto_0
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v12, "battery_conserving_mode"

    invoke-static {v10, v12, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_c

    move v0, v8

    .line 2333
    .local v0, "BCMEnabled":Z
    :goto_1
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v10, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$10002(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 2334
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v12}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$10000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v12

    invoke-virtual {v10, v12}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setEmergencyMode(Z)V

    .line 2336
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v12}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$10000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v12

    invoke-virtual {v10, v12}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setEmergencyMode(Z)V

    .line 2338
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    if-eqz v10, :cond_0

    .line 2339
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v12}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$10000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v12

    invoke-virtual {v10, v12}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->setEmergencyMode(Z)V

    .line 2343
    :cond_0
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/qs/QSPanel;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 2344
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$10000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v10

    if-eqz v10, :cond_d

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$10100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v10

    if-nez v10, :cond_d

    .line 2345
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/FrameLayout;

    move-result-object v10

    invoke-virtual {v10, v11}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2346
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateQSpanelHeight()V

    .line 2355
    :cond_1
    :goto_2
    sget-boolean v10, Lcom/android/systemui/statusbar/Feature;->mIsXcover3ForDCM:Z

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$10100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v10

    if-eq v10, v0, :cond_2

    .line 2356
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v10, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$10102(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 2357
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->qsh:Lcom/android/systemui/statusbar/phone/QSTileHost;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->qsh:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/phone/QSTileHost;->recreateTiles()V

    .line 2361
    :cond_2
    sget-boolean v10, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v10, :cond_10

    .line 2362
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingButtonHolder:Landroid/view/View;

    if-eqz v10, :cond_3

    .line 2363
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingButtonHolder:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 2364
    .local v4, "mSettingButtonParam":Landroid/view/ViewGroup$LayoutParams;
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingDivider:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 2366
    .local v5, "mSettingDividerParam":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v3, :cond_f

    .line 2367
    iput v9, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2368
    iput v9, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2375
    :goto_3
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingButtonHolder:Landroid/view/View;

    invoke-virtual {v10, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2376
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingDivider:Landroid/widget/ImageView;

    invoke-virtual {v10, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2380
    .end local v4    # "mSettingButtonParam":Landroid/view/ViewGroup$LayoutParams;
    .end local v5    # "mSettingDividerParam":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCoverLauncher:Lcom/android/systemui/cover/SViewCoverLauncher;

    if-eqz v10, :cond_4

    .line 2381
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCoverLauncher:Lcom/android/systemui/cover/SViewCoverLauncher;

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v12, v12, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v10, v12}, Lcom/android/systemui/cover/SViewCoverLauncher;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    .line 2398
    :cond_4
    :goto_4
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    const v12, 0x7f0f0388

    invoke-virtual {v10, v12}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2399
    .local v1, "dateTimeView":Landroid/view/View;
    if-eqz v3, :cond_12

    move v10, v9

    :goto_5
    invoke-virtual {v1, v10}, Landroid/view/View;->setEnabled(Z)V

    .line 2400
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_6

    .line 2401
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$10000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v10

    if-nez v10, :cond_5

    sget-boolean v10, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v10, :cond_5

    sget-boolean v10, Lcom/android/systemui/statusbar/Feature;->mShowEditIcon:Z

    if-eqz v10, :cond_13

    :cond_5
    move v10, v11

    :goto_6
    invoke-virtual {v12, v10}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateQsEditButtonVisibility(I)V

    .line 2404
    :cond_6
    sget-boolean v10, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v10, :cond_7

    sget-boolean v10, Lcom/android/systemui/statusbar/Feature;->mShowEditIcon:Z

    if-eqz v10, :cond_7

    .line 2405
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v12, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsEditButton:Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$10000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v10

    if-eqz v10, :cond_14

    move v10, v11

    :goto_7
    invoke-virtual {v12, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2408
    :cond_7
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-nez v3, :cond_15

    :goto_8
    invoke-static {v10, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$10302(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 2409
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setBrightnessControllerVisivility()V

    .line 2412
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showHideQConnectLayout()V

    .line 2414
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v8, v8, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/enterprise/kioskmode/KioskMode;->isKioskModeEnabled()Z

    move-result v2

    .line 2415
    .local v2, "isKskEnabled":Z
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v8, v8, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->sFinderButton:Landroid/widget/ImageView;

    if-eqz v8, :cond_a

    .line 2416
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v8, v8, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v10, 0x7f0f006b

    invoke-virtual {v8, v10}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    if-nez v3, :cond_8

    if-eqz v2, :cond_9

    :cond_8
    move v9, v11

    :cond_9
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2419
    :cond_a
    return-void

    .end local v0    # "BCMEnabled":Z
    .end local v1    # "dateTimeView":Landroid/view/View;
    .end local v2    # "isKskEnabled":Z
    .end local v3    # "mEnabled":Z
    :cond_b
    move v3, v9

    .line 2329
    goto/16 :goto_0

    .restart local v3    # "mEnabled":Z
    :cond_c
    move v0, v9

    .line 2331
    goto/16 :goto_1

    .line 2347
    .restart local v0    # "BCMEnabled":Z
    :cond_d
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$10200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I

    move-result v10

    if-nez v10, :cond_e

    .line 2348
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/FrameLayout;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2349
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateQSpanelHeight()V

    goto/16 :goto_2

    .line 2351
    :cond_e
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v10, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateQsPanelOnKeyguard(Z)V

    goto/16 :goto_2

    .line 2370
    .restart local v4    # "mSettingButtonParam":Landroid/view/ViewGroup$LayoutParams;
    .restart local v5    # "mSettingDividerParam":Landroid/view/ViewGroup$LayoutParams;
    :cond_f
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 2371
    .local v7, "res":Landroid/content/res/Resources;
    const v10, 0x7f0a03b7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2372
    const v10, 0x7f0a02f4

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_3

    .line 2384
    .end local v4    # "mSettingButtonParam":Landroid/view/ViewGroup$LayoutParams;
    .end local v5    # "mSettingDividerParam":Landroid/view/ViewGroup$LayoutParams;
    .end local v7    # "res":Landroid/content/res/Resources;
    :cond_10
    sget-boolean v10, Lcom/android/systemui/statusbar/Feature;->mSupportMumButton:Z

    if-eqz v10, :cond_4

    .line 2385
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 2386
    .restart local v7    # "res":Landroid/content/res/Resources;
    if-eqz v3, :cond_11

    .line 2387
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingButtonHolder:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2388
    .local v6, "marginParams":Landroid/view/ViewGroup$MarginLayoutParams;
    const v10, 0x7f0a04b6

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual {v6, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 2390
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingButtonHolder:Landroid/view/View;

    invoke-virtual {v10, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4

    .line 2392
    .end local v6    # "marginParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_11
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setMumButtonVisibility()V

    goto/16 :goto_4

    .end local v7    # "res":Landroid/content/res/Resources;
    .restart local v1    # "dateTimeView":Landroid/view/View;
    :cond_12
    move v10, v8

    .line 2399
    goto/16 :goto_5

    :cond_13
    move v10, v9

    .line 2401
    goto/16 :goto_6

    :cond_14
    move v10, v9

    .line 2405
    goto/16 :goto_7

    :cond_15
    move v8, v9

    .line 2408
    goto/16 :goto_8
.end method
