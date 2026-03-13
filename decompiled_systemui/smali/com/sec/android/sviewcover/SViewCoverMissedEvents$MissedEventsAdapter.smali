.class Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;
.super Landroid/widget/BaseAdapter;
.source "SViewCoverMissedEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/sviewcover/SViewCoverMissedEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MissedEventsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;
    }
.end annotation


# instance fields
.field private mCallbacks:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsCallbacks;

.field private mCurrentUserContext:Landroid/content/Context;

.field private mIcons:[I

.field private mIsPreview:Z

.field private mIsPreviewArray:[Z

.field private mMissedEventComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mMissedEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;


# direct methods
.method public constructor <init>(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 408
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    .line 409
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 381
    new-array v0, v4, [I

    sget v1, Lcom/sec/android/sviewcover/R$drawable;->noti_list_ic_message:I

    aput v1, v0, v3

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/sviewcover/R$drawable;->noti_list_ic_missed_call:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mIcons:[I

    .line 386
    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mCallbacks:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsCallbacks;

    .line 388
    new-instance v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$1;

    invoke-direct {v0, p0}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$1;-><init>(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;)V

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mMissedEventComparator:Ljava/util/Comparator;

    .line 397
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mMissedEvents:Ljava/util/ArrayList;

    .line 399
    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mCurrentUserContext:Landroid/content/Context;

    .line 403
    iput-boolean v3, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mIsPreview:Z

    .line 404
    new-array v0, v4, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mIsPreviewArray:[Z

    .line 416
    new-instance v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$2;-><init>(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mUpdateHandler:Landroid/os/Handler;

    .line 410
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p1, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mIntentFilter:Landroid/content/IntentFilter;

    .line 411
    iget-object v0, p1, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 412
    iget-object v0, p1, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 413
    iget-object v0, p1, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 414
    return-void

    .line 404
    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method static synthetic access$100(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    .prologue
    .line 363
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mUpdateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 363
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mMissedEvents:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;Ljava/util/ArrayList;I)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # I

    .prologue
    .line 363
    invoke-direct {p0, p1, p2}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getMissedEventCount(Ljava/util/ArrayList;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;)Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    .prologue
    .line 363
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mCallbacks:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsCallbacks;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    .prologue
    .line 363
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getCurrentUserContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 363
    invoke-direct {p0, p1}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getContactPhotoUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 363
    invoke-direct {p0, p1}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getContactId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 363
    invoke-direct {p0, p1, p2}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getContactNameByIds(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    .prologue
    .line 363
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mIsPreviewArray:[Z

    return-object v0
.end method

.method static synthetic access$3000(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;Landroid/content/Context;JLcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;)I
    .locals 2
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # J
    .param p4, "x3"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;

    .prologue
    .line 363
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getLastestMessageInfoForMultisim(Landroid/content/Context;JLcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 363
    invoke-direct {p0, p1, p2}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getContactPhotoUriByIds(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;Landroid/content/Context;)J
    .locals 2
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 363
    invoke-direct {p0, p1}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getLastNewMessageDate(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$3300(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;Landroid/content/Context;I)J
    .locals 2
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # I

    .prologue
    .line 363
    invoke-direct {p0, p1, p2}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getLastNewMessageDate(Landroid/content/Context;I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$3400(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;Landroid/content/Context;JLcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;)Z
    .locals 2
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # J
    .param p4, "x3"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;

    .prologue
    .line 363
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getLastestMessageInfo(Landroid/content/Context;JLcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;)Ljava/util/Comparator;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    .prologue
    .line 363
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mMissedEventComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 363
    iput-boolean p1, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mIsPreview:Z

    return p1
.end method

.method static synthetic access$602(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 363
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mCurrentUserContext:Landroid/content/Context;

    return-object p1
.end method

.method private findBestMatch(Landroid/database/Cursor;Ljava/lang/String;)Z
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2039
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2049
    :goto_0
    return v0

    .line 2044
    :cond_0
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 2045
    goto :goto_0

    .line 2047
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0
.end method

.method private formatDate(J)Ljava/lang/String;
    .locals 5
    .param p1, "milis"    # J

    .prologue
    .line 1648
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1649
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1651
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getCurrentUserContext()Landroid/content/Context;

    move-result-object v1

    .line 1653
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 1656
    .local v2, "time":Ljava/lang/String;
    return-object v2
.end method

.method private getAddressString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "phone_original"    # Ljava/lang/String;

    .prologue
    .line 1824
    const-string v0, ""

    .line 1825
    .local v0, "recipient":Ljava/lang/String;
    const-string v1, "CBmessages"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1826
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-virtual {v1}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sec/android/sviewcover/R$string;->cb_msg_header:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1844
    :cond_0
    :goto_0
    return-object v0

    .line 1827
    :cond_1
    const-string v1, "Pushmessage"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1828
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-virtual {v1}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sec/android/sviewcover/R$string;->push_message_sender:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1830
    :cond_2
    const-string v1, "#CMAS#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "#Emergency Alert#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1832
    :cond_3
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-virtual {v1}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getCmasServiceCategoryStringId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1835
    :cond_4
    invoke-virtual {p0, p1}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->isEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1836
    invoke-direct {p0, p1}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getContactInfoForEmailAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1840
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1841
    move-object v0, p1

    goto :goto_0

    .line 1838
    :cond_5
    invoke-direct {p0, p1}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getContactInfoForPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private getContactId(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/16 v13, 0x3b

    const/4 v5, 0x4

    const/4 v2, 0x0

    .line 642
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 644
    const/4 v6, 0x0

    .line 649
    .local v6, "contactId":Ljava/lang/String;
    invoke-virtual {p1, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_0

    .line 650
    invoke-virtual {p1, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 655
    :cond_0
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 656
    .local v11, "normalizedNumber":Ljava/lang/String;
    invoke-static {v11}, Landroid/telephony/PhoneNumberUtils;->toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 658
    .local v10, "minMatch":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 659
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 664
    .local v12, "numberLen":Ljava/lang/String;
    const-string v3, " Data._ID IN  (SELECT DISTINCT lookup.data_id  FROM      (SELECT data_id, normalized_number, length(normalized_number) as len      FROM phone_lookup      WHERE min_match = ?) AS lookup  WHERE  (lookup.len <= ? AND substr(?, ? - lookup.len + 1) = lookup.normalized_number) OR (PHONE_NUMBERS_EQUAL(lookup.normalized_number, ?) ) )"

    .line 665
    .local v3, "selection":Ljava/lang/String;
    const/4 v1, 0x5

    new-array v4, v1, [Ljava/lang/String;

    aput-object v10, v4, v2

    const/4 v1, 0x1

    aput-object v12, v4, v1

    const/4 v1, 0x2

    aput-object v11, v4, v1

    const/4 v1, 0x3

    aput-object v12, v4, v1

    aput-object v11, v4, v5

    .line 669
    .local v4, "args":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 670
    .local v8, "cursor":Landroid/database/Cursor;
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$1100(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$800()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 674
    .local v0, "resolver":Landroid/content/ContentProviderClient;
    if-eqz v0, :cond_1

    .line 675
    :try_start_0
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$800()Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$1000()[Ljava/lang/String;

    move-result-object v2

    const-string v5, "is_sim"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 682
    :cond_1
    :goto_0
    if-nez v8, :cond_3

    .line 683
    if-eqz v0, :cond_2

    .line 684
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    :cond_2
    move-object v7, v6

    .line 699
    .end local v0    # "resolver":Landroid/content/ContentProviderClient;
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "args":[Ljava/lang/String;
    .end local v6    # "contactId":Ljava/lang/String;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v12    # "numberLen":Ljava/lang/String;
    .local v7, "contactId":Ljava/lang/String;
    :goto_1
    return-object v7

    .line 678
    .end local v7    # "contactId":Ljava/lang/String;
    .restart local v0    # "resolver":Landroid/content/ContentProviderClient;
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v4    # "args":[Ljava/lang/String;
    .restart local v6    # "contactId":Ljava/lang/String;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v12    # "numberLen":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 679
    .local v9, "e":Landroid/os/RemoteException;
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 689
    .end local v9    # "e":Landroid/os/RemoteException;
    :cond_3
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 690
    const/4 v1, 0x4

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .line 692
    :cond_4
    if-eqz v8, :cond_5

    .line 693
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 695
    :cond_5
    if-eqz v0, :cond_6

    .line 696
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .end local v0    # "resolver":Landroid/content/ContentProviderClient;
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "args":[Ljava/lang/String;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v12    # "numberLen":Ljava/lang/String;
    :cond_6
    move-object v7, v6

    .line 699
    .end local v6    # "contactId":Ljava/lang/String;
    .restart local v7    # "contactId":Ljava/lang/String;
    goto :goto_1

    .line 692
    .end local v7    # "contactId":Ljava/lang/String;
    .restart local v0    # "resolver":Landroid/content/ContentProviderClient;
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v4    # "args":[Ljava/lang/String;
    .restart local v6    # "contactId":Ljava/lang/String;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v12    # "numberLen":Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_7

    .line 693
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 695
    :cond_7
    if-eqz v0, :cond_8

    .line 696
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    :cond_8
    throw v1
.end method

.method private getContactInfoForEmailAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 2010
    const-string v0, "SViewCoverMissedEvents"

    const-string v1, "getContactInfoForEmailAddress"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2012
    const/4 v8, 0x0

    .line 2014
    .local v8, "mEmailName":Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$5300(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$5400(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$5500()Landroid/net/Uri;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$5600()[Ljava/lang/String;

    move-result-object v3

    const-string v4, "UPPER(data1)=UPPER(?) AND mimetype=\'vnd.android.cursor.item/email_v2\'"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    aput-object p1, v5, v6

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2020
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_3

    .line 2022
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2023
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2024
    .local v9, "name":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2025
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2027
    :cond_1
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 2028
    move-object v8, v9

    goto :goto_0

    .line 2032
    .end local v9    # "name":Ljava/lang/String;
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2035
    :cond_3
    return-object v8

    .line 2032
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getContactInfoForPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/16 v13, 0x3b

    const/4 v5, 0x3

    const/4 v2, 0x0

    .line 1948
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1950
    const/4 v8, 0x0

    .line 1955
    .local v8, "mName":Ljava/lang/String;
    invoke-virtual {p1, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_0

    .line 1956
    invoke-virtual {p1, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1961
    :cond_0
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1962
    .local v11, "normalizedNumber":Ljava/lang/String;
    invoke-static {v11}, Landroid/telephony/PhoneNumberUtils;->toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1964
    .local v10, "minMatch":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1965
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 1970
    .local v12, "numberLen":Ljava/lang/String;
    const-string v3, " Data._ID IN  (SELECT DISTINCT lookup.data_id  FROM      (SELECT data_id, normalized_number, length(normalized_number) as len      FROM phone_lookup      WHERE min_match = ?) AS lookup  WHERE  (lookup.len <= ? AND substr(?, ? - lookup.len + 1) = lookup.normalized_number) OR (PHONE_NUMBERS_EQUAL(lookup.normalized_number, ?) ) )"

    .line 1971
    .local v3, "selection":Ljava/lang/String;
    const/4 v1, 0x5

    new-array v4, v1, [Ljava/lang/String;

    aput-object v10, v4, v2

    const/4 v1, 0x1

    aput-object v12, v4, v1

    const/4 v1, 0x2

    aput-object v11, v4, v1

    aput-object v12, v4, v5

    const/4 v1, 0x4

    aput-object v11, v4, v1

    .line 1975
    .local v4, "args":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 1976
    .local v6, "cursor":Landroid/database/Cursor;
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$5200(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$800()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 1980
    .local v0, "resolver":Landroid/content/ContentProviderClient;
    if-eqz v0, :cond_1

    .line 1981
    :try_start_0
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$800()Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$1000()[Ljava/lang/String;

    move-result-object v2

    const-string v5, "is_sim"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1988
    :cond_1
    :goto_0
    if-nez v6, :cond_3

    .line 1989
    if-eqz v0, :cond_2

    .line 1990
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    :cond_2
    move-object v9, v8

    .line 2006
    .end local v0    # "resolver":Landroid/content/ContentProviderClient;
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "args":[Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v8    # "mName":Ljava/lang/String;
    .end local v12    # "numberLen":Ljava/lang/String;
    .local v9, "mName":Ljava/lang/String;
    :goto_1
    return-object v9

    .line 1984
    .end local v9    # "mName":Ljava/lang/String;
    .restart local v0    # "resolver":Landroid/content/ContentProviderClient;
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v4    # "args":[Ljava/lang/String;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "mName":Ljava/lang/String;
    .restart local v12    # "numberLen":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 1985
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1995
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_3
    :try_start_1
    invoke-direct {p0, v6, p1}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->findBestMatch(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1996
    const/4 v1, 0x3

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getEmptyIfNull(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .line 1999
    :cond_4
    if-eqz v6, :cond_5

    .line 2000
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2002
    :cond_5
    if-eqz v0, :cond_6

    .line 2003
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .end local v0    # "resolver":Landroid/content/ContentProviderClient;
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "args":[Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v12    # "numberLen":Ljava/lang/String;
    :cond_6
    move-object v9, v8

    .line 2006
    .end local v8    # "mName":Ljava/lang/String;
    .restart local v9    # "mName":Ljava/lang/String;
    goto :goto_1

    .line 1999
    .end local v9    # "mName":Ljava/lang/String;
    .restart local v0    # "resolver":Landroid/content/ContentProviderClient;
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v4    # "args":[Ljava/lang/String;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "mName":Ljava/lang/String;
    .restart local v12    # "numberLen":Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_7

    .line 2000
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2002
    :cond_7
    if-eqz v0, :cond_8

    .line 2003
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    :cond_8
    throw v1
.end method

.method private getContactNameById(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 496
    const/4 v8, 0x0

    .line 497
    .local v8, "name":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 498
    .local v3, "where":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "address"

    aput-object v1, v2, v0

    .line 501
    .local v2, "proj":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 502
    .local v6, "c":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 504
    .local v9, "phone_original":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://mms-sms/canonical-addresses"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 507
    if-nez v6, :cond_1

    .line 520
    if-eqz v6, :cond_0

    .line 521
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v0, v10

    .line 530
    :goto_0
    return-object v0

    .line 510
    :cond_1
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 511
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 520
    if-eqz v6, :cond_2

    .line 521
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v10

    goto :goto_0

    .line 515
    :cond_3
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 516
    const-string v0, "address"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v9

    .line 520
    if-eqz v6, :cond_4

    .line 521
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 524
    :cond_4
    :goto_1
    if-nez v9, :cond_6

    move-object v0, v10

    .line 525
    goto :goto_0

    .line 517
    :catch_0
    move-exception v7

    .line 518
    .local v7, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v0, "SViewCoverMissedEvents"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getContactNameById error :"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 520
    if-eqz v6, :cond_4

    .line 521
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 520
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 521
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 528
    :cond_6
    invoke-direct {p0, v9}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getAddressString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v0, v8

    .line 530
    goto :goto_0
.end method

.method private getContactNameByIds(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ids"    # Ljava/lang/String;

    .prologue
    .line 487
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 488
    .local v1, "b":Ljava/lang/StringBuilder;
    const-string v5, " "

    invoke-virtual {p2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 489
    .local v4, "s":Ljava/lang/String;
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    invoke-direct {p0, p1, v4}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getContactNameById(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 492
    .end local v4    # "s":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private getContactPhotoUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x3b

    const/4 v2, 0x0

    .line 581
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 583
    const/4 v11, 0x0

    .line 588
    .local v11, "photoUri":Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_0

    .line 589
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 594
    :cond_0
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 595
    .local v9, "normalizedNumber":Ljava/lang/String;
    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 597
    .local v8, "minMatch":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 598
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 603
    .local v10, "numberLen":Ljava/lang/String;
    const-string v3, " Data._ID IN  (SELECT DISTINCT lookup.data_id  FROM      (SELECT data_id, normalized_number, length(normalized_number) as len      FROM phone_lookup      WHERE min_match = ?) AS lookup  WHERE  (lookup.len <= ? AND substr(?, ? - lookup.len + 1) = lookup.normalized_number) OR (PHONE_NUMBERS_EQUAL(lookup.normalized_number, ?) ) )"

    .line 604
    .local v3, "selection":Ljava/lang/String;
    const/4 v1, 0x5

    new-array v4, v1, [Ljava/lang/String;

    aput-object v8, v4, v2

    const/4 v1, 0x1

    aput-object v10, v4, v1

    const/4 v1, 0x2

    aput-object v9, v4, v1

    const/4 v1, 0x3

    aput-object v10, v4, v1

    const/4 v1, 0x4

    aput-object v9, v4, v1

    .line 608
    .local v4, "args":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 609
    .local v6, "cursor":Landroid/database/Cursor;
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$900(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$800()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 613
    .local v0, "resolver":Landroid/content/ContentProviderClient;
    if-eqz v0, :cond_1

    .line 614
    :try_start_0
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$800()Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$1000()[Ljava/lang/String;

    move-result-object v2

    const-string v5, "is_sim"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 621
    :cond_1
    :goto_0
    if-nez v6, :cond_3

    .line 622
    if-eqz v0, :cond_2

    .line 623
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    :cond_2
    move-object v12, v11

    .line 638
    .end local v0    # "resolver":Landroid/content/ContentProviderClient;
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "args":[Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v10    # "numberLen":Ljava/lang/String;
    .end local v11    # "photoUri":Ljava/lang/String;
    .local v12, "photoUri":Ljava/lang/String;
    :goto_1
    return-object v12

    .line 617
    .end local v12    # "photoUri":Ljava/lang/String;
    .restart local v0    # "resolver":Landroid/content/ContentProviderClient;
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v4    # "args":[Ljava/lang/String;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "numberLen":Ljava/lang/String;
    .restart local v11    # "photoUri":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 618
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 628
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_3
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 629
    const/16 v1, 0xa

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v11

    .line 631
    :cond_4
    if-eqz v6, :cond_5

    .line 632
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 634
    :cond_5
    if-eqz v0, :cond_6

    .line 635
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .end local v0    # "resolver":Landroid/content/ContentProviderClient;
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "args":[Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v10    # "numberLen":Ljava/lang/String;
    :cond_6
    move-object v12, v11

    .line 638
    .end local v11    # "photoUri":Ljava/lang/String;
    .restart local v12    # "photoUri":Ljava/lang/String;
    goto :goto_1

    .line 631
    .end local v12    # "photoUri":Ljava/lang/String;
    .restart local v0    # "resolver":Landroid/content/ContentProviderClient;
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v4    # "args":[Ljava/lang/String;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "numberLen":Ljava/lang/String;
    .restart local v11    # "photoUri":Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_7

    .line 632
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 634
    :cond_7
    if-eqz v0, :cond_8

    .line 635
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    :cond_8
    throw v1
.end method

.method private getContactPhotoUriById(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 543
    const/4 v9, 0x0

    .line 544
    .local v9, "photoUri":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 545
    .local v3, "where":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "address"

    aput-object v1, v2, v0

    .line 548
    .local v2, "proj":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 549
    .local v6, "c":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 551
    .local v8, "phone_original":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://mms-sms/canonical-addresses"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 554
    if-nez v6, :cond_1

    .line 567
    if-eqz v6, :cond_0

    .line 568
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v0, v10

    .line 577
    :goto_0
    return-object v0

    .line 557
    :cond_1
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 558
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 567
    if-eqz v6, :cond_2

    .line 568
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v10

    goto :goto_0

    .line 562
    :cond_3
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 563
    const-string v0, "address"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v8

    .line 567
    if-eqz v6, :cond_4

    .line 568
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 571
    :cond_4
    :goto_1
    if-nez v8, :cond_6

    move-object v0, v10

    .line 572
    goto :goto_0

    .line 564
    :catch_0
    move-exception v7

    .line 565
    .local v7, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v0, "SViewCoverMissedEvents"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getContactNameById error :"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 567
    if-eqz v6, :cond_4

    .line 568
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 567
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 568
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 575
    :cond_6
    invoke-direct {p0, v8}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getContactPhotoUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v0, v9

    .line 577
    goto :goto_0
.end method

.method private getContactPhotoUriByIds(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ids"    # Ljava/lang/String;

    .prologue
    .line 534
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 535
    .local v1, "b":Ljava/lang/StringBuilder;
    const-string v5, " "

    invoke-virtual {p2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 536
    .local v4, "s":Ljava/lang/String;
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    invoke-direct {p0, p1, v4}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getContactPhotoUriById(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 539
    .end local v4    # "s":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private getCurrentUserContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1660
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mCurrentUserContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mCurrentUserContext:Landroid/content/Context;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$5100(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method

.method private getDefaultImage(J)I
    .locals 5
    .param p1, "contactId"    # J

    .prologue
    .line 703
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$1200(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)[I

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$1200(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)[I

    move-result-object v1

    array-length v1, v1

    int-to-long v2, v1

    rem-long v2, p1, v2

    long-to-int v1, v2

    aget v0, v0, v1

    return v0
.end method

.method private getLastNewMessageDate(Landroid/content/Context;)J
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1776
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "transport_type"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "normalized_date"

    aput-object v3, v2, v0

    .line 1780
    .local v2, "projection":[Ljava/lang/String;
    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "complete-conversations"

    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1781
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "read=0"

    const/4 v4, 0x0

    const-string v5, "normalized_date DESC LIMIT 1"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1784
    .local v6, "c":Landroid/database/Cursor;
    const-wide/16 v8, 0x0

    .line 1785
    .local v8, "date":J
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1786
    const-string v0, "transport_type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1788
    .local v7, "transportType":Ljava/lang/String;
    const-string v0, "normalized_date"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1791
    .end local v7    # "transportType":Ljava/lang/String;
    :cond_0
    if-eqz v6, :cond_1

    .line 1792
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1793
    const/4 v6, 0x0

    .line 1796
    :cond_1
    return-wide v8
.end method

.method private getLastNewMessageDate(Landroid/content/Context;I)J
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "simSlot"    # I

    .prologue
    .line 1800
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "transport_type"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "normalized_date"

    aput-object v3, v2, v0

    .line 1804
    .local v2, "projection":[Ljava/lang/String;
    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "complete-conversations"

    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1807
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "read=0"

    const/4 v4, 0x0

    const-string v5, "normalized_date DESC LIMIT 1"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1810
    .local v6, "c":Landroid/database/Cursor;
    const-wide/16 v8, 0x0

    .line 1811
    .local v8, "date":J
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1812
    const-string v0, "normalized_date"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1815
    :cond_0
    if-eqz v6, :cond_1

    .line 1816
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1817
    const/4 v6, 0x0

    .line 1820
    :cond_1
    return-wide v8
.end method

.method private getLastestMessageInfo(Landroid/content/Context;JLcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;)Z
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "threadId"    # J
    .param p4, "e"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;

    .prologue
    .line 1670
    const-string v2, "SViewCoverMissedEvents"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getLastestMessageInfo threadId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    const/16 v2, 0x8

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "transport_type"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "body"

    aput-object v5, v4, v2

    const/4 v2, 0x2

    const-string v5, "date"

    aput-object v5, v4, v2

    const/4 v2, 0x3

    const-string v5, "sub"

    aput-object v5, v4, v2

    const/4 v2, 0x4

    const-string v5, "sub_cs"

    aput-object v5, v4, v2

    const/4 v2, 0x5

    const-string v5, "date"

    aput-object v5, v4, v2

    const/4 v2, 0x6

    const-string v5, "text"

    aput-object v5, v4, v2

    const/4 v2, 0x7

    const-string v5, "file_name"

    aput-object v5, v4, v2

    .line 1677
    .local v4, "projection":[Ljava/lang/String;
    const-string v2, "content://mms-sms/unread-messages/first-text"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v5, "integrated"

    const-string v6, "true"

    invoke-virtual {v2, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 1680
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "thread_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND read=0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "normalized_date DESC LIMIT 1"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1684
    .local v9, "c":Landroid/database/Cursor;
    if-nez v9, :cond_0

    .line 1685
    const-string v2, "SViewCoverMissedEvents"

    const-string v5, "cursor is null"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    const/4 v2, 0x0

    .line 1732
    :goto_0
    return v2

    .line 1689
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 1690
    const-string v2, "SViewCoverMissedEvents"

    const-string v5, "cursor count is 0. return false"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1692
    const/4 v9, 0x0

    .line 1693
    const/4 v2, 0x0

    goto :goto_0

    .line 1696
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1697
    const-string v2, "transport_type"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1699
    .local v12, "transportType":Ljava/lang/String;
    const-string v2, "mms"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1701
    const-string v2, "sub_cs"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 1702
    .local v10, "sub_cs":I
    const-string v2, "sub"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1703
    .local v11, "subject":Ljava/lang/String;
    if-eqz v10, :cond_2

    .line 1704
    if-eqz v11, :cond_2

    .line 1705
    new-instance v13, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-static {v11}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v13, v10, v2}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .line 1707
    .local v13, "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual {v13}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v11

    .line 1710
    .end local v13    # "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_2
    const-string v2, "text"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1712
    .local v8, "body":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1713
    if-nez v8, :cond_3

    .line 1714
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "> "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p4

    iput-object v2, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->content:Ljava/lang/String;

    .line 1722
    :goto_1
    const-string v2, "date"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-wide/16 v14, 0x3e8

    mul-long/2addr v6, v14

    move-object/from16 v0, p4

    iput-wide v6, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->time:J

    .line 1731
    .end local v8    # "body":Ljava/lang/String;
    .end local v10    # "sub_cs":I
    .end local v11    # "subject":Ljava/lang/String;
    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1732
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1716
    .restart local v8    # "body":Ljava/lang/String;
    .restart local v10    # "sub_cs":I
    .restart local v11    # "subject":Ljava/lang/String;
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "> "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p4

    iput-object v2, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->content:Ljava/lang/String;

    goto :goto_1

    .line 1719
    :cond_4
    move-object/from16 v0, p4

    iput-object v8, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->content:Ljava/lang/String;

    goto :goto_1

    .line 1723
    .end local v8    # "body":Ljava/lang/String;
    .end local v10    # "sub_cs":I
    .end local v11    # "subject":Ljava/lang/String;
    :cond_5
    const-string v2, "ft"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1724
    const-string v2, "file_name"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p4

    iput-object v2, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->content:Ljava/lang/String;

    .line 1725
    const-string v2, "date"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-object/from16 v0, p4

    iput-wide v6, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->time:J

    goto :goto_2

    .line 1727
    :cond_6
    const-string v2, "body"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p4

    iput-object v2, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->content:Ljava/lang/String;

    .line 1728
    const-string v2, "date"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-object/from16 v0, p4

    iput-wide v6, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->time:J

    goto :goto_2
.end method

.method private getLastestMessageInfoForMultisim(Landroid/content/Context;JLcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "threadId"    # J
    .param p4, "e"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;

    .prologue
    .line 1738
    const-string v1, "SViewCoverMissedEvents"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLastestMessageInfoForMultisim threadId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1739
    const/4 v0, -0x1

    .line 1772
    .local v0, "slotId":I
    return v0
.end method

.method private getMissedEventCount(Ljava/util/ArrayList;I)I
    .locals 4
    .param p2, "typeEvent"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 1379
    .local p1, "missedEventTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;>;"
    const/4 v0, 0x0

    .line 1381
    .local v0, "count":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;

    .line 1382
    .local v1, "event":Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;
    iget v3, v1, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->type:I

    if-ne v3, p2, :cond_0

    .line 1383
    iget v3, v1, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->unreadCount:I

    add-int/2addr v0, v3

    goto :goto_0

    .line 1387
    .end local v1    # "event":Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;
    :cond_1
    return v0
.end method

.method private showSecurePopup(I)V
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 1495
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$1500(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Lcom/sec/android/sviewcover/SViewCoverView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1508
    :goto_0
    return-void

    .line 1499
    :cond_0
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$1500(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Lcom/sec/android/sviewcover/SViewCoverView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/sviewcover/SViewCoverView;->setMissedEventSecurePopup(I)V

    .line 1500
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$1500(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Lcom/sec/android/sviewcover/SViewCoverView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/sviewcover/SViewCoverView;->setMissedEventPopupText(I)V

    .line 1501
    new-instance v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$7;

    invoke-direct {v0, p0}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$7;-><init>(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;)V

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mSecurePopupRunnable:Ljava/lang/Runnable;

    .line 1507
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mSecurePopupHandler:Landroid/os/Handler;

    sget-object v1, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mSecurePopupRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public buildObserver()V
    .locals 4

    .prologue
    .line 430
    const-string v0, "SViewCoverMissedEvents"

    const-string v1, "buildObserver()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    new-instance v1, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$3;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$3;-><init>(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;Landroid/os/Handler;)V

    iput-object v1, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mMissedEventObserver:Landroid/database/ContentObserver;

    .line 445
    return-void
.end method

.method public buildReceiver()V
    .locals 2

    .prologue
    .line 448
    const-string v0, "SViewCoverMissedEvents"

    const-string v1, "buildReceiver()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    new-instance v1, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$4;

    invoke-direct {v1, p0}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$4;-><init>(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;)V

    iput-object v1, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 484
    return-void
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "numberOrEmail"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 2053
    invoke-static {p1, p2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2054
    const/4 v0, 0x1

    .line 2056
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCMASProvider()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 1894
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    .line 1895
    .local v1, "cscFeature":Lcom/sec/android/app/CscFeature;
    const-string v2, "CscFeature_Message_CMASOperator"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1897
    .local v0, "CMASprovider":Ljava/lang/String;
    const-string v2, "us-vzw"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1898
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    const/4 v3, 0x3

    iput v3, v2, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mCmasProvider:I

    .line 1926
    :goto_0
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    iget v2, v2, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mCmasProvider:I

    return v2

    .line 1899
    :cond_0
    const-string v2, "us-usc"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1900
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    const/4 v3, 0x5

    iput v3, v2, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mCmasProvider:I

    goto :goto_0

    .line 1901
    :cond_1
    const-string v2, "us-spr"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1902
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    const/4 v3, 0x4

    iput v3, v2, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mCmasProvider:I

    goto :goto_0

    .line 1903
    :cond_2
    const-string v2, "us-att-lte"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1904
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    iput v3, v2, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mCmasProvider:I

    goto :goto_0

    .line 1905
    :cond_3
    const-string v2, "us-att-3g"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1906
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    iput v3, v2, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mCmasProvider:I

    goto :goto_0

    .line 1907
    :cond_4
    const-string v2, "us-att"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1908
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    iput v3, v2, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mCmasProvider:I

    goto :goto_0

    .line 1909
    :cond_5
    const-string v2, "us-tmo"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1910
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    const/4 v3, 0x1

    iput v3, v2, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mCmasProvider:I

    goto :goto_0

    .line 1911
    :cond_6
    const-string v2, "la-cho"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1912
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    const/4 v3, 0x6

    iput v3, v2, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mCmasProvider:I

    goto :goto_0

    .line 1913
    :cond_7
    const-string v2, "la-tfg"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1914
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    const/4 v3, 0x7

    iput v3, v2, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mCmasProvider:I

    goto :goto_0

    .line 1915
    :cond_8
    const-string v2, "skt"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1916
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    const/16 v3, 0x8

    iput v3, v2, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mCmasProvider:I

    goto :goto_0

    .line 1917
    :cond_9
    const-string v2, "kt"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1918
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    const/16 v3, 0x9

    iput v3, v2, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mCmasProvider:I

    goto/16 :goto_0

    .line 1919
    :cond_a
    const-string v2, "lgu"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1920
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    const/16 v3, 0xa

    iput v3, v2, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mCmasProvider:I

    goto/16 :goto_0

    .line 1921
    :cond_b
    const-string v2, "kor_open"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1922
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    const/16 v3, 0xb

    iput v3, v2, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mCmasProvider:I

    goto/16 :goto_0

    .line 1924
    :cond_c
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    const/4 v3, 0x0

    iput v3, v2, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mCmasProvider:I

    goto/16 :goto_0
.end method

.method public getCmasServiceCategoryStringId(Ljava/lang/String;)I
    .locals 6
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x7

    const/4 v4, 0x6

    .line 1848
    const-string v1, "Debug"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCmasServiceCategory() address is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    const/4 v0, 0x0

    .line 1851
    .local v0, "type":I
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getCMASProvider()I

    move-result v1

    if-eq v1, v4, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getCMASProvider()I

    move-result v1

    if-ne v1, v5, :cond_1

    .line 1853
    :cond_0
    sget v0, Lcom/sec/android/sviewcover/R$string;->sae_presidential_alert:I

    .line 1855
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getCMASProvider()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_9

    .line 1856
    const-string v1, "Presidential"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1857
    sget v0, Lcom/sec/android/sviewcover/R$string;->cmas_presidential_alert:I

    .line 1888
    :cond_2
    :goto_0
    const-string v1, "SViewCoverMissedEvents"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCmasServiceCategory() type is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1890
    return v0

    .line 1858
    :cond_3
    const-string v1, "Extreme"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1859
    sget v0, Lcom/sec/android/sviewcover/R$string;->cmas_extreme_alert:I

    goto :goto_0

    .line 1860
    :cond_4
    const-string v1, "Severe"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1861
    sget v0, Lcom/sec/android/sviewcover/R$string;->cmas_severe_alert:I

    goto :goto_0

    .line 1862
    :cond_5
    const-string v1, "Amber"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1863
    sget v0, Lcom/sec/android/sviewcover/R$string;->cmas_amber_alert:I

    goto :goto_0

    .line 1864
    :cond_6
    const-string v1, "CMASALL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "#Emergency Alert#Alerts"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1865
    :cond_7
    sget v0, Lcom/sec/android/sviewcover/R$string;->cmas_emergency_alerts:I

    goto :goto_0

    .line 1866
    :cond_8
    const-string v1, "Test"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1867
    sget v0, Lcom/sec/android/sviewcover/R$string;->cmas_cmas_test_message:I

    goto :goto_0

    .line 1870
    :cond_9
    const-string v1, "Presidential"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1871
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getCMASProvider()I

    move-result v1

    if-eq v1, v4, :cond_a

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getCMASProvider()I

    move-result v1

    if-ne v1, v5, :cond_b

    .line 1873
    :cond_a
    sget v0, Lcom/sec/android/sviewcover/R$string;->sae_presidential_alert:I

    goto :goto_0

    .line 1875
    :cond_b
    sget v0, Lcom/sec/android/sviewcover/R$string;->cmas_presidential_alerts:I

    goto :goto_0

    .line 1876
    :cond_c
    const-string v1, "Extreme"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1877
    sget v0, Lcom/sec/android/sviewcover/R$string;->cmas_extreme_alerts:I

    goto :goto_0

    .line 1878
    :cond_d
    const-string v1, "Severe"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1879
    sget v0, Lcom/sec/android/sviewcover/R$string;->cmas_severe_alerts:I

    goto/16 :goto_0

    .line 1880
    :cond_e
    const-string v1, "Amber"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1881
    sget v0, Lcom/sec/android/sviewcover/R$string;->cmas_amber_alerts:I

    goto/16 :goto_0

    .line 1882
    :cond_f
    const-string v1, "CMASALL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "#Emergency Alert#Alerts"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1883
    :cond_10
    sget v0, Lcom/sec/android/sviewcover/R$string;->cmas_emergency_alerts:I

    goto/16 :goto_0

    .line 1884
    :cond_11
    const-string v1, "Test"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1885
    sget v0, Lcom/sec/android/sviewcover/R$string;->cmas_cmas_test_message:I

    goto/16 :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1392
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mMissedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getEmptyIfNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2060
    if-nez p1, :cond_0

    const-string p1, ""

    .end local p1    # "s":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1397
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mMissedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1402
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPreviewMesagePreference(Landroid/content/Context;)Z
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 707
    const/4 v6, 0x0

    .line 709
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$1300()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "BOOLEAN"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v11, "pref_key_enable_statusbar_preview_message"

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 715
    const/4 v8, 0x0

    .line 716
    .local v8, "result":I
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 717
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 720
    :cond_0
    if-ne v8, v9, :cond_2

    .line 726
    if-eqz v6, :cond_1

    .line 727
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 728
    const/4 v6, 0x0

    :cond_1
    move v0, v9

    .line 731
    .end local v8    # "result":I
    :goto_0
    return v0

    .line 726
    .restart local v8    # "result":I
    :cond_2
    if-eqz v6, :cond_3

    .line 727
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 728
    const/4 v6, 0x0

    .end local v8    # "result":I
    :cond_3
    :goto_1
    move v0, v10

    .line 731
    goto :goto_0

    .line 723
    :catch_0
    move-exception v7

    .line 724
    .local v7, "e":Landroid/database/SQLException;
    :try_start_1
    const-string v0, "SViewCoverMissedEvents"

    const-string v1, "SQLException at getPreviewMesagePreference()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 726
    if-eqz v6, :cond_3

    .line 727
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 728
    const/4 v6, 0x0

    goto :goto_1

    .line 726
    .end local v7    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 727
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 728
    const/4 v6, 0x0

    :cond_4
    throw v0
.end method

.method public getPreviewMessagePreferenceForMultisim(Landroid/content/Context;)[Z
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v11, 0x1

    .line 735
    const/4 v6, 0x0

    .line 736
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x2

    new-array v8, v0, [Z

    fill-array-data v8, :array_0

    .line 740
    .local v8, "isPreview":[Z
    invoke-virtual {p0, p1}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getPreviewMesagePreference(Landroid/content/Context;)Z

    move-result v0

    aput-boolean v0, v8, v1

    .line 742
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$1300()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "BOOLEAN"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v10, "pref_key_enable_statusbar_preview_message_sim2"

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 748
    const/4 v9, 0x0

    .line 749
    .local v9, "result":I
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 750
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 753
    :cond_0
    if-ne v9, v11, :cond_1

    .line 754
    const/4 v0, 0x1

    const/4 v1, 0x1

    aput-boolean v1, v8, v0
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 759
    :cond_1
    if-eqz v6, :cond_2

    .line 760
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 761
    const/4 v6, 0x0

    .line 765
    .end local v9    # "result":I
    :cond_2
    :goto_0
    return-object v8

    .line 756
    :catch_0
    move-exception v7

    .line 757
    .local v7, "e":Landroid/database/SQLException;
    :try_start_1
    const-string v0, "SViewCoverMissedEvents"

    const-string v1, "SQLException at getPreviewMesagePreference2()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 759
    if-eqz v6, :cond_2

    .line 760
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 761
    const/4 v6, 0x0

    goto :goto_0

    .line 759
    .end local v7    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 760
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 761
    const/4 v6, 0x0

    :cond_3
    throw v0

    .line 736
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 21
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1513
    if-nez p2, :cond_0

    .line 1514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$4600(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;

    move-result-object v18

    const-string v19, "layout_inflater"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    .line 1516
    .local v11, "l":Landroid/view/LayoutInflater;
    sget v18, Lcom/sec/android/sviewcover/R$layout;->s_view_cover_missed_event:I

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p3

    move/from16 v2, v19

    invoke-virtual {v11, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1519
    .end local v11    # "l":Landroid/view/LayoutInflater;
    :cond_0
    sget v18, Lcom/sec/android/sviewcover/R$id;->s_view_cover_missed_icon:I

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 1522
    .local v10, "icon":Landroid/widget/ImageView;
    sget v18, Lcom/sec/android/sviewcover/R$id;->s_view_cover_photo_id:I

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 1524
    .local v15, "photoIdImg":Landroid/widget/ImageView;
    sget v18, Lcom/sec/android/sviewcover/R$id;->s_view_cover_missed_name:I

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 1526
    .local v12, "name":Landroid/widget/TextView;
    sget v18, Lcom/sec/android/sviewcover/R$id;->s_view_cover_missed_time:I

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 1528
    .local v17, "time":Landroid/widget/TextView;
    sget v18, Lcom/sec/android/sviewcover/R$id;->s_view_cover_missed_content:I

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1530
    .local v6, "content":Landroid/widget/TextView;
    sget v18, Lcom/sec/android/sviewcover/R$id;->s_view_cover_missed_count:I

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 1533
    .local v7, "count":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mMissedEvents:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;

    .line 1535
    .local v8, "currentEvent":Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$2500(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)I

    move-result v18

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 1538
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v13, v0, [Z

    fill-array-data v13, :array_0

    .line 1541
    .local v13, "pPreviewValue":[Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->isMultiSIMDevice()Z

    move-result v18

    if-eqz v18, :cond_1

    iget v0, v8, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->type:I

    move/from16 v18, v0

    if-nez v18, :cond_1

    .line 1542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$4700(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getPreviewMessagePreferenceForMultisim(Landroid/content/Context;)[Z

    move-result-object v13

    .line 1545
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$1600(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/app/KeyguardManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v18

    if-eqz v18, :cond_5

    .line 1546
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1547
    const/16 v18, 0x4

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1548
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1597
    :cond_2
    :goto_0
    invoke-virtual {v15}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 1598
    .local v16, "photoIdImgDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v16, :cond_3

    .line 1599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    move-object/from16 v18, v0

    check-cast v16, Landroid/graphics/drawable/BitmapDrawable;

    .end local v16    # "photoIdImgDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$5000(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1603
    .end local v13    # "pPreviewValue":[Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mIcons:[I

    move-object/from16 v18, v0

    iget v0, v8, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->type:I

    move/from16 v19, v0

    aget v18, v18, v19

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1604
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverProperties;->isPreviousLook()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 1605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mIcons:[I

    move-object/from16 v18, v0

    iget v0, v8, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->type:I

    move/from16 v19, v0

    aget v18, v18, v19

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1607
    :cond_4
    iget-object v0, v8, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1609
    iget-wide v0, v8, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->time:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->formatDate(J)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1610
    iget v0, v8, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->unreadCount:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1611
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$3600(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Z

    move-result v18

    if-nez v18, :cond_d

    .line 1614
    iget v0, v8, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->type:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_c

    .line 1615
    sget v18, Lcom/sec/android/sviewcover/R$string;->s_cover_missedcall_notification_hidden_title:I

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1619
    :goto_1
    sget v18, Lcom/sec/android/sviewcover/R$string;->s_cover_notification_hidden_content:I

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1620
    const/16 v18, 0x4

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1644
    :goto_2
    return-object p2

    .line 1550
    .restart local v13    # "pPreviewValue":[Z
    :cond_5
    iget v0, v8, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->type:I

    move/from16 v18, v0

    if-nez v18, :cond_a

    .line 1551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->isMultiSIMDevice()Z

    move-result v18

    if-nez v18, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$4800(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getPreviewMesagePreference(Landroid/content/Context;)Z

    move-result v18

    if-nez v18, :cond_7

    .line 1552
    const/16 v18, 0x4

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1553
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1566
    :goto_3
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1567
    const/4 v14, 0x0

    .line 1568
    .local v14, "photoId":Landroid/net/Uri;
    const/4 v5, 0x0

    .line 1570
    .local v5, "bmPhoto":Landroid/graphics/Bitmap;
    iget-object v0, v8, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->photoUri:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_6

    .line 1571
    iget-object v0, v8, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->photoUri:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 1575
    :cond_6
    if-eqz v14, :cond_b

    .line 1576
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$4900(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v14}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 1587
    :goto_4
    if-eqz v5, :cond_2

    .line 1588
    invoke-virtual {v15, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1589
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    sget-object v20, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v18 .. v20}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1591
    .local v4, "bmBackground":Landroid/graphics/Bitmap;
    iget-wide v0, v8, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->id:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getDefaultImage(J)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 1592
    new-instance v18, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v4}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$5000(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 1554
    .end local v4    # "bmBackground":Landroid/graphics/Bitmap;
    .end local v5    # "bmPhoto":Landroid/graphics/Bitmap;
    .end local v14    # "photoId":Landroid/net/Uri;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->isMultiSIMDevice()Z

    move-result v18

    if-eqz v18, :cond_9

    iget v0, v8, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->slotId:I

    move/from16 v18, v0

    if-ltz v18, :cond_8

    iget v0, v8, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->slotId:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_8

    iget v0, v8, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->slotId:I

    move/from16 v18, v0

    aget-boolean v18, v13, v18

    if-nez v18, :cond_9

    .line 1555
    :cond_8
    const/16 v18, 0x4

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1556
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 1558
    :cond_9
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1559
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 1562
    :cond_a
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1563
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 1578
    .restart local v5    # "bmPhoto":Landroid/graphics/Bitmap;
    .restart local v14    # "photoId":Landroid/net/Uri;
    :cond_b
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lcom/sec/android/sviewcover/R$drawable;->contacts_default_caller_id_list:I

    invoke-static/range {v18 .. v19}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    goto/16 :goto_4

    .line 1581
    :catch_0
    move-exception v9

    .line 1582
    .local v9, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v9}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_4

    .line 1583
    .end local v9    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v9

    .line 1584
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 1617
    .end local v5    # "bmPhoto":Landroid/graphics/Bitmap;
    .end local v9    # "e":Ljava/io/IOException;
    .end local v13    # "pPreviewValue":[Z
    .end local v14    # "photoId":Landroid/net/Uri;
    :cond_c
    sget v18, Lcom/sec/android/sviewcover/R$string;->s_cover_message_notification_hidden_title:I

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 1622
    :cond_d
    iget v0, v8, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->type:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_11

    .line 1623
    iget-object v0, v8, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->number:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    sget v20, Lcom/sec/android/sviewcover/R$string;->unknown:I

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_e

    iget-object v0, v8, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->number:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    sget v20, Lcom/sec/android/sviewcover/R$string;->private_num:I

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_e

    iget-object v0, v8, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->number:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    sget v20, Lcom/sec/android/sviewcover/R$string;->payphone:I

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 1628
    :cond_e
    const-string v18, "MISSED"

    const-string v19, "content\'s gone"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    iget-object v0, v8, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->number:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1630
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 1632
    :cond_f
    iget-object v0, v8, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v8, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->number:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->isKoreaFeature()Z

    move-result v18

    if-nez v18, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$1600(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/app/KeyguardManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v18

    if-nez v18, :cond_10

    .line 1634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lcom/sec/android/sviewcover/R$string;->unsaved:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1637
    :cond_10
    iget-object v0, v8, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->number:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1641
    :cond_11
    iget-object v0, v8, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->content:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1538
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public isEmailAddress(Ljava/lang/String;)Z
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 2064
    if-eqz p1, :cond_0

    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2067
    const/4 v0, 0x0

    .line 2069
    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1931
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    .line 1933
    .local v0, "enable":I
    const/4 v3, 0x2

    if-eq v3, v0, :cond_0

    const/4 v3, 0x3

    if-ne v3, v0, :cond_1

    .line 1935
    :cond_0
    const-string v3, "SViewCoverMissedEvents"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is diabled"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1943
    .end local v0    # "enable":I
    :goto_0
    return v2

    .line 1938
    .restart local v0    # "enable":I
    :cond_1
    const-string v3, "SViewCoverMissedEvents"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is enabled"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1939
    const/4 v2, 0x1

    goto :goto_0

    .line 1941
    .end local v0    # "enable":I
    :catch_0
    move-exception v1

    .line 1942
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    const-string v3, "SViewCoverMissedEvents"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not installed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isKoreaFeature()Z
    .locals 2

    .prologue
    .line 2073
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2074
    .local v0, "SalesCode":Ljava/lang/String;
    const-string v1, "SKT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SKC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SKO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KTT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KTC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KTO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LGT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LUC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LUO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ANY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KOO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2080
    :cond_0
    const/4 v1, 0x1

    .line 2082
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isTPhoneEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 2087
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$5700(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "skt_phone20_settings"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onItemClick(I)V
    .locals 10
    .param p1, "position"    # I

    .prologue
    const v9, 0x10008000

    const/4 v8, 0x1

    .line 1406
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mMissedEvents:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;

    .line 1407
    .local v0, "currentEvent":Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;
    if-eqz v0, :cond_0

    .line 1408
    const-string v4, "SViewCoverMissedEvents"

    const-string v5, "onClicked"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v4}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$1600(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/app/KeyguardManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v4}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$1600(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/app/KeyguardManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1412
    const-string v4, "SViewCoverMissedEvents"

    const-string v5, "onClicked - isKeyguardSecure"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->showSecurePopup(I)V

    .line 1492
    :cond_0
    :goto_0
    return-void

    .line 1415
    :cond_1
    iget v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->type:I

    if-ne v4, v8, :cond_3

    .line 1416
    const-string v4, "SViewCoverMissedEvents"

    const-string v5, "Missed call view was clicked"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    const-string v4, "MISSED"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onClicked, missed call id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->callId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->isTPhoneEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v4}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$3600(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1421
    :cond_2
    invoke-direct {p0, v8}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->showSecurePopup(I)V

    .line 1439
    :cond_3
    :goto_1
    iget v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->type:I

    if-nez v4, :cond_4

    .line 1440
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v4}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$4000(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.android.mms"

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1441
    const-string v4, "SViewCoverMissedEvents"

    const-string v5, "Missed message view was clicked"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v4}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$3600(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 1443
    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->showSecurePopup(I)V

    .line 1479
    :cond_4
    :goto_2
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v4}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$3700(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->type:I

    if-eq v4, v8, :cond_5

    iget v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->type:I

    if-nez v4, :cond_0

    .line 1481
    :cond_5
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v4}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$4300(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/app/Dialog;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v5}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$3800(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1482
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v4}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$4300(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 1483
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    new-instance v5, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$6;

    invoke-direct {v5, p0}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$6;-><init>(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;)V

    invoke-static {v4, v5}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$4402(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 1488
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v4}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$4500(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v5}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$4400(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Ljava/lang/Runnable;

    move-result-object v5

    const-wide/16 v6, 0xbb8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1423
    :cond_6
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.sec.android.app.dialertab.calllog.MISSED_CALL"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1424
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1426
    const-string v4, "EXTRA_CALL_LOG_IDS"

    iget-object v5, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->callId:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1427
    const-string v4, "EXTRA_CALL_LOG_CONTACT"

    iget-object v5, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->name:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1428
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v4}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$3700(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1429
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v4}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$3800(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/widget/TextView;

    move-result-object v4

    sget v5, Lcom/sec/android/sviewcover/R$string;->clearcover_open_to_view_call:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 1432
    :cond_7
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v4}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$3900(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1433
    :catch_0
    move-exception v1

    .line 1434
    .local v1, "exception":Landroid/content/ActivityNotFoundException;
    const-string v4, "SViewCoverMissedEvents"

    const-string v5, "ActivityNotFoundException !!"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1445
    .end local v1    # "exception":Landroid/content/ActivityNotFoundException;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_8
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.mms.cover.MissedMsgActivity"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1446
    .local v3, "newIntent":Landroid/content/Intent;
    invoke-virtual {v3, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1448
    const-string v4, "thread_id"

    iget-wide v6, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->id:J

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1449
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v4}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$3700(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1450
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v4}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$3800(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/widget/TextView;

    move-result-object v4

    sget v5, Lcom/sec/android/sviewcover/R$string;->clearcover_open_to_view_message:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 1453
    :cond_9
    :try_start_1
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v4}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$4100(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1459
    :goto_3
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.samsung.mms.cover.MissedMsgActivity"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1461
    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-virtual {v2, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1463
    const-string v4, "thread_id"

    iget-wide v6, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->id:J

    invoke-virtual {v2, v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1464
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v4}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$3700(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1465
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v4}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$3800(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/widget/TextView;

    move-result-object v4

    sget v5, Lcom/sec/android/sviewcover/R$string;->clearcover_open_to_view_message:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 1468
    :cond_a
    :try_start_2
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v4}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$4200(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 1469
    :catch_1
    move-exception v1

    .line 1470
    .restart local v1    # "exception":Landroid/content/ActivityNotFoundException;
    const-string v4, "SViewCoverMissedEvents"

    const-string v5, "ActivityNotFoundException !!"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1454
    .end local v1    # "exception":Landroid/content/ActivityNotFoundException;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_2
    move-exception v1

    .line 1455
    .restart local v1    # "exception":Landroid/content/ActivityNotFoundException;
    const-string v4, "SViewCoverMissedEvents"

    const-string v5, "ActivityNotFoundException !!"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1475
    .end local v1    # "exception":Landroid/content/ActivityNotFoundException;
    .end local v3    # "newIntent":Landroid/content/Intent;
    :cond_b
    const-string v4, "SViewCoverMissedEvents"

    const-string v5, "Message apk does not exist in this target"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public setCallbacks(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsCallbacks;)V
    .locals 0
    .param p1, "c"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsCallbacks;

    .prologue
    .line 1664
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mCallbacks:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsCallbacks;

    .line 1665
    return-void
.end method

.method public updateMissedEvents()V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 769
    const-string v8, "SViewCoverMissedEvents"

    const-string v9, "updateMissedEvents()"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    const/4 v1, 0x0

    .line 773
    .local v1, "isCoverOpened":Z
    :try_start_0
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverView;->isCoverOpen()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 778
    :goto_0
    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v8}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$1400(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "device_provisioned"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_1

    move v4, v6

    .line 784
    .local v4, "isProvisioned":Z
    :goto_1
    if-nez v1, :cond_0

    if-nez v4, :cond_2

    .line 785
    :cond_0
    const-string v6, "SViewCoverMissedEvents"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isCoverOpened="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isProvisioned="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    :goto_2
    return-void

    .line 774
    .end local v4    # "isProvisioned":Z
    :catch_0
    move-exception v0

    .line 775
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move v4, v7

    .line 778
    goto :goto_1

    .line 789
    .restart local v4    # "isProvisioned":Z
    :cond_2
    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v8}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$1500(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Lcom/sec/android/sviewcover/SViewCoverView;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 790
    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v8}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$1500(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Lcom/sec/android/sviewcover/SViewCoverView;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/sec/android/sviewcover/SViewCoverView;->setMissedEventSecurePopup(I)V

    .line 793
    :cond_3
    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v8}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$1600(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/app/KeyguardManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v3

    .line 794
    .local v3, "isCurrentSecurity":Z
    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    iget-boolean v8, v8, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mIsPreviousSecurity:Z

    if-eq v8, v3, :cond_4

    .line 795
    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    iput-boolean v7, v8, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mUpdated:Z

    .line 796
    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    iput-boolean v3, v8, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mIsPreviousSecurity:Z

    .line 799
    :cond_4
    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-virtual {v8}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->isMultiSIMDevice()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 800
    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v8}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$1700(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getPreviewMessagePreferenceForMultisim(Landroid/content/Context;)[Z

    move-result-object v5

    .line 801
    .local v5, "pPreviewValue":[Z
    aget-boolean v8, v5, v7

    iget-object v9, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mIsPreviewArray:[Z

    aget-boolean v9, v9, v7

    if-ne v8, v9, :cond_5

    aget-boolean v8, v5, v6

    iget-object v9, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mIsPreviewArray:[Z

    aget-boolean v9, v9, v6

    if-eq v8, v9, :cond_6

    .line 803
    :cond_5
    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    iput-boolean v7, v8, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mUpdated:Z

    .line 804
    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mIsPreviewArray:[Z

    aget-boolean v9, v5, v7

    aput-boolean v9, v8, v7

    .line 805
    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mIsPreviewArray:[Z

    aget-boolean v9, v5, v6

    aput-boolean v9, v8, v6

    .line 816
    .end local v5    # "pPreviewValue":[Z
    :cond_6
    :goto_3
    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    iget-boolean v8, v8, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mUpdated:Z

    if-eqz v8, :cond_8

    .line 817
    const-string v6, "SViewCoverMissedEvents"

    const-string v7, "already updated"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 809
    :cond_7
    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v8}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$1800(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getPreviewMesagePreference(Landroid/content/Context;)Z

    move-result v2

    .line 810
    .local v2, "isCurrentPreview":Z
    iget-boolean v8, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mIsPreview:Z

    if-eq v2, v8, :cond_6

    .line 811
    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    iput-boolean v7, v8, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mUpdated:Z

    .line 812
    iput-boolean v2, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mIsPreview:Z

    goto :goto_3

    .line 820
    .end local v2    # "isCurrentPreview":Z
    :cond_8
    const-string v8, "SViewCoverMissedEvents"

    const-string v9, "not yet updated"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    iput-boolean v6, v8, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mUpdated:Z

    .line 823
    new-instance v8, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;

    invoke-direct {v8, p0}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;-><init>(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;)V

    new-array v6, v6, [Ljava/lang/String;

    const-string v9, ""

    aput-object v9, v6, v7

    invoke-virtual {v8, v6}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_2
.end method
