.class Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardEffectViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->startPreviewAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mIsCancelled:Z

.field final synthetic this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

.field final synthetic val$isRight:Z


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;Z)V
    .locals 1

    .prologue
    .line 2326
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$9;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    iput-boolean p2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$9;->val$isRight:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 2327
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$9;->mIsCancelled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2345
    const-string v0, "KeyguardEffectViewController"

    const-string v1, "Animation cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2346
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$9;->mIsCancelled:Z

    .line 2347
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$9;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$2400(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Landroid/widget/FrameLayout;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$LaunchTransitionCallback;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$LaunchTransitionCallback;->onAnimationToSideCancelled()V

    .line 2348
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2336
    const-string v0, "KeyguardEffectViewController"

    const-string v1, "Animation ended"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2337
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$9;->mIsCancelled:Z

    if-nez v0, :cond_0

    .line 2338
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$9;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$2400(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Landroid/widget/FrameLayout;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$LaunchTransitionCallback;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$LaunchTransitionCallback;->onAnimationToSideEnded()V

    .line 2339
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$9;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$2200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$9;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    invoke-static {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$2500(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2341
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2330
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$9;->mIsCancelled:Z

    .line 2331
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$9;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$2400(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Landroid/widget/FrameLayout;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$LaunchTransitionCallback;

    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$9;->val$isRight:Z

    invoke-interface {v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$LaunchTransitionCallback;->onAnimationToSideStarted(Z)V

    .line 2332
    return-void
.end method
