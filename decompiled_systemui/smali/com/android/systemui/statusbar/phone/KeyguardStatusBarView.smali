.class public Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;
.super Landroid/widget/RelativeLayout;
.source "KeyguardStatusBarView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# static fields
.field private static final ACTION_OPERATOR_LOGO:Ljava/lang/String; = "com.sec.android.action.OPERATOR_LOGO_UPDATE"

.field private static final EXTRA_LOGO_SHOW:Ljava/lang/String; = "logo_show"

.field private static final TAG:Ljava/lang/String; = "KeyguardStatusBarView"


# instance fields
.field private mBatteryCharging:Z

.field private mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private mBatteryLevel:Landroid/widget/TextView;

.field private mBatteryListening:Z

.field private mCallBackgroundView:Landroid/view/View;

.field private mCarrierText:Lcom/android/keyguard/CarrierText;

.field private mEmergencyModeActivated:Z

.field private mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

.field private mKeyguardUserSwitcherShowing:Z

.field private mMultiUserAvatar:Landroid/widget/ImageView;

.field private mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

.field private mMultiUserSwitchAnimating:Z

.field private mOperatorLogoView:Landroid/widget/ImageView;

.field private mSystemIconsSuperContainer:Landroid/view/View;

.field private mSystemIconsSwitcherHiddenExpandedMargin:I

.field private mSystemIconsSwitcherPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mEmergencyModeActivated:Z

    .line 184
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Lcom/android/keyguard/CarrierText;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCarrierText:Lcom/android/keyguard/CarrierText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mOperatorLogoView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserAvatar:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Lcom/android/systemui/statusbar/phone/MultiUserSwitch;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsSuperContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private animateNextLayoutChange()V
    .locals 4

    .prologue
    .line 336
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 337
    .local v0, "systemIconsCurrentX":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-ne v2, p0, :cond_0

    const/4 v1, 0x1

    .line 338
    .local v1, "userSwitcherVisible":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$3;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$3;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;ZI)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 382
    return-void

    .line 337
    .end local v1    # "userSwitcherVisible":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadDimens()V
    .locals 2

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a036a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsSwitcherHiddenExpandedMargin:I

    .line 180
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a038c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsSwitcherPadding:I

    .line 182
    return-void
.end method

.method private updateSystemIconsLayoutParams()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 240
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 242
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x0

    .line 243
    .local v1, "marginEnd":I
    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->mSupportLockscreenMumButton:Z

    if-eqz v5, :cond_6

    .line 244
    const/4 v2, 0x0

    .line 245
    .local v2, "mumButtonEnabled":Z
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mEmergencyModeActivated:Z

    if-nez v5, :cond_0

    .line 246
    const/4 v2, 0x1

    .line 248
    :cond_0
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mKeyguardUserSwitcherShowing:Z

    if-nez v5, :cond_1

    if-nez v2, :cond_4

    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsSwitcherHiddenExpandedMargin:I

    .line 250
    :goto_0
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mKeyguardUserSwitcherShowing:Z

    if-nez v5, :cond_2

    if-nez v2, :cond_5

    :cond_2
    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsSwitcherPadding:I

    .line 252
    .local v3, "paddingEnd":I
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v5, v4, v4, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 255
    .end local v2    # "mumButtonEnabled":Z
    .end local v3    # "paddingEnd":I
    :goto_2
    invoke-virtual {v0}, Landroid/widget/RelativeLayout$LayoutParams;->getMarginEnd()I

    move-result v4

    if-eq v1, v4, :cond_3

    .line 256
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 257
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 259
    :cond_3
    return-void

    .restart local v2    # "mumButtonEnabled":Z
    :cond_4
    move v1, v4

    .line 248
    goto :goto_0

    :cond_5
    move v3, v4

    .line 250
    goto :goto_1

    .line 254
    .end local v2    # "mumButtonEnabled":Z
    :cond_6
    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsSwitcherHiddenExpandedMargin:I

    goto :goto_2
.end method

.method private updateUserSwitcher()V
    .locals 2

    .prologue
    .line 274
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 275
    .local v0, "keyguardSwitcherAvailable":Z
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setClickable(Z)V

    .line 276
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setFocusable(Z)V

    .line 277
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setKeyguardMode(Z)V

    .line 278
    return-void

    .line 274
    .end local v0    # "keyguardSwitcherAvailable":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateVisibilities()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 204
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 205
    .local v0, "mumButtonEnabled":Ljava/lang/Boolean;
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mSupportLockscreenMumButton:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mEmergencyModeActivated:Z

    if-nez v2, :cond_0

    .line 207
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 210
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    if-eqz v2, :cond_4

    .line 211
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mKeyguardUserSwitcherShowing:Z

    if-nez v2, :cond_5

    .line 212
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eq v2, p0, :cond_3

    .line 213
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 214
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 217
    :cond_1
    invoke-static {}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getInstance()Landroid/app/enterprise/knoxcustom/ProKioskManager;

    move-result-object v1

    .line 218
    .local v1, "proKioskManager":Landroid/app/enterprise/knoxcustom/ProKioskManager;
    if-eqz v1, :cond_2

    .line 219
    invoke-virtual {v1}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getProKioskState()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 220
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 224
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {p0, v2, v4}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->addView(Landroid/view/View;I)V

    .line 226
    .end local v1    # "proKioskManager":Landroid/app/enterprise/knoxcustom/ProKioskManager;
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setVisibility(I)V

    .line 233
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->bringToFront()V

    .line 235
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCarrierText:Lcom/android/keyguard/CarrierText;

    invoke-virtual {v2, v5}, Lcom/android/keyguard/CarrierText;->setSelected(Z)V

    .line 237
    return-void

    .line 228
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-ne v2, p0, :cond_6

    .line 229
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->removeView(Landroid/view/View;)V

    .line 231
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 396
    const/4 v0, 0x0

    return v0
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 8
    .param p1, "level"    # I
    .param p2, "pluggedIn"    # Z
    .param p3, "charging"    # Z

    .prologue
    .line 304
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v2

    int-to-double v4, p1

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    .line 305
    .local v1, "percentage":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryLevel:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryCharging:Z

    if-eq v2, p3, :cond_1

    const/4 v0, 0x1

    .line 307
    .local v0, "changed":Z
    :goto_0
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryCharging:Z

    .line 308
    if-eqz v0, :cond_0

    .line 309
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateVisibilities()V

    .line 311
    :cond_0
    sput p1, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mBatteryLevel:I

    .line 312
    sput p1, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mBatteryLevel:I

    .line 313
    return-void

    .line 306
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 169
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 172
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryLevel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a03a1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 174
    return-void
.end method

.method protected onFinishInflate()V
    .locals 15

    .prologue
    const/4 v4, 0x0

    const v14, 0x7f0f01a3

    const/16 v13, 0x8

    const/4 v12, 0x0

    .line 101
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 102
    const v0, 0x7f0f01a0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsSuperContainer:Landroid/view/View;

    .line 103
    const v0, 0x7f0f019e

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    .line 104
    const v0, 0x7f0f019f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserAvatar:Landroid/widget/ImageView;

    .line 105
    const v0, 0x7f0f01a2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryLevel:Landroid/widget/TextView;

    .line 106
    const v0, 0x7f0f01a4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/CarrierText;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCarrierText:Lcom/android/keyguard/CarrierText;

    .line 108
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->loadDimens()V

    .line 109
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mSupportLockscreenMumButton:Z

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a02e4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 112
    .local v7, "keyguardHeight":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 113
    .local v8, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iput v7, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 114
    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 117
    .local v9, "layoutParams2":Landroid/view/ViewGroup$MarginLayoutParams;
    iput v7, v9, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0369

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 119
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0, v9}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    invoke-virtual {p0, v14}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 122
    .local v11, "linearlayout":Landroid/widget/LinearLayout;
    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 123
    .local v10, "layoutParams3":Landroid/view/ViewGroup$LayoutParams;
    iput v7, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 124
    invoke-virtual {v11, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateSystemIconsLayoutParams()V

    .line 129
    .end local v7    # "keyguardHeight":I
    .end local v8    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v9    # "layoutParams2":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v10    # "layoutParams3":Landroid/view/ViewGroup$LayoutParams;
    .end local v11    # "linearlayout":Landroid/widget/LinearLayout;
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10c000d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 131
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateUserSwitcher()V

    .line 132
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateVisibilities()V

    .line 134
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mShowKeyguardOperatorLogoIcon:Z

    if-eqz v0, :cond_1

    .line 135
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 136
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "com.sec.android.action.OPERATOR_LOGO_UPDATE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 139
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mOperatorLogoView:Landroid/widget/ImageView;

    .line 140
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mOperatorLogoView:Landroid/widget/ImageView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v4, -0x1

    invoke-direct {v1, v2, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mOperatorLogoView:Landroid/widget/ImageView;

    const v1, 0x7f02076e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mOperatorLogoView:Landroid/widget/ImageView;

    const v1, 0x3f3d70a4    # 0.74f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 145
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mOperatorLogoView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0389

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1, v12, v12, v12}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    .line 147
    invoke-virtual {p0, v14}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 148
    .restart local v11    # "linearlayout":Landroid/widget/LinearLayout;
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mOperatorLogoView:Landroid/widget/ImageView;

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 150
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mOperatorLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 156
    .end local v3    # "filter":Landroid/content/IntentFilter;
    .end local v11    # "linearlayout":Landroid/widget/LinearLayout;
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    .line 158
    .local v6, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v6, v12}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCarrierText:Lcom/android/keyguard/CarrierText;

    if-eqz v0, :cond_2

    .line 159
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCarrierText:Lcom/android/keyguard/CarrierText;

    invoke-virtual {v0, v13}, Lcom/android/keyguard/CarrierText;->setVisibility(I)V

    .line 162
    :cond_2
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mSupportLockscreenMumButton:Z

    if-eqz v0, :cond_3

    .line 163
    const v0, 0x7f0f019d

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCallBackgroundView:Landroid/view/View;

    .line 165
    :cond_3
    return-void
.end method

.method public onPowerSaveChanged()V
    .locals 0

    .prologue
    .line 318
    return-void
.end method

.method public setBatteryController(Lcom/android/systemui/statusbar/policy/BatteryController;)V
    .locals 1
    .param p1, "batteryController"    # Lcom/android/systemui/statusbar/policy/BatteryController;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 282
    const v0, 0x7f0f0212

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/BatteryMeterView;->setBatteryController(Lcom/android/systemui/statusbar/policy/BatteryController;)V

    .line 283
    return-void
.end method

.method public setCallBackground(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 407
    const-string v1, "KeyguardStatusBarView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCallBackground:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    const/4 v0, 0x0

    .line 409
    .local v0, "color":I
    packed-switch p1, :pswitch_data_0

    .line 423
    const/4 v0, 0x0

    .line 426
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCallBackgroundView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 427
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCallBackgroundView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 428
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->bringToFront()V

    .line 429
    return-void

    .line 411
    :pswitch_0
    const/4 v0, 0x0

    .line 412
    goto :goto_0

    .line 414
    :pswitch_1
    const v0, -0x3bbd74d7

    .line 415
    goto :goto_0

    .line 417
    :pswitch_2
    const v0, -0x3b59b3e1

    .line 418
    goto :goto_0

    .line 420
    :pswitch_3
    const v0, -0x3b9b999e

    .line 421
    goto :goto_0

    .line 409
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setEmergencyMode(Z)V
    .locals 0
    .param p1, "emergencyModeActivated"    # Z

    .prologue
    .line 401
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mEmergencyModeActivated:Z

    .line 402
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateVisibilities()V

    .line 403
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateSystemIconsLayoutParams()V

    .line 404
    return-void
.end method

.method public setKeyguardUserSwitcher(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)V
    .locals 1
    .param p1, "keyguardUserSwitcher"    # Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    .prologue
    .line 321
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    .line 322
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setKeyguardUserSwitcher(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)V

    .line 323
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateUserSwitcher()V

    .line 324
    return-void
.end method

.method public setKeyguardUserSwitcherShowing(ZZ)V
    .locals 0
    .param p1, "showing"    # Z
    .param p2, "animate"    # Z

    .prologue
    .line 327
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mKeyguardUserSwitcherShowing:Z

    .line 328
    if-eqz p2, :cond_0

    .line 329
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->animateNextLayoutChange()V

    .line 331
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateVisibilities()V

    .line 332
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateSystemIconsLayoutParams()V

    .line 333
    return-void
.end method

.method public setListening(Z)V
    .locals 1
    .param p1, "listening"    # Z

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryListening:Z

    if-ne p1, v0, :cond_0

    .line 271
    :goto_0
    return-void

    .line 265
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryListening:Z

    .line 266
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryListening:Z

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->addStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    goto :goto_0

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->removeStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    goto :goto_0
.end method

.method public setPhoneStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 1
    .param p1, "bar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setPhoneStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 300
    :cond_0
    return-void
.end method

.method public setUserInfoController(Lcom/android/systemui/statusbar/policy/UserInfoController;)V
    .locals 1
    .param p1, "userInfoController"    # Lcom/android/systemui/statusbar/policy/UserInfoController;

    .prologue
    .line 290
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/policy/UserInfoController;->addListener(Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;)V

    .line 296
    return-void
.end method

.method public setUserSwitcherController(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V
    .locals 1
    .param p1, "controller"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setUserSwitcherController(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    .line 287
    return-void
.end method

.method public setVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 386
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 387
    if-eqz p1, :cond_0

    .line 388
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 389
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 390
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setAlpha(F)V

    .line 392
    :cond_0
    return-void
.end method
