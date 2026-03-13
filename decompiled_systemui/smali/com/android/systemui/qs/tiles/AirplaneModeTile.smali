.class public Lcom/android/systemui/qs/tiles/AirplaneModeTile;
.super Lcom/android/systemui/qs/QSTile;
.source "AirplaneModeTile.java"


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
.field private static final DSNETWORK:Ljava/lang/String; = "DSNETWORK"

.field private static final REASON_USB30:Ljava/lang/String; = "airplane_mode_on_reason_usb3"

.field private static final TAG:Ljava/lang/String; = "AirplaneModeTile"

.field private static final sSupportMovialWFC:Z

.field private static final sSupportSecEPDG:Z

.field private static final sSupportSecWFC:Z


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAlertShowing:Z

.field private mClickedTime:J

.field private mDSNetork:Z

.field private mIsWaitingForEcmExit:Z

.field private mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field private mMSimServiceState:[I

.field private mPhone:Landroid/telephony/TelephonyManager;

.field private mPhoneCount:I

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSetting:Lcom/android/systemui/qs/GlobalSetting;

.field private final mSettingUSB30:Lcom/android/systemui/qs/GlobalSetting;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;

.field private final mdsNetworkObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 99
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_SupportSecWFC"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->sSupportSecWFC:Z

    .line 100
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_SupportMovialWFC"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->sSupportMovialWFC:Z

    .line 101
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_SupportEpdg"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->sSupportSecEPDG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 4
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    const/4 v0, 0x0

    .line 109
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 94
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertShowing:Z

    .line 95
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mDSNetork:Z

    .line 105
    iput v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mPhoneCount:I

    .line 138
    new-instance v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$3;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$3;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mdsNetworkObserver:Landroid/database/ContentObserver;

    .line 326
    new-instance v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$4;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 512
    new-instance v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$6;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 111
    new-instance v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$1;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v3, "airplane_mode_on"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$1;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    .line 123
    new-instance v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$2;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v3, "airplane_mode_on_reason_usb3"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$2;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSettingUSB30:Lcom/android/systemui/qs/GlobalSetting;

    .line 129
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->init()V

    .line 131
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mDSNetork:Z

    return v0
.end method

.method static synthetic access$1000()Z
    .locals 1

    .prologue
    .line 84
    sget-boolean v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->sSupportMovialWFC:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mDSNetork:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mIsWaitingForEcmExit:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mIsWaitingForEcmExit:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->setEnabled(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->unregisterPhoneStateListener()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->registerPhoneStateListener(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/qs/tiles/AirplaneModeTile;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;
    .param p1, "x1"    # I

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->isMSim()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mMSimServiceState:[I

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    .prologue
    .line 84
    iget v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mPhoneCount:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->isMSim()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertShowing:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertShowing:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2502(Lcom/android/systemui/qs/tiles/AirplaneModeTile;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;
    .param p1, "x1"    # J

    .prologue
    .line 84
    iput-wide p1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mClickedTime:J

    return-wide p1
.end method

.method static synthetic access$2600(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->isMSim()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Landroid/hardware/usb/UsbManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Lcom/android/systemui/qs/GlobalSetting;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Lcom/android/systemui/qs/GlobalSetting;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSettingUSB30:Lcom/android/systemui/qs/GlobalSetting;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Lcom/android/systemui/qs/QSTile$Host;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$800()Z
    .locals 1

    .prologue
    .line 84
    sget-boolean v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->sSupportSecEPDG:Z

    return v0
.end method

.method static synthetic access$900()Z
    .locals 1

    .prologue
    .line 84
    sget-boolean v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->sSupportSecWFC:Z

    return v0
.end method

.method private getPhoneId(I)I
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 499
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 502
    .local v0, "phoneId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 503
    const/4 v0, 0x0

    .line 505
    .end local v0    # "phoneId":I
    :cond_0
    return v0
.end method

.method private getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "slotId"    # I

    .prologue
    .line 369
    new-instance v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$5;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$5;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;I)V

    .line 426
    .local v0, "mListener":Landroid/telephony/PhoneStateListener;
    return-object v0
.end method

.method private handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;

    .prologue
    const v1, 0x7f0206a4

    .line 297
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v0, :cond_0

    .line 298
    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 312
    :goto_0
    return-void

    .line 300
    :cond_0
    iget v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 302
    :pswitch_0
    const v0, 0x7f0206a5

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 305
    :pswitch_1
    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 308
    :pswitch_2
    const v0, 0x7f0206a3

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 300
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private hasTSafeLock()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 938
    const/4 v3, 0x0

    .line 939
    .local v3, "result":Z
    const-string v0, "com.skt.t_smart_charge"

    .line 941
    .local v0, "TLOCK_PKG_NAME":Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 942
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_0

    .line 943
    const-string v6, "com.skt.t_smart_charge"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 944
    .local v4, "tLock":Landroid/content/pm/ApplicationInfo;
    if-eqz v4, :cond_1

    const/4 v3, 0x1

    .end local v4    # "tLock":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    move v5, v3

    .line 949
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :goto_1
    return v5

    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    .restart local v4    # "tLock":Landroid/content/pm/ApplicationInfo;
    :cond_1
    move v3, v5

    .line 944
    goto :goto_0

    .line 946
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "tLock":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 947
    .local v1, "ex":Ljava/lang/Exception;
    goto :goto_1
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 540
    const-string v1, "AirplaneModeTile"

    const-string v3, "init"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v1}, Lcom/android/systemui/qs/QSTile$Host;->getNetworkController()Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasMobileDataFeature()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 542
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mPhone:Landroid/telephony/TelephonyManager;

    .line 560
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->registerPhoneStateListener(Landroid/content/Context;)V

    .line 566
    :cond_0
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUsb3PopupForVZW:Z

    if-eqz v1, :cond_1

    .line 567
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const-string v3, "usb"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbManager;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 570
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 571
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 572
    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 573
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 574
    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 575
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 576
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mDisableAirplaneModeWhenPUK:Z

    if-eqz v1, :cond_2

    .line 577
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "DSNETWORK"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mdsNetworkObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 580
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 581
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v3}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v3

    if-eqz v3, :cond_3

    :goto_0
    iput v2, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 582
    return-void

    .line 581
    :cond_3
    const/4 v2, 0x2

    goto :goto_0
.end method

.method private isDataCapable(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 821
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 822
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    return v1
.end method

.method private isSecureKeyguard()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 922
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const-string v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 923
    .local v0, "keyguardManager":Landroid/app/KeyguardManager;
    if-nez v0, :cond_1

    .line 926
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isSimCardInserted(I)Z
    .locals 8
    .param p0, "slotidx"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 465
    const-string v6, "ril.MSIMM"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 466
    .local v3, "simMode":Ljava/lang/String;
    const-string v6, "1"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 467
    if-nez p0, :cond_1

    .line 494
    :cond_0
    :goto_0
    return v5

    :cond_1
    move v5, v4

    .line 470
    goto :goto_0

    .line 474
    :cond_2
    const-string v6, "ril.ICC_TYPE"

    const-string v7, "0,0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 475
    .local v1, "iccTemp":Ljava/lang/String;
    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 476
    .local v0, "iccStatusSlot":[Ljava/lang/String;
    array-length v6, v0

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 482
    const/4 v2, 0x0

    .line 483
    .local v2, "key":Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 491
    :goto_1
    if-eqz v2, :cond_0

    const-string v6, ""

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 494
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_3

    :goto_2
    move v5, v4

    goto :goto_0

    .line 485
    :pswitch_0
    aget-object v2, v0, v5

    .line 486
    goto :goto_1

    .line 488
    :pswitch_1
    aget-object v2, v0, v4

    goto :goto_1

    :cond_3
    move v4, v5

    .line 494
    goto :goto_2

    .line 483
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isSupportVoLte()Z
    .locals 9

    .prologue
    const/16 v8, 0x5d

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 826
    const/4 v0, 0x0

    .line 827
    .local v0, "isVolteProvisioned":Z
    const/4 v6, 0x7

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-static {v6, v7}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    .line 828
    .local v1, "mImsInterfaceForGeneral":Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;
    if-eqz v1, :cond_0

    .line 829
    new-array v2, v4, [I

    aput v8, v2, v5

    .line 830
    .local v2, "reqFields":[I
    invoke-interface {v1, v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->getIMSSettingValues([I)Landroid/util/SparseArray;

    move-result-object v3

    .line 831
    .local v3, "result":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const-string v6, "1"

    invoke-virtual {v3, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 832
    const/4 v0, 0x1

    .line 835
    .end local v2    # "reqFields":[I
    .end local v3    # "result":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_0
    if-eqz v0, :cond_1

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->isServiceAvailable(ILandroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    :goto_0
    return v4

    :cond_1
    move v4, v5

    goto :goto_0
.end method

.method private isTSafeLock()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 930
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    if-nez v3, :cond_1

    .line 934
    :cond_0
    :goto_0
    return v2

    .line 931
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->hasTSafeLock()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 933
    const-string v0, "off_menu_setting"

    .line 934
    .local v0, "OFF_MENU_SETTING":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "off_menu_setting"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_2

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method private isVoiceCapable()Z
    .locals 3

    .prologue
    .line 815
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 817
    .local v0, "mgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    return v1
.end method

.method private registerPhoneStateListener(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 430
    const-string v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mPhone:Landroid/telephony/TelephonyManager;

    .line 431
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mPhoneCount:I

    .line 432
    const-string v3, "AirplaneModeTile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerPhoneStateListener: sim# "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mPhoneCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mPhoneCount:I

    new-array v3, v3, [Landroid/telephony/PhoneStateListener;

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    .line 434
    iget v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mPhoneCount:I

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mMSimServiceState:[I

    .line 435
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mPhoneCount:I

    if-ge v0, v3, :cond_3

    .line 436
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    .line 437
    .local v2, "subIdtemp":[I
    if-eqz v2, :cond_0

    .line 438
    aget v1, v2, v6

    .line 439
    .local v1, "subId":I
    const-string v3, "AirplaneModeTile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerPhoneStateListener subId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    if-lez v1, :cond_1

    .line 441
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;

    move-result-object v4

    aput-object v4, v3, v0

    .line 442
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 451
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mMSimServiceState:[I

    aput v6, v3, v0

    .line 435
    .end local v1    # "subId":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 444
    .restart local v1    # "subId":I
    :cond_1
    invoke-static {v6}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->isSimCardInserted(I)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v7}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->isSimCardInserted(I)Z

    move-result v3

    if-nez v3, :cond_2

    if-nez v0, :cond_2

    .line 445
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;

    move-result-object v4

    aput-object v4, v3, v0

    .line 446
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_1

    .line 448
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    const/4 v4, 0x0

    aput-object v4, v3, v0

    goto :goto_1

    .line 454
    .end local v1    # "subId":I
    .end local v2    # "subIdtemp":[I
    :cond_3
    return-void
.end method

.method private setEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 240
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 242
    .local v0, "mgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V

    .line 243
    return-void
.end method

.method private showConfirmCheckboxPopup(ZZ)V
    .locals 18
    .param p1, "state"    # Z
    .param p2, "upgradeLollipop"    # Z

    .prologue
    .line 674
    const/4 v7, 0x0

    .line 675
    .local v7, "isVzwUsb30Popup":Z
    const/4 v4, 0x0

    .line 677
    .local v4, "checkboxshowing":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const v16, 0x7f0400cb

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 678
    .local v2, "airPlaneMessageDataAlertView":Landroid/view/View;
    const v15, 0x7f0f03ea

    invoke-virtual {v2, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 679
    .local v5, "contentText":Landroid/widget/TextView;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-direct {v3, v15}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 680
    .local v3, "builder":Landroid/app/AlertDialog$Builder;
    const v15, 0x7f0f03eb

    invoke-virtual {v2, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    .line 682
    .local v6, "dontShowCheckbox":Landroid/widget/CheckBox;
    new-instance v15, Lcom/android/systemui/qs/tiles/AirplaneModeTile$10;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$10;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)V

    invoke-virtual {v6, v15}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 687
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mUsb3PopupForVZW:Z

    .line 688
    if-eqz v7, :cond_0

    .line 689
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mUsbManager:Landroid/hardware/usb/UsbManager;

    if-eqz v15, :cond_0

    .line 690
    if-eqz v7, :cond_8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v15}, Landroid/hardware/usb/UsbManager;->isUsb30Enabled()Z

    move-result v15

    if-eqz v15, :cond_8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v15}, Landroid/hardware/usb/UsbManager;->isUsb30Available()Z

    move-result v15

    if-eqz v15, :cond_8

    const/4 v7, 0x1

    .line 695
    :cond_0
    :goto_0
    const/4 v14, -0x1

    .line 696
    .local v14, "resTitle":I
    if-eqz p1, :cond_9

    .line 697
    const v14, 0x7f0b0566

    .line 698
    sget-boolean v15, Lcom/android/systemui/statusbar/Feature;->mAirplaneMsgOnlyForVZW:Z

    if-eqz v15, :cond_1

    .line 699
    const v14, 0x7f0b0568

    .line 710
    :cond_1
    :goto_1
    const/4 v12, -0x1

    .line 711
    .local v12, "resOnMessageId":I
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->isVoiceCapable()Z

    move-result v15

    if-nez v15, :cond_b

    .line 712
    const v12, 0x7f0b056b

    .line 723
    :goto_2
    sget-boolean v15, Lcom/android/systemui/statusbar/Feature;->mAirplaneMsgOnlyForVZW:Z

    if-eqz v15, :cond_2

    .line 724
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->isSupportVoLte()Z

    move-result v15

    if-eqz v15, :cond_e

    .line 725
    const v12, 0x7f0b0486

    .line 732
    :cond_2
    :goto_3
    const/4 v11, -0x1

    .line 733
    .local v11, "resOffMessageId":I
    if-eqz v7, :cond_f

    .line 734
    const v11, 0x7f0b0583

    .line 739
    :goto_4
    sget-boolean v15, Lcom/android/systemui/statusbar/Feature;->mAirplaneMsgOnlyForVZW:Z

    if-nez v15, :cond_3

    sget-boolean v15, Lcom/android/systemui/statusbar/Feature;->mAirplaneMsgOnlyForCMCC:Z

    if-eqz v15, :cond_4

    .line 740
    :cond_3
    const/4 v4, 0x1

    .line 743
    :cond_4
    if-eqz p1, :cond_5

    if-nez v4, :cond_6

    .line 744
    :cond_5
    const/16 v15, 0x8

    invoke-virtual {v6, v15}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 747
    :cond_6
    invoke-virtual {v3, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 748
    if-eqz p1, :cond_10

    .end local v12    # "resOnMessageId":I
    :goto_5
    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setText(I)V

    .line 751
    const/4 v13, -0x1

    .line 752
    .local v13, "resPositiveButtonId":I
    if-eqz v7, :cond_11

    if-nez p1, :cond_11

    .line 753
    const v13, 0x1040992

    .line 767
    :goto_6
    new-instance v15, Lcom/android/systemui/qs/tiles/AirplaneModeTile$11;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v15, v0, v1, v6}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$11;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;ZLandroid/widget/CheckBox;)V

    invoke-virtual {v3, v13, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 783
    const/high16 v15, 0x1040000

    new-instance v16, Lcom/android/systemui/qs/tiles/AirplaneModeTile$12;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$12;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)V

    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 789
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 791
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    .line 793
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v16, Lcom/android/systemui/qs/tiles/AirplaneModeTile$13;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$13;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)V

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 798
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v15}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 800
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v15}, Lcom/android/systemui/qs/QSTile$Host;->getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v10

    .line 801
    .local v10, "mKeyguard":Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    if-eqz v10, :cond_7

    .line 802
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v8

    .line 803
    .local v8, "mIsKeyguardOn":Z
    if-eqz v8, :cond_14

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v15

    if-eqz v15, :cond_14

    const/4 v9, 0x1

    .line 805
    .local v9, "mIsKeyguardSecure":Z
    :goto_7
    if-eqz v8, :cond_15

    .line 806
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v15}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    const/16 v16, 0x7d9

    invoke-virtual/range {v15 .. v16}, Landroid/view/Window;->setType(I)V

    .line 811
    .end local v8    # "mIsKeyguardOn":Z
    .end local v9    # "mIsKeyguardSecure":Z
    :cond_7
    :goto_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v15}, Landroid/app/AlertDialog;->show()V

    .line 812
    return-void

    .line 690
    .end local v10    # "mKeyguard":Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    .end local v11    # "resOffMessageId":I
    .end local v13    # "resPositiveButtonId":I
    .end local v14    # "resTitle":I
    :cond_8
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 702
    .restart local v14    # "resTitle":I
    :cond_9
    if-eqz v7, :cond_a

    .line 703
    const v14, 0x7f0b0584

    goto/16 :goto_1

    .line 705
    :cond_a
    const v14, 0x7f0b0567

    goto/16 :goto_1

    .line 714
    .restart local v12    # "resOnMessageId":I
    :cond_b
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v15

    const-string v16, "CscFeature_BT_EnableSeparateSettingWithAirplainMode"

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 715
    const v12, 0x7f0b0569

    goto/16 :goto_2

    .line 716
    :cond_c
    sget-boolean v15, Lcom/android/systemui/statusbar/Feature;->mAirplaneMsgOnlyForCMCC:Z

    if-eqz v15, :cond_d

    .line 717
    const v12, 0x7f0b056c

    goto/16 :goto_2

    .line 719
    :cond_d
    const v12, 0x7f0b05b4

    goto/16 :goto_2

    .line 727
    :cond_e
    const v12, 0x7f0b0488

    goto/16 :goto_3

    .line 736
    .restart local v11    # "resOffMessageId":I
    :cond_f
    const v11, 0x7f0b056a

    goto/16 :goto_4

    :cond_10
    move v12, v11

    .line 748
    goto/16 :goto_5

    .line 755
    .end local v12    # "resOnMessageId":I
    .restart local v13    # "resPositiveButtonId":I
    :cond_11
    if-eqz p1, :cond_13

    .line 756
    sget-boolean v15, Lcom/android/systemui/statusbar/Feature;->mAirplaneMsgOnlyForVZW:Z

    if-eqz v15, :cond_12

    .line 757
    const v13, 0x7f0b00b7

    goto/16 :goto_6

    .line 759
    :cond_12
    const v13, 0x104081a

    goto/16 :goto_6

    .line 762
    :cond_13
    const v13, 0x1040819

    goto/16 :goto_6

    .line 803
    .restart local v8    # "mIsKeyguardOn":Z
    .restart local v10    # "mKeyguard":Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    :cond_14
    const/4 v9, 0x0

    goto :goto_7

    .line 808
    .restart local v9    # "mIsKeyguardSecure":Z
    :cond_15
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v15}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    const/16 v16, 0x7d8

    invoke-virtual/range {v15 .. v16}, Landroid/view/Window;->setType(I)V

    goto :goto_8
.end method

.method private showConfirmPopup(Z)V
    .locals 9
    .param p1, "state"    # Z

    .prologue
    const v6, 0x7f0b056a

    .line 585
    const/4 v0, 0x0

    .line 587
    .local v0, "isVzwUsb30Popup":Z
    if-eqz p1, :cond_4

    const v5, 0x7f0b0566

    .line 590
    .local v5, "resTitle":I
    :goto_0
    const/4 v4, 0x0

    .line 597
    .local v4, "resMsg":I
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mAirplaneMsgOnlyForVZW:Z

    if-eqz v7, :cond_6

    .line 598
    if-eqz p1, :cond_5

    const v4, 0x1040a4a

    .line 605
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->isVoiceCapable()Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "CTC"

    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 606
    if-eqz p1, :cond_a

    const v4, 0x7f0b056b

    .line 610
    :cond_0
    :goto_2
    sget-boolean v6, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v6, :cond_1

    sget-boolean v6, Lcom/android/systemui/statusbar/Feature;->mAirplaneMsgOnlyForVZW:Z

    if-nez v6, :cond_1

    sget-boolean v6, Lcom/android/systemui/statusbar/Feature;->mShowFlightModePopup:Z

    if-eqz v6, :cond_1

    .line 611
    const v5, 0x7f0b0566

    .line 612
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_BT_EnableSeparateSettingWithAirplainMode"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 613
    const v5, 0x7f0b0566

    .line 617
    :cond_1
    sget-boolean v6, Lcom/android/systemui/statusbar/Feature;->mUsb3PopupForVZW:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mUsbManager:Landroid/hardware/usb/UsbManager;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v6}, Landroid/hardware/usb/UsbManager;->isUsb30Available()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v6}, Landroid/hardware/usb/UsbManager;->isUsb30Enabled()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v6}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v6

    if-eqz v6, :cond_2

    .line 620
    const v5, 0x7f0b0584

    .line 621
    const v4, 0x7f0b0583

    .line 623
    const/4 v0, 0x1

    .line 625
    :cond_2
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    if-eqz v0, :cond_b

    const v6, 0x1040992

    :goto_3
    new-instance v8, Lcom/android/systemui/qs/tiles/AirplaneModeTile$8;

    invoke-direct {v8, p0, p1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$8;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Z)V

    invoke-virtual {v7, v6, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/high16 v7, 0x1040000

    new-instance v8, Lcom/android/systemui/qs/tiles/AirplaneModeTile$7;

    invoke-direct {v8, p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$7;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    .line 652
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v7, Lcom/android/systemui/qs/tiles/AirplaneModeTile$9;

    invoke-direct {v7, p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$9;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 657
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v6}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 659
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v6}, Lcom/android/systemui/qs/QSTile$Host;->getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v3

    .line 660
    .local v3, "mKeyguard":Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    if-eqz v3, :cond_3

    .line 661
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v1

    .line 662
    .local v1, "mIsKeyguardOn":Z
    if-eqz v1, :cond_d

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v6

    if-eqz v6, :cond_d

    const/4 v2, 0x1

    .line 664
    .local v2, "mIsKeyguardSecure":Z
    :goto_4
    if-eqz v1, :cond_e

    .line 665
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d9

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    .line 670
    .end local v1    # "mIsKeyguardOn":Z
    .end local v2    # "mIsKeyguardSecure":Z
    :cond_3
    :goto_5
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 671
    return-void

    .line 587
    .end local v3    # "mKeyguard":Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    .end local v4    # "resMsg":I
    .end local v5    # "resTitle":I
    :cond_4
    const v5, 0x7f0b0567

    goto/16 :goto_0

    .restart local v4    # "resMsg":I
    .restart local v5    # "resTitle":I
    :cond_5
    move v4, v6

    .line 598
    goto/16 :goto_1

    .line 599
    :cond_6
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_BT_EnableSeparateSettingWithAirplainMode"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 600
    if-eqz p1, :cond_7

    const v4, 0x7f0b0569

    :goto_6
    goto/16 :goto_1

    :cond_7
    move v4, v6

    goto :goto_6

    .line 602
    :cond_8
    if-eqz p1, :cond_9

    const v4, 0x7f0b05b4

    :goto_7
    goto/16 :goto_1

    :cond_9
    move v4, v6

    goto :goto_7

    .line 606
    :cond_a
    const v4, 0x1040990

    goto/16 :goto_2

    .line 625
    :cond_b
    if-eqz p1, :cond_c

    const v6, 0x104081a

    goto/16 :goto_3

    :cond_c
    const v6, 0x1040819

    goto/16 :goto_3

    .line 662
    .restart local v1    # "mIsKeyguardOn":Z
    .restart local v3    # "mKeyguard":Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    :cond_d
    const/4 v2, 0x0

    goto :goto_4

    .line 667
    .restart local v2    # "mIsKeyguardSecure":Z
    :cond_e
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d8

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    goto :goto_5
.end method

.method private unregisterPhoneStateListener()V
    .locals 4

    .prologue
    .line 457
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mPhoneCount:I

    if-ge v0, v1, :cond_1

    .line 458
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 459
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 457
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 462
    :cond_1
    return-void
.end method


# virtual methods
.method public getActionTypeOnCover()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 909
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mShowFlightModePopup:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mAirplaneMsgOnlyForCMCC:Z

    if-eqz v1, :cond_1

    .line 910
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tw_globalactions_dont_show_again"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v1}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v1

    if-nez v1, :cond_1

    .line 912
    const/4 v0, 0x1

    .line 917
    :cond_1
    return v0
.end method

.method public handleClick()V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 161
    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->mIsLDUDevice:Z

    if-eqz v5, :cond_1

    .line 162
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const v7, 0x7f0b0631

    invoke-static {v5, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 163
    const-string v5, "AirplaneModeTile"

    const-string v6, "handleClick : LDU device"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->mIsSKTOperator:Z

    if-eqz v5, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->isTSafeLock()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->isSecureKeyguard()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 168
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const v7, 0x7f0b056d

    invoke-static {v5, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 172
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 173
    .local v0, "currentTime":J
    iget-wide v8, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mClickedTime:J

    sub-long v8, v0, v8

    const-wide/16 v10, 0x1f4

    cmp-long v5, v8, v10

    if-gez v5, :cond_3

    .line 174
    const-string v5, "AirplaneModeTile"

    const-string v6, "handleClick() ignored. within 500ms"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 177
    :cond_3
    iput-wide v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mClickedTime:J

    .line 180
    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "false"

    aput-object v5, v4, v7

    .line 181
    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const-string v8, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v9, "isAirplaneModeAllowed"

    invoke-static {v5, v8, v9, v4}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 183
    .local v2, "isAirplaneModeAllowed":I
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const-string v8, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v9, "isSettingsChangesAllowed"

    invoke-static {v5, v8, v9, v4}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 185
    .local v3, "isSettingsChangesAllowed":I
    if-eq v2, v12, :cond_5

    if-eq v3, v12, :cond_5

    .line 186
    if-eqz v2, :cond_4

    if-nez v3, :cond_5

    .line 187
    :cond_4
    const-string v5, "AirplaneModeTile"

    const-string v6, "onClick(): AirplaneMode state change is not allowed by EDM"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 193
    :cond_5
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isCoveredState()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 194
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v5, p0}, Lcom/android/systemui/qs/QSTile$Host;->onClickQSButtonOnKeyguard(Lcom/android/systemui/qs/QSTile;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 199
    :cond_6
    const-string v8, "AirplaneModeTile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleClick : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v5, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v5, v5, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ", mSetting.getValue()="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v9}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v5, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v5, v5, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-eq v5, v13, :cond_0

    .line 204
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v5, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v5, v5, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v5, v6, :cond_7

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v5}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v5

    if-eq v5, v6, :cond_8

    :cond_7
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v5, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v5, v5, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v8, 0x2

    if-ne v5, v8, :cond_0

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v5}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v5

    if-nez v5, :cond_0

    .line 208
    :cond_8
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->refreshState(Ljava/lang/Object;)V

    .line 210
    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v5, :cond_11

    .line 211
    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->mAirplaneMsgOnlyForVZW:Z

    if-nez v5, :cond_9

    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->mAirplaneMsgOnlyForCMCC:Z

    if-eqz v5, :cond_f

    .line 212
    :cond_9
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "tw_globalactions_dont_show_again"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_b

    .line 213
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v5}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v5

    if-nez v5, :cond_a

    move v5, v6

    :goto_1
    invoke-direct {p0, v5, v6}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->showConfirmCheckboxPopup(ZZ)V

    goto/16 :goto_0

    :cond_a
    move v5, v7

    goto :goto_1

    .line 215
    :cond_b
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v5}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v5

    if-eqz v5, :cond_d

    .line 216
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v5}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v5

    if-nez v5, :cond_c

    move v7, v6

    :cond_c
    invoke-direct {p0, v7, v6}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->showConfirmCheckboxPopup(ZZ)V

    goto/16 :goto_0

    .line 218
    :cond_d
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v5}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v5

    if-nez v5, :cond_e

    :goto_2
    invoke-direct {p0, v6}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_e
    move v6, v7

    goto :goto_2

    .line 222
    :cond_f
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v5}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v5

    if-nez v5, :cond_10

    :goto_3
    invoke-direct {p0, v6}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->showConfirmPopup(Z)V

    goto/16 :goto_0

    :cond_10
    move v6, v7

    goto :goto_3

    .line 225
    :cond_11
    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->mShowFlightModePopup:Z

    if-nez v5, :cond_12

    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->mAirplaneMsgOnlyForCMCC:Z

    if-eqz v5, :cond_16

    .line 226
    :cond_12
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "tw_globalactions_dont_show_again"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_14

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v5}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v5

    if-nez v5, :cond_14

    .line 228
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v5}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v5

    if-nez v5, :cond_13

    :goto_4
    invoke-direct {p0, v6, v7}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->showConfirmCheckboxPopup(ZZ)V

    goto/16 :goto_0

    :cond_13
    move v6, v7

    goto :goto_4

    .line 230
    :cond_14
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v5}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v5

    if-nez v5, :cond_15

    :goto_5
    invoke-direct {p0, v6}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_15
    move v6, v7

    goto :goto_5

    .line 233
    :cond_16
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v5}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v5

    if-nez v5, :cond_17

    :goto_6
    invoke-direct {p0, v6}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_17
    move v6, v7

    goto :goto_6
.end method

.method protected handleDestroy()V
    .locals 2

    .prologue
    .line 842
    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    .line 843
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 844
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 845
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDisableAirplaneModeWhenPUK:Z

    if-eqz v0, :cond_0

    .line 846
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mdsNetworkObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 848
    :cond_0
    return-void
.end method

.method public handleLongClick()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x1

    .line 857
    const-string v4, "AirplaneModeTile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleLongClick : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v3, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v3, v3, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mIsLDUDevice:Z

    if-eqz v3, :cond_0

    .line 859
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0631

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 860
    const-string v3, "AirplaneModeTile"

    const-string v4, "handleLongClick : LDU device"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    :goto_0
    return-void

    .line 864
    :cond_0
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mIsSKTOperator:Z

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->isTSafeLock()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->isSecureKeyguard()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 865
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const v4, 0x7f0b056d

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 870
    :cond_1
    new-array v2, v6, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "true"

    aput-object v4, v2, v3

    .line 871
    .local v2, "selectionArgs":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const-string v4, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v5, "isAirplaneModeAllowed"

    invoke-static {v3, v4, v5, v2}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 873
    .local v0, "isAirplaneModeAllowed":I
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const-string v4, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v5, "isSettingsChangesAllowed"

    invoke-static {v3, v4, v5, v2}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 875
    .local v1, "isSettingsChangesAllowed":I
    if-eq v0, v7, :cond_3

    if-eq v1, v7, :cond_3

    .line 876
    if-eqz v0, :cond_2

    if-nez v1, :cond_3

    .line 877
    :cond_2
    const-string v3, "AirplaneModeTile"

    const-string v4, "handleLongClick(): Setting access is not allowed by EDM"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 884
    :cond_3
    const-string v3, "android.settings.AIRPLANE_MODE_SETTINGS"

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->startSettingsActivity(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleSecondaryClick()V
    .locals 0

    .prologue
    .line 852
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->handleLongClick()V

    .line 853
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 4
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const v3, 0x7f0b0419

    .line 255
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 256
    .local v0, "value":I
    :goto_0
    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 258
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    .line 259
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0418

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    .line 275
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V

    .line 276
    packed-switch v0, :pswitch_data_0

    .line 294
    :goto_1
    return-void

    .line 255
    .end local v0    # "value":I
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    .line 278
    .end local p2    # "arg":Ljava/lang/Object;
    .restart local v0    # "value":I
    :pswitch_0
    const v1, 0x7f0b041a

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 283
    :pswitch_1
    const v1, 0x7f0b041b

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 288
    :pswitch_2
    const v1, 0x7f0b041c

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 276
    nop

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
    .line 84
    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    .end local p1    # "x0":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$MultiState;
    .locals 1

    .prologue
    .line 135
    new-instance v0, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$MultiState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 0
    .param p1, "listening"    # Z

    .prologue
    .line 324
    return-void
.end method
