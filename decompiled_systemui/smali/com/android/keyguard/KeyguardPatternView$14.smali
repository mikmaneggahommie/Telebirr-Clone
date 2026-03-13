.class Lcom/android/keyguard/KeyguardPatternView$14;
.super Ljava/lang/Object;
.source "KeyguardPatternView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardPatternView;->setHintOrMessageText(Ljava/lang/CharSequence;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardPatternView;

.field final synthetic val$hint:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardPatternView;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 1228
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView$14;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardPatternView$14;->val$hint:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1235
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1237
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1231
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$14;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$300(Lcom/android/keyguard/KeyguardPatternView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView$14;->val$hint:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 1232
    return-void
.end method
