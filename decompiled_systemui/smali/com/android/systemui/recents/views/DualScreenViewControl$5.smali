.class Lcom/android/systemui/recents/views/DualScreenViewControl$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DualScreenViewControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/DualScreenViewControl;->moveTopTask(ILcom/android/systemui/recents/views/TaskView;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/DualScreenViewControl;

.field final synthetic val$run:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/DualScreenViewControl;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/android/systemui/recents/views/DualScreenViewControl$5;->this$0:Lcom/android/systemui/recents/views/DualScreenViewControl;

    iput-object p2, p0, Lcom/android/systemui/recents/views/DualScreenViewControl$5;->val$run:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/systemui/recents/views/DualScreenViewControl$5;->val$run:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 269
    return-void
.end method
