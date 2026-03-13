.class public Lcom/android/keyguard/KeyguardSimPukView$StateMachine;
.super Ljava/lang/Object;
.source "KeyguardSimPukView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSimPukView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StateMachine"
.end annotation


# instance fields
.field final CONFIRM_PIN:I

.field final DONE:I

.field final ENTER_PIN:I

.field final ENTER_PUK:I

.field protected state:I

.field final synthetic this$0:Lcom/android/keyguard/KeyguardSimPukView;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSimPukView;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 103
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->ENTER_PUK:I

    .line 105
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->ENTER_PIN:I

    .line 106
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->CONFIRM_PIN:I

    .line 107
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->DONE:I

    .line 108
    iput v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    return-void
.end method


# virtual methods
.method public next()V
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    .line 111
    const/4 v0, 0x0

    .line 112
    .local v0, "msg":I
    iget v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    if-nez v1, :cond_3

    .line 113
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSimPukView;->checkPuk()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 114
    iput v4, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    .line 115
    sget v0, Lcom/android/keyguard/R$string;->kg_puk_enter_pin_hint:I

    .line 136
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v1, v4}, Lcom/android/keyguard/KeyguardSimPukView;->resetPasswordText(Z)V

    .line 137
    if-eqz v0, :cond_1

    .line 138
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardSimPukView;->getSimIconResId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v4, v3}, Lcom/android/keyguard/KeyguardSimPukView;->setHintOrMessageText(IIZI)V

    .line 140
    :cond_1
    return-void

    .line 117
    :cond_2
    sget v0, Lcom/android/keyguard/R$string;->kg_invalid_sim_puk_hint:I

    goto :goto_0

    .line 119
    :cond_3
    iget v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    if-ne v1, v4, :cond_5

    .line 120
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSimPukView;->checkPin()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 121
    iput v2, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    .line 122
    sget v0, Lcom/android/keyguard/R$string;->kg_enter_confirm_pin_hint:I

    goto :goto_0

    .line 124
    :cond_4
    sget v0, Lcom/android/keyguard/R$string;->kg_invalid_sim_pin_hint:I

    goto :goto_0

    .line 126
    :cond_5
    iget v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    if-ne v1, v2, :cond_0

    .line 127
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSimPukView;->confirmPin()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 128
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    .line 129
    sget v0, Lcom/android/keyguard/R$string;->keyguard_sim_unlock_progress_dialog_message:I

    .line 130
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSimPukView;->updateSim()V

    goto :goto_0

    .line 132
    :cond_6
    iput v4, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    .line 133
    sget v0, Lcom/android/keyguard/R$string;->kg_invalid_confirm_pin_hint:I

    goto :goto_0
.end method

.method reset()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 143
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    const-string v1, ""

    iput-object v1, v0, Lcom/android/keyguard/KeyguardSimPukView;->mPinText:Ljava/lang/String;

    .line 144
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    const-string v1, ""

    iput-object v1, v0, Lcom/android/keyguard/KeyguardSimPukView;->mPukText:Ljava/lang/String;

    .line 145
    iput v4, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    .line 146
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCModel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/MultiSimUtils;->getPINPUKRequest()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPukView;->access$000(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "DSNETWORK"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 148
    const-string v0, "KeyguardSimPukView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reset()--DSNETWORK VALUE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardSimPukView;->access$100(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "DSNETWORK"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSimPukView;->isHintMessageArea()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSimPukView;->setNullHintMessage()V

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v1, Lcom/android/keyguard/R$string;->kg_puk_enter_puk_hint:I

    invoke-interface {v0, v1, v5}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 181
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSimPukView;->getEntryTextview()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 182
    return-void
.end method
