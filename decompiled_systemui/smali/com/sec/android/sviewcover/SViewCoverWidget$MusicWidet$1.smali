.class Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet$1;
.super Landroid/os/Handler;
.source "SViewCoverWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;
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
    .line 3686
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v1, 0x8

    .line 3689
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 3704
    :cond_0
    :goto_0
    return-void

    .line 3691
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    invoke-static {v1, v2, v3, v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->access$4500(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;IILandroid/net/Uri;)V

    goto :goto_0

    .line 3695
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;

    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->access$4600(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3696
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;

    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->access$4600(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3699
    :cond_1
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;

    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->access$4700(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3700
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;

    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->access$4700(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 3689
    nop

    :pswitch_data_0
    .packed-switch 0x12c2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
