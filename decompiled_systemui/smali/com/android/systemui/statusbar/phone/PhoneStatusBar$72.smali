.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$72;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapseQsEditPanel()V
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
    .line 8947
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$72;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 8972
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$72;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSEditPanel:Lcom/android/systemui/qs/QSEditPanel;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSEditPanel;->setVisibility(I)V

    .line 8973
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$72;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$20200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 8974
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$72;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->postResetQsEditPanel()V

    .line 8975
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mIsTablet:Z

    if-eqz v0, :cond_0

    .line 8976
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$72;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$11000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 8978
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$72;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->sendAccessibilityEvent(I)V

    .line 8979
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 8968
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v1, 0x0

    .line 8951
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$72;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    if-eqz v0, :cond_0

    .line 8952
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$72;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setVisibility(I)V

    .line 8954
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$72;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$20300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8955
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$72;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$20400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setVisibility(I)V

    .line 8957
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$72;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8958
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$72;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 8960
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$72;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardState()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$72;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isShadeLockedState()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8961
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$72;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateQsPanelOnKeyguard(Z)V

    .line 8964
    :goto_0
    return-void

    .line 8963
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$72;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showHideQConnectLayout()V

    goto :goto_0
.end method
