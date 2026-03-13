.class Lcom/android/systemui/statusbar/phone/NavigationBarView$3;
.super Landroid/content/BroadcastReceiver;
.source "NavigationBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V
    .locals 0

    .prologue
    .line 457
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$3;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 460
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 461
    .local v0, "action":Ljava/lang/String;
    const-string v2, "com.sec.android.action.NAVIBAR_SETTING_VISIBILITY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 462
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$3;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getSettingsButton()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    .line 463
    const-string v2, "PhoneStatusBar/NavigationBarView"

    const-string v3, "There is no settings button"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :cond_0
    :goto_0
    return-void

    .line 467
    :cond_1
    const-string v2, "com.sec.android.extra.NAVIBAR_SETTING_VISIBLE"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 468
    .local v1, "vis":Z
    if-eqz v1, :cond_2

    .line 469
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$3;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getSettingsButton()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 471
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$3;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getSettingsButton()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
