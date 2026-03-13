.class Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener$1;
.super Ljava/lang/Object;
.source "KeyguardPatternView.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->onPatternDetected(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;

.field final synthetic val$pattern:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 537
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener$1;->val$pattern:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChecked(ZI)V
    .locals 2
    .param p1, "matched"    # Z
    .param p2, "timeoutMs"    # I

    .prologue
    .line 540
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$000(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/sec/SecLockPatternView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/SecLockPatternView;->enableInput()V

    .line 541
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardPatternView;->access$802(Lcom/android/keyguard/KeyguardPatternView;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 542
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener$1;->val$pattern:Ljava/util/List;

    invoke-static {v0, v1, p1, p2}, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->access$1000(Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;Ljava/util/List;ZI)V

    .line 543
    return-void
.end method
