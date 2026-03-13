.class public Lcom/android/keyguard/CarrierText;
.super Landroid/widget/TextView;
.source "CarrierText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/CarrierText$2;,
        Lcom/android/keyguard/CarrierText$CarrierTextTransformationMethod;,
        Lcom/android/keyguard/CarrierText$StatusMode;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final RJI_WIFI:Ljava/lang/String; = "Jio WiFi"

.field private static final TAG:Ljava/lang/String; = "CarrierText"

.field private static mSeparator:Ljava/lang/CharSequence;

.field private static mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

.field private static tele:Landroid/telephony/TelephonyManager;


# instance fields
.field private KnoxCustom_mOperatorLogoView:Z

.field private mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mIsEmergencyCallCapable:Z

.field private mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/CarrierText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    .line 123
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    iput-boolean v4, p0, Lcom/android/keyguard/CarrierText;->KnoxCustom_mOperatorLogoView:Z

    .line 73
    new-instance v2, Lcom/android/keyguard/CarrierText$1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/CarrierText$1;-><init>(Lcom/android/keyguard/CarrierText;)V

    iput-object v2, p0, Lcom/android/keyguard/CarrierText;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x112005c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/keyguard/CarrierText;->mIsEmergencyCallCapable:Z

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v3, Lcom/android/keyguard/R$styleable;->CarrierText:[I

    invoke-virtual {v2, p2, v3, v4, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 130
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    sget v2, Lcom/android/keyguard/R$styleable;->CarrierText_allCaps:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 132
    .local v1, "useAllCaps":Z
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 134
    new-instance v2, Lcom/android/keyguard/CarrierText$CarrierTextTransformationMethod;

    iget-object v3, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3, v1}, Lcom/android/keyguard/CarrierText$CarrierTextTransformationMethod;-><init>(Lcom/android/keyguard/CarrierText;Landroid/content/Context;Z)V

    invoke-virtual {p0, v2}, Lcom/android/keyguard/CarrierText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 135
    return-void

    .line 132
    .end local v1    # "useAllCaps":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v2
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 56
    sput-object p0, Lcom/android/keyguard/CarrierText;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object p0
.end method

.method private static concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5
    .param p0, "plmn"    # Ljava/lang/CharSequence;
    .param p1, "spn"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 458
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    move v0, v2

    .line 459
    .local v0, "plmnValid":Z
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    move v1, v2

    .line 460
    .local v1, "spnValid":Z
    :goto_1
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 461
    const-string v2, "CarrierText"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "concatenate : plmn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", spn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 474
    .end local p0    # "plmn":Ljava/lang/CharSequence;
    :goto_2
    return-object p0

    .end local v0    # "plmnValid":Z
    .end local v1    # "spnValid":Z
    .restart local p0    # "plmn":Ljava/lang/CharSequence;
    :cond_0
    move v0, v3

    .line 458
    goto :goto_0

    .restart local v0    # "plmnValid":Z
    :cond_1
    move v1, v3

    .line 459
    goto :goto_1

    .line 465
    .restart local v1    # "spnValid":Z
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/keyguard/CarrierText;->mSeparator:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 467
    :cond_3
    if-eqz v0, :cond_4

    .line 468
    const-string v2, "CarrierText"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "concatenate : plmn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 470
    :cond_4
    if-eqz v1, :cond_5

    .line 471
    const-string v2, "CarrierText"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "concatenate : spn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, p1

    .line 472
    goto :goto_2

    .line 474
    :cond_5
    const-string p0, ""

    goto :goto_2
.end method

.method private getCarrierHelpTextForSimState(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;
    .param p2, "plmn"    # Ljava/lang/String;
    .param p3, "spn"    # Ljava/lang/String;

    .prologue
    .line 480
    const/4 v0, 0x0

    .line 481
    .local v0, "carrierHelpTextId":I
    invoke-direct {p0, p1}, Lcom/android/keyguard/CarrierText;->getStatusForIccState(Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/keyguard/CarrierText$StatusMode;

    move-result-object v1

    .line 482
    .local v1, "status":Lcom/android/keyguard/CarrierText$StatusMode;
    sget-object v2, Lcom/android/keyguard/CarrierText$2;->$SwitchMap$com$android$keyguard$CarrierText$StatusMode:[I

    invoke-virtual {v1}, Lcom/android/keyguard/CarrierText$StatusMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 506
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2

    .line 485
    :pswitch_0
    sget v0, Lcom/android/keyguard/R$string;->keyguard_instructions_when_pattern_disabled:I

    .line 486
    goto :goto_0

    .line 489
    :pswitch_1
    sget v0, Lcom/android/keyguard/R$string;->keyguard_missing_sim_instructions_long:I

    .line 490
    goto :goto_0

    .line 493
    :pswitch_2
    sget v0, Lcom/android/keyguard/R$string;->keyguard_permanent_disabled_sim_instructions:I

    .line 494
    goto :goto_0

    .line 497
    :pswitch_3
    sget v0, Lcom/android/keyguard/R$string;->keyguard_missing_sim_instructions:I

    .line 498
    goto :goto_0

    .line 482
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getStatusForIccState(Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/keyguard/CarrierText$StatusMode;
    .locals 3
    .param p1, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 421
    if-nez p1, :cond_0

    .line 422
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->Normal:Lcom/android/keyguard/CarrierText$StatusMode;

    .line 454
    :goto_0
    return-object v1

    .line 425
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p1, v1, :cond_1

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v1, :cond_3

    :cond_1
    const/4 v0, 0x1

    .line 431
    .local v0, "missingAndNotProvisioned":Z
    :goto_1
    if-eqz v0, :cond_2

    sget-object p1, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 432
    :cond_2
    sget-object v1, Lcom/android/keyguard/CarrierText$2;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 454
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimMissing:Lcom/android/keyguard/CarrierText$StatusMode;

    goto :goto_0

    .line 425
    .end local v0    # "missingAndNotProvisioned":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 434
    .restart local v0    # "missingAndNotProvisioned":Z
    :pswitch_0
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimMissing:Lcom/android/keyguard/CarrierText$StatusMode;

    goto :goto_0

    .line 436
    :pswitch_1
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->NetworkLocked:Lcom/android/keyguard/CarrierText$StatusMode;

    goto :goto_0

    .line 438
    :pswitch_2
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->PersoLocked:Lcom/android/keyguard/CarrierText$StatusMode;

    goto :goto_0

    .line 440
    :pswitch_3
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimNotReady:Lcom/android/keyguard/CarrierText$StatusMode;

    goto :goto_0

    .line 442
    :pswitch_4
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimLocked:Lcom/android/keyguard/CarrierText$StatusMode;

    goto :goto_0

    .line 444
    :pswitch_5
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimPukLocked:Lcom/android/keyguard/CarrierText$StatusMode;

    goto :goto_0

    .line 446
    :pswitch_6
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->Normal:Lcom/android/keyguard/CarrierText$StatusMode;

    goto :goto_0

    .line 448
    :pswitch_7
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimPermDisabled:Lcom/android/keyguard/CarrierText$StatusMode;

    goto :goto_0

    .line 450
    :pswitch_8
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimMissing:Lcom/android/keyguard/CarrierText$StatusMode;

    goto :goto_0

    .line 452
    :pswitch_9
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimIoError:Lcom/android/keyguard/CarrierText$StatusMode;

    goto :goto_0

    .line 432
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "simMessage"    # Ljava/lang/CharSequence;
    .param p2, "emergencyCallMessage"    # Ljava/lang/CharSequence;

    .prologue
    .line 410
    iget-boolean v0, p0, Lcom/android/keyguard/CarrierText;->mIsEmergencyCallCapable:Z

    if-eqz v0, :cond_0

    .line 411
    invoke-static {p1, p2}, Lcom/android/keyguard/CarrierText;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 413
    .end local p1    # "simMessage":Ljava/lang/CharSequence;
    :cond_0
    return-object p1
.end method


# virtual methods
.method protected getCarrierTextForSimState(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;
    .param p2, "plmn"    # Ljava/lang/CharSequence;
    .param p3, "spn"    # Ljava/lang/CharSequence;

    .prologue
    .line 321
    const/4 v0, 0x0

    .line 322
    .local v0, "carrierText":Ljava/lang/CharSequence;
    invoke-direct {p0, p1}, Lcom/android/keyguard/CarrierText;->getStatusForIccState(Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/keyguard/CarrierText$StatusMode;

    move-result-object v1

    .line 323
    .local v1, "status":Lcom/android/keyguard/CarrierText$StatusMode;
    sget-object v2, Lcom/android/keyguard/CarrierText$2;->$SwitchMap$com$android$keyguard$CarrierText$StatusMode:[I

    invoke-virtual {v1}, Lcom/android/keyguard/CarrierText$StatusMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 402
    :goto_0
    return-object v0

    .line 325
    :pswitch_0
    invoke-static {p2, p3}, Lcom/android/keyguard/CarrierText;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 326
    goto :goto_0

    .line 329
    :pswitch_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isChinaFeature()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 331
    move-object v0, p2

    goto :goto_0

    .line 333
    :cond_0
    const-string v0, ""

    .line 335
    goto :goto_0

    .line 338
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->keyguard_network_locked_message:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 340
    goto :goto_0

    .line 343
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->keyguard_perso_locked_message:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 345
    goto :goto_0

    .line 352
    :pswitch_4
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCUModel()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCModel()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 353
    :cond_1
    move-object v0, p2

    goto :goto_0

    .line 355
    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->keyguard_missing_sim_message_short:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 358
    goto :goto_0

    .line 361
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->keyguard_permanent_disabled_sim_message_short:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 363
    goto :goto_0

    .line 366
    :pswitch_6
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCUModel()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCModel()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 367
    :cond_3
    move-object v0, p2

    goto :goto_0

    .line 369
    :cond_4
    invoke-static {p2, p3}, Lcom/android/keyguard/CarrierText;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 371
    goto :goto_0

    .line 374
    :pswitch_7
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCUModel()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCModel()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 375
    :cond_5
    move-object v0, p2

    goto/16 :goto_0

    .line 376
    :cond_6
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v2

    if-nez v2, :cond_7

    .line 377
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->keyguard_sim_locked_message:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_0

    .line 380
    :cond_7
    invoke-static {p2, p3}, Lcom/android/keyguard/CarrierText;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 382
    goto/16 :goto_0

    .line 385
    :pswitch_8
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCUModel()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCModel()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 386
    :cond_8
    move-object v0, p2

    goto/16 :goto_0

    .line 387
    :cond_9
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v2

    if-nez v2, :cond_a

    .line 388
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->keyguard_sim_puk_locked_message:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_0

    .line 392
    :cond_a
    invoke-static {p2, p3}, Lcom/android/keyguard/CarrierText;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 394
    goto/16 :goto_0

    .line 396
    :pswitch_9
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->lockscreen_sim_error_message_short:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_0

    .line 323
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public getOperatorLogoView()Z
    .locals 1

    .prologue
    .line 538
    iget-boolean v0, p0, Lcom/android/keyguard/CarrierText;->KnoxCustom_mOperatorLogoView:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 277
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 279
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSPRPLMN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/android/keyguard/CarrierText;->tele:Landroid/telephony/TelephonyManager;

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 287
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 293
    :goto_0
    return-void

    .line 290
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 291
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/keyguard/CarrierText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 305
    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 306
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isWiFiOnlyDevice(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->updateCarrierText()V

    .line 308
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 297
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 298
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 301
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 269
    invoke-super {p0}, Landroid/widget/TextView;->onFinishInflate()V

    .line 270
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->kg_carrier_text_separator:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/keyguard/CarrierText;->mSeparator:Ljava/lang/CharSequence;

    .line 271
    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    .line 272
    .local v0, "screenOn":Z
    invoke-virtual {p0, v0}, Lcom/android/keyguard/CarrierText;->setSelected(Z)V

    .line 273
    return-void
.end method

.method public setOperatorLogoView(Z)V
    .locals 0
    .param p1, "logview"    # Z

    .prologue
    .line 533
    iput-boolean p1, p0, Lcom/android/keyguard/CarrierText;->KnoxCustom_mOperatorLogoView:Z

    .line 534
    return-void
.end method

.method protected updateCarrierText()V
    .locals 24

    .prologue
    .line 139
    const/4 v12, 0x0

    .line 140
    .local v12, "knoxCustomLockScreenState":I
    const-string v20, "content://com.sec.knox.provider2/KnoxCustomManagerService2"

    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    .line 141
    .local v19, "uri":Landroid/net/Uri;
    invoke-static {}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getInstance()Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v11

    .line 142
    .local v11, "knoxCM":Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    const-string v20, "getLockScreenHiddenItems"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v19 .. v21}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getKnoxIntValue(Landroid/net/Uri;Ljava/lang/String;Landroid/content/Context;)I

    move-result v12

    .line 146
    if-eqz v11, :cond_0

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v12, v0, :cond_0

    .line 147
    and-int/lit8 v20, v12, 0x4

    if-eqz v20, :cond_1

    .line 148
    const/16 v20, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/keyguard/CarrierText;->setVisibility(I)V

    .line 156
    :cond_0
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_2

    .line 265
    :goto_1
    return-void

    .line 150
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/CarrierText;->getOperatorLogoView()Z

    move-result v20

    if-nez v20, :cond_0

    .line 151
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/keyguard/CarrierText;->setVisibility(I)V

    goto :goto_0

    .line 167
    :cond_2
    const/4 v4, 0x1

    .line 168
    .local v4, "allSimsMissing":Z
    const/4 v8, 0x0

    .line 169
    .local v8, "displayText":Ljava/lang/CharSequence;
    const-string v7, ""

    .line 170
    .local v7, "displayRJIText":Ljava/lang/String;
    const/4 v5, 0x0

    .line 171
    .local v5, "carrierName":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "airplane_mode_on"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    const/4 v13, 0x1

    .line 172
    .local v13, "mAirplaneMode":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    move-result-object v17

    .line 173
    .local v17, "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v3

    .line 174
    .local v3, "N":I
    const-string v20, "CarrierText"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "updateCarrierText(): "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_3
    if-ge v9, v3, :cond_a

    .line 176
    const-string v16, ""

    .line 177
    .local v16, "spn":Ljava/lang/String;
    const-string v14, ""

    .line 178
    .local v14, "plmn":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v21, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/telephony/SubscriptionInfo;

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v20

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v15

    .line 179
    .local v15, "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSPRPLMN()Z

    move-result v20

    if-eqz v20, :cond_7

    .line 180
    sget-object v20, Lcom/android/keyguard/CarrierText;->tele:Landroid/telephony/TelephonyManager;

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v14

    .line 197
    :cond_3
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v14, v1}, Lcom/android/keyguard/CarrierText;->getCarrierTextForSimState(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 198
    .local v6, "carrierTextForSimState":Ljava/lang/CharSequence;
    const-string v20, "CarrierText"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Handling "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " , carrierTextForSimState = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    if-eqz v6, :cond_4

    .line 200
    const/4 v4, 0x0

    .line 201
    invoke-static {v8, v6}, Lcom/android/keyguard/CarrierText;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 202
    const-string v20, "CarrierText"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Result :  displayText = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " , carrierTextForSimState = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_4
    if-eqz v13, :cond_5

    .line 205
    const-string v20, "Jio WiFi"

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 206
    move-object v7, v14

    .line 175
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 171
    .end local v3    # "N":I
    .end local v6    # "carrierTextForSimState":Ljava/lang/CharSequence;
    .end local v9    # "i":I
    .end local v13    # "mAirplaneMode":Z
    .end local v14    # "plmn":Ljava/lang/String;
    .end local v15    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    .end local v16    # "spn":Ljava/lang/String;
    .end local v17    # "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_6
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 182
    .restart local v3    # "N":I
    .restart local v9    # "i":I
    .restart local v13    # "mAirplaneMode":Z
    .restart local v14    # "plmn":Ljava/lang/String;
    .restart local v15    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    .restart local v16    # "spn":Ljava/lang/String;
    .restart local v17    # "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v20

    const/16 v21, 0x0

    new-instance v22, Landroid/content/IntentFilter;

    const-string v23, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-direct/range {v22 .. v23}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v22}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v10

    .line 184
    .local v10, "it":Landroid/content/Intent;
    if-eqz v10, :cond_3

    .line 185
    const-string v20, "showSpn"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 186
    const-string v20, "spn"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 188
    :cond_8
    const-string v20, "showPlmn"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 189
    const-string v20, "plmn"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 190
    if-nez v14, :cond_9

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getDefaultPlmn()Ljava/lang/CharSequence;

    move-result-object v14

    .end local v14    # "plmn":Ljava/lang/String;
    check-cast v14, Ljava/lang/String;

    .line 194
    .restart local v14    # "plmn":Ljava/lang/String;
    :cond_9
    const-string v20, "CarrierText"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Getting plmn/spn sticky brdcst "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " / "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 210
    .end local v10    # "it":Landroid/content/Intent;
    .end local v14    # "plmn":Ljava/lang/String;
    .end local v15    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    .end local v16    # "spn":Ljava/lang/String;
    :cond_a
    sget-object v20, Lcom/android/keyguard/CarrierText;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v21, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_f

    .line 227
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v20

    const v21, 0x104028f

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    .line 229
    .local v18, "text":Ljava/lang/CharSequence;
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v20

    const/16 v21, 0x0

    new-instance v22, Landroid/content/IntentFilter;

    const-string v23, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-direct/range {v22 .. v23}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v22}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v9

    .line 231
    .local v9, "i":Landroid/content/Intent;
    if-eqz v9, :cond_e

    .line 232
    const-string v16, ""

    .line 233
    .restart local v16    # "spn":Ljava/lang/String;
    const-string v14, ""

    .line 234
    .restart local v14    # "plmn":Ljava/lang/String;
    const-string v20, "showSpn"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 235
    const-string v20, "spn"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 237
    :cond_b
    const-string v20, "showPlmn"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 238
    const-string v20, "plmn"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 239
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSPRPLMN()Z

    move-result v20

    if-eqz v20, :cond_c

    .line 240
    sget-object v20, Lcom/android/keyguard/CarrierText;->tele:Landroid/telephony/TelephonyManager;

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v14

    .line 242
    :cond_c
    if-nez v14, :cond_d

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getDefaultPlmn()Ljava/lang/CharSequence;

    move-result-object v14

    .end local v14    # "plmn":Ljava/lang/String;
    check-cast v14, Ljava/lang/String;

    .line 245
    .restart local v14    # "plmn":Ljava/lang/String;
    :cond_d
    const-string v20, "CarrierText"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Getting plmn/spn sticky brdcst "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " / "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    move-object/from16 v0, v16

    invoke-static {v14, v0}, Lcom/android/keyguard/CarrierText;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v18

    .line 248
    .end local v14    # "plmn":Ljava/lang/String;
    .end local v16    # "spn":Ljava/lang/String;
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v20

    sget v21, Lcom/android/keyguard/R$string;->keyguard_missing_sim_message_short:I

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 252
    .end local v9    # "i":Landroid/content/Intent;
    .end local v18    # "text":Ljava/lang/CharSequence;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_10

    .line 253
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v20

    sget v21, Lcom/android/keyguard/R$string;->airplane_mode:I

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 255
    :cond_10
    const-string v20, "CarrierText"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "setText :  displayText = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    if-eqz v13, :cond_12

    .line 257
    const-string v20, "Jio WiFi"

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_11

    .line 258
    const-string v20, "Jio WiFi"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/keyguard/CarrierText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 260
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/CarrierText;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x1040126

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/keyguard/CarrierText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 264
    :cond_12
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/keyguard/CarrierText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method
