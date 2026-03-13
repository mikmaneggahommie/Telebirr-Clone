.class Lcom/android/keyguard/sec/KeyguardRecoveryView$4;
.super Ljava/lang/Object;
.source "KeyguardRecoveryView.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardRecoveryView;->verifyPasswordAndUnlock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardRecoveryView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardRecoveryView;)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardRecoveryView$4;->this$0:Lcom/android/keyguard/sec/KeyguardRecoveryView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChecked(ZI)V
    .locals 2
    .param p1, "matched"    # Z
    .param p2, "timeoutMs"    # I

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardRecoveryView$4;->this$0:Lcom/android/keyguard/sec/KeyguardRecoveryView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardRecoveryView;->setPasswordEntryInputEnabled(Z)V

    .line 364
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardRecoveryView$4;->this$0:Lcom/android/keyguard/sec/KeyguardRecoveryView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/sec/KeyguardRecoveryView;->access$402(Lcom/android/keyguard/sec/KeyguardRecoveryView;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 365
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardRecoveryView$4;->this$0:Lcom/android/keyguard/sec/KeyguardRecoveryView;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardRecoveryView$4;->this$0:Lcom/android/keyguard/sec/KeyguardRecoveryView;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardRecoveryView;->access$500(Lcom/android/keyguard/sec/KeyguardRecoveryView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/keyguard/sec/KeyguardRecoveryView;->onPasswordChecked(Ljava/lang/String;ZI)V

    .line 366
    return-void
.end method
