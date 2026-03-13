.class public Lcom/android/systemui/qs/tiles/WifiTile;
.super Lcom/android/systemui/qs/QSTile;
.source "WifiTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$MultiState;",
        ">;"
    }
.end annotation


# static fields
.field private static final EXTRA_CALLED_DIALOG:Ljava/lang/String; = "called_dialog"

.field private static final EXTRA_INFO_TYPE:Ljava/lang/String; = "info_type"

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-WifiTile"

.field private static final WIFI_DIALOG_CANCEL_ACTION:Ljava/lang/String; = "com.samsung.android.net.wifi.WIFI_DIALOG_CANCEL_ACTION"

.field private static final WIFI_DIALOG_ENABLING_WIFI:I = 0x1


# instance fields
.field private INFO_TYPE_DPM_WIFI:I

.field private INFO_TYPE_UNABLE_TO_TURNON_WIFI:I

.field private isRegistered:Z

.field private final mCallback:Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;

.field private final mController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private mIconDim:Lcom/android/systemui/qs/QSTile$Icon;

.field private mIconOff:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/qs/QSTile",
            "<",
            "Lcom/android/systemui/qs/QSTile$MultiState;",
            ">.AnimationIcon;>;"
        }
    .end annotation
.end field

.field private mIconOn:Lcom/android/systemui/qs/QSTile$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/QSTile",
            "<",
            "Lcom/android/systemui/qs/QSTile$MultiState;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private mLastWifiState:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSettingToddlerMode:Lcom/android/systemui/qs/ToddlerModeSetting;

.field private mWifiConnected:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiName:Ljava/lang/String;

.field private mWifiSignalIconResId:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 3
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 70
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->INFO_TYPE_DPM_WIFI:I

    .line 71
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->INFO_TYPE_UNABLE_TO_TURNON_WIFI:I

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->isRegistered:Z

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mIconOff:Ljava/util/List;

    .line 90
    new-instance v0, Lcom/android/systemui/qs/tiles/WifiTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/WifiTile$1;-><init>(Lcom/android/systemui/qs/tiles/WifiTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 437
    new-instance v0, Lcom/android/systemui/qs/tiles/WifiTile$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/WifiTile$2;-><init>(Lcom/android/systemui/qs/tiles/WifiTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mCallback:Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;

    .line 125
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 126
    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getNetworkController()Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 127
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/tiles/WifiTile;->getWiFiState(I)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 131
    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mSupportToddlerMode:Z

    if-eqz v0, :cond_1

    .line 132
    new-instance v0, Lcom/android/systemui/qs/ToddlerModeSetting;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/qs/ToddlerModeSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mSettingToddlerMode:Lcom/android/systemui/qs/ToddlerModeSetting;

    .line 133
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mSettingToddlerMode:Lcom/android/systemui/qs/ToddlerModeSetting;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/ToddlerModeSetting;->setListening(Z)V

    .line 136
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->init()V

    .line 137
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/qs/tiles/WifiTile;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiTile;
    .param p1, "x1"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mLastWifiState:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/WifiTile;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiTile;
    .param p1, "x1"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/WifiTile;->getWiFiState(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/tiles/WifiTile;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiTile;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/systemui/qs/tiles/WifiTile;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiTile;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/tiles/WifiTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiTile;

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiConnected:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/systemui/qs/tiles/WifiTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiTile;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiConnected:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/android/systemui/qs/tiles/WifiTile;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiTile;
    .param p1, "x1"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiSignalIconResId:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/qs/QSTile$State;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiTile;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/qs/tiles/WifiTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/WifiTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/WifiTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/WifiTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/WifiTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/WifiTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/qs/QSTile$State;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiTile;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/WifiTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/WifiTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/WifiTile;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiTile;

    .prologue
    .line 63
    iget v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->INFO_TYPE_DPM_WIFI:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/WifiTile;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiTile;

    .prologue
    .line 63
    iget v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->INFO_TYPE_UNABLE_TO_TURNON_WIFI:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/qs/QSTile$State;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiTile;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/tiles/WifiTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/WifiTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method private checkAndShowToastMessage()V
    .locals 4

    .prologue
    .line 428
    :try_start_0
    const-string v2, "STATUSBAR-WifiTile"

    const-string v3, "WiFi restricted by Device Management."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 430
    .local v1, "wifiToastIntent":Landroid/content/Intent;
    const-string v2, "info_type"

    iget v3, p0, Lcom/android/systemui/qs/tiles/WifiTile;->INFO_TYPE_DPM_WIFI:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 431
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    .end local v1    # "wifiToastIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 432
    :catch_0
    move-exception v0

    .line 433
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "STATUSBAR-WifiTile"

    const-string v3, "checkAndShowToastMessage"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getQsAnimationIcon(Lcom/android/systemui/qs/QSTile$MultiState;)Lcom/android/systemui/qs/QSTile$Icon;
    .locals 3
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;

    .prologue
    .line 369
    const/4 v0, 0x0

    .line 371
    .local v0, "icon":Lcom/android/systemui/qs/QSTile$Icon;
    iget v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 373
    iget v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiSignalIconResId:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiSignalIconResId:I

    invoke-static {v1}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v0

    .line 382
    :goto_0
    return-object v0

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mIconOn:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    goto :goto_0

    .line 375
    :cond_1
    iget v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 376
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mIconOff:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "icon":Lcom/android/systemui/qs/QSTile$Icon;
    check-cast v0, Lcom/android/systemui/qs/QSTile$Icon;

    .restart local v0    # "icon":Lcom/android/systemui/qs/QSTile$Icon;
    goto :goto_0

    .line 379
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mIconDim:Lcom/android/systemui/qs/QSTile$Icon;

    goto :goto_0
.end method

.method private getWiFiState(I)I
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 162
    const-string v0, "STATUSBAR-WifiTile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWiFiState : WifiManager.WIFI_STATE="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    packed-switch p1, :pswitch_data_0

    .line 178
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 165
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 171
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 175
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;

    .prologue
    const v1, 0x7f020746

    .line 343
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v0, :cond_2

    .line 344
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mQsAnimationIcon:Z

    if-eqz v0, :cond_1

    .line 345
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/WifiTile;->getQsAnimationIcon(Lcom/android/systemui/qs/QSTile$MultiState;)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 347
    iget-object v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    if-nez v0, :cond_0

    .line 348
    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 354
    :cond_2
    iget v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 356
    :pswitch_0
    const v0, 0x7f020747

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 359
    :pswitch_1
    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 362
    :pswitch_2
    const v0, 0x7f020745

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 354
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private init()V
    .locals 7

    .prologue
    .line 141
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 142
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    const-string v3, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    const-string v3, "com.samsung.android.net.wifi.WIFI_DIALOG_CANCEL_ACTION"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    const-string v3, "com.samsung.android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 149
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mQsAnimationIcon:Z

    if-eqz v3, :cond_0

    .line 150
    const v2, 0x7f020320

    .line 152
    .local v2, "offResId":I
    const v3, 0x7f020325

    invoke-static {v3}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mIconDim:Lcom/android/systemui/qs/QSTile$Icon;

    .line 153
    new-instance v3, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v4, 0x7f020326

    sget-object v5, Lcom/android/systemui/qs/QSTile$AnimType;->DIM:Lcom/android/systemui/qs/QSTile$AnimType;

    invoke-direct {v3, p0, v4, v5}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;ILcom/android/systemui/qs/QSTile$AnimType;)V

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mIconOn:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 155
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x5

    if-ge v1, v3, :cond_0

    .line 156
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mIconOff:Ljava/util/List;

    new-instance v4, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    add-int v5, v2, v1

    sget-object v6, Lcom/android/systemui/qs/QSTile$AnimType;->DIM:Lcom/android/systemui/qs/QSTile$AnimType;

    invoke-direct {v4, p0, v5, v6}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;ILcom/android/systemui/qs/QSTile$AnimType;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 159
    .end local v1    # "i":I
    .end local v2    # "offResId":I
    :cond_0
    return-void
.end method


# virtual methods
.method public getActionTypeOnCover()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 526
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v0, v1, :cond_0

    .line 527
    const/4 v0, 0x2

    .line 529
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected handleClick()V
    .locals 13

    .prologue
    const/4 v12, -0x1

    const/4 v0, 0x5

    const/4 v11, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 220
    const-string v4, "STATUSBAR-WifiTile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleClick : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v1, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mLastWifiState:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v1, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_1

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_3

    .line 225
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v1, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v1, v11, :cond_2

    iget v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mLastWifiState:I

    const/4 v4, 0x3

    if-eq v1, v4, :cond_0

    .line 226
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v1, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v1, v2, :cond_3

    iget v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mLastWifiState:I

    if-eq v1, v2, :cond_0

    .line 229
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v1, p0}, Lcom/android/systemui/qs/QSTile$Host;->onClickQSButtonOnKeyguard(Lcom/android/systemui/qs/QSTile;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 233
    new-array v9, v2, [Ljava/lang/String;

    const-string v1, "false"

    aput-object v1, v9, v3

    .line 234
    .local v9, "selectionArgsFalse":[Ljava/lang/String;
    new-array v10, v2, [Ljava/lang/String;

    const-string v1, "true"

    aput-object v1, v10, v3

    .line 236
    .local v10, "selectionArgsTrue":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    const-string v4, "content://com.sec.knox.provider2/WifiPolicy"

    const-string v5, "isWifiStateChangeAllowed"

    invoke-static {v1, v4, v5}, Lcom/android/systemui/qs/tiles/WifiTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 239
    .local v8, "isWifiStateChangeAllowed":I
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    const-string v4, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string v5, "isWifiEnabled"

    invoke-static {v1, v4, v5, v10}, Lcom/android/systemui/qs/tiles/WifiTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 242
    .local v7, "isWifiAllowed":I
    if-eq v7, v12, :cond_5

    if-eq v8, v12, :cond_5

    .line 243
    if-eqz v7, :cond_4

    if-nez v8, :cond_5

    .line 244
    :cond_4
    const-string v0, "STATUSBAR-WifiTile"

    const-string v1, "onClick(): Wifi state change is not allowed - isWifiAllowed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    if-nez v7, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->checkAndShowToastMessage()V

    goto :goto_0

    .line 250
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    const-string v4, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v5, "isSettingsChangesAllowed"

    invoke-static {v1, v4, v5, v9}, Lcom/android/systemui/qs/tiles/WifiTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 254
    .local v6, "isSettingsChangesAllowed":I
    if-eq v6, v12, :cond_6

    if-nez v6, :cond_6

    .line 255
    const-string v0, "STATUSBAR-WifiTile"

    const-string v1, "onClick(): Wifi state change is not allowed by EDM"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 261
    :cond_6
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mSupportToddlerMode:Z

    if-eqz v1, :cond_7

    .line 262
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mSettingToddlerMode:Lcom/android/systemui/qs/ToddlerModeSetting;

    invoke-virtual {v1}, Lcom/android/systemui/qs/ToddlerModeSetting;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 263
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mSettingToddlerMode:Lcom/android/systemui/qs/ToddlerModeSetting;

    const v1, 0x7f0b0495

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/ToddlerModeSetting;->showToast(I)V

    goto/16 :goto_0

    .line 269
    :cond_7
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/WifiTile;->refreshState(Ljava/lang/Object;)V

    .line 270
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_b

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v1, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v1, v11, :cond_9

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 272
    const-string v1, "STATUSBAR-WifiTile"

    const-string v4, "onClick setWifiEnabled"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mQsAnimationIcon:Z

    if-eqz v1, :cond_8

    .line 275
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v1, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v1, v11, :cond_a

    .line 276
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mIconOn:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSTile$AnimationIcon;->setAllowAnimation(Z)V

    .line 282
    :cond_8
    :goto_2
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Enabling Wifi"

    move v1, v0

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 296
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v0, v11, :cond_0

    .line 297
    invoke-static {v2}, Lcom/android/systemui/wifi/WifiStatusReceiver;->enableToShowWifiPickerDialog(Z)V

    goto/16 :goto_0

    :cond_9
    move v1, v3

    .line 270
    goto :goto_1

    .line 278
    :cond_a
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mIconOff:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSTile$AnimationIcon;->setAllowAnimation(Z)V

    goto :goto_2

    .line 287
    :cond_b
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v1, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/WifiTile;->refreshState(Ljava/lang/Object;)V

    .line 288
    const-string v1, "STATUSBAR-WifiTile"

    const-string v3, "!setWifiEnabled"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Disabling Wifi"

    move v1, v0

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method protected handleDestroy()V
    .locals 2

    .prologue
    .line 212
    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    .line 213
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 215
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mSupportToddlerMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mSettingToddlerMode:Lcom/android/systemui/qs/ToddlerModeSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/ToddlerModeSetting;->setListening(Z)V

    .line 216
    :cond_0
    return-void
.end method

.method public handleLongClick()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 393
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/WifiTile;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleLongClick : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v4, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v4, v4, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    new-array v2, v9, [Ljava/lang/String;

    const-string v4, "false"

    aput-object v4, v2, v8

    .line 397
    .local v2, "selectionArgsFalse":[Ljava/lang/String;
    new-array v3, v9, [Ljava/lang/String;

    const-string v4, "true"

    aput-object v4, v3, v8

    .line 399
    .local v3, "selectionArgsTrue":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    const-string v5, "content://com.sec.knox.provider2/WifiPolicy"

    const-string v6, "isWifiStateChangeAllowed"

    invoke-static {v4, v5, v6, v2}, Lcom/android/systemui/qs/tiles/WifiTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 403
    .local v1, "isWifiAllowed":I
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    const-string v5, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v6, "isSettingsChangesAllowed"

    invoke-static {v4, v5, v6, v3}, Lcom/android/systemui/qs/tiles/WifiTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 407
    .local v0, "isSettingsChangesAllowed":I
    if-eq v1, v7, :cond_1

    if-eq v0, v7, :cond_1

    .line 408
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 410
    :cond_0
    const-string v4, "STATUSBAR-WifiTile"

    const-string v5, "handleLongClick(): settign access is not allowed by EDM"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :goto_0
    return-void

    .line 416
    :cond_1
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mSupportToddlerMode:Z

    if-eqz v4, :cond_2

    .line 417
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mSettingToddlerMode:Lcom/android/systemui/qs/ToddlerModeSetting;

    invoke-virtual {v4}, Lcom/android/systemui/qs/ToddlerModeSetting;->isActivated()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 418
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mSettingToddlerMode:Lcom/android/systemui/qs/ToddlerModeSetting;

    const v5, 0x7f0b0495

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/ToddlerModeSetting;->showToast(I)V

    goto :goto_0

    .line 423
    :cond_2
    const-string v4, "com.android.settings"

    const-string v5, "com.android.settings.Settings$WifiSettingsActivity"

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/qs/tiles/WifiTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleSecondaryClick()V
    .locals 0

    .prologue
    .line 388
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->handleLongClick()V

    .line 389
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 7
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const v6, 0x7f0b041a

    const/4 v5, 0x1

    const/4 v3, 0x0

    const v4, 0x7f0b0420

    .line 305
    instance-of v2, p2, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 306
    .local v1, "value":I
    :goto_0
    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 307
    iput-boolean v5, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    .line 308
    iput-boolean v3, p1, Lcom/android/systemui/qs/QSTile$MultiState;->textTruncate:Z

    .line 309
    iput-boolean v3, p1, Lcom/android/systemui/qs/QSTile$MultiState;->textEllipsis:Z

    .line 310
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0445

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    .line 311
    iget-object v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->pairedDeviceName:Ljava/lang/String;

    .line 313
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/WifiTile;->handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V

    .line 314
    packed-switch v1, :pswitch_data_0

    .line 340
    :cond_0
    :goto_1
    return-void

    .line 305
    .end local v1    # "value":I
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v1, v2, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    .line 316
    .end local p2    # "arg":Ljava/lang/Object;
    .restart local v1    # "value":I
    :pswitch_0
    invoke-virtual {p0, v4, v6}, Lcom/android/systemui/qs/tiles/WifiTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    .line 319
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiConnected:Z

    if-eqz v2, :cond_0

    .line 320
    iput-boolean v5, p1, Lcom/android/systemui/qs/QSTile$MultiState;->textEllipsis:Z

    .line 321
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiName:Ljava/lang/String;

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->pairedDeviceName:Ljava/lang/String;

    .line 323
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4, v6}, Lcom/android/systemui/qs/tiles/WifiTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, "fullContent":Ljava/lang/String;
    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 330
    .end local v0    # "fullContent":Ljava/lang/String;
    :pswitch_1
    const v2, 0x7f0b041b

    invoke-virtual {p0, v4, v2}, Lcom/android/systemui/qs/tiles/WifiTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 335
    :pswitch_2
    const v2, 0x7f0b041c

    invoke-virtual {p0, v4, v2}, Lcom/android/systemui/qs/tiles/WifiTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 314
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
    .line 63
    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    .end local p1    # "x0":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/WifiTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$MultiState;
    .locals 1

    .prologue
    .line 184
    new-instance v0, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$MultiState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 204
    if-eqz p1, :cond_0

    .line 205
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mCallback:Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->addNetworkSignalChangedCallback(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V

    .line 208
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mCallback:Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeNetworkSignalChangedCallback(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V

    goto :goto_0
.end method

.method public userSwitch(I)V
    .locals 1
    .param p1, "newUserId"    # I

    .prologue
    .line 520
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mSupportToddlerMode:Z

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mSettingToddlerMode:Lcom/android/systemui/qs/ToddlerModeSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/ToddlerModeSetting;->userSwitched(I)V

    .line 522
    :cond_0
    return-void
.end method
