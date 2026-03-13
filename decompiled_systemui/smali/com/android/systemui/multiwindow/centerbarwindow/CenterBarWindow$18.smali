.class Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$18;
.super Ljava/lang/Object;
.source "CenterBarWindow.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->animateCenterBarOpen(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

.field final synthetic val$autoCloseAnim:Z

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;ZLandroid/view/View;)V
    .locals 0

    .prologue
    .line 1914
    iput-object p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$18;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    iput-boolean p2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$18;->val$autoCloseAnim:Z

    iput-object p3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$18;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1924
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$18;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$4102(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;Z)Z

    .line 1925
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$18;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$2802(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;Z)Z

    .line 1926
    iget-boolean v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$18;->val$autoCloseAnim:Z

    if-eqz v0, :cond_0

    .line 1927
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$18;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTimerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$18$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$18$1;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$18;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1934
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1921
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1917
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$18;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$2802(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;Z)Z

    .line 1918
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$18;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->setCenterBarViewsVisibility(I)V

    .line 1919
    return-void
.end method
