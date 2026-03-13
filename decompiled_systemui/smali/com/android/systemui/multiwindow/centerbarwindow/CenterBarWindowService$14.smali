.class Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$14;
.super Ljava/lang/Object;
.source "CenterBarWindowService.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->makeCenterBarWindow(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;


# direct methods
.method constructor <init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;)V
    .locals 0

    .prologue
    .line 610
    iput-object p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$14;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 613
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$14;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;

    invoke-static {v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->access$900(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$14;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;

    invoke-static {v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->access$1000(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$14;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;

    invoke-static {v1}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->access$700(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;)Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 615
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$14;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->access$702(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;Landroid/view/Window;)Landroid/view/Window;

    .line 616
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$14;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;

    invoke-static {v0, v2}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->access$902(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;Z)Z

    .line 617
    const-string v0, "CenterBarWindowService"

    const-string v1, "Success : mWindowCenterBar, removeViewImmediate after attached "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$14;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;

    invoke-static {v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->access$1100(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 620
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$14;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;

    invoke-static {v0, v2}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->access$1102(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;Z)Z

    .line 621
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$14;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;

    invoke-static {v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->access$000(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;)Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 622
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$14;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;

    invoke-static {v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->access$000(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;)Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->initCenterBarButtonAnim()V

    .line 625
    :cond_1
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 627
    return-void
.end method
