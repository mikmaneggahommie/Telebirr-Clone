.class Lcom/android/keyguard/sec/KeyguardSPassPasswordView$4;
.super Ljava/lang/Object;
.source "KeyguardSPassPasswordView.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->verifyPasswordAndUnlock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

.field final synthetic val$entry:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 521
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$4;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    iput-object p2, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$4;->val$entry:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChecked(ZI)V
    .locals 2
    .param p1, "matched"    # Z
    .param p2, "timeoutMs"    # I

    .prologue
    .line 524
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$4;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->setPasswordEntryInputEnabled(Z)V

    .line 525
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$4;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->access$1002(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 526
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$4;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$4;->val$entry:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->onPasswordChecked(Ljava/lang/String;ZI)V

    .line 527
    return-void
.end method
