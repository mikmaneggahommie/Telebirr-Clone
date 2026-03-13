.class public Lcom/android/systemui/qs/tiles/LocationTile;
.super Lcom/android/systemui/qs/QSTile;
.source "LocationTile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$MultiState;",
        ">;"
    }
.end annotation


# static fields
.field private static final CURRENT_MODE_KEY:Ljava/lang/String; = "CURRENT_MODE"

.field private static final MODE_CHANGING_ACTION:Ljava/lang/String; = "com.android.settings.location.MODE_CHANGING"

.field private static final NEW_MODE_KEY:Ljava/lang/String; = "NEW_MODE"

.field private static final TW_TAG:Ljava/lang/String; = "LocationTile"

.field private static final VZW_GPS_ENABLED_CHANGE_ACTION:Ljava/lang/String; = "com.nim.vznavigator.app2app"

.field private static final VZW_GPS_INTENT_EXTRA:Ljava/lang/String; = "context"

.field private static final VZW_GPS_INTENT_EXTRA_VALUE:Ljava/lang/String; = "vznavigator:app2app?version=2.0&credential=0211&commands="

.field private static final VZW_PROVIDER:Ljava/lang/String; = "vzw_lbs"


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mDisabledByUserRestrictions:Z

.field private mGpsActivated:Z

.field private mIsPrefChecked:Z

.field private mListening:Z

.field private mPreviousGPSState:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSetting:Lcom/android/systemui/qs/SecureSetting;

.field private mVzwGpsIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 5
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 104
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 78
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mDisabledByUserRestrictions:Z

    .line 79
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mPreviousGPSState:Z

    .line 80
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mGpsActivated:Z

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mVzwGpsIntent:Landroid/content/Intent;

    .line 91
    new-instance v0, Lcom/android/systemui/qs/tiles/LocationTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/LocationTile$1;-><init>(Lcom/android/systemui/qs/tiles/LocationTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 106
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.nim.vznavigator.app2app"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mVzwGpsIntent:Landroid/content/Intent;

    .line 107
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/LocationTile;->readLocationMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/LocationTile;->isGpsOn(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mPreviousGPSState:Z

    .line 109
    new-instance v0, Lcom/android/systemui/qs/tiles/LocationTile$2;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v4, "location_providers_allowed"

    invoke-direct {v0, p0, v1, v3, v4}, Lcom/android/systemui/qs/tiles/LocationTile$2;-><init>(Lcom/android/systemui/qs/tiles/LocationTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mSetting:Lcom/android/systemui/qs/SecureSetting;

    .line 137
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/LocationTile;->readLocationMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/LocationTile;->isGpsOn(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mGpsActivated:Z

    .line 138
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/LocationTile;->isUserLocationRestricted()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mDisabledByUserRestrictions:Z

    .line 140
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mDisabledByUserRestrictions:Z

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    const/4 v1, 0x3

    iput v1, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 146
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    .line 147
    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mGpsActivated:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    iput v1, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/LocationTile;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/LocationTile;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/LocationTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/LocationTile;

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mGpsActivated:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/tiles/LocationTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/LocationTile;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/qs/tiles/LocationTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/LocationTile;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mGpsActivated:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/tiles/LocationTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/LocationTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/LocationTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/tiles/LocationTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/LocationTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/LocationTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/tiles/LocationTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/LocationTile;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/LocationTile;->setVzwProviderAndMode()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/qs/tiles/LocationTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/LocationTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/LocationTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/qs/tiles/LocationTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/LocationTile;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/qs/tiles/LocationTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/LocationTile;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/qs/tiles/LocationTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/LocationTile;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/qs/tiles/LocationTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/LocationTile;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/qs/tiles/LocationTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/LocationTile;

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mIsPrefChecked:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/systemui/qs/tiles/LocationTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/LocationTile;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mIsPrefChecked:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/LocationTile;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/LocationTile;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/LocationTile;->readLocationMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/qs/tiles/LocationTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/LocationTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/LocationTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/systemui/qs/tiles/LocationTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/LocationTile;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/systemui/qs/tiles/LocationTile;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/LocationTile;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/LocationTile;->setGpsMode(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/systemui/qs/tiles/LocationTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/LocationTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/LocationTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/LocationTile;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/LocationTile;
    .param p1, "x1"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/LocationTile;->isGpsOn(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/LocationTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/LocationTile;

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mDisabledByUserRestrictions:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/qs/tiles/LocationTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/LocationTile;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mDisabledByUserRestrictions:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/LocationTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/LocationTile;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/LocationTile;->isUserLocationRestricted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/LocationTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/LocationTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/LocationTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/LocationTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/LocationTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/LocationTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/LocationTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/LocationTile;

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mPreviousGPSState:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/systemui/qs/tiles/LocationTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/LocationTile;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mPreviousGPSState:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/tiles/LocationTile;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/LocationTile;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mVzwGpsIntent:Landroid/content/Intent;

    return-object v0
.end method

.method private handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;

    .prologue
    const v1, 0x7f0206cb

    .line 308
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v0, :cond_0

    .line 309
    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 323
    :goto_0
    return-void

    .line 311
    :cond_0
    iget v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 313
    :pswitch_0
    const v0, 0x7f0206cc

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 316
    :pswitch_1
    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 319
    :pswitch_2
    const v0, 0x7f0206ca

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 311
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isGpsOn(I)Z
    .locals 5
    .param p1, "locationMode"    # I

    .prologue
    const/4 v1, 0x1

    .line 340
    const/4 v0, 0x0

    .line 341
    .local v0, "result":Z
    const-string v2, "LocationTile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isGpsOn : CHN? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mDivideGPSWithNLPForCHN:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " currMode  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mDivideGPSWithNLPForCHN:Z

    if-eqz v2, :cond_2

    .line 343
    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    if-ne p1, v1, :cond_1

    .line 345
    :cond_0
    const/4 v0, 0x1

    .line 349
    :cond_1
    :goto_0
    return v0

    .line 347
    :cond_2
    if-eqz p1, :cond_3

    move v0, v1

    :goto_1
    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private isTablet()Z
    .locals 2

    .prologue
    .line 590
    const/4 v0, 0x0

    .line 591
    .local v0, "deviceType":Ljava/lang/String;
    const-string v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 592
    if-eqz v0, :cond_0

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isUserLocationRestricted()Z
    .locals 6

    .prologue
    .line 326
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 327
    .local v0, "currentUserId":I
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    const-string v5, "user"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 329
    .local v3, "um":Landroid/os/UserManager;
    const/4 v2, 0x0

    .line 331
    .local v2, "ret":Z
    :try_start_0
    const-string v4, "no_share_location"

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v4, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 336
    :goto_0
    return v2

    .line 333
    :catch_0
    move-exception v1

    .line 334
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "LocationTile"

    const-string v5, "Exception inside isUserLocationRestricted()"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readLocationMode()I
    .locals 4

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_mode"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private setGpsMode(Z)V
    .locals 6
    .param p1, "state"    # Z

    .prologue
    const/4 v4, 0x3

    const/4 v5, -0x2

    .line 359
    if-eqz p1, :cond_0

    .line 361
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "location_mode"

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 382
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.location.GPS_ENABLED_CHANGE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 383
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 384
    return-void

    .line 366
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    .line 371
    .local v1, "newMode":I
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mDivideGPSWithNLPForCHN:Z

    if-eqz v2, :cond_2

    .line 372
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/LocationTile;->readLocationMode()I

    move-result v2

    if-ne v2, v4, :cond_3

    .line 373
    const/4 v1, 0x2

    .line 377
    :cond_1
    :goto_1
    const-string v2, "LocationTile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CHN setGpsMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "location_mode"

    invoke-static {v2, v3, v1, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    .line 374
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/LocationTile;->readLocationMode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 375
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private setVzwProviderAndMode()V
    .locals 5

    .prologue
    const/4 v4, -0x2

    .line 596
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_SupportHuxGpsPromptLocation"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 598
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_mode"

    const/4 v3, 0x3

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 601
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "vzw_lbs"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->setLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 604
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.location.GPS_ENABLED_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 605
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 607
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private showConfirmPopup(Z)V
    .locals 14
    .param p1, "state"    # Z

    .prologue
    .line 499
    const-string v11, "LocationTile"

    const-string v12, "showConfirmPopup"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    iget-object v11, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    const-string v12, "layout_inflater"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 503
    .local v0, "mGpsAlertLayoutInflater":Landroid/view/LayoutInflater;
    const v11, 0x7f0400c5

    const/4 v12, 0x0

    invoke-virtual {v0, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 506
    .local v1, "mGpsAlertView":Landroid/view/View;
    const v11, 0x7f0f03e0

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 509
    .local v2, "mGpsCheckBox":Landroid/widget/CheckBox;
    const v11, 0x7f0f03dc

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 510
    .local v9, "mVzwText":Landroid/widget/TextView;
    const v11, 0x7f0f03dd

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 511
    .local v8, "mUsccTitle":Landroid/widget/TextView;
    const v11, 0x7f0f03de

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 512
    .local v6, "mUsccBody":Landroid/widget/TextView;
    const v11, 0x7f0f03df

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 514
    .local v7, "mUsccBottom":Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mIsPrefChecked:Z

    .line 516
    new-instance v11, Lcom/android/systemui/qs/tiles/LocationTile$9;

    invoke-direct {v11, p0, v2}, Lcom/android/systemui/qs/tiles/LocationTile$9;-><init>(Lcom/android/systemui/qs/tiles/LocationTile;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v11}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 525
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 526
    .local v10, "value":Z
    new-instance v12, Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    invoke-direct {v12, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-boolean v11, Lcom/android/systemui/statusbar/Feature;->mShowGPSlicensPopup:Z

    if-eqz v11, :cond_1

    const v11, 0x7f0b0536

    :goto_0
    invoke-virtual {v12, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f0b052f

    new-instance v13, Lcom/android/systemui/qs/tiles/LocationTile$11;

    invoke-direct {v13, p0, v10}, Lcom/android/systemui/qs/tiles/LocationTile$11;-><init>(Lcom/android/systemui/qs/tiles/LocationTile;Z)V

    invoke-virtual {v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const/high16 v12, 0x1040000

    new-instance v13, Lcom/android/systemui/qs/tiles/LocationTile$10;

    invoke-direct {v13, p0}, Lcom/android/systemui/qs/tiles/LocationTile$10;-><init>(Lcom/android/systemui/qs/tiles/LocationTile;)V

    invoke-virtual {v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    invoke-virtual {v11, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    iput-object v11, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mAlertDialog:Landroid/app/AlertDialog;

    .line 550
    iget-object v11, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v12, Lcom/android/systemui/qs/tiles/LocationTile$12;

    invoke-direct {v12, p0}, Lcom/android/systemui/qs/tiles/LocationTile$12;-><init>(Lcom/android/systemui/qs/tiles/LocationTile;)V

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 558
    sget-boolean v11, Lcom/android/systemui/statusbar/Feature;->mShowGPSlicensPopup:Z

    if-eqz v11, :cond_2

    .line 559
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 560
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 561
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 562
    const/high16 v11, 0x41600000    # 14.0f

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 567
    :goto_1
    iget-object v11, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v11}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 569
    iget-object v11, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v11}, Lcom/android/systemui/qs/QSTile$Host;->getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v5

    .line 570
    .local v5, "mKeyguard":Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    if-eqz v5, :cond_0

    .line 571
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v3

    .line 572
    .local v3, "mIsKeyguardOn":Z
    if-eqz v3, :cond_3

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v4, 0x1

    .line 574
    .local v4, "mIsKeyguardSecure":Z
    :goto_2
    if-eqz v3, :cond_5

    .line 575
    sget-boolean v11, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v11, :cond_4

    if-eqz v4, :cond_4

    .line 576
    iget-object v11, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v11}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    const/16 v12, 0x7d8

    invoke-virtual {v11, v12}, Landroid/view/Window;->setType(I)V

    .line 586
    .end local v3    # "mIsKeyguardOn":Z
    .end local v4    # "mIsKeyguardSecure":Z
    :cond_0
    :goto_3
    iget-object v11, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v11}, Landroid/app/AlertDialog;->show()V

    .line 587
    return-void

    .line 526
    .end local v5    # "mKeyguard":Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    :cond_1
    const v11, 0x7f0b052b

    goto :goto_0

    .line 564
    :cond_2
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 572
    .restart local v3    # "mIsKeyguardOn":Z
    .restart local v5    # "mKeyguard":Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    .line 579
    .restart local v4    # "mIsKeyguardSecure":Z
    :cond_4
    iget-object v11, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v11}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    const/16 v12, 0x7d9

    invoke-virtual {v11, v12}, Landroid/view/Window;->setType(I)V

    goto :goto_3

    .line 583
    :cond_5
    iget-object v11, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v11}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    const/16 v12, 0x7d8

    invoke-virtual {v11, v12}, Landroid/view/Window;->setType(I)V

    goto :goto_3
.end method

.method private showDCMLocationConsentDialog()V
    .locals 7

    .prologue
    const/16 v6, 0x7d8

    .line 443
    const-string v3, "LocationTile"

    const-string v4, "showDCMLocationConsentDialog()"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0617

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0616

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b052f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/qs/tiles/LocationTile$8;

    invoke-direct {v5, p0}, Lcom/android/systemui/qs/tiles/LocationTile$8;-><init>(Lcom/android/systemui/qs/tiles/LocationTile;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0530

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/qs/tiles/LocationTile$7;

    invoke-direct {v5, p0}, Lcom/android/systemui/qs/tiles/LocationTile$7;-><init>(Lcom/android/systemui/qs/tiles/LocationTile;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/qs/tiles/LocationTile$6;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/tiles/LocationTile$6;-><init>(Lcom/android/systemui/qs/tiles/LocationTile;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mAlertDialog:Landroid/app/AlertDialog;

    .line 477
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v3}, Lcom/android/systemui/qs/QSTile$Host;->getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v2

    .line 478
    .local v2, "mKeyguard":Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    if-eqz v2, :cond_0

    .line 479
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    .line 480
    .local v0, "mIsKeyguardOn":Z
    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    .line 482
    .local v1, "mIsKeyguardSecure":Z
    :goto_0
    if-eqz v0, :cond_3

    .line 483
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v3, :cond_2

    if-eqz v1, :cond_2

    .line 484
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/Window;->setType(I)V

    .line 494
    .end local v0    # "mIsKeyguardOn":Z
    .end local v1    # "mIsKeyguardSecure":Z
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 496
    return-void

    .line 480
    .restart local v0    # "mIsKeyguardOn":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 487
    .restart local v1    # "mIsKeyguardSecure":Z
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    goto :goto_1

    .line 491
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/Window;->setType(I)V

    goto :goto_1
.end method


# virtual methods
.method public getActionTypeOnCover()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 616
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v0, v1, :cond_0

    .line 617
    const/4 v0, 0x2

    .line 619
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected handleClick()V
    .locals 10

    .prologue
    const/4 v9, -0x2

    const/4 v8, 0x3

    .line 177
    const-string v6, "LocationTile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleClick : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v5, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v5, v5, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v5, p0}, Lcom/android/systemui/qs/QSTile$Host;->onClickQSButtonOnKeyguard(Lcom/android/systemui/qs/QSTile;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v5, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v5, v5, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-eq v5, v8, :cond_0

    .line 186
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v5, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v5, v5, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    const/4 v4, 0x1

    .line 188
    .local v4, "state":Z
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/LocationTile;->isUserLocationRestricted()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mDisabledByUserRestrictions:Z

    .line 189
    iget-boolean v5, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mDisabledByUserRestrictions:Z

    if-eqz v5, :cond_3

    .line 190
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/tiles/LocationTile;->refreshState(Ljava/lang/Object;)V

    .line 191
    const-string v5, "LocationTile"

    const-string v6, "onClick(): mDisabledByUserRestrictions..."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 186
    .end local v4    # "state":Z
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 195
    .restart local v4    # "state":Z
    :cond_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Common_SupportHuxGpsPromptLocation"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 196
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/tiles/LocationTile;->refreshState(Ljava/lang/Object;)V

    .line 197
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/LocationTile;->readLocationMode()I

    move-result v2

    .line 198
    .local v2, "locationMode":I
    const-string v5, "LocationTile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LocationMode ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    if-eqz v4, :cond_4

    invoke-direct {p0, v2}, Lcom/android/systemui/qs/tiles/LocationTile;->isGpsOn(I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 200
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/LocationTile;->showVzwLocationConsentDialog()V

    goto :goto_0

    .line 202
    :cond_4
    invoke-direct {p0, v4}, Lcom/android/systemui/qs/tiles/LocationTile;->setGpsMode(Z)V

    .line 203
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "vzw_lbs"

    invoke-static {v5, v6, v4, v9}, Landroid/provider/Settings$Secure;->setLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    goto :goto_0

    .line 206
    .end local v2    # "locationMode":I
    :cond_5
    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->mShowGPSlicensPopup:Z

    if-eqz v5, :cond_6

    .line 212
    invoke-direct {p0, v4}, Lcom/android/systemui/qs/tiles/LocationTile;->setGpsMode(Z)V

    goto :goto_0

    .line 216
    :cond_6
    iget-boolean v5, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mGpsActivated:Z

    if-eq v4, v5, :cond_0

    .line 217
    const/4 v3, 0x0

    .line 218
    .local v3, "newMode":I
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/LocationTile;->readLocationMode()I

    move-result v0

    .line 220
    .local v0, "currMode":I
    if-eqz v4, :cond_a

    .line 221
    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->mShowDCMLocationConsentPopup:Z

    if-eqz v5, :cond_7

    .line 222
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v5}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 223
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/LocationTile;->showDCMLocationConsentDialog()V

    goto/16 :goto_0

    .line 226
    :cond_7
    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->mEnableNLPAlertForCHN:Z

    if-eqz v5, :cond_8

    .line 227
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v5}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 229
    :cond_8
    const/4 v3, 0x3

    .line 243
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "location_mode"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    invoke-static {v5, v6, v3, v7}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 246
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.settings.GPS_CHANGED"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 247
    .local v1, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 248
    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->mEnableNLPAlertForCHN:Z

    if-eqz v5, :cond_9

    .line 249
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v5, "com.android.settings.location.MODE_CHANGING"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 250
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v5, "CURRENT_MODE"

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 251
    const-string v5, "NEW_MODE"

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 252
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v9}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v1, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 254
    :cond_9
    const-string v5, "LocationTile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GPS set("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 231
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_a
    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->mDivideGPSWithNLPForCHN:Z

    if-eqz v5, :cond_c

    .line 232
    if-ne v0, v8, :cond_b

    .line 233
    const/4 v3, 0x2

    goto :goto_2

    .line 236
    :cond_b
    const/4 v3, 0x0

    goto :goto_2

    .line 239
    :cond_c
    const/4 v3, 0x0

    goto :goto_2
.end method

.method protected handleDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 170
    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    .line 171
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/LocationTile;->setListening(Z)V

    .line 172
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    .line 173
    return-void
.end method

.method public handleLongClick()V
    .locals 3

    .prologue
    .line 266
    const-string v1, "LocationTile"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleLongClick : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$LocationSettingsActivity"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/tiles/LocationTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    return-void
.end method

.method public handleSecondaryClick()V
    .locals 0

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/LocationTile;->handleLongClick()V

    .line 262
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 4
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 272
    instance-of v3, p2, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 273
    .local v2, "value":I
    :goto_0
    iput v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 274
    const/4 v3, 0x1

    iput-boolean v3, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    .line 277
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mDivideGPSWithNLPForCHN:Z

    if-eqz v3, :cond_1

    .line 278
    const v1, 0x7f0b0448

    .line 279
    .local v1, "labelId":I
    const v0, 0x7f0b0423

    .line 286
    .local v0, "contentDesId":I
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    .line 287
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/LocationTile;->handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V

    .line 288
    packed-switch v2, :pswitch_data_0

    .line 305
    :goto_2
    return-void

    .line 272
    .end local v0    # "contentDesId":I
    .end local v1    # "labelId":I
    .end local v2    # "value":I
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v3, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v2, v3, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    .line 282
    .end local p2    # "arg":Ljava/lang/Object;
    .restart local v2    # "value":I
    :cond_1
    const v1, 0x7f0b0447

    .line 283
    .restart local v1    # "labelId":I
    const v0, 0x7f0b0422

    .restart local v0    # "contentDesId":I
    goto :goto_1

    .line 290
    :pswitch_0
    const v3, 0x7f0b041a

    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/qs/tiles/LocationTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_2

    .line 295
    :pswitch_1
    const v3, 0x7f0b041b

    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/qs/tiles/LocationTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_2

    .line 300
    :pswitch_2
    const v3, 0x7f0b041c

    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/qs/tiles/LocationTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_2

    .line 288
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 67
    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    .end local p1    # "x0":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/LocationTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$MultiState;
    .locals 1

    .prologue
    .line 151
    new-instance v0, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$MultiState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/LocationTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 3
    .param p1, "listening"    # Z

    .prologue
    .line 156
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mListening:Z

    if-ne v1, p1, :cond_0

    .line 166
    :goto_0
    return-void

    .line 157
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mListening:Z

    .line 158
    if-eqz p1, :cond_1

    .line 159
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 160
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 163
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public showVzwLocationConsentDialog()V
    .locals 8

    .prologue
    const/16 v7, 0x7d8

    .line 387
    const-string v4, "LocationTile"

    const-string v5, "showVzwLocationConsentDialog"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Common_SupportHuxGpsPromptLocation"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 389
    const/4 v0, 0x0

    .line 390
    .local v0, "consentText":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/LocationTile;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 392
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b052d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 396
    :goto_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0531

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b052f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/qs/tiles/LocationTile$5;

    invoke-direct {v6, p0}, Lcom/android/systemui/qs/tiles/LocationTile$5;-><init>(Lcom/android/systemui/qs/tiles/LocationTile;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0530

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/qs/tiles/LocationTile$4;

    invoke-direct {v6, p0}, Lcom/android/systemui/qs/tiles/LocationTile$4;-><init>(Lcom/android/systemui/qs/tiles/LocationTile;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/qs/tiles/LocationTile$3;

    invoke-direct {v5, p0}, Lcom/android/systemui/qs/tiles/LocationTile$3;-><init>(Lcom/android/systemui/qs/tiles/LocationTile;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mAlertDialog:Landroid/app/AlertDialog;

    .line 419
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v4}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 421
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v4}, Lcom/android/systemui/qs/QSTile$Host;->getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v3

    .line 422
    .local v3, "mKeyguard":Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    if-eqz v3, :cond_0

    .line 423
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v1

    .line 424
    .local v1, "mIsKeyguardOn":Z
    if-eqz v1, :cond_3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v2, 0x1

    .line 426
    .local v2, "mIsKeyguardSecure":Z
    :goto_1
    if-eqz v1, :cond_5

    .line 427
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v4, :cond_4

    if-eqz v2, :cond_4

    .line 428
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/Window;->setType(I)V

    .line 438
    .end local v1    # "mIsKeyguardOn":Z
    .end local v2    # "mIsKeyguardSecure":Z
    :cond_0
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 440
    .end local v0    # "consentText":Ljava/lang/String;
    .end local v3    # "mKeyguard":Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    :cond_1
    return-void

    .line 394
    .restart local v0    # "consentText":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b052c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 424
    .restart local v1    # "mIsKeyguardOn":Z
    .restart local v3    # "mKeyguard":Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 431
    .restart local v2    # "mIsKeyguardSecure":Z
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d9

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    goto :goto_2

    .line 435
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/Window;->setType(I)V

    goto :goto_2
.end method

.method public userSwitch(I)V
    .locals 1
    .param p1, "newUserId"    # I

    .prologue
    .line 611
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SecureSetting;->userSwitched(I)V

    .line 612
    return-void
.end method
