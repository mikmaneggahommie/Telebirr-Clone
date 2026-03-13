.class public Lcom/android/systemui/qs/tiles/VoLteTile;
.super Lcom/android/systemui/qs/QSTile;
.source "VoLteTile.java"


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
.field private static final DB_MOBILE_DATA:Ljava/lang/String; = "mobile_data"

.field private static final INTENT_KEY_ICC_STATE:Ljava/lang/String; = "ss"

.field private static final TAG:Ljava/lang/String; = "VoLteTile"

.field private static final VOICECALL_TYPE_CS:I = 0x1

.field private static final VOICECALL_TYPE_KEY:Ljava/lang/String; = "voicecall_type"

.field private static final VOICECALL_TYPE_VoLTE:I

.field private static mToastAlert:Landroid/widget/Toast;


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mInitialized:Z

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsAirPlaneMode:Z

.field private mMccmnc:Ljava/lang/String;

.field private mMobileData:Z

.field private final mSettingAirplane:Lcom/android/systemui/qs/GlobalSetting;

.field private final mSettingMobile:Lcom/android/systemui/qs/GlobalSetting;

.field private final mSettingVoLTE:Lcom/android/systemui/qs/SystemSetting;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mVoLTEState:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 5
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    const/4 v4, 0x0

    .line 82
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 71
    iput-boolean v4, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mInitialized:Z

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mMccmnc:Ljava/lang/String;

    .line 280
    new-instance v0, Lcom/android/systemui/qs/tiles/VoLteTile$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/VoLteTile$4;-><init>(Lcom/android/systemui/qs/tiles/VoLteTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 84
    new-instance v0, Lcom/android/systemui/qs/tiles/VoLteTile$1;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v3, "airplane_mode_on"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/VoLteTile$1;-><init>(Lcom/android/systemui/qs/tiles/VoLteTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSettingAirplane:Lcom/android/systemui/qs/GlobalSetting;

    .line 93
    new-instance v0, Lcom/android/systemui/qs/tiles/VoLteTile$2;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v3, "mobile_data"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/VoLteTile$2;-><init>(Lcom/android/systemui/qs/tiles/VoLteTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSettingMobile:Lcom/android/systemui/qs/GlobalSetting;

    .line 112
    new-instance v0, Lcom/android/systemui/qs/tiles/VoLteTile$3;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v3, "voicecall_type"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/VoLteTile$3;-><init>(Lcom/android/systemui/qs/tiles/VoLteTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSettingVoLTE:Lcom/android/systemui/qs/SystemSetting;

    .line 122
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/VoLteTile;->mToastAlert:Landroid/widget/Toast;

    .line 123
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/VoLteTile;->init()V

    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/VoLteTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/VoLteTile;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mIsAirPlaneMode:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/qs/tiles/VoLteTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/VoLteTile;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mIsAirPlaneMode:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/VoLteTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/VoLteTile;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/VoLteTile;->updateState()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/VoLteTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/VoLteTile;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mMobileData:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/qs/tiles/VoLteTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/VoLteTile;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mMobileData:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/VoLteTile;)Lcom/android/systemui/qs/SystemSetting;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/VoLteTile;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSettingVoLTE:Lcom/android/systemui/qs/SystemSetting;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/VoLteTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/VoLteTile;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/VoLteTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/VoLteTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/VoLteTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/systemui/qs/tiles/VoLteTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/VoLteTile;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mVoLTEState:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/VoLteTile;)Lcom/android/systemui/qs/GlobalSetting;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/VoLteTile;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSettingAirplane:Lcom/android/systemui/qs/GlobalSetting;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/systemui/qs/tiles/VoLteTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/VoLteTile;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mInitialized:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/tiles/VoLteTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/VoLteTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/VoLteTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method private static checkMccmnc(Ljava/lang/String;)Z
    .locals 5
    .param p0, "mccmnc"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 221
    const-string v2, "VoLteTile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkMccmnc() mccmnc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_2

    :cond_0
    move v0, v1

    .line 276
    :cond_1
    :goto_0
    return v0

    .line 226
    :cond_2
    const-string v2, "45416"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "45419"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 228
    const-string v2, "45400"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 230
    const-string v2, "45403"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 232
    const-string v2, "45406"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 234
    const-string v2, "45412"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "45413"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 236
    const-string v2, "45501"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "45504"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 241
    const-string v2, "46601"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "24099"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "24499"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 243
    const-string v2, "46697"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 245
    const-string v2, "46689"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 247
    const-string v2, "46692"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 249
    const-string v2, "46605"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 253
    const-string v2, "45001"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 257
    const-string v2, "52005"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 259
    const-string v2, "52000"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "52004"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 261
    const-string v2, "52001"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "52003"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "52074"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "52054"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 266
    const-string v2, "52505"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 268
    const-string v2, "52596"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "52598"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "52599"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "52801"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "52501"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "52502"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 271
    const-string v2, "52503"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 276
    goto/16 :goto_0
.end method

.method private getMobileData()Z
    .locals 1

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/VoLteTile;->isMSim()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    .line 378
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v0

    .line 385
    :goto_0
    return v0

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_1

    .line 382
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    goto :goto_0

    .line 385
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getVoLTEEnabled()Z
    .locals 4

    .prologue
    .line 466
    const/4 v0, 0x0

    .line 467
    .local v0, "result":Z
    const-string v1, "gsm.sim.operator.numeric"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mMccmnc:Ljava/lang/String;

    .line 468
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mVoLTEState:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mMccmnc:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/VoLteTile;->checkMccmnc(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mIsAirPlaneMode:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 469
    :goto_0
    const-string v1, "VoLteTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVoLTEEnabled() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/mVoLTEState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mVoLTEState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/mIsAirPlaneMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mIsAirPlaneMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    return v0

    .line 468
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;

    .prologue
    const v1, 0x7f020737

    .line 193
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v0, :cond_0

    .line 194
    iget v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    packed-switch v0, :pswitch_data_0

    .line 218
    :goto_0
    return-void

    .line 196
    :pswitch_0
    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 199
    :pswitch_1
    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 202
    :pswitch_2
    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 206
    :cond_0
    iget v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 208
    :pswitch_3
    const v0, 0x7f02073a

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 211
    :pswitch_4
    const v0, 0x7f020739

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 214
    :pswitch_5
    const v0, 0x7f020738

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 194
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 206
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private isNonVoLteSim()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 460
    const-string v2, "persist.ril.ims.eutranParam"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    const/4 v0, 0x1

    .line 461
    .local v0, "nonVolte":Z
    :goto_0
    const-string v2, "VoLteTile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isNonVoLteSim() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "persist.ril.ims.eutranParam"

    invoke-static {v4, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    return v0

    .end local v0    # "nonVolte":Z
    :cond_0
    move v0, v1

    .line 460
    goto :goto_0
.end method

.method private isSimReady()Z
    .locals 10

    .prologue
    const/16 v9, 0x7d8

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 389
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 395
    .local v0, "SimState":I
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/VoLteTile;->isMSim()Z

    move-result v7

    if-nez v7, :cond_0

    if-eqz v0, :cond_1

    if-eq v0, v5, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/VoLteTile;->isMSim()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/VoLteTile;->getReadySimCount()I

    move-result v7

    if-nez v7, :cond_3

    .line 398
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    invoke-direct {v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 399
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mUseUimCard:Z

    if-eqz v7, :cond_4

    .line 400
    const v7, 0x7f0b0473

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 401
    const v7, 0x7f0b0474

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 406
    :goto_0
    const v7, 0x104000a

    new-instance v8, Lcom/android/systemui/qs/tiles/VoLteTile$5;

    invoke-direct {v8, p0}, Lcom/android/systemui/qs/tiles/VoLteTile$5;-><init>(Lcom/android/systemui/qs/tiles/VoLteTile;)V

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 413
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v7}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 415
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mAlertDialog:Landroid/app/AlertDialog;

    .line 418
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v8, Lcom/android/systemui/qs/tiles/VoLteTile$6;

    invoke-direct {v8, p0}, Lcom/android/systemui/qs/tiles/VoLteTile$6;-><init>(Lcom/android/systemui/qs/tiles/VoLteTile;)V

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 425
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v7}, Lcom/android/systemui/qs/QSTile$Host;->getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v4

    .line 426
    .local v4, "mKeyguard":Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    if-eqz v4, :cond_2

    .line 427
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v2

    .line 428
    .local v2, "mIsKeyguardOn":Z
    if-eqz v2, :cond_5

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v7

    if-eqz v7, :cond_5

    move v3, v5

    .line 430
    .local v3, "mIsKeyguardSecure":Z
    :goto_1
    if-eqz v2, :cond_7

    .line 431
    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v5, :cond_6

    if-eqz v3, :cond_6

    .line 432
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/Window;->setType(I)V

    .line 442
    .end local v2    # "mIsKeyguardOn":Z
    .end local v3    # "mIsKeyguardSecure":Z
    :cond_2
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    move v5, v6

    .line 445
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v4    # "mKeyguard":Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    :cond_3
    return v5

    .line 403
    .restart local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_4
    const v7, 0x7f0b0471

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 404
    const v7, 0x7f0b0472

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .restart local v2    # "mIsKeyguardOn":Z
    .restart local v4    # "mKeyguard":Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    :cond_5
    move v3, v6

    .line 428
    goto :goto_1

    .line 435
    .restart local v3    # "mIsKeyguardSecure":Z
    :cond_6
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v7, 0x7d9

    invoke-virtual {v5, v7}, Landroid/view/Window;->setType(I)V

    goto :goto_2

    .line 439
    :cond_7
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/Window;->setType(I)V

    goto :goto_2
.end method

.method private isSupportVoLte()Z
    .locals 2

    .prologue
    .line 456
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->isServiceAvailable(ILandroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static manualIMSDeregister(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 474
    const/4 v1, 0x7

    invoke-static {v1, p0}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    .line 476
    .local v0, "mInterfaceForGeneral":Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;
    const-string v1, "VoLteTile"

    const-string v2, "manualIMSDeregister"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    if-eqz v0, :cond_0

    .line 479
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mDivideVowifiToVolte:Z

    if-eqz v1, :cond_1

    .line 480
    invoke-interface {v0}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->setVoLTEFeatureDisable()V

    .line 488
    :cond_0
    :goto_0
    return-void

    .line 482
    :cond_1
    invoke-interface {v0}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->manualDeregister()V

    goto :goto_0
.end method

.method public static manualIMSRegister(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 491
    const/4 v1, 0x7

    invoke-static {v1, p0}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    .line 494
    .local v0, "mInterfaceForGeneral":Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;
    if-eqz v0, :cond_0

    .line 499
    const-string v1, "VoLteTile"

    const-string v2, "manualIMSRegister"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mDivideVowifiToVolte:Z

    if-eqz v1, :cond_1

    .line 502
    invoke-interface {v0}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->setVoLTEFeatureEnable()V

    .line 506
    :cond_0
    :goto_0
    return-void

    .line 504
    :cond_1
    invoke-interface {v0}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->manualRegister()V

    goto :goto_0
.end method

.method private updateState()V
    .locals 1

    .prologue
    .line 449
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDimVolteWhenNonVolteSim:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/VoLteTile;->isNonVoLteSim()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/VoLteTile;->refreshState(Ljava/lang/Object;)V

    .line 453
    :goto_0
    return-void

    .line 452
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/VoLteTile;->getVoLTEEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/VoLteTile;->refreshState(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_1
.end method


# virtual methods
.method public handleClick()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 312
    const-string v2, "VoLteTile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleClick : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v1, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v1, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v1, v7, :cond_1

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mIsAirPlaneMode:Z

    if-eqz v1, :cond_2

    .line 320
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    invoke-static {v1, v8, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/qs/tiles/VoLteTile;->mToastAlert:Landroid/widget/Toast;

    .line 321
    sget-object v1, Lcom/android/systemui/qs/tiles/VoLteTile;->mToastAlert:Landroid/widget/Toast;

    const v2, 0x7f0b04a6

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(I)V

    .line 322
    sget-object v1, Lcom/android/systemui/qs/tiles/VoLteTile;->mToastAlert:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 327
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 329
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-eq v1, v6, :cond_3

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-ne v1, v4, :cond_4

    :cond_3
    const-string v1, "LTE"

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 332
    const-string v2, "VoLteTile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick(): VoLTE disable is not allowed during volte call : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v1, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    sget-object v1, Lcom/android/systemui/qs/tiles/VoLteTile;->mToastAlert:Landroid/widget/Toast;

    const v2, 0x7f0b04a7

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(I)V

    .line 334
    sget-object v1, Lcom/android/systemui/qs/tiles/VoLteTile;->mToastAlert:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 338
    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mInitialized:Z

    if-nez v1, :cond_5

    .line 339
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/VoLteTile;->refreshState(Ljava/lang/Object;)V

    .line 340
    sget-object v1, Lcom/android/systemui/qs/tiles/VoLteTile;->mToastAlert:Landroid/widget/Toast;

    const v2, 0x7f0b04a8

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(I)V

    .line 341
    sget-object v1, Lcom/android/systemui/qs/tiles/VoLteTile;->mToastAlert:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 345
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v1, p0}, Lcom/android/systemui/qs/QSTile$Host;->onClickQSButtonOnKeyguard(Lcom/android/systemui/qs/QSTile;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 349
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/VoLteTile;->refreshState(Ljava/lang/Object;)V

    .line 350
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/VoLteTile;->isSimReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 351
    const-string v1, "gsm.sim.operator.numeric"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mMccmnc:Ljava/lang/String;

    .line 352
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mMccmnc:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/VoLteTile;->checkMccmnc(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 353
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/VoLteTile;->refreshState(Ljava/lang/Object;)V

    .line 354
    sget-object v1, Lcom/android/systemui/qs/tiles/VoLteTile;->mToastAlert:Landroid/widget/Toast;

    const v2, 0x7f0b04a9

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(I)V

    .line 355
    sget-object v1, Lcom/android/systemui/qs/tiles/VoLteTile;->mToastAlert:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 359
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v1, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v1, v4, :cond_8

    .line 360
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSettingVoLTE:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v1, v5}, Lcom/android/systemui/qs/SystemSetting;->setValue(I)V

    .line 361
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/VoLteTile;->manualIMSRegister(Landroid/content/Context;)V

    .line 362
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mShowVolteOnPopup:Z

    if-eqz v1, :cond_7

    .line 363
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    invoke-static {v1, v8, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/qs/tiles/VoLteTile;->mToastAlert:Landroid/widget/Toast;

    .line 364
    sget-object v1, Lcom/android/systemui/qs/tiles/VoLteTile;->mToastAlert:Landroid/widget/Toast;

    const v2, 0x7f0b04aa

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(I)V

    .line 365
    sget-object v1, Lcom/android/systemui/qs/tiles/VoLteTile;->mToastAlert:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 371
    :cond_7
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/VoLteTile;->updateState()V

    goto/16 :goto_0

    .line 367
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v1, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v1, v6, :cond_7

    .line 368
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSettingVoLTE:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v1, v6}, Lcom/android/systemui/qs/SystemSetting;->setValue(I)V

    .line 369
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/VoLteTile;->manualIMSDeregister(Landroid/content/Context;)V

    goto :goto_1
.end method

.method protected handleDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 511
    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    .line 512
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 513
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSettingAirplane:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 514
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSettingMobile:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 515
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSettingVoLTE:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 516
    return-void
.end method

.method public handleLongClick()V
    .locals 4

    .prologue
    .line 526
    const-string v2, "VoLteTile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleLongClick : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v1, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    const-string v2, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v3, "isSettingsChangesAllowed"

    invoke-static {v1, v2, v3}, Lcom/android/systemui/qs/tiles/VoLteTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 529
    .local v0, "isSettingsChangesAllowed":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 530
    if-nez v0, :cond_1

    .line 531
    const-string v1, "VoLteTile"

    const-string v2, "handleLongClick(): setting access is not allowed by EDM"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 536
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSettingAirplane:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v1}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 537
    const-string v1, "VoLteTile"

    const-string v2, "VoLTE Long - disabled in Airplanemode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/qs/tiles/VoLteTile;->mToastAlert:Landroid/widget/Toast;

    .line 540
    sget-object v1, Lcom/android/systemui/qs/tiles/VoLteTile;->mToastAlert:Landroid/widget/Toast;

    const v2, 0x7f0b0493

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(I)V

    .line 541
    sget-object v1, Lcom/android/systemui/qs/tiles/VoLteTile;->mToastAlert:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 545
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/VoLteTile;->isSimReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 546
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.MobileNetworkSettings"

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/qs/tiles/VoLteTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleSecondaryClick()V
    .locals 0

    .prologue
    .line 521
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/VoLteTile;->handleLongClick()V

    .line 522
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 7
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const v6, 0x7f0b04a5

    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 168
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 170
    .local v0, "value":I
    :goto_0
    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 171
    iput-boolean v3, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    .line 172
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0b04a4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    .line 174
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/VoLteTile;->handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V

    .line 175
    packed-switch v0, :pswitch_data_0

    .line 190
    :goto_1
    return-void

    .line 168
    .end local v0    # "value":I
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    .line 177
    .end local p2    # "arg":Ljava/lang/Object;
    .restart local v0    # "value":I
    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0302

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v6, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 182
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0303

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v6, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 187
    :pswitch_2
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 175
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
    .line 56
    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    .end local p1    # "x0":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/VoLteTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method public init()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 127
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 129
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 131
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSettingVoLTE:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v2}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mVoLTEState:Z

    .line 133
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "voicecall_type"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 134
    .local v1, "voiceValue":I
    if-ne v3, v1, :cond_0

    .line 135
    iput-boolean v4, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mVoLTEState:Z

    .line 138
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSettingAirplane:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v2}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v2

    if-ne v2, v3, :cond_1

    move v4, v3

    :cond_1
    iput-boolean v4, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mIsAirPlaneMode:Z

    .line 140
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mDimVolteWhenNonVolteSim:Z

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/VoLteTile;->isNonVoLteSim()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 141
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/qs/QSTile$MultiState;

    const/4 v4, 0x3

    iput v4, v2, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 146
    :goto_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 147
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mDimVolteWhenNonVolteSim:Z

    if-eqz v2, :cond_2

    .line 150
    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 154
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSettingAirplane:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 155
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSettingMobile:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 156
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSettingVoLTE:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 159
    return-void

    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v1    # "voiceValue":I
    :cond_3
    move v2, v4

    .line 131
    goto :goto_0

    .line 143
    .restart local v1    # "voiceValue":I
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/VoLteTile;->getVoLTEEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v3

    :goto_2
    iput v4, v2, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_1

    :cond_5
    const/4 v4, 0x2

    goto :goto_2
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$MultiState;
    .locals 1

    .prologue
    .line 163
    new-instance v0, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$MultiState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/VoLteTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    const/4 v1, 0x3

    .line 305
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDimVolteWhenNonVolteSim:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/VoLteTile;->isNonVoLteSim()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-eq v0, v1, :cond_0

    .line 306
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/VoLteTile;->refreshState(Ljava/lang/Object;)V

    .line 308
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public userSwitch(I)V
    .locals 2
    .param p1, "newUserId"    # I

    .prologue
    const/4 v1, 0x0

    .line 557
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSettingAirplane:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/GlobalSetting;->onChange(Z)V

    .line 558
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSettingMobile:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/GlobalSetting;->onChange(Z)V

    .line 559
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSettingVoLTE:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SystemSetting;->userSwitched(I)V

    .line 560
    return-void
.end method
