.class Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$16;
.super Ljava/lang/Object;
.source "CenterBarWindow.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->showButtonPopupWindow(Z)V
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
    .line 1795
    iput-object p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$16;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const v4, 0x7f0a04e8

    const/4 v3, 0x0

    .line 1798
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$16;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$4000(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V

    .line 1799
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 1800
    invoke-virtual {p1}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$16;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$000(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1801
    invoke-virtual {p1}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    const/16 v1, 0x333

    invoke-virtual {v0, v1}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    .line 1802
    invoke-virtual {p1}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$16;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v2}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$700(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 1807
    :cond_0
    :goto_0
    return v3

    .line 1803
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$16;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$000(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1804
    invoke-virtual {p1}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$16;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v1}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$700(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    goto :goto_0
.end method
