.class Lcom/sec/android/sviewcover/SViewCoverMissedEvents$HideNotificationContentSettingObserver;
.super Landroid/database/ContentObserver;
.source "SViewCoverMissedEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/sviewcover/SViewCoverMissedEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HideNotificationContentSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;


# direct methods
.method public constructor <init>(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)V
    .locals 1

    .prologue
    .line 2133
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$HideNotificationContentSettingObserver;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    .line 2134
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2135
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x0

    .line 2139
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2140
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$HideNotificationContentSettingObserver;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    iput-boolean v0, v1, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mUpdated:Z

    .line 2141
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$HideNotificationContentSettingObserver;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$HideNotificationContentSettingObserver;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v2}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$5800(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;

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
    invoke-static {v1, v0}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$3602(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;Z)Z

    .line 2142
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$HideNotificationContentSettingObserver;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-virtual {v0}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->updateMissedEvents()V

    .line 2143
    return-void
.end method
