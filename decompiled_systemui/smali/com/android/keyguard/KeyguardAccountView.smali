.class public Lcom/android/keyguard/KeyguardAccountView;
.super Landroid/widget/LinearLayout;
.source "KeyguardAccountView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;


# static fields
.field private static final LOCK_PATTERN_CLASS:Ljava/lang/String; = "com.android.settings.ChooseLockGeneric"

.field private static final LOCK_PATTERN_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field private static final TAG:Ljava/lang/String; = "KeyguardAccountView"


# instance fields
.field private isNetworkConnected:Z

.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mCheckingDialog:Landroid/app/ProgressDialog;

.field public mEnableFallback:Z

.field mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLogin:Landroid/widget/EditText;

.field private mOk:Landroid/widget/Button;

.field private mPassword:Landroid/widget/EditText;

.field private mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

.field private mShowImeAtScreenOn:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardAccountView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardAccountView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 96
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardAccountView;->isNetworkConnected:Z

    .line 97
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAccountView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$bool;->kg_show_ime_at_screen_on:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mShowImeAtScreenOn:Z

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardAccountView;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardAccountView;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mLogin:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardAccountView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardAccountView;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mShowImeAtScreenOn:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/KeyguardAccountView;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardAccountView;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardAccountView;->getProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardAccountView;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardAccountView;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardAccountView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardAccountView;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardAccountView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardAccountView;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardAccountView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardAccountView;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardAccountView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardAccountView;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardAccountView;->isNetworkConnected:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/KeyguardAccountView;)Lcom/android/keyguard/SecurityMessageDisplay;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardAccountView;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/KeyguardAccountView;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardAccountView;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/keyguard/KeyguardAccountView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardAccountView;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardAccountView;->postOnCheckPasswordResult(Z)V

    return-void
.end method

.method private asyncCheckPassword()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 358
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 359
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mLogin:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 360
    .local v7, "login":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 361
    .local v8, "password":Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/android/keyguard/KeyguardAccountView;->findIntendedAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v1

    .line 362
    .local v1, "account":Landroid/accounts/Account;
    if-nez v1, :cond_0

    .line 363
    const-string v0, "KeyguardAccountView"

    const-string v3, "asyncCheckPassword accoun t== null"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardAccountView;->postOnCheckPasswordResult(Z)V

    .line 395
    :goto_0
    return-void

    .line 367
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardAccountView;->getProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 368
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 369
    .local v2, "options":Landroid/os/Bundle;
    const-string v0, "password"

    invoke-virtual {v2, v0, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    new-instance v4, Lcom/android/keyguard/KeyguardAccountView$5;

    invoke-direct {v4, p0}, Lcom/android/keyguard/KeyguardAccountView$5;-><init>(Lcom/android/keyguard/KeyguardAccountView;)V

    new-instance v6, Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardAccountView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v5

    invoke-direct {v6, v5}, Landroid/os/UserHandle;-><init>(I)V

    move-object v5, v3

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->confirmCredentialsAsUser(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/accounts/AccountManagerFuture;

    goto :goto_0
.end method

.method private findIntendedAccount(Ljava/lang/String;)Landroid/accounts/Account;
    .locals 14
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 321
    iget-object v10, p0, Lcom/android/keyguard/KeyguardAccountView;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v10

    const-string v11, "com.google"

    new-instance v12, Landroid/os/UserHandle;

    iget-object v13, p0, Lcom/android/keyguard/KeyguardAccountView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v13}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v13

    invoke-direct {v12, v13}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v10, v11, v12}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v2

    .line 328
    .local v2, "accounts":[Landroid/accounts/Account;
    const/4 v4, 0x0

    .line 329
    .local v4, "bestAccount":Landroid/accounts/Account;
    const/4 v5, 0x0

    .line 330
    .local v5, "bestScore":I
    move-object v3, v2

    .local v3, "arr$":[Landroid/accounts/Account;
    array-length v8, v3

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v8, :cond_6

    aget-object v0, v3, v7

    .line 331
    .local v0, "a":Landroid/accounts/Account;
    const/4 v9, 0x0

    .line 332
    .local v9, "score":I
    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 333
    const/4 v9, 0x4

    .line 347
    :cond_0
    :goto_1
    if-le v9, v5, :cond_5

    .line 348
    move-object v4, v0

    .line 349
    move v5, v9

    .line 330
    :cond_1
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 334
    :cond_2
    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 335
    const/4 v9, 0x3

    goto :goto_1

    .line 336
    :cond_3
    const/16 v10, 0x40

    invoke-virtual {p1, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-gez v10, :cond_0

    .line 337
    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/16 v11, 0x40

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 338
    .local v6, "i":I
    if-ltz v6, :cond_0

    .line 339
    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 340
    .local v1, "aUsername":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 341
    const/4 v9, 0x2

    goto :goto_1

    .line 342
    :cond_4
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 343
    const/4 v9, 0x1

    goto :goto_1

    .line 350
    .end local v1    # "aUsername":Ljava/lang/String;
    .end local v6    # "i":I
    :cond_5
    if-ne v9, v5, :cond_1

    .line 351
    const/4 v4, 0x0

    goto :goto_2

    .line 354
    .end local v0    # "a":Landroid/accounts/Account;
    .end local v9    # "score":I
    :cond_6
    return-object v4
.end method

.method private getProgressDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mCheckingDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 399
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mCheckingDialog:Landroid/app/ProgressDialog;

    .line 400
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mCheckingDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_login_checking_password:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 402
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mCheckingDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 403
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mCheckingDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 404
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mCheckingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mCheckingDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private postOnCheckPasswordResult(Z)V
    .locals 2
    .param p1, "success"    # Z

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mLogin:Landroid/widget/EditText;

    new-instance v1, Lcom/android/keyguard/KeyguardAccountView$4;

    invoke-direct {v1, p0, p1}, Lcom/android/keyguard/KeyguardAccountView$4;-><init>(Lcom/android/keyguard/KeyguardAccountView;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 288
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 164
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 167
    return-void
.end method

.method public cleanUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 221
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mCheckingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mCheckingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 224
    :cond_0
    iput-object v1, p0, Lcom/android/keyguard/KeyguardAccountView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 225
    iput-object v1, p0, Lcom/android/keyguard/KeyguardAccountView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 226
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 292
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 294
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 299
    :cond_0
    const/4 v0, 0x1

    .line 301
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getCallback()Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method public hideBouncer(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 430
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x1

    return v0
.end method

.method public needsShowClockandNotifications()Z
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 230
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mOk:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 231
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardAccountView;->asyncCheckPassword()V

    .line 233
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x0

    .line 104
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 106
    sget v2, Lcom/android/keyguard/R$id;->login:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardAccountView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardAccountView;->mLogin:Landroid/widget/EditText;

    .line 109
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAccountView;->mLogin:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 111
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAccountView;->mLogin:Landroid/widget/EditText;

    invoke-virtual {v2, v5, v4}, Landroid/widget/EditText;->setNewActionPopupMenu(IZ)V

    .line 112
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAccountView;->mLogin:Landroid/widget/EditText;

    const/4 v3, 0x6

    invoke-virtual {v2, v3, v4}, Landroid/widget/EditText;->setNewActionPopupMenu(IZ)V

    .line 113
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAccountView;->mLogin:Landroid/widget/EditText;

    new-instance v3, Lcom/android/keyguard/KeyguardAccountView$1;

    invoke-direct {v3, p0}, Lcom/android/keyguard/KeyguardAccountView$1;-><init>(Lcom/android/keyguard/KeyguardAccountView;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 121
    sget v2, Lcom/android/keyguard/R$id;->password:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardAccountView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardAccountView;->mPassword:Landroid/widget/EditText;

    .line 122
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAccountView;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 124
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAccountView;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2, v5, v4}, Landroid/widget/EditText;->setNewActionPopupMenu(IZ)V

    .line 125
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAccountView;->mPassword:Landroid/widget/EditText;

    new-instance v3, Lcom/android/keyguard/KeyguardAccountView$2;

    invoke-direct {v3, p0}, Lcom/android/keyguard/KeyguardAccountView$2;-><init>(Lcom/android/keyguard/KeyguardAccountView;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 132
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAccountView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 133
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 134
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardAccountView;->isNetworkConnected:Z

    .line 137
    :cond_0
    sget v2, Lcom/android/keyguard/R$id;->ok:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardAccountView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardAccountView;->mOk:Landroid/widget/Button;

    .line 138
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAccountView;->mOk:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    new-instance v2, Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardAccountView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 141
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAccountView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardAccountView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 142
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAccountView;->reset()V

    .line 143
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAccountView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 413
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mLogin:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onResume(I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    .line 417
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAccountView;->reset()V

    .line 418
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 173
    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 3
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 193
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 194
    if-eqz p2, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAccountView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 197
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 201
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView;->mLogin:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView;->mPassword:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView;->mLogin:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 204
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked(I)Z

    move-result v0

    .line 206
    .local v0, "permLocked":Z
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAccountView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v3, Lcom/android/keyguard/R$string;->kg_login_instructions:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v2, v3, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 208
    new-instance v1, Lcom/android/keyguard/KeyguardAccountView$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardAccountView$3;-><init>(Lcom/android/keyguard/KeyguardAccountView;)V

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardAccountView;->post(Ljava/lang/Runnable;)Z

    .line 217
    return-void

    .line 206
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/keyguard/KeyguardAccountView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 147
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/keyguard/KeyguardAccountView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 151
    return-void
.end method

.method public showBouncer(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 426
    return-void
.end method

.method public showPromptReason(I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    .line 160
    return-void
.end method

.method public showUsabilityHint()V
    .locals 0

    .prologue
    .line 422
    return-void
.end method

.method public startAppearAnimation()V
    .locals 0

    .prologue
    .line 435
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 439
    const/4 v0, 0x0

    return v0
.end method
