.class public Lcom/sec/android/sviewcover/SViewCoverMissedEvents;
.super Landroid/widget/ListView;
.source "SViewCoverMissedEvents.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/sviewcover/SViewCoverMissedEvents$HideNotificationContentSettingObserver;,
        Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;,
        Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsCallbacks;
    }
.end annotation


# static fields
.field private static final BIG_COVER_MINIMUN_SIZE:F = 300.0f

.field static final CALLER_ID_BG_COLORS_1:I

.field static final CALLER_ID_BG_COLORS_2:I

.field static final CALLER_ID_BG_COLORS_3:I

.field static final CALLER_ID_BG_COLORS_4:I

.field static final CALLER_ID_BG_COLORS_5:I

.field private static final CALLER_ID_PROJECTION:[Ljava/lang/String;

.field private static final CALLER_ID_SELECTION_WITHOUT_E164_PHONEEQUALS:Ljava/lang/String; = " Data._ID IN  (SELECT DISTINCT lookup.data_id  FROM      (SELECT data_id, normalized_number, length(normalized_number) as len      FROM phone_lookup      WHERE min_match = ?) AS lookup  WHERE  (lookup.len <= ? AND substr(?, ? - lookup.len + 1) = lookup.normalized_number) OR (PHONE_NUMBERS_EQUAL(lookup.normalized_number, ?) ) )"

.field public static final CB_MESSAGE_SENDER:Ljava/lang/String; = "CBmessages"

.field public static final CMAS_MESSAGE_SENDER:Ljava/lang/String; = "#CMAS#CMASALL"

.field public static final CMAS_MESSAGE_SENDER_PREFIX:Ljava/lang/String; = "#CMAS#"

.field public static final CMAS_MESSAGE_SENDER_PRESIDENTIAL:Ljava/lang/String; = "#CMAS#Presidential"

.field public static final CMAS_PROVIDER_ATT:I = 0x2

.field public static final CMAS_PROVIDER_CHO:I = 0x6

.field public static final CMAS_PROVIDER_GENERAL:I = 0x0

.field public static final CMAS_PROVIDER_KOR:I = 0xb

.field public static final CMAS_PROVIDER_KT:I = 0x9

.field public static final CMAS_PROVIDER_LGU:I = 0xa

.field public static final CMAS_PROVIDER_SKT:I = 0x8

.field public static final CMAS_PROVIDER_SPR:I = 0x4

.field public static final CMAS_PROVIDER_TFG:I = 0x7

.field public static final CMAS_PROVIDER_TMO:I = 0x1

.field public static final CMAS_PROVIDER_USC:I = 0x5

.field public static final CMAS_PROVIDER_VZW:I = 0x3

.field private static final CONTACT_ID:I = 0x4

.field private static final CONTACT_NAME_COLUMN:I = 0x3

.field private static final CONTACT_PHOTO_THUMBNAIL_COLUMN:I = 0xa

.field private static final CONTACT_SORT_ORDER:Ljava/lang/String; = "is_sim"

.field private static final EMAIL_CONTACT_NAME_COLUMN:I = 0x3

.field private static final EMAIL_NAME_COLUMN:I = 0x0

.field private static final EMAIL_PROJECTION:[Ljava/lang/String;

.field private static final EMAIL_SELECTION:Ljava/lang/String; = "UPPER(data1)=UPPER(?) AND mimetype=\'vnd.android.cursor.item/email_v2\'"

.field private static final EMAIL_WITH_PRESENCE_URI:Landroid/net/Uri;

.field public static final EXTRA_CALL_LOG_CONTACT:Ljava/lang/String; = "EXTRA_CALL_LOG_CONTACT"

.field public static final EXTRA_CALL_LOG_IDS:Ljava/lang/String; = "EXTRA_CALL_LOG_IDS"

.field public static final MESSAGE:Ljava/lang/String; = "com.android.mms"

.field public static final MISSED_CALL_ACTION_NAME:Ljava/lang/String; = "com.sec.android.app.dialertab.calllog.MISSED_CALL"

.field public static final MISSED_MSG_ACTION_NAME:Ljava/lang/String; = "com.samsung.mms.cover.MissedMsgActivity"

.field private static final MSG_PREFERENCE:Landroid/net/Uri;

.field private static final MSG_UPDATE_MISSED_EVENT:I = 0x1

.field public static final NEW_CMAS_MESSAGE_SENDER:Ljava/lang/String; = "#Emergency Alert#Alerts"

.field public static final NEW_CMAS_MESSAGE_SENDER_PREFIX:Ljava/lang/String; = "#Emergency Alert#"

.field private static final PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

.field private static final PHONE_NUMBER_COLUMN:I = 0x1

.field public static final SECURE_POPUP_DELAY:I = 0xbb8

.field private static final SVIEWCOVER_FEATURE_LEVEL:Ljava/lang/String; = "com.sec.feature.cover.sviewcover"

.field private static final TAG:Ljava/lang/String; = "SViewCoverMissedEvents"

.field public static final WAP_PUSH_MESSAGE_SENDER:Ljava/lang/String; = "Pushmessage"

.field public static mSecurePopupHandler:Landroid/os/Handler;

.field public static mSecurePopupRunnable:Ljava/lang/Runnable;


# instance fields
.field private final CALLER_ID_BG_COLORS:[I

.field private dialog:Landroid/app/Dialog;

.field private handler:Landroid/os/Handler;

.field private mAdapder:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

.field public mCmasProvider:I

.field public mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mHideNotificationContentSettingObserver:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$HideNotificationContentSettingObserver;

.field public mIntentFilter:Landroid/content/IntentFilter;

.field private mIsAllowedSensitiveContent:Z

.field protected mIsPreviousSecurity:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mMissedCallCount:I

.field public mMissedEventObserver:Landroid/database/ContentObserver;

.field private mMissedMessageCount:I

.field private mSViewCoverView:Lcom/sec/android/sviewcover/SViewCoverView;

.field private final mSmallCover:Z

.field private mUnlockAreaLevel:I

.field protected mUpdated:Z

.field protected mWindowManager:Landroid/view/IWindowManager;

.field private r:Ljava/lang/Runnable;

.field private txt1:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 102
    const-string v0, "content://com.android.mms.csc.PreferenceProvider/key"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->MSG_PREFERENCE:Landroid/net/Uri;

    .line 169
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    .line 178
    const/16 v0, 0x8d

    const/16 v1, 0xa6

    const/16 v2, 0xc8

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->CALLER_ID_BG_COLORS_1:I

    .line 179
    const/16 v0, 0xcf

    const/16 v1, 0xc0

    const/16 v2, 0x87

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->CALLER_ID_BG_COLORS_2:I

    .line 180
    const/16 v0, 0x91

    const/16 v1, 0xa4

    const/16 v2, 0x6b

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->CALLER_ID_BG_COLORS_3:I

    .line 181
    const/16 v0, 0x8b

    const/16 v1, 0xb6

    const/16 v2, 0xb5

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->CALLER_ID_BG_COLORS_4:I

    .line 182
    const/16 v0, 0xd1

    const/16 v1, 0x9b

    const/16 v2, 0x8d

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->CALLER_ID_BG_COLORS_5:I

    .line 192
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "data1"

    aput-object v1, v0, v4

    const-string v1, "data3"

    aput-object v1, v0, v5

    const-string v1, "display_name"

    aput-object v1, v0, v6

    const-string v1, "contact_id"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "contact_presence"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "contact_status"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "data4"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "send_to_voicemail"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "photo_thumb_uri"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    .line 209
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->EMAIL_WITH_PRESENCE_URI:Landroid/net/Uri;

    .line 214
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "data4"

    aput-object v1, v0, v3

    const-string v1, "contact_presence"

    aput-object v1, v0, v4

    const-string v1, "contact_id"

    aput-object v1, v0, v5

    const-string v1, "display_name"

    aput-object v1, v0, v6

    const-string v1, "send_to_voicemail"

    aput-object v1, v0, v7

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->EMAIL_PROJECTION:[Ljava/lang/String;

    .line 247
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mSecurePopupHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 259
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 260
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 263
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 264
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 267
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v3, 0x1030128

    invoke-direct {v0, p1, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 126
    iput v2, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mCmasProvider:I

    .line 144
    iput-boolean v2, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mUpdated:Z

    .line 146
    iput-boolean v2, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mIsPreviousSecurity:Z

    .line 150
    iput v2, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mUnlockAreaLevel:I

    .line 152
    iput v2, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mMissedCallCount:I

    .line 153
    iput v2, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mMissedMessageCount:I

    .line 184
    const/4 v0, 0x5

    new-array v0, v0, [I

    sget v3, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->CALLER_ID_BG_COLORS_1:I

    aput v3, v0, v2

    sget v3, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->CALLER_ID_BG_COLORS_2:I

    aput v3, v0, v1

    const/4 v3, 0x2

    sget v4, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->CALLER_ID_BG_COLORS_3:I

    aput v4, v0, v3

    const/4 v3, 0x3

    sget v4, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->CALLER_ID_BG_COLORS_4:I

    aput v4, v0, v3

    const/4 v3, 0x4

    sget v4, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->CALLER_ID_BG_COLORS_5:I

    aput v4, v0, v3

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->CALLER_ID_BG_COLORS:[I

    .line 239
    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 241
    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mMissedEventObserver:Landroid/database/ContentObserver;

    .line 245
    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mSViewCoverView:Lcom/sec/android/sviewcover/SViewCoverView;

    .line 254
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->handler:Landroid/os/Handler;

    .line 255
    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->dialog:Landroid/app/Dialog;

    .line 256
    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->txt1:Landroid/widget/TextView;

    .line 269
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->getSViewCoverSystemFeatureLevel()V

    .line 270
    new-instance v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    invoke-direct {v0, p0}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;-><init>(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)V

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mAdapder:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    .line 271
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mAdapder:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 272
    new-instance v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$1;

    invoke-direct {v0, p0}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$1;-><init>(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 280
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mWindowManager:Landroid/view/IWindowManager;

    .line 282
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mContext:Landroid/content/Context;

    const-string v3, "keyguard"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 283
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mIsPreviousSecurity:Z

    .line 285
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/sec/android/sviewcover/R$dimen;->sview_cover_height:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v3

    const/high16 v3, 0x43960000    # 300.0f

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverProperties;->isMissedEventToastEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mSmallCover:Z

    .line 289
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "lock_screen_allow_private_notifications"

    const/4 v4, -0x2

    invoke-static {v0, v3, v2, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    move v2, v1

    :cond_0
    iput-boolean v2, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mIsAllowedSensitiveContent:Z

    .line 291
    new-instance v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$HideNotificationContentSettingObserver;

    invoke-direct {v0, p0}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$HideNotificationContentSettingObserver;-><init>(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)V

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mHideNotificationContentSettingObserver:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$HideNotificationContentSettingObserver;

    .line 292
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "lock_screen_allow_private_notifications"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mHideNotificationContentSettingObserver:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$HideNotificationContentSettingObserver;

    const/4 v4, -0x1

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 305
    return-void

    :cond_1
    move v0, v2

    .line 285
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mAdapder:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    return-object v0
.end method

.method static synthetic access$1000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)[I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->CALLER_ID_BG_COLORS:[I

    return-object v0
.end method

.method static synthetic access$1300()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->MSG_PREFERENCE:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Lcom/sec/android/sviewcover/SViewCoverView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mSViewCoverView:Lcom/sec/android/sviewcover/SViewCoverView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/app/KeyguardManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    .prologue
    .line 98
    iget v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mMissedMessageCount:I

    return v0
.end method

.method static synthetic access$2002(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents;
    .param p1, "x1"    # I

    .prologue
    .line 98
    iput p1, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mMissedMessageCount:I

    return p1
.end method

.method static synthetic access$2200(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    .prologue
    .line 98
    iget v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mMissedCallCount:I

    return v0
.end method

.method static synthetic access$2202(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents;
    .param p1, "x1"    # I

    .prologue
    .line 98
    iput p1, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mMissedCallCount:I

    return p1
.end method

.method static synthetic access$2500(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    .prologue
    .line 98
    iget v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mUnlockAreaLevel:I

    return v0
.end method

.method static synthetic access$3600(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mIsAllowedSensitiveContent:Z

    return v0
.end method

.method static synthetic access$3602(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents;
    .param p1, "x1"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mIsAllowedSensitiveContent:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mSmallCover:Z

    return v0
.end method

.method static synthetic access$3800(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->txt1:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->r:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$4402(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->r:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$4500(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->getCircleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5100(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5500()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->EMAIL_WITH_PRESENCE_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$5600()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->EMAIL_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getCircleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v9, 0x0

    .line 2100
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2102
    .local v2, "output":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2103
    .local v0, "canvas":Landroid/graphics/Canvas;
    const/high16 v1, -0x1000000

    .line 2104
    .local v1, "color":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/lit8 v5, v6, 0x2

    .line 2106
    .local v5, "size":I
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 2107
    .local v3, "paint":Landroid/graphics/Paint;
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v4, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2108
    .local v4, "rect":Landroid/graphics/Rect;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2109
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2111
    invoke-virtual {v0, v9, v9, v9, v9}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 2112
    int-to-float v6, v5

    int-to-float v7, v5

    int-to-float v8, v5

    invoke-virtual {v0, v6, v7, v8, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 2113
    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 2114
    invoke-virtual {v0, p1, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2116
    return-object v2
.end method

.method private getSViewCoverSystemFeatureLevel()V
    .locals 4

    .prologue
    .line 308
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 309
    .local v0, "pm":Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_0

    .line 310
    const-string v1, "com.sec.feature.cover.sviewcover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mUnlockAreaLevel:I

    .line 312
    const-string v1, "SViewCoverMissedEvents"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "this Cover app level is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mUnlockAreaLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_0
    return-void
.end method


# virtual methods
.method public getMissedCallCount()I
    .locals 1

    .prologue
    .line 2124
    iget v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mMissedCallCount:I

    return v0
.end method

.method public getMissedEventCount()I
    .locals 2

    .prologue
    .line 2120
    iget v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mMissedCallCount:I

    iget v1, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mMissedMessageCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getMissedMessageCount()I
    .locals 1

    .prologue
    .line 2128
    iget v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mMissedMessageCount:I

    return v0
.end method

.method public isMultiSIMDevice()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 357
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 360
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method registerObserverAndReceiver()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 321
    const-string v0, "SViewCoverMissedEvents"

    const-string v1, "registerObserverAndReceiver()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mMissedEventObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mMissedEventObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mAdapder:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    invoke-virtual {v0}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->buildObserver()V

    .line 326
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mMissedEventObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    .line 327
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://logs/allcalls"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mMissedEventObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 330
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mMissedEventObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 332
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "time_12_24"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mMissedEventObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 337
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 339
    :cond_2
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mAdapder:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    invoke-virtual {v0}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->buildReceiver()V

    .line 340
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    .line 341
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 343
    :cond_3
    return-void
.end method

.method public setCallbacks(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsCallbacks;)V
    .locals 1
    .param p1, "c"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsCallbacks;

    .prologue
    .line 353
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mAdapder:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->setCallbacks(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsCallbacks;)V

    .line 354
    return-void
.end method

.method public setSViewCoverView(Lcom/sec/android/sviewcover/SViewCoverView;)V
    .locals 2
    .param p1, "cover"    # Lcom/sec/android/sviewcover/SViewCoverView;

    .prologue
    .line 2092
    if-nez p1, :cond_0

    .line 2093
    const-string v0, "SViewCoverMissedEvents"

    const-string v1, "setSViewCoverView(): received null as argument!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2097
    :goto_0
    return-void

    .line 2096
    :cond_0
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mSViewCoverView:Lcom/sec/android/sviewcover/SViewCoverView;

    goto :goto_0
.end method

.method unregisterObserverAndReceiver()V
    .locals 2

    .prologue
    .line 346
    const-string v0, "SViewCoverMissedEvents"

    const-string v1, "unregisterObserverAndReceiver()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mMissedEventObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 348
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mHideNotificationContentSettingObserver:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$HideNotificationContentSettingObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 349
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 350
    return-void
.end method

.method public updateMissedEvents()V
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mAdapder:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    invoke-virtual {v0}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->updateMissedEvents()V

    .line 318
    return-void
.end method
