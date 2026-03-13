.class Lcom/sec/android/sviewcover/SViewCoverView$DoNotShowNotificationContentSettingObserver;
.super Landroid/database/ContentObserver;
.source "SViewCoverView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/sviewcover/SViewCoverView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DoNotShowNotificationContentSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/sviewcover/SViewCoverView;


# direct methods
.method public constructor <init>(Lcom/sec/android/sviewcover/SViewCoverView;)V
    .locals 1

    .prologue
    .line 2976
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverView$DoNotShowNotificationContentSettingObserver;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    .line 2977
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2978
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 7
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/16 v6, 0xd

    .line 2982
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2983
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView$DoNotShowNotificationContentSettingObserver;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverView$DoNotShowNotificationContentSettingObserver;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-static {v3}, Lcom/sec/android/sviewcover/SViewCoverView;->access$3700(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_screen_show_notifications"

    const/4 v5, -0x2

    invoke-static {v3, v4, v0, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v2, v0}, Lcom/sec/android/sviewcover/SViewCoverView;->access$2902(Lcom/sec/android/sviewcover/SViewCoverView;Z)Z

    .line 2985
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView$DoNotShowNotificationContentSettingObserver;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    iget v0, v0, Lcom/sec/android/sviewcover/SViewCoverView;->mUnlockAreaLevel:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView$DoNotShowNotificationContentSettingObserver;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverView;->access$2800(Lcom/sec/android/sviewcover/SViewCoverView;)Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2986
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView$DoNotShowNotificationContentSettingObserver;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverView;->access$400(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2987
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView$DoNotShowNotificationContentSettingObserver;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverView;->access$400(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 2988
    :cond_1
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView$DoNotShowNotificationContentSettingObserver;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverView;->access$400(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2992
    :goto_0
    return-void

    .line 2990
    :cond_2
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView$DoNotShowNotificationContentSettingObserver;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverView;->access$200(Lcom/sec/android/sviewcover/SViewCoverView;)V

    goto :goto_0
.end method
