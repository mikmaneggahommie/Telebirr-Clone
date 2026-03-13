.class Lcom/android/keyguard/KeyguardUniversalLockView$AccountAnalyzer;
.super Ljava/lang/Object;
.source "KeyguardUniversalLockView.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUniversalLockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountAnalyzer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccountIndex:I

.field private final mAccountManager:Landroid/accounts/AccountManager;

.field private final mAccounts:[Landroid/accounts/Account;

.field final synthetic this$0:Lcom/android/keyguard/KeyguardUniversalLockView;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/KeyguardUniversalLockView;Landroid/accounts/AccountManager;)V
    .locals 3
    .param p2, "accountManager"    # Landroid/accounts/AccountManager;

    .prologue
    .line 1042
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUniversalLockView$AccountAnalyzer;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1043
    iput-object p2, p0, Lcom/android/keyguard/KeyguardUniversalLockView$AccountAnalyzer;->mAccountManager:Landroid/accounts/AccountManager;

    .line 1044
    const-string v0, "com.google"

    new-instance v1, Landroid/os/UserHandle;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$1800(Lcom/android/keyguard/KeyguardUniversalLockView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p2, v0, v1}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$AccountAnalyzer;->mAccounts:[Landroid/accounts/Account;

    .line 1046
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/KeyguardUniversalLockView;Landroid/accounts/AccountManager;Lcom/android/keyguard/KeyguardUniversalLockView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/keyguard/KeyguardUniversalLockView;
    .param p2, "x1"    # Landroid/accounts/AccountManager;
    .param p3, "x2"    # Lcom/android/keyguard/KeyguardUniversalLockView$1;

    .prologue
    .line 1037
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardUniversalLockView$AccountAnalyzer;-><init>(Lcom/android/keyguard/KeyguardUniversalLockView;Landroid/accounts/AccountManager;)V

    return-void
.end method

.method private next()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1049
    const-string v0, "KeyguardUniversalLockView"

    const-string v1, "in next()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$AccountAnalyzer;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$3500(Lcom/android/keyguard/KeyguardUniversalLockView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$AccountAnalyzer;->mAccountIndex:I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView$AccountAnalyzer;->mAccounts:[Landroid/accounts/Account;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 1060
    :cond_0
    :goto_0
    return-void

    .line 1058
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$AccountAnalyzer;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView$AccountAnalyzer;->mAccounts:[Landroid/accounts/Account;

    iget v3, p0, Lcom/android/keyguard/KeyguardUniversalLockView$AccountAnalyzer;->mAccountIndex:I

    aget-object v1, v1, v3

    new-instance v6, Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUniversalLockView$AccountAnalyzer;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$1800(Lcom/android/keyguard/KeyguardUniversalLockView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v3

    invoke-direct {v6, v3}, Landroid/os/UserHandle;-><init>(I)V

    move-object v3, v2

    move-object v4, p0

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->confirmCredentialsAsUser(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/accounts/AccountManagerFuture;

    goto :goto_0
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1070
    .local p1, "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    const-string v1, "KeyguardUniversalLockView"

    const-string v2, "in run()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 1073
    .local v0, "result":Landroid/os/Bundle;
    const-string v1, "intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1074
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView$AccountAnalyzer;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$3502(Lcom/android/keyguard/KeyguardUniversalLockView;Z)Z
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1083
    :cond_0
    iget v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView$AccountAnalyzer;->mAccountIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView$AccountAnalyzer;->mAccountIndex:I

    .line 1084
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUniversalLockView$AccountAnalyzer;->next()V

    .line 1086
    .end local v0    # "result":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 1076
    :catch_0
    move-exception v1

    .line 1083
    iget v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView$AccountAnalyzer;->mAccountIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView$AccountAnalyzer;->mAccountIndex:I

    .line 1084
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUniversalLockView$AccountAnalyzer;->next()V

    goto :goto_0

    .line 1078
    :catch_1
    move-exception v1

    .line 1083
    iget v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView$AccountAnalyzer;->mAccountIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView$AccountAnalyzer;->mAccountIndex:I

    .line 1084
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUniversalLockView$AccountAnalyzer;->next()V

    goto :goto_0

    .line 1080
    :catch_2
    move-exception v1

    .line 1083
    iget v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView$AccountAnalyzer;->mAccountIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView$AccountAnalyzer;->mAccountIndex:I

    .line 1084
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUniversalLockView$AccountAnalyzer;->next()V

    goto :goto_0

    .line 1083
    :catchall_0
    move-exception v1

    iget v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView$AccountAnalyzer;->mAccountIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView$AccountAnalyzer;->mAccountIndex:I

    .line 1084
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUniversalLockView$AccountAnalyzer;->next()V

    throw v1
.end method

.method public start()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1063
    const-string v0, "KeyguardUniversalLockView"

    const-string v1, "in start()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$AccountAnalyzer;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    invoke-static {v0, v2}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$3502(Lcom/android/keyguard/KeyguardUniversalLockView;Z)Z

    .line 1065
    iput v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView$AccountAnalyzer;->mAccountIndex:I

    .line 1066
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUniversalLockView$AccountAnalyzer;->next()V

    .line 1067
    return-void
.end method
