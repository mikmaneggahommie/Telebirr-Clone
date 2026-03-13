.class Lcom/android/keyguard/sec/KeyguardSPassUnlockView$5;
.super Ljava/lang/Object;
.source "KeyguardSPassUnlockView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->onFinishInflate()V
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
    .line 301
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$5;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$5;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1500(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$5;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1600(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$5;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$000(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 310
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$5;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1700(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$5;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1700(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Biometric:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->showBackupSecurity(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 312
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$5;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1700(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    goto :goto_0
.end method
