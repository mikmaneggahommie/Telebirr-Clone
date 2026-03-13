.class Lcom/android/systemui/keyguard/KeyguardViewMediator$9;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/keyguard/KeyguardViewMediator;->playSounds(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field final synthetic val$isSecured:Z

.field final synthetic val$locked:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;ZZ)V
    .locals 0

    .prologue
    .line 2535
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iput-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;->val$isSecured:Z

    iput-boolean p3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;->val$locked:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2539
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;->val$isSecured:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;->val$locked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$6400(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I

    move-result v0

    :goto_0
    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$6800(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)V

    .line 2542
    return-void

    .line 2539
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$6500(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;->val$locked:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$6600(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$6700(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I

    move-result v0

    goto :goto_0
.end method
