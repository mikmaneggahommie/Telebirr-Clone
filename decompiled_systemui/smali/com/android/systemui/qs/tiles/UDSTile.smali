.class public Lcom/android/systemui/qs/tiles/UDSTile;
.super Lcom/android/systemui/qs/QSTile;
.source "UDSTile.java"


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
.field private static final TAG:Ljava/lang/String; = "UDSTile"

.field private static mBeforeDataOff:Z

.field private static mDisplayDialog:Z

.field private static mIsCheckboxChecked:Z


# instance fields
.field private final mAirplane:Lcom/android/systemui/qs/GlobalSetting;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mDataMonitor:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field sharedpreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 68
    sput-boolean v0, Lcom/android/systemui/qs/tiles/UDSTile;->mBeforeDataOff:Z

    .line 69
    sput-boolean v0, Lcom/android/systemui/qs/tiles/UDSTile;->mDisplayDialog:Z

    .line 71
    sput-boolean v0, Lcom/android/systemui/qs/tiles/UDSTile;->mIsCheckboxChecked:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 4
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 73
    new-instance v0, Lcom/android/systemui/qs/tiles/UDSTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/UDSTile$1;-><init>(Lcom/android/systemui/qs/tiles/UDSTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 107
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mContext:Landroid/content/Context;

    const-string v1, "DATASAVING_PREFRENCE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/UDSTile;->sharedpreferences:Landroid/content/SharedPreferences;

    .line 130
    new-instance v0, Lcom/android/systemui/qs/tiles/UDSTile$2;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v3, "airplane_mode_on"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/UDSTile$2;-><init>(Lcom/android/systemui/qs/tiles/UDSTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mAirplane:Lcom/android/systemui/qs/GlobalSetting;

    .line 155
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/UDSTile;->init()V

    .line 156
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/UDSTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/UDSTile;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mDataMonitor:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/qs/tiles/UDSTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/UDSTile;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mDataMonitor:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/UDSTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/UDSTile;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/UDSTile;->updateStatus()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/tiles/UDSTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/UDSTile;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/tiles/UDSTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/UDSTile;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/tiles/UDSTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/UDSTile;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/tiles/UDSTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/UDSTile;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/qs/tiles/UDSTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/UDSTile;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/qs/tiles/UDSTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/UDSTile;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/qs/tiles/UDSTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/UDSTile;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/qs/tiles/UDSTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/UDSTile;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/UDSTile;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/UDSTile;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 60
    sput-boolean p0, Lcom/android/systemui/qs/tiles/UDSTile;->mDisplayDialog:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/UDSTile;)Lcom/android/systemui/qs/GlobalSetting;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/UDSTile;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mAirplane:Lcom/android/systemui/qs/GlobalSetting;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/UDSTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/UDSTile;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/UDSTile;->isSimPresent()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/UDSTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/UDSTile;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700()Z
    .locals 1

    .prologue
    .line 60
    sget-boolean v0, Lcom/android/systemui/qs/tiles/UDSTile;->mBeforeDataOff:Z

    return v0
.end method

.method static synthetic access$702(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 60
    sput-boolean p0, Lcom/android/systemui/qs/tiles/UDSTile;->mBeforeDataOff:Z

    return p0
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/UDSTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/UDSTile;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900()Z
    .locals 1

    .prologue
    .line 60
    sget-boolean v0, Lcom/android/systemui/qs/tiles/UDSTile;->mIsCheckboxChecked:Z

    return v0
.end method

.method static synthetic access$902(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 60
    sput-boolean p0, Lcom/android/systemui/qs/tiles/UDSTile;->mIsCheckboxChecked:Z

    return p0
.end method

.method private displaydialog()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 273
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mContext:Landroid/content/Context;

    const v4, 0x7f04001a

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 274
    .local v1, "dialogView":Landroid/view/View;
    const v3, 0x7f0f00f9

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 275
    .local v0, "checkBox":Landroid/widget/CheckBox;
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "checkboxchecked"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v7, :cond_0

    .line 276
    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 277
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    sput-boolean v3, Lcom/android/systemui/qs/tiles/UDSTile;->mIsCheckboxChecked:Z

    .line 282
    :goto_0
    new-instance v3, Lcom/android/systemui/qs/tiles/UDSTile$5;

    invoke-direct {v3, p0, v0}, Lcom/android/systemui/qs/tiles/UDSTile$5;-><init>(Lcom/android/systemui/qs/tiles/UDSTile;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0b0499

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0b04a1

    new-instance v5, Lcom/android/systemui/qs/tiles/UDSTile$7;

    invoke-direct {v5, p0}, Lcom/android/systemui/qs/tiles/UDSTile$7;-><init>(Lcom/android/systemui/qs/tiles/UDSTile;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0b05ad

    new-instance v5, Lcom/android/systemui/qs/tiles/UDSTile$6;

    invoke-direct {v5, p0}, Lcom/android/systemui/qs/tiles/UDSTile$6;-><init>(Lcom/android/systemui/qs/tiles/UDSTile;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mAlertDialog:Landroid/app/AlertDialog;

    .line 328
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v4, Lcom/android/systemui/qs/tiles/UDSTile$8;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/tiles/UDSTile$8;-><init>(Lcom/android/systemui/qs/tiles/UDSTile;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 337
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v3}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 338
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mContext:Landroid/content/Context;

    const-string v4, "keyguard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    .line 339
    .local v2, "kgm":Landroid/app/KeyguardManager;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 340
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 344
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 345
    return-void

    .line 279
    .end local v2    # "kgm":Landroid/app/KeyguardManager;
    :cond_0
    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 280
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    sput-boolean v3, Lcom/android/systemui/qs/tiles/UDSTile;->mIsCheckboxChecked:Z

    goto :goto_0

    .line 342
    .restart local v2    # "kgm":Landroid/app/KeyguardManager;
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d8

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    goto :goto_1
.end method

.method private handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V
    .locals 4
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;

    .prologue
    const v3, 0x7f020731

    .line 396
    const-string v0, "UDSTile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleUpdateIconState state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    packed-switch v0, :pswitch_data_0

    .line 406
    iput v3, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 409
    :goto_0
    return-void

    .line 400
    :pswitch_0
    const v0, 0x7f020732

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 403
    :pswitch_1
    iput v3, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 398
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 159
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mAirplane:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v3}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/UDSTile;->isSimPresent()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 160
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "udsState"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_0

    move v1, v2

    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mDataMonitor:Z

    .line 164
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mDataMonitor:Z

    sput-boolean v1, Lcom/android/systemui/qs/tiles/UDSTile;->mBeforeDataOff:Z

    .line 165
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/UDSTile;->updateStatus()V

    .line 167
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 168
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.android.sm.app.datausage.intent.action.update_notification_panel_icons"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    const-string v1, "com.samsung.android.sm.app.datausage.intent.action.first"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 174
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mAirplane:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 175
    return-void

    .line 162
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mDataMonitor:Z

    goto :goto_0
.end method

.method private isSimPresent()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 187
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 188
    .local v0, "simState":I
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 189
    .local v1, "telManager":Landroid/telephony/TelephonyManager;
    const-string v3, "UDSTile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSimPresent getSimState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    if-eq v0, v2, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v2, 0x0

    :cond_1
    return v2
.end method

.method private updateStatus()V
    .locals 1

    .prologue
    .line 367
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mDataMonitor:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/UDSTile;->refreshState(Ljava/lang/Object;)V

    .line 368
    return-void

    .line 367
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method


# virtual methods
.method protected handleClick()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 205
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v2, p0}, Lcom/android/systemui/qs/QSTile$Host;->onClickQSButtonOnKeyguard(Lcom/android/systemui/qs/QSTile;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 270
    :goto_0
    return-void

    .line 209
    :cond_0
    sget-boolean v2, Lcom/android/systemui/qs/tiles/UDSTile;->mDisplayDialog:Z

    if-eqz v2, :cond_1

    .line 210
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v2}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    goto :goto_0

    .line 214
    :cond_1
    const-string v3, "UDSTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleClick mState = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v2, v2, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const-string v2, "UDSTile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleClick mAirplane.value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mAirplane:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v4}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mAirplane:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v2}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 217
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mContext:Landroid/content/Context;

    const v3, 0x7f0b04a2

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 219
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/UDSTile;->isSimPresent()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 220
    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mDataMonitor:Z

    if-nez v2, :cond_4

    .line 221
    const-string v2, "UDSTile"

    const-string v3, "handleClick displaydialog"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/UDSTile;->sharedpreferences:Landroid/content/SharedPreferences;

    const-string v3, "isFirst"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 223
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v2}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 225
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.android.sm.app.datausage.intent.action.launch_notification_panel"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 226
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "DataMonitor"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 227
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 228
    const-string v2, "UDSTile"

    const-string v3, "sendBroadcast DataMonitor true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 230
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/UDSTile;->displaydialog()V

    .line 231
    sput-boolean v5, Lcom/android/systemui/qs/tiles/UDSTile;->mDisplayDialog:Z

    goto/16 :goto_0

    .line 234
    :cond_4
    iput-boolean v6, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mDataMonitor:Z

    .line 235
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/UDSTile;->updateStatus()V

    .line 236
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "udsState"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 237
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.android.sm.app.datausage.intent.action.launch_notification_panel"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 238
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "DataMonitor"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 239
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 240
    const-string v2, "UDSTile"

    const-string v3, "sendBroadcast DataMonitor false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 243
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_5
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b0471

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0472

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/systemui/qs/tiles/UDSTile$3;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/tiles/UDSTile$3;-><init>(Lcom/android/systemui/qs/tiles/UDSTile;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mAlertDialog:Landroid/app/AlertDialog;

    .line 254
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v3, Lcom/android/systemui/qs/tiles/UDSTile$4;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/tiles/UDSTile$4;-><init>(Lcom/android/systemui/qs/tiles/UDSTile;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 260
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v2}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 261
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mContext:Landroid/content/Context;

    const-string v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 262
    .local v1, "kgm":Landroid/app/KeyguardManager;
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 263
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 267
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 268
    sput-boolean v5, Lcom/android/systemui/qs/tiles/UDSTile;->mDisplayDialog:Z

    goto/16 :goto_0

    .line 265
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    goto :goto_1
.end method

.method protected handleDestroy()V
    .locals 2

    .prologue
    .line 413
    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    .line 414
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 416
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mAirplane:Lcom/android/systemui/qs/GlobalSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 417
    return-void
.end method

.method public handleLongClick()V
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v0}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 350
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/UDSTile;->launchUltraDataSavingApp()V

    .line 351
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 6
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const v5, 0x7f0b0451

    .line 372
    instance-of v2, p2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 373
    .local v0, "value":I
    :goto_0
    const-string v2, "UDSTile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleUpdateState value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 375
    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    .line 376
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    .line 377
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/UDSTile;->handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V

    .line 378
    packed-switch v0, :pswitch_data_0

    .line 393
    :goto_1
    return-void

    .line 372
    .end local v0    # "value":I
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mDataMonitor:Z

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 380
    .end local p2    # "arg":Ljava/lang/Object;
    .restart local v0    # "value":I
    :pswitch_0
    const v1, 0x7f0b041a

    invoke-virtual {p0, v5, v1}, Lcom/android/systemui/qs/tiles/UDSTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 385
    :pswitch_1
    const v1, 0x7f0b041b

    invoke-virtual {p0, v5, v1}, Lcom/android/systemui/qs/tiles/UDSTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 390
    :pswitch_2
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 378
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
    .line 60
    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    .end local p1    # "x0":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/UDSTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method public launchUltraDataSavingApp()V
    .locals 4

    .prologue
    .line 354
    const-string v1, "UDSTile"

    const-string v2, "launchUltraDataSavingApp"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 356
    .local v0, "intent":Landroid/content/Intent;
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/UDSTile;->isSimPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 357
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.sm"

    const-string v3, "com.samsung.android.sm.ui.datausage.DatausageActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 362
    :goto_0
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 363
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/UDSTile;->startSettingsActivity(Landroid/content/Intent;)V

    .line 364
    return-void

    .line 359
    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.sm"

    const-string v3, "com.samsung.android.sm.ui.dashboard.SmartManagerDashBoardActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 360
    const-string v1, "toPage"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$MultiState;
    .locals 1

    .prologue
    .line 179
    new-instance v0, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$MultiState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/UDSTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 0
    .param p1, "listening"    # Z

    .prologue
    .line 184
    return-void
.end method
