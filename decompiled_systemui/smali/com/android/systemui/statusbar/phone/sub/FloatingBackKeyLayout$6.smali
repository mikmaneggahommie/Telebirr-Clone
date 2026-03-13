.class Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$6;
.super Ljava/lang/Object;
.source "FloatingBackKeyLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->beginMoving(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)V
    .locals 0

    .prologue
    .line 503
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$6;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 516
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$6;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$100(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$6;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$1500(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)Lcom/android/systemui/statusbar/policy/KeyButtonView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setVisibility(I)V

    .line 521
    :goto_0
    return-void

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$6;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$1500(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)Lcom/android/systemui/statusbar/policy/KeyButtonView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setAlpha(F)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 512
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$6;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$002(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;I)I

    .line 507
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$6;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$3000(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)V

    .line 508
    return-void
.end method
