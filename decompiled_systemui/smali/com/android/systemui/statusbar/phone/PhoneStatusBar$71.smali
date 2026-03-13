.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$71;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateExpandQsEditPanel()V
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
    .line 8892
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$71;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/16 v2, 0x8

    .line 8906
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$71;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    if-eqz v1, :cond_0

    .line 8907
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$71;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setVisibility(I)V

    .line 8909
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$71;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$19200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 8910
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$71;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$19300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setVisibility(I)V

    .line 8912
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$71;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 8913
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$71;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 8915
    :cond_2
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mIsTablet:Z

    if-eqz v1, :cond_4

    .line 8916
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$71;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$19400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 8917
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$71;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$19500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 8918
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$71;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$19600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 8916
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8922
    .end local v0    # "i":I
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$71;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateCarrierLabelView()V

    .line 8924
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$71;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$19700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isBeingDragged()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$71;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$19800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isFling()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 8925
    :cond_5
    const-string v1, "PhoneStatusBar"

    const-string v2, "scroll Y reset !!! "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8926
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$71;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$19900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->endDrag()V

    .line 8928
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$71;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$20000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isSwipingInProgress()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 8929
    const-string v1, "PhoneStatusBar"

    const-string v2, "scroll X reset !!! "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8930
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$71;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$20100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->refreshAnimStatus()V

    .line 8932
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$71;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$20200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 8933
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$71;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->sendAccessibilityEvent(I)V

    .line 8934
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 8902
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 8897
    return-void
.end method
