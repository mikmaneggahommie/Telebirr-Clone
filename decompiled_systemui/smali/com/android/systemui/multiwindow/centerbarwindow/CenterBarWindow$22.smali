.class Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$22;
.super Ljava/lang/Object;
.source "CenterBarWindow.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->animationCenterBar4Buttons()V
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
    .line 2530
    iput-object p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$22;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 2537
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$22;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v3}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$700(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x7f050000

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2538
    .local v0, "bubbleAnimation":Landroid/view/animation/Animation;
    new-instance v3, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$22$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$22$1;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$22;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2543
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$22;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v3}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$4400(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 2544
    .local v2, "v":Landroid/view/View;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2546
    .end local v2    # "v":Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$22;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v3}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$4500(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 2547
    .restart local v2    # "v":Landroid/view/View;
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 2549
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$22;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v3}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$4400(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 2550
    .restart local v2    # "v":Landroid/view/View;
    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2

    .line 2552
    .end local v2    # "v":Landroid/view/View;
    :cond_2
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 2534
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 2532
    return-void
.end method
