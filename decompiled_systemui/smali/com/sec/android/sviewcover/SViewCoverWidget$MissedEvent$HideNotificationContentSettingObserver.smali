.class Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent$HideNotificationContentSettingObserver;
.super Landroid/database/ContentObserver;
.source "SViewCoverWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HideNotificationContentSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;


# direct methods
.method public constructor <init>(Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;)V
    .locals 1

    .prologue
    .line 1445
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent$HideNotificationContentSettingObserver;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;

    .line 1446
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1447
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1451
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 1452
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent$HideNotificationContentSettingObserver;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent$HideNotificationContentSettingObserver;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;

    invoke-static {v2}, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->access$1600(Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_screen_allow_private_notifications"

    const/4 v4, -0x2

    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v1, v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->access$1502(Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;Z)Z

    .line 1454
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent$HideNotificationContentSettingObserver;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;

    invoke-virtual {v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->updateMissedEvent()V

    .line 1455
    return-void
.end method
