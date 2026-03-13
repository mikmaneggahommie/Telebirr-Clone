.class public Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;
.super Landroid/widget/LinearLayout;
.source "SViewCoverWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/sviewcover/SViewCoverWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MissedEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent$HideNotificationContentSettingObserver;,
        Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent$NotiMode;
    }
.end annotation


# static fields
.field private static final MISSED_EVENT_ARRIVED:Ljava/lang/String; = "com.android.server.NotificationManagerService.NotificationArrived"

.field private static final MISSED_EVENT_REMOVED:Ljava/lang/String; = "com.android.server.NotificationManagerService.NotificationRemoved"

.field public static final SVIEWCOVER_FEATURE_LEVEL:Ljava/lang/String; = "com.sec.feature.cover.sviewcover"

.field private static final TPHONE_PKG_NAME:Ljava/lang/String; = "com.skt.prod.dialer"


# instance fields
.field private final EMAIL_PKG:Ljava/lang/String;

.field private final MISSED_EVENT_UPDATE:I

.field private final REQ_INDEX_CALL_EMAIL:I

.field private final REQ_INDEX_MSG:I

.field private VZW_MSG_APP:Ljava/lang/String;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHideNotificationContentSettingObserver:Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent$HideNotificationContentSettingObserver;

.field private mIsAllowedSensitiveContent:Z

.field private mMissedCallCount:I

.field private mMissedCallTextView:Landroid/widget/TextView;

.field private mMissedEventDivider:Landroid/widget/ImageView;

.field private mMissedMsgCount:I

.field private mMissedMsgTextView:Landroid/widget/TextView;

.field private mSviewCoverView:Lcom/sec/android/sviewcover/SViewCoverView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 1191
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mSviewCoverView:Lcom/sec/android/sviewcover/SViewCoverView;

    .line 1144
    const-string v0, "com.verizon.messaging.vzmsgs"

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->VZW_MSG_APP:Ljava/lang/String;

    .line 1146
    const-string v0, "com.android.email"

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->EMAIL_PKG:Ljava/lang/String;

    .line 1157
    const/16 v0, 0x12c2

    iput v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->MISSED_EVENT_UPDATE:I

    .line 1159
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->REQ_INDEX_CALL_EMAIL:I

    .line 1161
    const/16 v0, 0x7b

    iput v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->REQ_INDEX_MSG:I

    .line 1163
    iput v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallCount:I

    .line 1165
    iput v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgCount:I

    .line 1179
    new-instance v0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent$1;

    invoke-direct {v0, p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent$1;-><init>(Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;)V

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mHandler:Landroid/os/Handler;

    .line 1193
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mContext:Landroid/content/Context;

    .line 1194
    new-instance v0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent$2;

    invoke-direct {v0, p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent$2;-><init>(Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;)V

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1211
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MissedEvent ()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;

    .prologue
    .line 1131
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->handleMissedEventUpdate()V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;
    .param p1, "x1"    # Z

    .prologue
    .line 1131
    iput-boolean p1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mIsAllowedSensitiveContent:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getNumMissedEvent(Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent$NotiMode;)I
    .locals 3
    .param p1, "mode"    # Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent$NotiMode;

    .prologue
    const/4 v0, 0x0

    .line 1341
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mSviewCoverView:Lcom/sec/android/sviewcover/SViewCoverView;

    if-nez v1, :cond_1

    .line 1362
    :cond_0
    :goto_0
    return v0

    .line 1345
    :cond_1
    sget-object v1, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent$NotiMode;->MissedCall:Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent$NotiMode;

    if-ne p1, v1, :cond_2

    .line 1346
    const-string v0, "CoverUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNumMissedEvent - call : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mSviewCoverView:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-virtual {v2}, Lcom/sec/android/sviewcover/SViewCoverView;->getNotiListenerMissedCallCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mSviewCoverView:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-virtual {v0}, Lcom/sec/android/sviewcover/SViewCoverView;->getNotiListenerMissedCallCount()I

    move-result v0

    goto :goto_0

    .line 1350
    :cond_2
    sget-object v1, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent$NotiMode;->MissedMsg:Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent$NotiMode;

    if-ne p1, v1, :cond_0

    .line 1351
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->isVzwMsgAppDefault()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1352
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "isVzwMsgAppDefault() true, VZW Message+ is default Msg app!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->getUnreadMessageCounts()I

    move-result v0

    goto :goto_0

    .line 1355
    :cond_3
    const-string v0, "CoverUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNumMissedEvent - message : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mSviewCoverView:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-virtual {v2}, Lcom/sec/android/sviewcover/SViewCoverView;->getNotiListenerUnreadMsgCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mSviewCoverView:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-virtual {v0}, Lcom/sec/android/sviewcover/SViewCoverView;->getNotiListenerUnreadMsgCount()I

    move-result v0

    goto :goto_0
.end method

.method private getUnreadMessageCounts()I
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1370
    const/4 v6, 0x0

    .line 1371
    .local v6, "cursor":Landroid/database/Cursor;
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v4, "simple"

    const-string v5, "true"

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 1373
    .local v1, "allThreadsUri":Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "sum(unread_count)"

    aput-object v0, v2, v8

    .line 1376
    .local v2, "UNREAD_SUM_PROJECTION":[Ljava/lang/String;
    const-string v3, "unread_count > 0"

    .line 1379
    .local v3, "UNREAD_COUNT_SELECTION":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 1385
    if-nez v6, :cond_2

    .line 1393
    if-eqz v6, :cond_0

    .line 1394
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    move v0, v8

    .line 1396
    :cond_1
    :goto_0
    return v0

    .line 1387
    :cond_2
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1388
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 1393
    if-eqz v6, :cond_1

    .line 1394
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1393
    :cond_3
    if-eqz v6, :cond_4

    .line 1394
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_1
    move v0, v8

    .line 1396
    goto :goto_0

    .line 1390
    :catch_0
    move-exception v7

    .line 1391
    .local v7, "ex":Landroid/database/sqlite/SQLiteException;
    :try_start_2
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1393
    if-eqz v6, :cond_4

    .line 1394
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1393
    .end local v7    # "ex":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 1394
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method private handleMissedEventUpdate()V
    .locals 0

    .prologue
    .line 1248
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->updateMissedEvent()V

    .line 1249
    return-void
.end method

.method private isRTL()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1331
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v0

    .line 1332
    .local v0, "value":B
    if-eq v0, v2, :cond_0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    :cond_0
    move v1, v2

    .line 1336
    :cond_1
    return v1
.end method


# virtual methods
.method public getCallMsgTTSMessage()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1405
    const-string v0, ""

    .line 1406
    .local v0, "TTSMessage":Ljava/lang/String;
    iget v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallCount:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgCount:I

    if-lez v1, :cond_0

    .line 1407
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mContext:Landroid/content/Context;

    sget v2, Lcom/sec/android/sviewcover/R$string;->clearcover_calls_and_messages:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    iget v4, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1409
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mContext:Landroid/content/Context;

    sget v3, Lcom/sec/android/sviewcover/R$string;->clearcover_n_missed_calls:I

    new-array v4, v6, [Ljava/lang/Object;

    iget v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1411
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mContext:Landroid/content/Context;

    sget v3, Lcom/sec/android/sviewcover/R$string;->clearcover_n_unread_messages:I

    new-array v4, v6, [Ljava/lang/Object;

    iget v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1430
    :goto_0
    return-void

    .line 1413
    :cond_0
    iget v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallCount:I

    if-le v1, v6, :cond_1

    .line 1414
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mContext:Landroid/content/Context;

    sget v2, Lcom/sec/android/sviewcover/R$string;->clearcover_n_missed_calls:I

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1416
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1417
    :cond_1
    iget v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgCount:I

    if-le v1, v6, :cond_2

    .line 1418
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mContext:Landroid/content/Context;

    sget v2, Lcom/sec/android/sviewcover/R$string;->clearcover_n_unread_messages:I

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1420
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1421
    :cond_2
    iget v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallCount:I

    if-ne v1, v6, :cond_3

    .line 1422
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mContext:Landroid/content/Context;

    sget v2, Lcom/sec/android/sviewcover/R$string;->clearcover_1_missed_call:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1423
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1424
    :cond_3
    iget v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgCount:I

    if-ne v1, v6, :cond_4

    .line 1425
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mContext:Landroid/content/Context;

    sget v2, Lcom/sec/android/sviewcover/R$string;->clearcover_1_unread_message:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1426
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1428
    :cond_4
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mContext:Landroid/content/Context;

    sget v2, Lcom/sec/android/sviewcover/R$string;->clearcover_no_missed_event:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMissedCallCount()I
    .locals 1

    .prologue
    .line 1437
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent$NotiMode;->MissedCall:Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent$NotiMode;

    invoke-direct {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->getNumMissedEvent(Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent$NotiMode;)I

    move-result v0

    return v0
.end method

.method public getMissedEventCount()I
    .locals 2

    .prologue
    .line 1433
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent$NotiMode;->MissedCall:Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent$NotiMode;

    invoke-direct {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->getNumMissedEvent(Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent$NotiMode;)I

    move-result v0

    sget-object v1, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent$NotiMode;->MissedMsg:Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent$NotiMode;

    invoke-direct {p0, v1}, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->getNumMissedEvent(Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent$NotiMode;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getUnreadMessageCount()I
    .locals 1

    .prologue
    .line 1441
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent$NotiMode;->MissedMsg:Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent$NotiMode;

    invoke-direct {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->getNumMissedEvent(Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent$NotiMode;)I

    move-result v0

    return v0
.end method

.method public isVzwMsgAppDefault()Z
    .locals 1

    .prologue
    .line 1400
    const/4 v0, 0x0

    .line 1401
    .local v0, "isVzwMsgApp":Z
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    .line 1227
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 1228
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->updateMissedEvent()V

    .line 1230
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1231
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.android.server.NotificationManagerService.NotificationArrived"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1232
    const-string v1, "com.android.server.NotificationManagerService.NotificationRemoved"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1233
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1235
    new-instance v1, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent$HideNotificationContentSettingObserver;

    invoke-direct {v1, p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent$HideNotificationContentSettingObserver;-><init>(Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;)V

    iput-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mHideNotificationContentSettingObserver:Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent$HideNotificationContentSettingObserver;

    .line 1236
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_allow_private_notifications"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mHideNotificationContentSettingObserver:Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent$HideNotificationContentSettingObserver;

    const/4 v5, -0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1238
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 1242
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 1244
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mHideNotificationContentSettingObserver:Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent$HideNotificationContentSettingObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1245
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1216
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 1217
    sget v0, Lcom/sec/android/sviewcover/R$id;->missed_event_call_cnt:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallTextView:Landroid/widget/TextView;

    .line 1218
    sget v0, Lcom/sec/android/sviewcover/R$id;->missed_event_msg_cnt:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgTextView:Landroid/widget/TextView;

    .line 1219
    sget v0, Lcom/sec/android/sviewcover/R$id;->missed_event_call_divider:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedEventDivider:Landroid/widget/ImageView;

    .line 1221
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "lock_screen_allow_private_notifications"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mIsAllowedSensitiveContent:Z

    .line 1223
    return-void

    :cond_0
    move v0, v1

    .line 1221
    goto :goto_0
.end method

.method public setSviewCoverView(Lcom/sec/android/sviewcover/SViewCoverView;)V
    .locals 0
    .param p1, "sViewCoverView"    # Lcom/sec/android/sviewcover/SViewCoverView;

    .prologue
    .line 1366
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mSviewCoverView:Lcom/sec/android/sviewcover/SViewCoverView;

    .line 1367
    return-void
.end method

.method public updateMissedEvent()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/16 v9, 0x8

    const/16 v6, 0x3e7

    const/4 v8, 0x0

    .line 1252
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$600()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 1328
    :cond_0
    :goto_0
    return-void

    .line 1255
    :cond_1
    const/4 v2, 0x0

    .line 1256
    .local v2, "nCallCount":I
    const/4 v3, 0x0

    .line 1257
    .local v3, "nMsgCount":I
    const/4 v0, 0x0

    .line 1258
    .local v0, "bUpdatedCallCount":Z
    const/4 v1, 0x0

    .line 1260
    .local v1, "bUpdatedMsgCount":Z
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 1263
    sget-object v4, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent$NotiMode;->MissedCall:Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent$NotiMode;

    invoke-direct {p0, v4}, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->getNumMissedEvent(Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent$NotiMode;)I

    move-result v2

    .line 1264
    if-le v2, v6, :cond_5

    .line 1265
    iput v6, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallCount:I

    .line 1270
    :goto_1
    sget-object v4, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent$NotiMode;->MissedMsg:Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent$NotiMode;

    invoke-direct {p0, v4}, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->getNumMissedEvent(Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent$NotiMode;)I

    move-result v3

    .line 1271
    if-le v3, v6, :cond_6

    .line 1272
    iput v6, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgCount:I

    .line 1277
    :goto_2
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$100()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1278
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateMissedEvent(missed Call Count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", bUpdatedCallCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    :cond_2
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$100()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1283
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateMissedEvent(Unread Msg Count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", bUpdatedMsgCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    :cond_3
    iget v4, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallCount:I

    if-nez v4, :cond_7

    .line 1288
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1302
    :goto_3
    iget v4, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgCount:I

    if-nez v4, :cond_a

    .line 1303
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1317
    :goto_4
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedEventDivider:Landroid/widget/ImageView;

    if-eqz v4, :cond_4

    .line 1318
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_d

    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_d

    .line 1320
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedEventDivider:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1326
    :cond_4
    :goto_5
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->getCallMsgTTSMessage()V

    goto/16 :goto_0

    .line 1267
    :cond_5
    iput v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallCount:I

    goto/16 :goto_1

    .line 1274
    :cond_6
    iput v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgCount:I

    goto/16 :goto_2

    .line 1290
    :cond_7
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1291
    iget-boolean v4, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mIsAllowedSensitiveContent:Z

    if-nez v4, :cond_8

    .line 1292
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallTextView:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1294
    :cond_8
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->isRTL()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1295
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallTextView:Landroid/widget/TextView;

    const-string v5, "%d"

    new-array v6, v10, [Ljava/lang/Object;

    iget v7, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1297
    :cond_9
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallTextView:Landroid/widget/TextView;

    iget v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallCount:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1305
    :cond_a
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1306
    iget-boolean v4, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mIsAllowedSensitiveContent:Z

    if-nez v4, :cond_b

    .line 1307
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgTextView:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 1309
    :cond_b
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->isRTL()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1310
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgTextView:Landroid/widget/TextView;

    const-string v5, "%d"

    new-array v6, v10, [Ljava/lang/Object;

    iget v7, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 1312
    :cond_c
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgTextView:Landroid/widget/TextView;

    iget v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgCount:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 1322
    :cond_d
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedEventDivider:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5
.end method
