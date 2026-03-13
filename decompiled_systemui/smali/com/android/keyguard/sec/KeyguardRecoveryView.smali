.class public Lcom/android/keyguard/sec/KeyguardRecoveryView;
.super Lcom/android/keyguard/KeyguardAbsKeyInputView;
.source "KeyguardRecoveryView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/text/TextWatcher;


# instance fields
.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEntry:Ljava/lang/String;

.field mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mPasswordEntry:Landroid/widget/TextView;

.field private mPasswordEntryDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

.field private mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

.field private final mShowImeAtScreenOn:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/KeyguardRecoveryView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$bool;->kg_show_ime_at_screen_on:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardRecoveryView;->mShowImeAtScreenOn:Z

    .line 85
    const-string v0, "enterprise_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardRecoveryView;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 88
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardRecoveryView;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardRecoveryView;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardRecoveryView;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    .line 91
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/KeyguardRecoveryView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardRecoveryView;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardRecoveryView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/KeyguardRecoveryView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardRecoveryView;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardRecoveryView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/KeyguardRecoveryView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardRecoveryView;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardRecoveryView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/KeyguardRecoveryView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardRecoveryView;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardRecoveryView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/keyguard/sec/KeyguardRecoveryView;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardRecoveryView;
    .param p1, "x1"    # Landroid/os/AsyncTask;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardRecoveryView;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/KeyguardRecoveryView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardRecoveryView;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardRecoveryView;->mEntry:Ljava/lang/String;

    return-object v0
.end method

.method private hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z
    .locals 12
    .param p1, "imm"    # Landroid/view/inputmethod/InputMethodManager;
    .param p2, "shouldIncludeAuxiliarySubtypes"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 252
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 255
    .local v1, "enabledImis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v2, 0x0

    .line 257
    .local v2, "filteredImisCount":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    .line 259
    .local v5, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-le v2, v10, :cond_1

    .line 285
    .end local v5    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :goto_1
    return v10

    .line 260
    .restart local v5    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    invoke-virtual {p1, v5, v10}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v8

    .line 263
    .local v8, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 264
    add-int/lit8 v2, v2, 0x1

    .line 265
    goto :goto_0

    .line 268
    :cond_2
    const/4 v0, 0x0

    .line 269
    .local v0, "auxCount":I
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodSubtype;

    .line 270
    .local v7, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 271
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 274
    .end local v7    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    sub-int v6, v11, v0

    .line 279
    .local v6, "nonAuxCount":I
    if-gtz v6, :cond_5

    if-eqz p2, :cond_0

    if-le v0, v10, :cond_0

    .line 280
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 281
    goto :goto_0

    .line 285
    .end local v0    # "auxCount":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v6    # "nonAuxCount":I
    .end local v8    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_6
    if-gt v2, v10, :cond_7

    const/4 v11, 0x0

    invoke-virtual {p1, v11, v9}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v10, :cond_8

    :cond_7
    move v9, v10

    :cond_8
    move v10, v9

    goto :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 320
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardRecoveryView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardRecoveryView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 312
    :cond_0
    return-void
.end method

.method protected getPasswordText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardRecoveryView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPasswordTextViewId()I
    .locals 1

    .prologue
    .line 104
    sget v0, Lcom/android/keyguard/R$id;->passwordEntry:I

    return v0
.end method

.method protected getPromtReasonStringRes(I)I
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 235
    packed-switch p1, :pswitch_data_0

    .line 239
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 237
    :pswitch_0
    sget v0, Lcom/android/keyguard/R$string;->kg_prompt_reason_restart_password:I

    goto :goto_0

    .line 235
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getWrongPasswordStringId()I
    .locals 1

    .prologue
    .line 297
    sget v0, Lcom/android/keyguard/R$string;->kg_wrong_password:I

    return v0
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x1

    return v0
.end method

.method public needsShowClockandNotifications()Z
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x1

    return v0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 326
    if-nez p3, :cond_3

    if-eqz p2, :cond_0

    const/4 v4, 0x6

    if-eq p2, v4, :cond_0

    const/4 v4, 0x5

    if-ne p2, v4, :cond_3

    :cond_0
    move v1, v3

    .line 330
    .local v1, "isSoftImeEvent":Z
    :goto_0
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-static {v4}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_4

    move v0, v3

    .line 333
    .local v0, "isKeyboardEnterKey":Z
    :goto_1
    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    .line 334
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardRecoveryView;->verifyPasswordAndUnlock()V

    move v2, v3

    .line 337
    :cond_2
    return v2

    .end local v0    # "isKeyboardEnterKey":Z
    .end local v1    # "isSoftImeEvent":Z
    :cond_3
    move v1, v2

    .line 326
    goto :goto_0

    .restart local v1    # "isSoftImeEvent":Z
    :cond_4
    move v0, v2

    .line 330
    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 140
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onFinishInflate()V

    .line 142
    const/4 v0, 0x0

    .line 144
    .local v0, "imeOrDeleteButtonVisible":Z
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardRecoveryView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardRecoveryView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 147
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardRecoveryView;->getPasswordTextViewId()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/keyguard/sec/KeyguardRecoveryView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardRecoveryView;->mPasswordEntry:Landroid/widget/TextView;

    .line 148
    new-instance v4, Lcom/android/internal/widget/TextViewInputDisabler;

    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardRecoveryView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-direct {v4, v5}, Lcom/android/internal/widget/TextViewInputDisabler;-><init>(Landroid/widget/TextView;)V

    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardRecoveryView;->mPasswordEntryDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    .line 149
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardRecoveryView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 150
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardRecoveryView;->mPasswordEntry:Landroid/widget/TextView;

    const/16 v5, 0x81

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setInputType(I)V

    .line 152
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardRecoveryView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 153
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardRecoveryView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 156
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardRecoveryView;->mPasswordEntry:Landroid/widget/TextView;

    new-instance v5, Lcom/android/keyguard/sec/KeyguardRecoveryView$1;

    invoke-direct {v5, p0}, Lcom/android/keyguard/sec/KeyguardRecoveryView$1;-><init>(Lcom/android/keyguard/sec/KeyguardRecoveryView;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardRecoveryView;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 165
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardRecoveryView;->mPasswordEntry:Landroid/widget/TextView;

    new-instance v5, Lcom/android/keyguard/sec/KeyguardRecoveryView$2;

    invoke-direct {v5, p0}, Lcom/android/keyguard/sec/KeyguardRecoveryView$2;-><init>(Lcom/android/keyguard/sec/KeyguardRecoveryView;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 179
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardRecoveryView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->requestFocus()Z

    .line 182
    sget v4, Lcom/android/keyguard/R$id;->switch_ime_button:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/sec/KeyguardRecoveryView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 183
    .local v3, "switchImeButton":Landroid/view/View;
    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardRecoveryView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0, v4, v6}, Lcom/android/keyguard/sec/KeyguardRecoveryView;->hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 184
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 185
    const/4 v0, 0x1

    .line 186
    new-instance v4, Lcom/android/keyguard/sec/KeyguardRecoveryView$3;

    invoke-direct {v4, p0}, Lcom/android/keyguard/sec/KeyguardRecoveryView$3;-><init>(Lcom/android/keyguard/sec/KeyguardRecoveryView;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    :cond_0
    if-nez v0, :cond_1

    .line 197
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardRecoveryView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 198
    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_1

    move-object v1, v2

    .line 199
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 200
    .local v1, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 201
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardRecoveryView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    .end local v1    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v2    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    return-void
.end method

.method protected onPasswordChecked(Ljava/lang/String;ZI)V
    .locals 9
    .param p1, "entry"    # Ljava/lang/String;
    .param p2, "matched"    # Z
    .param p3, "timeoutMs"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 372
    if-eqz p2, :cond_0

    .line 373
    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardRecoveryView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    .line 374
    .local v1, "mDPM":Landroid/app/admin/DevicePolicyManager;
    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardRecoveryView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v4

    .line 375
    .local v4, "quality":I
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v3

    .line 376
    .local v3, "minLength":I
    invoke-virtual {v1, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v2

    .line 377
    .local v2, "maxLength":I
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.app.action.CHANGE_DEVICE_PASSWORD"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 378
    .local v0, "it":Landroid/content/Intent;
    const-string v5, "com.android.settings"

    const-string v6, "com.android.settings.ChooseLockPassword"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 379
    const-string v5, "lockscreen.password_type"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 380
    const-string v5, "lockscreen.password_min"

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 381
    const-string v5, "lockscreen.password_max"

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 382
    const-string v5, "lockscreen.password_old"

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardRecoveryView;->mEntry:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 383
    const-string v5, "confirm_credentials"

    invoke-virtual {v0, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 384
    const-string v5, "isRecovery"

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 385
    const/high16 v5, 0x10000000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 386
    const/high16 v5, 0x400000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 387
    const/high16 v5, 0x800000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 389
    :try_start_0
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardRecoveryView;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v5, v0, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    :goto_0
    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardRecoveryView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v5, v7, v8}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(ZI)V

    .line 394
    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardRecoveryView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v5, v7}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 398
    .end local v0    # "it":Landroid/content/Intent;
    .end local v1    # "mDPM":Landroid/app/admin/DevicePolicyManager;
    .end local v2    # "maxLength":I
    .end local v3    # "minLength":I
    .end local v4    # "quality":I
    :goto_1
    invoke-virtual {p0, v7}, Lcom/android/keyguard/sec/KeyguardRecoveryView;->resetPasswordText(Z)V

    .line 399
    return-void

    .line 396
    :cond_0
    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardRecoveryView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/sec/KeyguardReset;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardReset;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/keyguard/sec/KeyguardReset;->wipeOut(I)V

    goto :goto_1

    .line 390
    .restart local v0    # "it":Landroid/content/Intent;
    .restart local v1    # "mDPM":Landroid/app/admin/DevicePolicyManager;
    .restart local v2    # "maxLength":I
    .restart local v3    # "minLength":I
    .restart local v4    # "quality":I
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 128
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onPause()V

    .line 129
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardRecoveryView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardRecoveryView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 130
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardRecoveryView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onResume(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    const/4 v2, 0x1

    .line 119
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onResume(I)V

    .line 120
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardRecoveryView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 121
    if-ne p1, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardRecoveryView;->mShowImeAtScreenOn:Z

    if-eqz v0, :cond_1

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardRecoveryView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardRecoveryView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 124
    :cond_1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 316
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 134
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->reset()V

    .line 135
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardRecoveryView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 136
    return-void
.end method

.method protected resetPasswordText(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardRecoveryView;->mEntry:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardRecoveryView;->mEntry:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->clear()V

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardRecoveryView;->mPasswordEntry:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardRecoveryView;->mPasswordEntry:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    :cond_1
    return-void
.end method

.method protected resetState()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 94
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyTabletUX()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    :cond_0
    sget v0, Lcom/android/keyguard/R$string;->keyguard_recovery_instructions:I

    invoke-virtual {p0, v0, v2}, Lcom/android/keyguard/sec/KeyguardRecoveryView;->setHintOrMessageText(IZ)V

    .line 99
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardRecoveryView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 100
    return-void

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardRecoveryView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v1, Lcom/android/keyguard/R$string;->keyguard_recovery_instructions:I

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto :goto_0
.end method

.method protected setPasswordEntryEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardRecoveryView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 226
    return-void
.end method

.method protected setPasswordEntryInputEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardRecoveryView;->mPasswordEntryDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    .line 231
    return-void
.end method

.method public showUsabilityHint()V
    .locals 0

    .prologue
    .line 293
    return-void
.end method

.method public startAppearAnimation()V
    .locals 4

    .prologue
    .line 303
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardRecoveryView;->setAlpha(F)V

    .line 304
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardRecoveryView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 305
    return-void
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 342
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardRecoveryView;->getPasswordText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardRecoveryView;->mEntry:Ljava/lang/String;

    .line 343
    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/KeyguardRecoveryView;->setPasswordEntryInputEnabled(Z)V

    .line 344
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardRecoveryView;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardRecoveryView;->mPendingLockCheck:Landroid/os/AsyncTask;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardRecoveryView;->mEntry:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_1

    .line 351
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardRecoveryView;->setPasswordEntryInputEnabled(Z)V

    .line 352
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardRecoveryView;->mEntry:Ljava/lang/String;

    invoke-virtual {p0, v0, v2, v2}, Lcom/android/keyguard/sec/KeyguardRecoveryView;->onPasswordChecked(Ljava/lang/String;ZI)V

    .line 368
    :goto_0
    return-void

    .line 356
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardRecoveryView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardRecoveryView;->mEntry:Ljava/lang/String;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    new-instance v3, Lcom/android/keyguard/sec/KeyguardRecoveryView$4;

    invoke-direct {v3, p0}, Lcom/android/keyguard/sec/KeyguardRecoveryView$4;-><init>(Lcom/android/keyguard/sec/KeyguardRecoveryView;)V

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternChecker;->checkPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardRecoveryView;->mPendingLockCheck:Landroid/os/AsyncTask;

    goto :goto_0
.end method
