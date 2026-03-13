.class Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet$2;
.super Landroid/content/BroadcastReceiver;
.source "SViewCoverWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;


# direct methods
.method constructor <init>(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;)V
    .locals 0

    .prologue
    .line 3720
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v10, 0x12c3

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 3725
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3726
    .local v0, "action":Ljava/lang/String;
    const-string v9, "com.sec.android.music.musicservicecommnad.mediainfo"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 3727
    const-string v9, "isPlaying"

    invoke-virtual {p2, v9, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    if-ne v9, v7, :cond_1

    move v5, v7

    .line 3728
    .local v5, "playing":I
    :goto_0
    const-string v9, "isStopped"

    invoke-virtual {p2, v9, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    if-ne v9, v7, :cond_2

    move v1, v7

    .line 3729
    .local v1, "isStop":I
    :goto_1
    const-string v7, "uri"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 3734
    .local v2, "mediaUri":Landroid/net/Uri;
    iget-object v7, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;

    invoke-static {v7}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->access$4800(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x12c2

    invoke-virtual {v7, v8, v5, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 3736
    .local v3, "msg":Landroid/os/Message;
    iget-object v7, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;

    invoke-static {v7}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->access$4800(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3757
    .end local v1    # "isStop":I
    .end local v2    # "mediaUri":Landroid/net/Uri;
    .end local v3    # "msg":Landroid/os/Message;
    .end local v5    # "playing":I
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v5, v8

    .line 3727
    goto :goto_0

    .restart local v5    # "playing":I
    :cond_2
    move v1, v8

    .line 3728
    goto :goto_1

    .line 3737
    .end local v5    # "playing":I
    :cond_3
    const-string v7, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3738
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 3739
    .local v6, "uri":Landroid/net/Uri;
    if-eqz v6, :cond_0

    .line 3743
    invoke-virtual {v6}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    .line 3744
    .local v4, "pkgName":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 3748
    const-string v7, "com.sec.android.app.music"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3749
    iget-object v7, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;

    invoke-static {v7}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->access$4800(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 3750
    iget-object v7, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;

    invoke-static {v7}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->access$4800(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 3753
    :cond_4
    iget-object v7, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;

    invoke-static {v7}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->access$4800(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;

    invoke-static {v8}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->access$4800(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2
.end method
