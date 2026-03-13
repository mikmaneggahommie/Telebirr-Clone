.class Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$19;
.super Ljava/lang/Object;
.source "CenterBarWindow.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->animateCenterBarClose(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;


# direct methods
.method constructor <init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V
    .locals 0

    .prologue
    .line 1976
    iput-object p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$19;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v1, 0x0

    .line 1983
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$19;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v0, v1}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$2802(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;Z)Z

    .line 1984
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$19;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v0, v1}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$4302(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;Z)Z

    .line 1985
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$19;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-virtual {v0, v1}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->setCenterBarViewsVisibility(I)V

    .line 1986
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$19;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mButtonsPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 1987
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$19;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mButtonsPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1989
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$19;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mButtonsPopupWindow:Landroid/widget/PopupWindow;

    .line 1990
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 1980
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 1978
    return-void
.end method
