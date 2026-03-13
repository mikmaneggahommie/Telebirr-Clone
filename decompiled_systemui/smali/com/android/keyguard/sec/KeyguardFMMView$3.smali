.class Lcom/android/keyguard/sec/KeyguardFMMView$3;
.super Ljava/lang/Object;
.source "KeyguardFMMView.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardFMMView;->verifyPasswordAndUnlock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardFMMView;

.field final synthetic val$entry:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardFMMView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardFMMView$3;->this$0:Lcom/android/keyguard/sec/KeyguardFMMView;

    iput-object p2, p0, Lcom/android/keyguard/sec/KeyguardFMMView$3;->val$entry:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChecked(ZI)V
    .locals 3
    .param p1, "matched"    # Z
    .param p2, "timeoutMs"    # I

    .prologue
    .line 183
    const-string v0, "KeyguardFMMView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChecked(matched = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFMMView$3;->this$0:Lcom/android/keyguard/sec/KeyguardFMMView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/sec/KeyguardFMMView;->access$500(Lcom/android/keyguard/sec/KeyguardFMMView;Z)V

    .line 185
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFMMView$3;->this$0:Lcom/android/keyguard/sec/KeyguardFMMView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/sec/KeyguardFMMView;->access$602(Lcom/android/keyguard/sec/KeyguardFMMView;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 186
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFMMView$3;->this$0:Lcom/android/keyguard/sec/KeyguardFMMView;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardFMMView$3;->val$entry:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/keyguard/sec/KeyguardFMMView;->onPasswordChecked(Ljava/lang/String;ZI)V

    .line 187
    return-void
.end method
