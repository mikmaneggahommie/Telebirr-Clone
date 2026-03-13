.class Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles$1;
.super Ljava/lang/Object;
.source "KeyguardEffectViewSparklingBubbles.java"

# interfaces
.implements Lcom/samsung/android/visualeffect/IEffectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(ILjava/util/HashMap;)V
    .locals 4
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<**>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 175
    packed-switch p1, :pswitch_data_0

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 177
    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;

    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->access$000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;)Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 178
    const-string v0, "SparklingBubbles_Keyguard"

    const-string v1, "KeyguardEffectViewSparklingBubbles : mKeyguardWindowCallback is called!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;

    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->access$000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;)Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;->onShown()V

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;

    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->access$100(Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles$EffectHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;

    invoke-static {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->access$100(Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles$EffectHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles$EffectHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    iput-object v1, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mMsg:Landroid/os/Message;

    .line 185
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mMsg:Landroid/os/Message;

    iput v2, v0, Landroid/os/Message;->what:I

    .line 186
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;

    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->access$100(Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles$EffectHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;

    iget-object v1, v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mMsg:Landroid/os/Message;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles$EffectHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 190
    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;

    invoke-static {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->access$200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->access$300(Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;Landroid/graphics/Bitmap;I)V

    .line 191
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;

    invoke-static {v0, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->access$402(Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;Z)Z

    .line 192
    const-string v0, "SparklingBubbles_Keyguard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIEffectListener callback, update(1) mTouchFlagForMobileKeyboard = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;

    invoke-static {v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->access$400(Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 195
    :pswitch_2
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;

    invoke-static {v0, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->access$502(Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;Z)Z

    goto :goto_0

    .line 198
    :pswitch_3
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;

    invoke-static {v0, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->access$502(Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;Z)Z

    goto :goto_0

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
