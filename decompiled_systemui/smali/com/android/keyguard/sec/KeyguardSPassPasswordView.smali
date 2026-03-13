.class public Lcom/android/keyguard/sec/KeyguardSPassPasswordView;
.super Lcom/android/keyguard/KeyguardAbsKeyInputView;
.source "KeyguardSPassPasswordView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyguardSPassPasswordView"


# instance fields
.field private mChangeBackUpButton:Landroid/widget/Button;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mEnableFallback:Z

.field private mExtraSpace:Landroid/view/View;

.field private mFailedTextTimer:Landroid/os/CountDownTimer;

.field private mForgotPatternButton:Landroid/widget/Button;

.field mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mInstructionText:Landroid/widget/TextView;

.field private mInstructionView:Landroid/widget/LinearLayout;

.field private mPasswordEntry:Landroid/widget/TextView;

.field private mPasswordEntryDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

.field private mPasswordTimeTick:I

.field private mPasswordTitle:Landroid/widget/TextView;

.field private final mShowImeAtScreenOn:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordTimeTick:I

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$bool;->kg_show_ime_at_screen_on:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mShowImeAtScreenOn:Z

    .line 101
    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 102
    const-string v0, "KeyguardSPassPasswordView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mShowImeAtScreenOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mShowImeAtScreenOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassPasswordView;
    .param p1, "x1"    # Landroid/os/AsyncTask;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    .prologue
    .line 73
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordTimeTick:I

    return v0
.end method

.method static synthetic access$1108(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    .prologue
    .line 73
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordTimeTick:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordTimeTick:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->isCountDownTimerRunning()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;Ljava/lang/CharSequence;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassPasswordView;
    .param p1, "x1"    # Ljava/lang/CharSequence;
    .param p2, "x2"    # Z

    .prologue
    .line 73
    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->setHintOrMessageText(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->isCountDownTimerRunning()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;Ljava/lang/CharSequence;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassPasswordView;
    .param p1, "x1"    # Ljava/lang/CharSequence;
    .param p2, "x2"    # Z

    .prologue
    .line 73
    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->setHintOrMessageText(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mEnableFallback:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassPasswordView;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mEnableFallback:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mForgotPatternButton:Landroid/widget/Button;

    return-object v0
.end method

.method private hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z
    .locals 12
    .param p1, "imm"    # Landroid/view/inputmethod/InputMethodManager;
    .param p2, "shouldIncludeAuxiliarySubtypes"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 325
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 328
    .local v1, "enabledImis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v2, 0x0

    .line 330
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

    .line 332
    .local v5, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-le v2, v10, :cond_1

    .line 358
    .end local v5    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :goto_1
    return v10

    .line 333
    .restart local v5    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    invoke-virtual {p1, v5, v10}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v8

    .line 336
    .local v8, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 337
    add-int/lit8 v2, v2, 0x1

    .line 338
    goto :goto_0

    .line 341
    :cond_2
    const/4 v0, 0x0

    .line 342
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

    .line 343
    .local v7, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 344
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 347
    .end local v7    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    sub-int v6, v11, v0

    .line 352
    .local v6, "nonAuxCount":I
    if-gtz v6, :cond_5

    if-eqz p2, :cond_0

    if-le v0, v10, :cond_0

    .line 353
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 354
    goto :goto_0

    .line 358
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

.method private maybeEnableFallback(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 426
    new-instance v0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;-><init>(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;Landroid/accounts/AccountManager;Lcom/android/keyguard/sec/KeyguardSPassPasswordView$1;)V

    .line 427
    .local v0, "accountAnalyzer":Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;
    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->start()V

    .line 428
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 398
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 390
    :cond_0
    return-void
.end method

.method public cleanUp()V
    .locals 2

    .prologue
    .line 593
    const-string v0, "KeyguardSPassPasswordView"

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_0

    .line 595
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 597
    :cond_0
    return-void
.end method

.method protected getPasswordText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPasswordTextViewId()I
    .locals 1

    .prologue
    .line 121
    sget v0, Lcom/android/keyguard/R$id;->passwordEntry:I

    return v0
.end method

.method protected getPromtReasonStringRes(I)I
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 420
    const/4 v0, 0x0

    return v0
.end method

.method public getWrongPasswordStringId()I
    .locals 1

    .prologue
    .line 370
    sget v0, Lcom/android/keyguard/R$string;->kg_finger_print_backup_password_failed:I

    return v0
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x1

    return v0
.end method

.method public needsShowClockandNotifications()Z
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 136
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onDetachedFromWindow()V

    .line 137
    const-string v0, "KeyguardSPassPasswordView"

    const-string v1, "onDetachedFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->cleanUp()V

    .line 139
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 403
    if-nez p3, :cond_3

    if-eqz p2, :cond_0

    const/4 v4, 0x6

    if-eq p2, v4, :cond_0

    const/4 v4, 0x5

    if-ne p2, v4, :cond_3

    :cond_0
    move v1, v3

    .line 407
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

    .line 410
    .local v0, "isKeyboardEnterKey":Z
    :goto_1
    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    .line 411
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->verifyPasswordAndUnlock()V

    move v2, v3

    .line 414
    :cond_2
    return v2

    .end local v0    # "isKeyboardEnterKey":Z
    .end local v1    # "isSoftImeEvent":Z
    :cond_3
    move v1, v2

    .line 403
    goto :goto_0

    .restart local v1    # "isSoftImeEvent":Z
    :cond_4
    move v0, v2

    .line 407
    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 180
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onFinishInflate()V

    .line 182
    sget v4, Lcom/android/keyguard/R$id;->forgot_password_button:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mForgotPatternButton:Landroid/widget/Button;

    .line 186
    const/4 v0, 0x0

    .line 188
    .local v0, "imeOrDeleteButtonVisible":Z
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 191
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->getPasswordTextViewId()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    .line 192
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyUX()Z

    move-result v4

    if-nez v4, :cond_0

    .line 193
    sget v4, Lcom/android/keyguard/R$id;->keyguard_title_message_backup:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordTitle:Landroid/widget/TextView;

    .line 195
    :cond_0
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 196
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    const/16 v5, 0x81

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setInputType(I)V

    .line 198
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 199
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 200
    new-instance v4, Lcom/android/internal/widget/TextViewInputDisabler;

    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-direct {v4, v5}, Lcom/android/internal/widget/TextViewInputDisabler;-><init>(Landroid/widget/TextView;)V

    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntryDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    .line 203
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v5, 0x5

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setNewActionPopupMenu(IZ)V

    .line 206
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    new-instance v5, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$1;

    invoke-direct {v5, p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$1;-><init>(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 214
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->requestFocus()Z

    .line 217
    sget v4, Lcom/android/keyguard/R$id;->switch_ime_button:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 218
    .local v3, "switchImeButton":Landroid/view/View;
    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0, v4, v6}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 219
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 220
    const/4 v0, 0x1

    .line 221
    new-instance v4, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$2;

    invoke-direct {v4, p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$2;-><init>(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    :cond_1
    if-nez v0, :cond_2

    .line 232
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 233
    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_2

    move-object v1, v2

    .line 234
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 235
    .local v1, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 236
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    .end local v1    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v2    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    sget v4, Lcom/android/keyguard/R$id;->backup_password_change_button:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mChangeBackUpButton:Landroid/widget/Button;

    .line 241
    sget v4, Lcom/android/keyguard/R$id;->spass_container_space:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mExtraSpace:Landroid/view/View;

    .line 242
    sget v4, Lcom/android/keyguard/R$id;->keyguard_spass_password_instruction_view:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mInstructionView:Landroid/widget/LinearLayout;

    .line 243
    sget v4, Lcom/android/keyguard/R$id;->keyguard_spass_password_instruction_text:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mInstructionText:Landroid/widget/TextView;

    .line 245
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mChangeBackUpButton:Landroid/widget/Button;

    if-eqz v4, :cond_3

    .line 246
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mChangeBackUpButton:Landroid/widget/Button;

    sget v5, Lcom/android/keyguard/R$string;->fingerprint_change_reset_password:I

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 247
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mChangeBackUpButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$3;

    invoke-direct {v5, p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$3;-><init>(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    :cond_3
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockCompleted()Z

    move-result v4

    if-nez v4, :cond_a

    .line 258
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mInstructionView:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_4

    .line 259
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mInstructionView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 260
    :cond_4
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mExtraSpace:Landroid/view/View;

    if-eqz v4, :cond_5

    .line 261
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mExtraSpace:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 262
    :cond_5
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mChangeBackUpButton:Landroid/widget/Button;

    if-eqz v4, :cond_6

    .line 263
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mChangeBackUpButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 273
    :cond_6
    :goto_0
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerPrintMigrationCompleted()Z

    move-result v4

    if-nez v4, :cond_d

    .line 274
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mInstructionText:Landroid/widget/TextView;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mInstructionText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$string;->kg_fingerprints_password_unabled_instructions_fota:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    :cond_7
    :goto_1
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 280
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mChangeBackUpButton:Landroid/widget/Button;

    if-eqz v4, :cond_8

    .line 281
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mChangeBackUpButton:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 285
    :cond_8
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 286
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->disableDevicePermanently()V

    .line 288
    :cond_9
    return-void

    .line 265
    :cond_a
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mInstructionView:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_b

    .line 266
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mInstructionView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 267
    :cond_b
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mExtraSpace:Landroid/view/View;

    if-eqz v4, :cond_c

    .line 268
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mExtraSpace:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 269
    :cond_c
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mChangeBackUpButton:Landroid/widget/Button;

    if-eqz v4, :cond_6

    .line 270
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mChangeBackUpButton:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 275
    :cond_d
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockCompleted()Z

    move-result v4

    if-nez v4, :cond_7

    .line 276
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mInstructionText:Landroid/widget/TextView;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mInstructionText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$string;->kg_fingerprints_password_unabled_instructions:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected onPasswordChecked(Ljava/lang/String;ZI)V
    .locals 11
    .param p1, "entry"    # Ljava/lang/String;
    .param p2, "matched"    # Z
    .param p3, "timeoutMs"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x1

    .line 532
    if-eqz p2, :cond_0

    .line 533
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->setNullHintMessage()V

    .line 534
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, v10, v5}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(ZI)V

    .line 535
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v5}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    .line 536
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 537
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, v10}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 589
    :goto_0
    invoke-virtual {p0, v10}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->resetPasswordText(Z)V

    .line 590
    return-void

    .line 539
    :cond_0
    const/4 v6, 0x0

    .line 540
    .local v6, "attempts":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_4

    .line 543
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const/4 v1, 0x5

    invoke-interface {v0, v5, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(ZI)V

    .line 544
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1, v10}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(IZ)I

    move-result v6

    .line 545
    rsub-int/lit8 v7, v6, 0xa

    .line 546
    .local v7, "remaining":I
    rem-int/lit8 v0, v6, 0x5

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v0, :cond_1

    if-eqz v7, :cond_2

    .line 548
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(I)J

    move-result-wide v8

    .line 549
    .local v8, "deadline":J
    invoke-virtual {p0, v8, v9}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->handleAttemptLockout(J)V

    .line 550
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 551
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->kg_alternative_password_fail_title_instructions:I

    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 556
    .end local v7    # "remaining":I
    .end local v8    # "deadline":J
    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->isCountDownTimerRunning()Z

    move-result v0

    if-nez v0, :cond_5

    .line 559
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->getWrongPasswordStringId()I

    move-result v0

    invoke-virtual {p0, v0, v10}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->setHintOrMessageText(IZ)V

    .line 560
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_3

    .line 561
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 562
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    .line 564
    :cond_3
    iput v5, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordTimeTick:I

    .line 565
    new-instance v0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$5;

    const-wide/16 v2, 0x1f40

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$5;-><init>(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;JJ)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    .line 584
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto/16 :goto_0

    .line 554
    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1, v10}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(IZ)I

    move-result v6

    goto :goto_1

    .line 586
    :cond_5
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->getWrongPasswordStringId()I

    move-result v0

    invoke-virtual {p0, v0, v6}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->getFailedAttemptMessage(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, v10}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->setHintOrMessageText(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 162
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onPause()V

    .line 163
    const-string v0, "KeyguardSPassPasswordView"

    const-string v1, "onPause() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 166
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    .line 170
    :cond_0
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onResume(I)V
    .locals 7
    .param p1, "reason"    # I

    .prologue
    const/4 v4, 0x1

    .line 143
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onResume(I)V

    .line 144
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    .line 145
    const-string v1, "KeyguardSPassPasswordView"

    const-string v2, "onResume() "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    if-ne p1, v4, :cond_0

    iget-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mShowImeAtScreenOn:Z

    if-eqz v1, :cond_3

    .line 147
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v4, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInputUnchecked(ILandroid/os/ResultReceiver;)V

    .line 148
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->resetState()V

    .line 155
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mForgotPatternButton:Landroid/widget/Button;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 156
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mForgotPatternButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 158
    :cond_2
    return-void

    .line 149
    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->isCountDownTimerRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 151
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(IZ)I

    move-result v0

    .line 152
    .local v0, "attempts":I
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->kg_alternative_password_fail_title_instructions:I

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 394
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 174
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->reset()V

    .line 175
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 176
    return-void
.end method

.method protected resetPasswordText(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    return-void
.end method

.method protected resetState()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 106
    const-string v0, "KeyguardSPassPasswordView"

    const-string v1, "resetState () "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->kg_finger_print_backup_password_title_instructions_without_finger_print:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 117
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->kg_spass_backup_password_button:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v1, Lcom/android/keyguard/R$string;->kg_password_instructions:I

    invoke-interface {v0, v1, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto :goto_0
.end method

.method protected setPasswordEntryEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 309
    return-void
.end method

.method protected setPasswordEntryInputEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntryDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    .line 314
    return-void
.end method

.method public showUsabilityHint()V
    .locals 0

    .prologue
    .line 366
    return-void
.end method

.method public startAppearAnimation()V
    .locals 4

    .prologue
    .line 376
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->setAlpha(F)V

    .line 377
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 378
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 382
    const/4 v0, 0x0

    return v0
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 504
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->getPasswordText()Ljava/lang/String;

    move-result-object v0

    .line 505
    .local v0, "entry":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->setPasswordEntryInputEnabled(Z)V

    .line 506
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v1, :cond_0

    .line 507
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPendingLockCheck:Landroid/os/AsyncTask;

    invoke-virtual {v1, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 509
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_1

    .line 512
    invoke-virtual {p0, v4}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->setPasswordEntryInputEnabled(Z)V

    .line 513
    invoke-virtual {p0, v0, v3, v3}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->onPasswordChecked(Ljava/lang/String;ZI)V

    .line 529
    :goto_0
    return-void

    .line 516
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    new-instance v3, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$4;

    invoke-direct {v3, p0, v0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$4;-><init>(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;Ljava/lang/String;)V

    invoke-static {v1, v0, v2, v4, v3}, Lcom/android/internal/widget/LockPatternChecker;->checkBackupPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;IZLcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPendingLockCheck:Landroid/os/AsyncTask;

    goto :goto_0
.end method
