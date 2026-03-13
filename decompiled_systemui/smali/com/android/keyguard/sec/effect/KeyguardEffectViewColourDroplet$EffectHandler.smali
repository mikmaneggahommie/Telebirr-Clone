.class public Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$EffectHandler;
.super Landroid/os/Handler;
.source "KeyguardEffectViewColourDroplet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EffectHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;)V
    .locals 0

    .prologue
    .line 628
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$EffectHandler;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 631
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 632
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 654
    :cond_0
    :goto_0
    return-void

    .line 635
    :sswitch_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$EffectHandler;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;

    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->access$700(Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 637
    const-string v0, "KeyguardEffectViewColourDroplet"

    const-string v1, "removeView mLockScreenWallpaperImage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$EffectHandler;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;

    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->access$700(Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 639
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$EffectHandler;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$EffectHandler;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;

    invoke-static {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->access$700(Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->removeView(Landroid/view/View;)V

    .line 640
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$EffectHandler;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;

    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->access$800(Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 642
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$EffectHandler;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;

    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->access$800(Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 643
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$EffectHandler;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$EffectHandler;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;

    invoke-static {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->access$800(Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->removeView(Landroid/view/View;)V

    .line 644
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$EffectHandler;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;

    invoke-static {v0, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->access$802(Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 647
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$EffectHandler;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;

    invoke-static {v0, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->access$702(Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    goto :goto_0

    .line 651
    :sswitch_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$EffectHandler;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;

    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->access$900(Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;)V

    goto :goto_0

    .line 632
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3e7 -> :sswitch_1
    .end sparse-switch
.end method
