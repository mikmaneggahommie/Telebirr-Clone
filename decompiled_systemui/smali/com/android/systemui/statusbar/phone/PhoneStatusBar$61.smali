.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$61;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 8433
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/16 v4, 0x3ef

    const/16 v2, 0x3ed

    .line 8435
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 8436
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSEditPanel:Lcom/android/systemui/qs/QSEditPanel;

    if-nez v1, :cond_1

    .line 8437
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$16700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8438
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$16800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 8440
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$16900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 8443
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$9200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8471
    :cond_2
    :goto_0
    return-void

    .line 8447
    :cond_3
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v1, :cond_5

    .line 8448
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 8449
    .local v0, "settingIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_2013_SETTINGS_UI"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 8451
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.NotificationPanelSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8457
    :goto_1
    const-string v1, "direct_quickpanel"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 8458
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v1, v0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$15400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/content/Intent;Z)V

    goto :goto_0

    .line 8454
    :cond_4
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$NotificationPanelMenuActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 8461
    .end local v0    # "settingIntent":Landroid/content/Intent;
    :cond_5
    invoke-static {}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$9300()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 8462
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const-string v2, "EDITBUTTON"

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$8300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Ljava/lang/String;)V

    .line 8465
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$17000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 8466
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$17100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 8468
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$17200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
