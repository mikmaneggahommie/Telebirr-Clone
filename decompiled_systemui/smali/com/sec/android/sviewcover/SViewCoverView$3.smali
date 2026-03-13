.class Lcom/sec/android/sviewcover/SViewCoverView$3;
.super Landroid/os/Handler;
.source "SViewCoverView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/sviewcover/SViewCoverView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/sviewcover/SViewCoverView;


# direct methods
.method constructor <init>(Lcom/sec/android/sviewcover/SViewCoverView;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 586
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverView$3;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 588
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 597
    :cond_0
    :goto_0
    return-void

    .line 590
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView$3;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverView;->access$2200(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/os/PowerManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverView;->access$1900()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView$3;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-virtual {v0}, Lcom/sec/android/sviewcover/SViewCoverView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    const-string v0, "SViewCoverView"

    const-string v1, "goToSleep()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView$3;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverView;->access$2200(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    goto :goto_0

    .line 588
    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
    .end packed-switch
.end method
