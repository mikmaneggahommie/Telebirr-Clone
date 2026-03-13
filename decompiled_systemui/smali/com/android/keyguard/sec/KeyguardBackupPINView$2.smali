.class Lcom/android/keyguard/sec/KeyguardBackupPINView$2;
.super Ljava/lang/Object;
.source "KeyguardBackupPINView.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardBackupPINView;->verifyPasswordAndUnlock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardBackupPINView;

.field final synthetic val$entry:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardBackupPINView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView$2;->this$0:Lcom/android/keyguard/sec/KeyguardBackupPINView;

    iput-object p2, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView$2;->val$entry:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChecked(ZI)V
    .locals 2
    .param p1, "matched"    # Z
    .param p2, "timeoutMs"    # I

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView$2;->this$0:Lcom/android/keyguard/sec/KeyguardBackupPINView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 223
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView$2;->this$0:Lcom/android/keyguard/sec/KeyguardBackupPINView;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView$2;->val$entry:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->onPasswordChecked(Ljava/lang/String;ZI)V

    .line 224
    return-void
.end method
