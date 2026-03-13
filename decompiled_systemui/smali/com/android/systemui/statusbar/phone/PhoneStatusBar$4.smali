.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
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
    .line 676
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishedGoingToSleep(I)V
    .locals 3
    .param p1, "why"    # I

    .prologue
    const/4 v2, 0x0

    .line 866
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5102(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 867
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/qs/QSPanel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 868
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/qs/QSPanel;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->setScreenOn(Z)V

    .line 870
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V

    .line 871
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V

    .line 872
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 873
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 879
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseStatusBarMarquee:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v0, :cond_1

    .line 880
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->marqueeStatusBar()V

    .line 883
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v0, :cond_2

    .line 884
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsScreenon:Z

    .line 885
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCueIsFadedOut:Z

    .line 886
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateCarrierLabelView()V

    .line 888
    :cond_2
    return-void
.end method

.method public onOpenThemeChanged()V
    .locals 14

    .prologue
    .line 678
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "current_sec_active_themepackage"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 679
    .local v7, "themepackageName":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0070

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 680
    .local v2, "color_for_log":I
    const-string v9, "PhoneStatusBar"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onOpenThemeChanged() - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " QUICKPANEL BG COLOR : alpha "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", R "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", G "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", B "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0202ec

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 684
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0093

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    ushr-int/lit8 v9, v9, 0x18

    int-to-float v9, v9

    const/high16 v10, 0x437f0000    # 255.0f

    div-float v0, v9, v10

    .line 685
    .local v0, "alpha":F
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsEditButton:Landroid/widget/ImageView;

    if-eqz v9, :cond_0

    .line 686
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsEditButton:Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0202ec

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 687
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsEditButton:Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0093

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 688
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsEditButton:Landroid/widget/ImageView;

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 690
    :cond_0
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 691
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0202ec

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 692
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0093

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 693
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/view/View;->setAlpha(F)V

    .line 695
    :cond_1
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButton:Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0202ec

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 696
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 697
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButton:Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0093

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 699
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/FrameLayout;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0202e6

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 700
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0202e6

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 701
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHSView:Landroid/widget/HorizontalScrollView;

    if-eqz v9, :cond_2

    .line 702
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHSView:Landroid/widget/HorizontalScrollView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0202e6

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/HorizontalScrollView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 703
    :cond_2
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0202e6

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 705
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f0f0253

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0202ec

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 706
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f0f0254

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0202ec

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 707
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/QconnectSfinderView;

    move-result-object v9

    const v10, 0x7f0f0253

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/QconnectSfinderView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0202ec

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 708
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/QconnectSfinderView;

    move-result-object v9

    const v10, 0x7f0f0254

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/QconnectSfinderView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0202ec

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 709
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020335

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 710
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/QconnectSfinderView;

    move-result-object v9

    const v10, 0x7f0f0252

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/QconnectSfinderView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020335

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 712
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f0f0256

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c006e

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 713
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f0f0255

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0076

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 714
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f0f024e

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0076

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 715
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/QconnectSfinderView;

    move-result-object v9

    const v10, 0x7f0f0256

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/QconnectSfinderView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c006e

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 716
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/QconnectSfinderView;

    move-result-object v9

    const v10, 0x7f0f0255

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/QconnectSfinderView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0076

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 717
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/QconnectSfinderView;

    move-result-object v9

    const v10, 0x7f0f024e

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/QconnectSfinderView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0076

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 719
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f0f0255

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v3, v9, v10

    .line 720
    .local v3, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_3

    .line 721
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0078

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 722
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f0f0255

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v3, v10, v11, v12}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 724
    :cond_3
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f0f024e

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v3, v9, v10

    .line 725
    if-eqz v3, :cond_4

    .line 726
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0078

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 727
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f0f024e

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v3, v10, v11, v12}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 729
    :cond_4
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/QconnectSfinderView;

    move-result-object v9

    const v10, 0x7f0f0255

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/QconnectSfinderView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v3, v9, v10

    .line 730
    if-eqz v3, :cond_5

    .line 731
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0078

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 732
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/QconnectSfinderView;

    move-result-object v9

    const v10, 0x7f0f0255

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/QconnectSfinderView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v3, v10, v11, v12}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 734
    :cond_5
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/QconnectSfinderView;

    move-result-object v9

    const v10, 0x7f0f024e

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/QconnectSfinderView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v3, v9, v10

    .line 735
    if-eqz v3, :cond_6

    .line 736
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0078

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 737
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/QconnectSfinderView;

    move-result-object v9

    const v10, 0x7f0f024e

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/QconnectSfinderView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v3, v10, v11, v12}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 741
    :cond_6
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 742
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/MultiSIMView;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020335

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/MultiSIMView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 744
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c00a9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 746
    .local v8, "unselectedcolor":I
    if-eqz v7, :cond_7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_7

    .line 747
    ushr-int/lit8 v5, v8, 0x18

    .local v5, "opacity":I
    shr-int/lit8 v9, v8, 0x10

    and-int/lit16 v6, v9, 0xff

    .local v6, "red":I
    shr-int/lit8 v9, v8, 0x8

    and-int/lit16 v4, v9, 0xff

    .local v4, "green":I
    and-int/lit16 v1, v8, 0xff

    .line 748
    .local v1, "blue":I
    int-to-double v10, v5

    const-wide v12, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v10, v12

    double-to-int v9, v10

    invoke-static {v9, v6, v4, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    .line 751
    .end local v1    # "blue":I
    .end local v4    # "green":I
    .end local v5    # "opacity":I
    .end local v6    # "red":I
    :cond_7
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 768
    .end local v8    # "unselectedcolor":I
    :cond_8
    :goto_0
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->qsh:Lcom/android/systemui/statusbar/phone/QSTileHost;

    if-eqz v9, :cond_9

    .line 769
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->qsh:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/QSTileHost;->recreateTiles()V

    .line 772
    :cond_9
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    const v10, 0x7f0f0381

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0096

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 773
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    const v10, 0x7f0f0382

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0096

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 774
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    const v10, 0x7f0f0380

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0096

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 775
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    const v10, 0x7f0f0392

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0097

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 777
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/ToggleSliderView;

    move-result-object v9

    const v10, 0x7f0f03be

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/ToggleSliderView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c007b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    ushr-int/lit8 v10, v10, 0x18

    int-to-float v10, v10

    const/high16 v11, 0x437f0000    # 255.0f

    div-float/2addr v10, v11

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->setAlpha(F)V

    .line 778
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/ToggleSliderView;

    move-result-object v9

    const v10, 0x7f0f03be

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/ToggleSliderView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->updateIconTintColor()V

    .line 779
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f0f03be

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c007b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    ushr-int/lit8 v10, v10, 0x18

    int-to-float v10, v10

    const/high16 v11, 0x437f0000    # 255.0f

    div-float/2addr v10, v11

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->setAlpha(F)V

    .line 780
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f0f03be

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->updateIconTintColor()V

    .line 781
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/ToggleSliderView;

    move-result-object v9

    const v10, 0x7f0f0234

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/ToggleSliderView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0202e6

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 782
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/ToggleSliderView;

    move-result-object v9

    const v10, 0x7f0f03c2

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/ToggleSliderView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/SeekBar;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f02078e

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 783
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/ToggleSliderView;

    move-result-object v9

    const v10, 0x7f0f03c2

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/ToggleSliderView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/SeekBar;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c00c3

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 784
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/ToggleSliderView;

    move-result-object v9

    const v10, 0x7f0f03c2

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/ToggleSliderView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/SeekBar;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0202ec

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/SeekBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 785
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f0f03c2

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/SeekBar;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f02078e

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 786
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f0f03c2

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/SeekBar;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c00c3

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 787
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f0f03c2

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/SeekBar;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0202ec

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/SeekBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 788
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f0f03bc

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c007b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 789
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/ToggleSliderView;

    move-result-object v9

    const v10, 0x7f0f03bc

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/ToggleSliderView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c007b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 790
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f0f03c7

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CompoundButton;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0082

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 791
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f0f03c7

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CompoundButton;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0202ec

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/CompoundButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 792
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f0f03c8

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0072

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 793
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/ToggleSliderView;

    move-result-object v9

    const v10, 0x7f0f03c7

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/ToggleSliderView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CompoundButton;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0082

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 794
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/ToggleSliderView;

    move-result-object v9

    const v10, 0x7f0f03c7

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/ToggleSliderView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CompoundButton;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0202ec

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/CompoundButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 795
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/ToggleSliderView;

    move-result-object v9

    const v10, 0x7f0f03c8

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/ToggleSliderView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0072

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 797
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v10, 0x7f0f03be

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->updateIconTintColor()V

    .line 798
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v10, 0x7f0f03be

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c007b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    ushr-int/lit8 v10, v10, 0x18

    int-to-float v10, v10

    const/high16 v11, 0x437f0000    # 255.0f

    div-float/2addr v10, v11

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->setAlpha(F)V

    .line 799
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v10, 0x7f0f0234

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0202e6

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 800
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v10, 0x7f0f03c2

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/SeekBar;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f02078e

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 801
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v10, 0x7f0f03c2

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/SeekBar;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c00c3

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 802
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v10, 0x7f0f03c2

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/SeekBar;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0202ec

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/SeekBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 803
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v10, 0x7f0f03bc

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c007b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 804
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v10, 0x7f0f03c7

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CompoundButton;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0082

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 805
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v10, 0x7f0f03c7

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CompoundButton;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0202ec

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/CompoundButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 806
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v10, 0x7f0f03c8

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0072

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 809
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSEditPanel:Lcom/android/systemui/qs/QSEditPanel;

    if-eqz v9, :cond_c

    .line 810
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSEditPanel:Lcom/android/systemui/qs/QSEditPanel;

    const v10, 0x7f0f0241

    invoke-virtual {v9, v10}, Lcom/android/systemui/qs/QSEditPanel;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ScrollView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0202e6

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ScrollView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 811
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSEditPanel:Lcom/android/systemui/qs/QSEditPanel;

    const v10, 0x7f0f023f

    invoke-virtual {v9, v10}, Lcom/android/systemui/qs/QSEditPanel;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0070

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 812
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSEditPanel:Lcom/android/systemui/qs/QSEditPanel;

    const v10, 0x7f0f0240

    invoke-virtual {v9, v10}, Lcom/android/systemui/qs/QSEditPanel;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0202ec

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 813
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSEditPanel:Lcom/android/systemui/qs/QSEditPanel;

    const v10, 0x7f0f0240

    invoke-virtual {v9, v10}, Lcom/android/systemui/qs/QSEditPanel;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0093

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 814
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSEditPanel:Lcom/android/systemui/qs/QSEditPanel;

    const v10, 0x7f0f0246

    invoke-virtual {v9, v10}, Lcom/android/systemui/qs/QSEditPanel;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0093

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 815
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSEditPanel:Lcom/android/systemui/qs/QSEditPanel;

    const v10, 0x7f0f0247

    invoke-virtual {v9, v10}, Lcom/android/systemui/qs/QSEditPanel;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0077

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 816
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSEditPanel:Lcom/android/systemui/qs/QSEditPanel;

    const v10, 0x7f0f024b

    invoke-virtual {v9, v10}, Lcom/android/systemui/qs/QSEditPanel;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c006e

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 817
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSEditPanel:Lcom/android/systemui/qs/QSEditPanel;

    const v10, 0x7f0f024a

    invoke-virtual {v9, v10}, Lcom/android/systemui/qs/QSEditPanel;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0076

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 818
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSEditPanel:Lcom/android/systemui/qs/QSEditPanel;

    const v10, 0x7f0f024e

    invoke-virtual {v9, v10}, Lcom/android/systemui/qs/QSEditPanel;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0076

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 819
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSEditPanel:Lcom/android/systemui/qs/QSEditPanel;

    const v10, 0x7f0f024a

    invoke-virtual {v9, v10}, Lcom/android/systemui/qs/QSEditPanel;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v3, v9, v10

    .line 820
    if-eqz v3, :cond_a

    .line 821
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0078

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 822
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSEditPanel:Lcom/android/systemui/qs/QSEditPanel;

    const v10, 0x7f0f024a

    invoke-virtual {v9, v10}, Lcom/android/systemui/qs/QSEditPanel;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v3, v10, v11, v12}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 824
    :cond_a
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSEditPanel:Lcom/android/systemui/qs/QSEditPanel;

    const v10, 0x7f0f024e

    invoke-virtual {v9, v10}, Lcom/android/systemui/qs/QSEditPanel;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v3, v9, v10

    .line 825
    if-eqz v3, :cond_b

    .line 826
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0078

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 827
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSEditPanel:Lcom/android/systemui/qs/QSEditPanel;

    const v10, 0x7f0f024e

    invoke-virtual {v9, v10}, Lcom/android/systemui/qs/QSEditPanel;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v3, v10, v11, v12}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 830
    :cond_b
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->postResetQsEditPanel()V

    .line 834
    :cond_c
    sget-boolean v9, Lcom/android/systemui/statusbar/Feature;->mSupportMumButton:Z

    if-eqz v9, :cond_d

    .line 835
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/qs/QSPanel;

    move-result-object v9

    const v10, 0x7f0f0239

    invoke-virtual {v9, v10}, Lcom/android/systemui/qs/QSPanel;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0202e3

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 836
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/qs/QSPanel;

    move-result-object v9

    const v10, 0x1020019

    invoke-virtual {v9, v10}, Lcom/android/systemui/qs/QSPanel;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0041

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 837
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/qs/QSPanel;

    move-result-object v9

    const v10, 0x102001a

    invoke-virtual {v9, v10}, Lcom/android/systemui/qs/QSPanel;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0041

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 838
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    const v10, 0x7f0f0387

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020146

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 840
    :cond_d
    return-void

    .line 753
    .restart local v8    # "unselectedcolor":I
    :pswitch_0
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/MultiSIMView;

    move-result-object v9

    const v10, 0x7f0f0217

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/MultiSIMView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c00a8

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 754
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/MultiSIMView;

    move-result-object v9

    const v10, 0x7f0f0218

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/MultiSIMView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c00a8

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 755
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/MultiSIMView;

    move-result-object v9

    const v10, 0x7f0f021a

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/MultiSIMView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 756
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/MultiSIMView;

    move-result-object v9

    const v10, 0x7f0f021b

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/MultiSIMView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 759
    :pswitch_1
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/MultiSIMView;

    move-result-object v9

    const v10, 0x7f0f0217

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/MultiSIMView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 760
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/MultiSIMView;

    move-result-object v9

    const v10, 0x7f0f0218

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/MultiSIMView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 761
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/MultiSIMView;

    move-result-object v9

    const v10, 0x7f0f021a

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/MultiSIMView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c00a8

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 762
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/MultiSIMView;

    move-result-object v9

    const v10, 0x7f0f021b

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/MultiSIMView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c00a8

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 751
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onStartedWakingUp()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 845
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5102(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 846
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/qs/QSPanel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 847
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/qs/QSPanel;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->setScreenOn(Z)V

    .line 850
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 851
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V

    .line 852
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 855
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mPLMNIconDisplay:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 856
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showPlmnString()V

    .line 859
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v0, :cond_2

    .line 860
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsScreenon:Z

    .line 861
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateCarrierLabelView()V

    .line 863
    :cond_2
    return-void
.end method
