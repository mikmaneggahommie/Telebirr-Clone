.class Lcom/android/keyguard/sec/KeyguardSPassUnlockView$8;
.super Ljava/lang/Object;
.source "KeyguardSPassUnlockView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/KeyguardSPassUnlockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V
    .locals 0

    .prologue
    .line 811
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$8;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 825
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1200()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$8;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1900(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$8;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1300(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 826
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1200()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$8;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1900(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 828
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 821
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 816
    return-void
.end method
