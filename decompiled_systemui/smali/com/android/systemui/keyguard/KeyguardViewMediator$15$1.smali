.class Lcom/android/systemui/keyguard/KeyguardViewMediator$15$1;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/keyguard/KeyguardViewMediator$15;->reloadLockSound(Lcom/android/keyguard/sec/effect/LockSoundInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$15;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$info:Lcom/android/keyguard/sec/effect/LockSoundInfo;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator$15;Lcom/android/keyguard/sec/effect/LockSoundInfo;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 3395
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$15$1;->this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$15;

    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$15$1;->val$info:Lcom/android/keyguard/sec/effect/LockSoundInfo;

    iput-object p3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$15$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 3398
    const-string v0, "KeyguardViewMediator"

    const-string v1, "reloadLockSound() - run"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3399
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$15$1;->this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$15;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$15;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$15$1;->val$info:Lcom/android/keyguard/sec/effect/LockSoundInfo;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$15$1;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$15$1;->this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$15;

    iget-object v3, v3, Lcom/android/systemui/keyguard/KeyguardViewMediator$15;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$6600(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$15$1;->this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$15;

    iget-object v4, v4, Lcom/android/systemui/keyguard/KeyguardViewMediator$15;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$7400(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/media/SoundPool;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/keyguard/sec/effect/LockSoundInfo;->reloadSoundIdLock(Landroid/content/Context;ILandroid/media/SoundPool;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$6602(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)I

    .line 3400
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$15$1;->this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$15;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$15;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$15$1;->val$info:Lcom/android/keyguard/sec/effect/LockSoundInfo;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$15$1;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$15$1;->this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$15;

    iget-object v3, v3, Lcom/android/systemui/keyguard/KeyguardViewMediator$15;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$6700(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$15$1;->this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$15;

    iget-object v4, v4, Lcom/android/systemui/keyguard/KeyguardViewMediator$15;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$7400(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/media/SoundPool;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/keyguard/sec/effect/LockSoundInfo;->reloadSoundIdUnlock(Landroid/content/Context;ILandroid/media/SoundPool;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$6702(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)I

    .line 3401
    return-void
.end method
