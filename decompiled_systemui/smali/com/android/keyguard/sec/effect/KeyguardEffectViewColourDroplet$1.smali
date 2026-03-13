.class Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$1;
.super Ljava/lang/Object;
.source "KeyguardEffectViewColourDroplet.java"

# interfaces
.implements Lcom/samsung/android/visualeffect/IEffectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;

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
    const/4 v3, 0x0

    .line 169
    packed-switch p1, :pswitch_data_0

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 171
    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;

    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->access$000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;)Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 172
    const-string v0, "KeyguardEffectViewColourDroplet"

    const-string v1, "KeyguardEffectViewColourDroplet : mKeyguardWindowCallback is called!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;

    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->access$000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;)Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;->onShown()V

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;

    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->access$100(Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$EffectHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;

    invoke-static {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->access$100(Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$EffectHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$EffectHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    iput-object v1, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mMsg:Landroid/os/Message;

    .line 179
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mMsg:Landroid/os/Message;

    iput v3, v0, Landroid/os/Message;->what:I

    .line 180
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;

    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->access$100(Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$EffectHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;

    iget-object v1, v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mMsg:Landroid/os/Message;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$EffectHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 184
    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;

    invoke-static {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->access$200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->access$300(Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;Landroid/graphics/Bitmap;I)V

    .line 185
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;

    invoke-static {v0, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->access$402(Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;Z)Z

    .line 186
    const-string v0, "KeyguardEffectViewColourDroplet"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIEffectListener callback, update(1) mTouchFlagForMobileKeyboard = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;

    invoke-static {v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->access$400(Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
