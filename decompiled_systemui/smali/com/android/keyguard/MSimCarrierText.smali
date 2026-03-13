.class public Lcom/android/keyguard/MSimCarrierText;
.super Lcom/android/keyguard/CarrierText;
.source "MSimCarrierText.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MSimCarrierText"

.field private static mPlmn:[Ljava/lang/CharSequence;

.field private static mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

.field private static mSpn:[Ljava/lang/CharSequence;

.field private static tele:Landroid/telephony/TelephonyManager;


# instance fields
.field private mMSimCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/MSimCarrierText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/CarrierText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    new-instance v0, Lcom/android/keyguard/MSimCarrierText$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/MSimCarrierText$1;-><init>(Lcom/android/keyguard/MSimCarrierText;)V

    iput-object v0, p0, Lcom/android/keyguard/MSimCarrierText;->mMSimCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 134
    invoke-direct {p0}, Lcom/android/keyguard/MSimCarrierText;->initialize()V

    .line 135
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/android/keyguard/MSimCarrierText;->mPlmn:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/MSimCarrierText;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/MSimCarrierText;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/keyguard/MSimCarrierText;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/android/keyguard/MSimCarrierText;->mSpn:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/MSimCarrierText;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/MSimCarrierText;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/keyguard/MSimCarrierText;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/MSimCarrierText;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/MSimCarrierText;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/keyguard/MSimCarrierText;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/MSimCarrierText;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/MSimCarrierText;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/keyguard/MSimCarrierText;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600()[Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/android/keyguard/MSimCarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/MSimCarrierText;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/MSimCarrierText;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/keyguard/MSimCarrierText;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getDefaultPlmn()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 259
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/android/keyguard/MSimCarrierText;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040977

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 263
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/MSimCarrierText;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$string;->keyguard_carrier_default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method private initialize()V
    .locals 2

    .prologue
    .line 121
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    .line 123
    .local v0, "numPhones":I
    new-array v1, v0, [Ljava/lang/CharSequence;

    sput-object v1, Lcom/android/keyguard/MSimCarrierText;->mPlmn:[Ljava/lang/CharSequence;

    .line 124
    new-array v1, v0, [Ljava/lang/CharSequence;

    sput-object v1, Lcom/android/keyguard/MSimCarrierText;->mSpn:[Ljava/lang/CharSequence;

    .line 125
    new-array v1, v0, [Lcom/android/internal/telephony/IccCardConstants$State;

    sput-object v1, Lcom/android/keyguard/MSimCarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    .line 126
    return-void
.end method


# virtual methods
.method public getNumberOfActiveSim()I
    .locals 2

    .prologue
    .line 138
    iget-object v1, p0, Lcom/android/keyguard/MSimCarrierText;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 139
    .local v0, "sil":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v0, :cond_0

    .line 140
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 142
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getReadySimCount()I
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 285
    const/4 v0, 0x0

    .line 287
    .local v0, "count":I
    const/4 v3, 0x2

    new-array v1, v3, [I

    .line 288
    .local v1, "phone_on":[I
    iget-object v3, p0, Lcom/android/keyguard/MSimCarrierText;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "phone1_on"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    aput v3, v1, v5

    .line 289
    iget-object v3, p0, Lcom/android/keyguard/MSimCarrierText;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "phone2_on"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    aput v3, v1, v6

    .line 290
    const/4 v2, 0x0

    .local v2, "sub":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 291
    aget v3, v1, v2

    if-ne v3, v6, :cond_0

    .line 292
    add-int/lit8 v0, v0, 0x1

    .line 290
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 296
    :cond_1
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 269
    invoke-super {p0}, Lcom/android/keyguard/CarrierText;->onAttachedToWindow()V

    .line 271
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSPRPLMN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/android/keyguard/MSimCarrierText;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/android/keyguard/MSimCarrierText;->tele:Landroid/telephony/TelephonyManager;

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/MSimCarrierText;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/MSimCarrierText;->mMSimCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 276
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 280
    invoke-super {p0}, Lcom/android/keyguard/CarrierText;->onDetachedFromWindow()V

    .line 281
    iget-object v0, p0, Lcom/android/keyguard/MSimCarrierText;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/MSimCarrierText;->mMSimCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 282
    return-void
.end method

.method protected updateCarrierText([Lcom/android/internal/telephony/IccCardConstants$State;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V
    .locals 21
    .param p1, "simState"    # [Lcom/android/internal/telephony/IccCardConstants$State;
    .param p2, "plmn"    # [Ljava/lang/CharSequence;
    .param p3, "spn"    # [Ljava/lang/CharSequence;

    .prologue
    .line 145
    const-string v17, "MSimCarrierText"

    const-string v18, "updateCarrierText()"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const-string v16, ""

    .line 147
    .local v16, "text":Ljava/lang/CharSequence;
    const-string v17, "ril.MSIMM"

    invoke-static/range {v17 .. v17}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 148
    .local v9, "mSimMode":Ljava/lang/String;
    const-string v17, "gsm.sim.state"

    const-string v18, "ABSENT,ABSENT"

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 149
    .local v10, "mSimstateProp":Ljava/lang/String;
    const-string v17, "persist.radio.multisim.stackid"

    const-string v18, "NONE"

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 150
    .local v4, "crossMapping":Ljava/lang/String;
    const/4 v15, 0x0

    .line 151
    .local v15, "simStates":[Ljava/lang/String;
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_0

    .line 152
    const-string v17, ","

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 156
    :cond_0
    const/4 v8, 0x0

    .line 157
    .local v8, "length":I
    if-eqz v15, :cond_1

    .line 158
    array-length v8, v15

    .line 160
    :cond_1
    const-string v11, ""

    .line 161
    .local v11, "mSimstate_1":Ljava/lang/String;
    const-string v12, ""

    .line 162
    .local v12, "mSimstate_2":Ljava/lang/String;
    packed-switch v8, :pswitch_data_0

    .line 175
    const/16 v17, 0x0

    aget-object v11, v15, v17

    .line 176
    const/16 v17, 0x1

    aget-object v12, v15, v17

    .line 180
    :goto_0
    :pswitch_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCModel()Z

    move-result v17

    if-nez v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/MSimCarrierText;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "airplane_mode_on"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 182
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/MSimCarrierText;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x1040126

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    .line 183
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/keyguard/MSimCarrierText;->setText(Ljava/lang/CharSequence;)V

    .line 256
    :goto_1
    return-void

    .line 167
    :pswitch_1
    const/16 v17, 0x0

    aget-object v11, v15, v17

    .line 168
    goto :goto_0

    .line 170
    :pswitch_2
    const/16 v17, 0x0

    aget-object v11, v15, v17

    .line 171
    const/16 v17, 0x1

    aget-object v12, v15, v17

    .line 172
    goto :goto_0

    .line 187
    :cond_2
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v6, v0, :cond_18

    .line 188
    aget-object v17, p1, v6

    aget-object v18, p2, v6

    aget-object v19, p3, v6

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/keyguard/MSimCarrierText;->getCarrierTextForSimState(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 190
    .local v5, "displayText":Ljava/lang/CharSequence;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCUModel()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/MSimCarrierText;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v6}, Lcom/samsung/android/telephony/MultiSimManager;->isEnabledSim(Landroid/content/Context;I)Z

    move-result v17

    if-nez v17, :cond_3

    .line 192
    const-string v5, ""

    .line 195
    :cond_3
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCUModel()Z

    move-result v17

    if-nez v17, :cond_4

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCModel()Z

    move-result v17

    if-eqz v17, :cond_8

    .line 197
    :cond_4
    if-eqz v5, :cond_6

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 198
    :goto_3
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_7

    move-object/from16 v16, v5

    .line 187
    :cond_5
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 197
    :cond_6
    const-string v5, ""

    goto :goto_3

    .line 198
    :cond_7
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/MSimCarrierText;->getContext()Landroid/content/Context;

    move-result-object v17

    sget v18, Lcom/android/keyguard/R$string;->msim_carrier_text_format:I

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v16, v19, v20

    const/16 v20, 0x1

    aput-object v5, v19, v20

    invoke-virtual/range {v17 .. v19}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    goto :goto_4

    .line 206
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/MSimCarrierText;->getNumberOfActiveSim()I

    move-result v13

    .line 207
    .local v13, "numOfActiveSim":I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-le v13, v0, :cond_e

    .line 208
    const/4 v7, 0x0

    .line 209
    .local v7, "insertedMultiSim":Z
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v13, v0, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/MSimCarrierText;->getReadySimCount()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    const/4 v7, 0x1

    .line 210
    :goto_5
    if-eqz v7, :cond_b

    .line 211
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_a

    move-object/from16 v16, v5

    :goto_6
    goto :goto_4

    .line 209
    :cond_9
    const/4 v7, 0x0

    goto :goto_5

    .line 211
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/MSimCarrierText;->getContext()Landroid/content/Context;

    move-result-object v17

    sget v18, Lcom/android/keyguard/R$string;->msim_carrier_text_format:I

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v16, v19, v20

    const/16 v20, 0x1

    aput-object v5, v19, v20

    invoke-virtual/range {v17 .. v19}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    goto :goto_6

    .line 215
    :cond_b
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v14, v0, [I

    fill-array-data v14, :array_0

    .line 216
    .local v14, "simActive":[I
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/MSimCarrierText;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "phone1_on"

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    aput v18, v14, v17

    .line 217
    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/MSimCarrierText;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "phone2_on"

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    aput v18, v14, v17

    .line 218
    const/16 v17, 0x0

    aget v17, v14, v17

    if-nez v17, :cond_c

    .line 219
    move-object/from16 v16, v5

    goto/16 :goto_4

    .line 220
    :cond_c
    const/16 v17, 0x1

    aget v17, v14, v17

    if-nez v17, :cond_5

    .line 221
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_d

    move-object/from16 v16, v5

    :cond_d
    goto/16 :goto_4

    .line 225
    .end local v7    # "insertedMultiSim":Z
    .end local v14    # "simActive":[I
    :cond_e
    const-string v17, "ABSENT"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_11

    const-string v17, "PIN_REQUIRED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_f

    const-string v17, "PUK_REQUIRED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_11

    .line 227
    :cond_f
    const-string v17, "Combination"

    const-string v18, "Combination"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10

    .line 228
    sget-object v17, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    const/16 v18, 0x0

    aget-object v18, p2, v18

    const/16 v19, 0x0

    aget-object v19, p3, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/keyguard/MSimCarrierText;->getCarrierTextForSimState(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v16

    goto/16 :goto_4

    .line 230
    :cond_10
    sget-object v17, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    const/16 v18, 0x1

    aget-object v18, p2, v18

    const/16 v19, 0x1

    aget-object v19, p3, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/keyguard/MSimCarrierText;->getCarrierTextForSimState(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v16

    goto/16 :goto_4

    .line 233
    :cond_11
    const-string v17, "ABSENT"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_13

    const-string v17, "PIN_REQUIRED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_12

    const-string v17, "PUK_REQUIRED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_13

    .line 235
    :cond_12
    sget-object v17, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    const/16 v18, 0x0

    aget-object v18, p2, v18

    const/16 v19, 0x0

    aget-object v19, p3, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/keyguard/MSimCarrierText;->getCarrierTextForSimState(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v16

    goto/16 :goto_4

    .line 236
    :cond_13
    const-string v17, "ABSENT"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_14

    const-string v17, "READY"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_14

    .line 237
    move-object/from16 v16, v5

    goto/16 :goto_4

    .line 240
    :cond_14
    const-string v17, "ABSENT"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_15

    const-string v17, "ABSENT"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_15

    const-string v17, "1,0"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_15

    .line 241
    move-object/from16 v16, v5

    goto/16 :goto_4

    .line 244
    :cond_15
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSPRPLMN()Z

    move-result v17

    if-eqz v17, :cond_16

    .line 245
    sget-object v17, Lcom/android/keyguard/MSimCarrierText;->tele:Landroid/telephony/TelephonyManager;

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_4

    .line 249
    :cond_16
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_17

    move-object/from16 v16, v5

    :cond_17
    goto/16 :goto_4

    .line 254
    .end local v5    # "displayText":Ljava/lang/CharSequence;
    .end local v13    # "numOfActiveSim":I
    :cond_18
    const-string v17, "MSimCarrierText"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "updateCarrierText: text = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/keyguard/MSimCarrierText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 162
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 215
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method
