.class Lcom/android/keyguard/sec/KeyguardSPassUnlockView$3;
.super Ljava/lang/Object;
.source "KeyguardSPassUnlockView.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 235
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$3;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$3;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1000(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$3;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1000(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 239
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$3;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1100(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$3;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1100(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->reset()V

    .line 240
    :cond_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1200()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$3;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1300(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$3;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1000(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$3;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1000(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1200()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$3;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$300(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;I)V

    .line 243
    :cond_2
    return-void
.end method
