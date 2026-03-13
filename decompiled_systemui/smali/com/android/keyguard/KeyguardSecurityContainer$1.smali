.class Lcom/android/keyguard/KeyguardSecurityContainer$1;
.super Ljava/lang/Object;
.source "KeyguardSecurityContainer.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecurityContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecurityContainer;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSecurityContainer;)V
    .locals 0

    .prologue
    .line 873
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss(Z)V
    .locals 1
    .param p1, "authenticated"    # Z

    .prologue
    .line 881
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->access$000(Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;->dismiss(Z)Z

    .line 882
    return-void
.end method

.method public dismissWithAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;ZZ)V
    .locals 1
    .param p1, "r"    # Lcom/android/keyguard/KeyguardHostView$OnDismissAction;
    .param p2, "afterKeyguardGone"    # Z
    .param p3, "dismissIfInsecure"    # Z

    .prologue
    .line 919
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->access$000(Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 920
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->access$000(Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;->dismissWithAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;ZZ)V

    .line 922
    :cond_0
    return-void
.end method

.method public isVerifyUnlockOnly()Z
    .locals 1

    .prologue
    .line 885
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->access$100(Lcom/android/keyguard/KeyguardSecurityContainer;)Z

    move-result v0

    return v0
.end method

.method public reportUnlockAttempt(ZI)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "timeoutMs"    # I

    .prologue
    .line 889
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->access$200(Lcom/android/keyguard/KeyguardSecurityContainer;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 890
    .local v0, "monitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    if-eqz p1, :cond_0

    .line 891
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearFailedUnlockAttempts()V

    .line 892
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->access$300(Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->reportSuccessfulPasswordAttempt(I)V

    .line 901
    :goto_0
    return-void

    .line 895
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->access$400(Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Biometric:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v1, v2, :cond_1

    .line 896
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportFailedSecBiometricUnlockAttempt()V

    goto :goto_0

    .line 898
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-static {v1, p2}, Lcom/android/keyguard/KeyguardSecurityContainer;->access$500(Lcom/android/keyguard/KeyguardSecurityContainer;I)V

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 908
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->access$000(Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;->reset()V

    .line 909
    return-void
.end method

.method public setOnDismissAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;)V
    .locals 1
    .param p1, "r"    # Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    .prologue
    .line 913
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->access$000(Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 914
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->access$000(Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;->setOnDismissAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;)V

    .line 916
    :cond_0
    return-void
.end method

.method public showBackupSecurity()V
    .locals 0

    .prologue
    .line 905
    return-void
.end method

.method public showBackupSecurity(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 1
    .param p1, "mode"    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .prologue
    .line 926
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-static {v0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->access$600(Lcom/android/keyguard/KeyguardSecurityContainer;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 927
    return-void
.end method

.method public showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 1
    .param p1, "mode"    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .prologue
    .line 931
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-static {v0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->access$700(Lcom/android/keyguard/KeyguardSecurityContainer;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 932
    return-void
.end method

.method public userActivity()V
    .locals 1

    .prologue
    .line 875
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->access$000(Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 876
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->access$000(Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;->userActivity()V

    .line 878
    :cond_0
    return-void
.end method
