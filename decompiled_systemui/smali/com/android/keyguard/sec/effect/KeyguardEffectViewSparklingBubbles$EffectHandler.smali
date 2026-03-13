.class public Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles$EffectHandler;
.super Landroid/os/Handler;
.source "KeyguardEffectViewSparklingBubbles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EffectHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;)V
    .locals 0

    .prologue
    .line 702
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles$EffectHandler;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 705
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 706
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 725
    :cond_0
    :goto_0
    return-void

    .line 709
    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles$EffectHandler;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;

    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->access$900(Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 711
    const-string v0, "SparklingBubbles_Keyguard"

    const-string v1, "removeView mLockScreenWallpaperImage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles$EffectHandler;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;

    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->access$900(Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 713
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles$EffectHandler;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles$EffectHandler;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;

    invoke-static {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->access$900(Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->removeView(Landroid/view/View;)V

    .line 714
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles$EffectHandler;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;

    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->access$1000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 716
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles$EffectHandler;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;

    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->access$1000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 717
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles$EffectHandler;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles$EffectHandler;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;

    invoke-static {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->access$1000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->removeView(Landroid/view/View;)V

    .line 718
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles$EffectHandler;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;

    invoke-static {v0, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->access$1002(Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 721
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles$EffectHandler;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;

    invoke-static {v0, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->access$902(Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    goto :goto_0

    .line 706
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
