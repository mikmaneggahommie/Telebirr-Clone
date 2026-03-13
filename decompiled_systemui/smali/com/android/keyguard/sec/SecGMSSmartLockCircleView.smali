.class public Lcom/android/keyguard/sec/SecGMSSmartLockCircleView;
.super Lcom/android/keyguard/sec/SecKeyguardCircleView;
.source "SecGMSSmartLockCircleView.java"

# interfaces
.implements Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/SecGMSSmartLockCircleView$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SecGMSSmartLockCircleView"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/SecGMSSmartLockCircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/sec/SecGMSSmartLockCircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/keyguard/sec/SecGMSSmartLockCircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/sec/SecKeyguardCircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 34
    sget v0, Lcom/android/keyguard/R$id;->trusted_lock_button:I

    iput v0, p0, Lcom/android/keyguard/sec/SecGMSSmartLockCircleView;->mContentResId:I

    .line 35
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 46
    invoke-super {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->onAttachedToWindow()V

    .line 47
    iget-object v0, p0, Lcom/android/keyguard/sec/SecGMSSmartLockCircleView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea$Helper;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/android/keyguard/sec/SecGMSSmartLockCircleView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea$Helper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardMessageArea$Helper;->setMessageAreaVisiblity(Z)V

    .line 50
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 54
    invoke-super {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->onDetachedFromWindow()V

    .line 55
    iget-object v0, p0, Lcom/android/keyguard/sec/SecGMSSmartLockCircleView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea$Helper;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/keyguard/sec/SecGMSSmartLockCircleView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea$Helper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardMessageArea$Helper;->setMessageAreaVisiblity(Z)V

    .line 58
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 39
    invoke-super {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->onFinishInflate()V

    .line 40
    iget-object v0, p0, Lcom/android/keyguard/sec/SecGMSSmartLockCircleView;->mContentIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecGMSSmartLockCircleView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->keyguard_smart_lock_shortcut_tts:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 42
    return-void
.end method

.method public onUnlockExecuted()V
    .locals 2

    .prologue
    .line 62
    invoke-super {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->onUnlockExecuted()V

    .line 64
    iget-object v0, p0, Lcom/android/keyguard/sec/SecGMSSmartLockCircleView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->requireCredentialEntry(I)V

    .line 65
    return-void
.end method

.method public onUnlockViewPressed()V
    .locals 2

    .prologue
    .line 69
    invoke-super {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->onUnlockViewPressed()V

    .line 70
    iget-object v0, p0, Lcom/android/keyguard/sec/SecGMSSmartLockCircleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getCircleView()Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->showSwipeCircleEffect(Z)V

    .line 71
    return-void
.end method

.method public setShortCutImageResource(Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;)V
    .locals 2
    .param p1, "state"    # Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/keyguard/sec/SecGMSSmartLockCircleView;->mContentIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 76
    sget-object v0, Lcom/android/keyguard/sec/SecGMSSmartLockCircleView$1;->$SwitchMap$com$android$keyguard$sec$SecKeyguardCircleView$ContentStates:[I

    invoke-virtual {p1}, Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 78
    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecGMSSmartLockCircleView;->mContentIcon:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->smart_lock_icon_default:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 81
    :pswitch_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/android/keyguard/sec/SecGMSSmartLockCircleView;->mContentIcon:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->smart_lock_icon_press:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecGMSSmartLockCircleView;->mContentIcon:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->smart_lock_icon_default:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 87
    :pswitch_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SecGMSSmartLockCircleView;->mContentIcon:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->smart_lock_icon_default:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
