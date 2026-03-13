.class public Lcom/android/keyguard/EmergencyButton;
.super Landroid/widget/Button;
.source "EmergencyButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;
    }
.end annotation


# static fields
.field private static final ACTION_EMERGENCY_DIAL:Ljava/lang/String; = "com.android.phone.EmergencyDialer.DIAL"

.field private static final ACTION_EMERGENCY_LIST:Ljava/lang/String; = "com.samsung.phone.EmergencyDialer.LIST"

.field private static final INTENT_EMERGENCY_DIAL:Landroid/content/Intent;

.field private static final TAG:Ljava/lang/String; = "EmergencyButton"


# instance fields
.field private mEmergencyButtonCallback:Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;

.field private final mEnableEmergencyCallWhileSimLocked:Z

.field mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mIsVoiceCapable:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPasswordEntryView:Landroid/view/View;

.field private mPowerManager:Landroid/os/PowerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 69
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.samsung.phone.EmergencyDialer.LIST"

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.phone"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x14800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/EmergencyButton;->INTENT_EMERGENCY_DIAL:Landroid/content/Intent;

    return-void

    :cond_0
    const-string v0, "com.android.phone.EmergencyDialer.DIAL"

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/EmergencyButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mPasswordEntryView:Landroid/view/View;

    .line 76
    new-instance v0, Lcom/android/keyguard/EmergencyButton$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/EmergencyButton$1;-><init>(Lcom/android/keyguard/EmergencyButton;)V

    iput-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/EmergencyButton;->mIsVoiceCapable:Z

    .line 108
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/EmergencyButton;->mEnableEmergencyCallWhileSimLocked:Z

    .line 110
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/EmergencyButton;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/EmergencyButton;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->updateEmergencyCallButton()V

    return-void
.end method

.method private getEmergencyCallNumber()Ljava/lang/String;
    .locals 3

    .prologue
    .line 254
    const-string v0, ""

    .line 256
    .local v0, "emergencyNumber":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/android/keyguard/EmergencyButton;->mPasswordEntryView:Landroid/view/View;

    instance-of v2, v2, Lcom/android/keyguard/PasswordTextView;

    if-eqz v2, :cond_1

    .line 257
    iget-object v2, p0, Lcom/android/keyguard/EmergencyButton;->mPasswordEntryView:Landroid/view/View;

    check-cast v2, Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v2}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    move-result-object v0

    .line 266
    :cond_0
    :goto_0
    return-object v0

    .line 258
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/EmergencyButton;->mPasswordEntryView:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 259
    iget-object v2, p0, Lcom/android/keyguard/EmergencyButton;->mPasswordEntryView:Landroid/view/View;

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 260
    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/EmergencyButton;->mPasswordEntryView:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/EditText;

    if-eqz v2, :cond_0

    .line 261
    iget-object v2, p0, Lcom/android/keyguard/EmergencyButton;->mPasswordEntryView:Landroid/view/View;

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 263
    :catch_0
    move-exception v1

    .line 264
    .local v1, "ex":Ljava/lang/Exception;
    const-string v0, ""

    goto :goto_0
.end method

.method private getTelecommManager()Landroid/telecom/TelecomManager;
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    const-string v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method private isInCall()Z
    .locals 1

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->getTelecommManager()Landroid/telecom/TelecomManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    return v0
.end method

.method private resumeCall()V
    .locals 2

    .prologue
    .line 234
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->getTelecommManager()Landroid/telecom/TelecomManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telecom/TelecomManager;->showInCallScreen(Z)V

    .line 235
    return-void
.end method

.method private updateEmergencyCallButton()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 179
    const/4 v5, 0x0

    .line 180
    .local v5, "visible":Z
    iget-boolean v7, p0, Lcom/android/keyguard/EmergencyButton;->mIsVoiceCapable:Z

    if-eqz v7, :cond_0

    .line 182
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->isInCall()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 183
    const/4 v5, 0x1

    .line 211
    :cond_0
    :goto_0
    if-eqz v5, :cond_6

    .line 212
    invoke-virtual {p0, v6}, Lcom/android/keyguard/EmergencyButton;->setVisibility(I)V

    .line 215
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->isInCall()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 216
    const v3, 0x104027d

    .line 220
    .local v3, "textId":I
    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/keyguard/EmergencyButton;->setText(I)V

    .line 224
    .end local v3    # "textId":I
    :goto_2
    return-void

    .line 186
    :cond_1
    const/4 v1, 0x0

    .line 187
    .local v1, "knoxCustomLockScreenState":I
    const-string v7, "content://com.sec.knox.provider2/KnoxCustomManagerService2"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 188
    .local v4, "uri":Landroid/net/Uri;
    invoke-static {}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getInstance()Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v0

    .line 189
    .local v0, "knoxCM":Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    const-string v7, "getLockScreenHiddenItems"

    iget-object v8, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v4, v7, v8}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getKnoxIntValue(Landroid/net/Uri;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    .line 192
    if-eqz v0, :cond_2

    const/4 v7, -0x1

    if-eq v1, v7, :cond_2

    and-int/lit8 v7, v1, 0x8

    if-eqz v7, :cond_2

    .line 194
    const-string v7, "EmergencyButton"

    const-string v8, "KnoxCustom: Emergency Button is not visible"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const/4 v5, 0x0

    goto :goto_0

    .line 198
    :cond_2
    iget-object v7, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinVoiceSecure()Z

    move-result v2

    .line 200
    .local v2, "simLocked":Z
    if-eqz v2, :cond_3

    .line 202
    iget-boolean v5, p0, Lcom/android/keyguard/EmergencyButton;->mEnableEmergencyCallWhileSimLocked:Z

    goto :goto_0

    .line 205
    :cond_3
    iget-object v7, p0, Lcom/android/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v7

    if-eqz v7, :cond_4

    sget-boolean v7, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwipeLockShowingBeforeTimeout:Z

    if-nez v7, :cond_4

    const/4 v5, 0x1

    :goto_3
    goto :goto_0

    :cond_4
    move v5, v6

    goto :goto_3

    .line 218
    .end local v0    # "knoxCM":Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    .end local v1    # "knoxCustomLockScreenState":I
    .end local v2    # "simLocked":Z
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_5
    sget v3, Lcom/android/keyguard/R$string;->kg_emergency_call_label:I

    .restart local v3    # "textId":I
    goto :goto_1

    .line 222
    .end local v3    # "textId":I
    :cond_6
    const/16 v6, 0x8

    invoke-virtual {p0, v6}, Lcom/android/keyguard/EmergencyButton;->setVisibility(I)V

    goto :goto_2
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 114
    invoke-super {p0}, Landroid/widget/Button;->onAttachedToWindow()V

    .line 115
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 116
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 139
    invoke-super {p0, p1}, Landroid/widget/Button;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 140
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->updateEmergencyCallButton()V

    .line 141
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 120
    invoke-super {p0}, Landroid/widget/Button;->onDetachedFromWindow()V

    .line 121
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 122
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 126
    invoke-super {p0}, Landroid/widget/Button;->onFinishInflate()V

    .line 127
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 128
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mPowerManager:Landroid/os/PowerManager;

    .line 129
    new-instance v0, Lcom/android/keyguard/EmergencyButton$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/EmergencyButton$2;-><init>(Lcom/android/keyguard/EmergencyButton;)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/EmergencyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->updateEmergencyCallButton()V

    .line 135
    return-void
.end method

.method public setCallback(Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/android/keyguard/EmergencyButton;->mEmergencyButtonCallback:Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;

    .line 228
    return-void
.end method

.method public setPasswordEntryView(Landroid/view/View;)V
    .locals 0
    .param p1, "passwordEntryView"    # Landroid/view/View;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/android/keyguard/EmergencyButton;->mPasswordEntryView:Landroid/view/View;

    .line 251
    return-void
.end method

.method public takeEmergencyCallAction()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 147
    iget-object v2, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    const/16 v3, 0xc8

    invoke-static {v2, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 150
    iget-object v2, p0, Lcom/android/keyguard/EmergencyButton;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5, v7}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 152
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->stopLockTaskMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_0
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->isInCall()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 157
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->resumeCall()V

    .line 158
    iget-object v2, p0, Lcom/android/keyguard/EmergencyButton;->mEmergencyButtonCallback:Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;

    if-eqz v2, :cond_0

    .line 159
    iget-object v2, p0, Lcom/android/keyguard/EmergencyButton;->mEmergencyButtonCallback:Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;

    invoke-interface {v2}, Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;->onEmergencyButtonClickedWhenInCall()V

    .line 176
    :cond_0
    :goto_1
    return-void

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "EmergencyButton"

    const-string v3, "Failed to stop app pinning"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 162
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportEmergencyCallAction(Z)V

    .line 164
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isDirectCallToEcc()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/EmergencyButton;->mPasswordEntryView:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 165
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->getEmergencyCallNumber()Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, "emergencyNumber":Ljava/lang/String;
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 168
    sget-object v2, Lcom/android/keyguard/EmergencyButton;->INTENT_EMERGENCY_DIAL:Landroid/content/Intent;

    const-string v3, "tel"

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 172
    .end local v1    # "emergencyNumber":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/EmergencyButton;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/android/keyguard/EmergencyButton;->INTENT_EMERGENCY_DIAL:Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/keyguard/EmergencyButton;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6, v6}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    new-instance v5, Landroid/os/UserHandle;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_1
.end method
