.class Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$11;
.super Ljava/lang/Object;
.source "SViewCoverNewUnlockArea.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->setAllAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;


# direct methods
.method constructor <init>(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)V
    .locals 0

    .prologue
    .line 951
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$11;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 962
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 966
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$11;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$1200(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)V

    .line 967
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 958
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 954
    return-void
.end method
