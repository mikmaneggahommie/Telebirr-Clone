.class public Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;
.super Landroid/widget/LinearLayout;
.source "QuickSim2ButtonLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout$PreferedVoiceObserver;
    }
.end annotation


# static fields
.field private static final QuickpanelSimImage:[I

.field private static final TAG:Ljava/lang/String; = "QuickSim2Button"


# instance fields
.field private carrierText:Ljava/lang/String;

.field private currSimId:I

.field private mAirplaneMode:I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mNetworkNameDefault:Ljava/lang/String;

.field private mNetworkNameSeparator:Ljava/lang/String;

.field private mPlmn:Ljava/lang/String;

.field private mPreferedVoice:I

.field private mPreferedVoiceObserver:Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout$PreferedVoiceObserver;

.field private mQuickSim2CarrierText:Landroid/widget/TextView;

.field private mQuickSim2Icon:Landroid/widget/ImageView;

.field private mQuickSim2Text:Landroid/widget/TextView;

.field private mShowPlmn:Z

.field private mShowSpn:Z

.field private mSpn:Ljava/lang/String;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private phoneId:I

.field private simActive:I

.field private subId:I

.field private telephonyManager:Landroid/telephony/TelephonyManager;

.field private useSubID:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->QuickpanelSimImage:[I

    return-void

    :array_0
    .array-data 4
        0x7f020333
        0x7f020334
        0x7f02032c
        0x7f020332
        0x7f020330
        0x7f02032f
        0x7f02032e
        0x7f020331
        0x7f02032d
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 150
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 151
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 154
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 156
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    iput v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mAirplaneMode:I

    .line 59
    iput v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mPreferedVoice:I

    .line 73
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout$1;-><init>(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 157
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    .prologue
    .line 37
    iget v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->subId:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->subId:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    .prologue
    .line 37
    iget v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->phoneId:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    .prologue
    .line 37
    iget v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mAirplaneMode:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mAirplaneMode:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->phoneId:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    .prologue
    .line 37
    iget v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mPreferedVoice:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mPreferedVoice:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->updateDualSimUiBySettings(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2Text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->carrierText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->carrierText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mNetworkNameDefault:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mNetworkNameDefault:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;
    .param p1, "x1"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mShowSpn:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mShowSpn:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mSpn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mSpn:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mShowPlmn:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mShowPlmn:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mPlmn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mPlmn:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    .prologue
    .line 37
    iget v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->currSimId:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->currSimId:I

    return p1
.end method

.method private getPhoneId(I)I
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 244
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 245
    .local v0, "phoneIdLocal":I
    return v0
.end method

.method private isIdleBothSIM()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 334
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v3

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->isIdle(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v3

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->isIdle(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 337
    const-string v1, "QuickSim2Button"

    const-string v2, "isIdle both SIM : true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :goto_0
    return v0

    .line 340
    :cond_0
    const-string v0, "QuickSim2Button"

    const-string v2, "isIdle both SIM : false"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 342
    goto :goto_0
.end method

.method private updateDualSimUiBySettings(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "simIndex"    # I
    .param p2, "imageIndex"    # Ljava/lang/String;
    .param p3, "simName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 348
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 349
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 350
    .local v0, "iconIndex":I
    if-ne p1, v3, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2Icon:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 351
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2Icon:Landroid/widget/ImageView;

    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->QuickpanelSimImage:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 356
    .end local v0    # "iconIndex":I
    :cond_0
    if-eqz p3, :cond_1

    .line 357
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CTC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 358
    if-ne p1, v3, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2CarrierText:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 359
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2CarrierText:Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    :cond_1
    :goto_0
    return-void

    .line 362
    :cond_2
    if-ne p1, v3, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2Text:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 363
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2Text:Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 5
    .param p1, "showSpn"    # Z
    .param p2, "spn"    # Ljava/lang/String;
    .param p3, "showPlmn"    # Z
    .param p4, "plmn"    # Ljava/lang/String;

    .prologue
    .line 432
    const-string v2, "QuickSim2Button"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateNetworkName showSpn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " spn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " showPlmn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " plmn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 435
    .local v1, "str":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 436
    .local v0, "something":Z
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 437
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    const/4 v0, 0x1

    .line 440
    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 441
    if-eqz v0, :cond_1

    .line 442
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    :cond_1
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    const/4 v0, 0x1

    .line 447
    :cond_2
    if-eqz v0, :cond_4

    .line 448
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->carrierText:Ljava/lang/String;

    .line 453
    :goto_0
    const-string v2, "QuickSim2Button"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "carrierText : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->carrierText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CTC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 456
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->carrierText:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->setMultisimCarrierText(Ljava/lang/String;I)V

    .line 458
    :cond_3
    return-void

    .line 450
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mNetworkNameDefault:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->carrierText:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 161
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 162
    const-string v4, "QuickSim2Button"

    const-string v5, "onAttachedToWindow()"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const v4, 0x7f0f021a

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2Text:Landroid/widget/TextView;

    .line 165
    const v4, 0x7f0f021b

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2CarrierText:Landroid/widget/TextView;

    .line 166
    const v4, 0x7f0f0219

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2Icon:Landroid/widget/ImageView;

    .line 168
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    const v5, 0x1040277

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mNetworkNameDefault:Ljava/lang/String;

    .line 170
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    const v5, 0x7f0b02b1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mNetworkNameSeparator:Ljava/lang/String;

    .line 172
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "select_icon_2"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 173
    .local v1, "iconIndex":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "select_name_2"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 174
    .local v3, "simName":Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CTC"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 175
    if-eqz v3, :cond_1

    .line 176
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2CarrierText:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2Text:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    const v6, 0x7f0b0286

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2Icon:Landroid/widget/ImageView;

    sget-object v5, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->QuickpanelSimImage:[I

    aget v5, v5, v1

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 190
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 193
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 194
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 195
    const-string v4, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 196
    const-string v4, "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 197
    const-string v4, "com.samsung.settings.SIMCARD_MGT"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 198
    const-string v4, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 199
    const-string v4, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 200
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 202
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "phone2_on"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 203
    .local v2, "simActive":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->currSimId:I

    .line 205
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mAirplaneMode:I

    .line 207
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->CHN:Z

    if-nez v4, :cond_0

    .line 208
    new-instance v4, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout$PreferedVoiceObserver;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout$PreferedVoiceObserver;-><init>(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mPreferedVoiceObserver:Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout$PreferedVoiceObserver;

    .line 209
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "prefered_voice_call"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mPreferedVoiceObserver:Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout$PreferedVoiceObserver;

    invoke-virtual {v4, v5, v7, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 213
    :cond_0
    iget v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mAirplaneMode:I

    if-ne v4, v8, :cond_4

    .line 214
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->setDeactiveSimUI()V

    .line 224
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    const-string v5, "statusbar"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/StatusBarManager;

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 225
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 226
    return-void

    .line 178
    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "simActive":I
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2CarrierText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 182
    :cond_2
    if-eqz v3, :cond_3

    .line 183
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2Text:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 185
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2Text:Landroid/widget/TextView;

    const-string v5, "SIM 2"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 215
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    .restart local v2    # "simActive":I
    :cond_4
    if-eqz v2, :cond_5

    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->CHN:Z

    if-nez v4, :cond_6

    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v4, :cond_6

    iget v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mPreferedVoice:I

    if-nez v4, :cond_6

    .line 216
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->setDeselectedSimUI()V

    goto :goto_2

    .line 218
    :cond_6
    iget v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->currSimId:I

    if-ne v4, v8, :cond_7

    .line 219
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->setSelectedSimUI()V

    goto :goto_2

    .line 221
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->setDeselectedSimUI()V

    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 252
    iget v1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mAirplaneMode:I

    if-ne v1, v4, :cond_1

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "phone2_on"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->simActive:I

    .line 260
    const-string v1, "QuickSim2Button"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick 1 simActive="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->simActive:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget v1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->simActive:I

    if-ne v1, v4, :cond_0

    .line 265
    new-array v1, v5, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->useSubID:[I

    .line 266
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v0

    .line 267
    .local v0, "currPhoneID":I
    const-string v1, "QuickSim2Button"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick 2 currPhoneID is = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    if-ne v0, v4, :cond_2

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->CHN:Z

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v1, :cond_4

    iget v1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mPreferedVoice:I

    if-nez v1, :cond_4

    .line 270
    :cond_2
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->useSubID:[I

    .line 273
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->isIdleBothSIM()Z

    move-result v1

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mIsCGGDuosCTC:Z

    if-eqz v1, :cond_7

    .line 274
    :cond_3
    const-string v1, "QuickSim2Button"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick 3 set voice SIM as SIM 2 useSubID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->useSubID:[I

    aget v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->useSubID:[I

    aget v2, v2, v6

    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionManager;->setDefaultVoiceSubId(I)V

    .line 276
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->CHN:Z

    if-nez v1, :cond_5

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v1, :cond_5

    .line 277
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "prefered_voice_call"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 289
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_maincard"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 279
    :cond_5
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->CHN:Z

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v1, :cond_4

    .line 280
    iget v1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mPreferedVoice:I

    if-eq v1, v5, :cond_6

    iget v1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mPreferedVoice:I

    if-ne v1, v7, :cond_4

    .line 281
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "prefered_voice_call"

    invoke-static {v1, v2, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 285
    :cond_7
    const-string v1, "QuickSim2Button"

    const-string v2, "onClick 3 Both SIM are not idle"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 238
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 239
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 230
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 231
    const-string v0, "QuickSim2Button"

    const-string v1, "onDetachedFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 233
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 300
    const-string v2, "CTC"

    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 301
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v2, :cond_0

    .line 302
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v2}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 305
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 306
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "QuickSim2Button"

    const-string v3, "onLongClick() SIM02"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 310
    :try_start_0
    const-string v2, "com.sec.android.app.simcardmanagement"

    const-string v3, "com.sec.android.app.simcardmanagement.dsnetwork"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    const-string v2, "showroaming"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 312
    const-string v2, "Booting"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 313
    const-string v2, "toDsnetwork"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 314
    const v2, 0x10008000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 315
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 316
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 317
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "QuickSim2Button"

    const-string v3, "activity not found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setActivateSimUI()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 402
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "phone2_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 403
    .local v0, "simActive":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->currSimId:I

    .line 405
    iget v1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mAirplaneMode:I

    if-ne v1, v3, :cond_0

    .line 406
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->setDeactiveSimUI()V

    .line 417
    :goto_0
    return-void

    .line 407
    :cond_0
    if-eqz v0, :cond_1

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->CHN:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mPreferedVoice:I

    if-nez v1, :cond_2

    .line 408
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->setDeselectedSimUI()V

    goto :goto_0

    .line 410
    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->currSimId:I

    if-ne v1, v3, :cond_3

    .line 411
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->setSelectedSimUI()V

    goto :goto_0

    .line 413
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->setDeselectedSimUI()V

    goto :goto_0
.end method

.method public setDeactiveSimUI()V
    .locals 2

    .prologue
    .line 390
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->setEnabled(Z)V

    .line 391
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2Text:Landroid/widget/TextView;

    const-string v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 392
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2CarrierText:Landroid/widget/TextView;

    const-string v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 393
    return-void
.end method

.method public setDeselectedSimUI()V
    .locals 3

    .prologue
    .line 376
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->setEnabled(Z)V

    .line 377
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 378
    .local v0, "unselectedcolor":I
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v1, :cond_0

    .line 385
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2Text:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 386
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2CarrierText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 387
    return-void
.end method

.method public setFocusedSimUI()V
    .locals 2

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2Text:Landroid/widget/TextView;

    const-string v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 397
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2CarrierText:Landroid/widget/TextView;

    const-string v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 398
    return-void
.end method

.method public setMultisimCarrierText(Ljava/lang/String;I)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 325
    const-string v0, "QuickSim2Button"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMultisimCarrierText:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",phoneId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2CarrierText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2CarrierText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    :cond_0
    return-void
.end method

.method public setSelectedSimUI()V
    .locals 3

    .prologue
    const v2, 0x7f0c00a8

    .line 370
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->setEnabled(Z)V

    .line 371
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2Text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 372
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2CarrierText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 373
    return-void
.end method

.method public updateAirplaneMode()V
    .locals 3

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mAirplaneMode:I

    .line 422
    const-string v0, "QuickSim2Button"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAirplaneMode - mAirplaneMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mAirplaneMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mAirplaneMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 425
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->setDeactiveSimUI()V

    .line 429
    :goto_0
    return-void

    .line 427
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->setActivateSimUI()V

    goto :goto_0
.end method
