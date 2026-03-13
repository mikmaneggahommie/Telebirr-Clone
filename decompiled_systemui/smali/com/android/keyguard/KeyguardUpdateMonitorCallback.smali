.class public Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitorCallback.java"


# static fields
.field private static final VISIBILITY_CHANGED_COLLAPSE_MS:J = 0x3e8L


# instance fields
.field private mShowing:Z

.field private mVisibilityChangedCalled:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAirplaneModeChanged(I)V
    .locals 0
    .param p1, "on"    # I

    .prologue
    .line 249
    return-void
.end method

.method public onBootCompleted()V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method public onCMASChanged()V
    .locals 0

    .prologue
    .line 228
    return-void
.end method

.method public onClockVisibilityChanged()V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public onDevicePolicyManagerStateChanged()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public onEmergencyCallAction()V
    .locals 0

    .prologue
    .line 141
    return-void
.end method

.method public onFaceUnlockStateChanged(ZI)V
    .locals 0
    .param p1, "running"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 211
    return-void
.end method

.method public onFingerprintAuthenticated(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 191
    return-void
.end method

.method public onFingerprintAuthenticated(IZ)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "wakeAndUnlocking"    # Z

    .prologue
    .line 184
    return-void
.end method

.method public onFingerprintError(ILjava/lang/String;)V
    .locals 0
    .param p1, "msgId"    # I
    .param p2, "errString"    # Ljava/lang/String;

    .prologue
    .line 206
    return-void
.end method

.method public onFingerprintHelp(ILjava/lang/String;)V
    .locals 0
    .param p1, "msgId"    # I
    .param p2, "helpString"    # Ljava/lang/String;

    .prologue
    .line 198
    return-void
.end method

.method public onFingerprintRunningStateChanged(Z)V
    .locals 0
    .param p1, "running"    # Z

    .prologue
    .line 216
    return-void
.end method

.method public onFinishedGoingToSleep(I)V
    .locals 0
    .param p1, "why"    # I

    .prologue
    .line 161
    return-void
.end method

.method public onFontChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "clockFont"    # Ljava/lang/String;
    .param p2, "numFont"    # Ljava/lang/String;

    .prologue
    .line 233
    return-void
.end method

.method public onICCCardStateChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "iccStatus"    # Ljava/lang/String;

    .prologue
    .line 244
    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 0
    .param p1, "bouncer"    # Z

    .prologue
    .line 89
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 0
    .param p1, "showing"    # Z

    .prologue
    .line 74
    return-void
.end method

.method public onKeyguardVisibilityChangedRaw(Z)V
    .locals 6
    .param p1, "showing"    # Z

    .prologue
    .line 77
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 78
    .local v0, "now":J
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->mShowing:Z

    if-ne p1, v2, :cond_0

    iget-wide v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->mVisibilityChangedCalled:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 83
    :goto_0
    return-void

    .line 80
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onKeyguardVisibilityChanged(Z)V

    .line 81
    iput-wide v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->mVisibilityChangedCalled:J

    .line 82
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->mShowing:Z

    goto :goto_0
.end method

.method public onKnoxSwitching()V
    .locals 0

    .prologue
    .line 222
    return-void
.end method

.method public onOpenThemeChanged()V
    .locals 0

    .prologue
    .line 238
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 254
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 0
    .param p1, "phoneState"    # I

    .prologue
    .line 68
    return-void
.end method

.method public onRefreshBatteryInfo(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 0
    .param p1, "status"    # Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .prologue
    .line 43
    return-void
.end method

.method public onRefreshCarrierInfo(I)V
    .locals 0
    .param p1, "phoneId"    # I

    .prologue
    .line 53
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 60
    return-void
.end method

.method public onSapStateChanged()V
    .locals 0

    .prologue
    .line 259
    return-void
.end method

.method public onSetBackground(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 148
    return-void
.end method

.method public onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "slotId"    # I
    .param p3, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 123
    return-void
.end method

.method public onStartedWakingUp()V
    .locals 0

    .prologue
    .line 153
    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public onTrustChanged(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 166
    return-void
.end method

.method public onTrustGrantedWithFlags(II)V
    .locals 0
    .param p1, "flags"    # I
    .param p2, "userId"    # I

    .prologue
    .line 176
    return-void
.end method

.method public onTrustManagedChanged(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 171
    return-void
.end method

.method public onUserInfoChanged(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 128
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 116
    return-void
.end method

.method public onUserSwitching(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 111
    return-void
.end method
