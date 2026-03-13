.class Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor$4;
.super Ljava/lang/Object;
.source "KeyguardEffectViewWaterColor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->releaseSound()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;)V
    .locals 0

    .prologue
    .line 400
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor$4;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 403
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor$4;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;

    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->access$100(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;)Landroid/media/SoundPool;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 404
    const-string v0, "WaterColor_Keyguard"

    const-string v1, "WaterColor sound : release SoundPool"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor$4;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;

    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->access$100(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;)Landroid/media/SoundPool;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 406
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor$4;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;

    invoke-static {v0, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->access$102(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor$4;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;

    invoke-static {v0, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->access$202(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 409
    return-void
.end method
