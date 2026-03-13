.class Lcom/android/keyguard/sec/SecKeyguardProfileView$4;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "SecKeyguardProfileView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/SecKeyguardProfileView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SecKeyguardProfileView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecKeyguardProfileView;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView$4;->this$0:Lcom/android/keyguard/sec/SecKeyguardProfileView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishedGoingToSleep(I)V
    .locals 2
    .param p1, "why"    # I

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView$4;->this$0:Lcom/android/keyguard/sec/SecKeyguardProfileView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardProfileView;->access$500(Lcom/android/keyguard/sec/SecKeyguardProfileView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView$4;->this$0:Lcom/android/keyguard/sec/SecKeyguardProfileView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardProfileView;->access$500(Lcom/android/keyguard/sec/SecKeyguardProfileView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 234
    :cond_0
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 1
    .param p1, "showing"    # Z

    .prologue
    .line 219
    if-eqz p1, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView$4;->this$0:Lcom/android/keyguard/sec/SecKeyguardProfileView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardProfileView;->access$400(Lcom/android/keyguard/sec/SecKeyguardProfileView;)V

    .line 222
    :cond_0
    return-void
.end method

.method public onStartedWakingUp()V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView$4;->this$0:Lcom/android/keyguard/sec/SecKeyguardProfileView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardProfileView;->access$500(Lcom/android/keyguard/sec/SecKeyguardProfileView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView$4;->this$0:Lcom/android/keyguard/sec/SecKeyguardProfileView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardProfileView;->access$500(Lcom/android/keyguard/sec/SecKeyguardProfileView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 241
    :cond_0
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView$4;->this$0:Lcom/android/keyguard/sec/SecKeyguardProfileView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardProfileView;->access$400(Lcom/android/keyguard/sec/SecKeyguardProfileView;)V

    .line 227
    return-void
.end method
