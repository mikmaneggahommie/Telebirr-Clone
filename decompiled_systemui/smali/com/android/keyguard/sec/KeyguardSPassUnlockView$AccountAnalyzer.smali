.class Lcom/android/keyguard/sec/KeyguardSPassUnlockView$AccountAnalyzer;
.super Ljava/lang/Object;
.source "KeyguardSPassUnlockView.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/KeyguardSPassUnlockView;
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

.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;Landroid/accounts/AccountManager;)V
    .locals 3
    .param p2, "accountManager"    # Landroid/accounts/AccountManager;

    .prologue
    .line 960
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$AccountAnalyzer;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 961
    iput-object p2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$AccountAnalyzer;->mAccountManager:Landroid/accounts/AccountManager;

    .line 962
    const-string v0, "com.google"

    new-instance v1, Landroid/os/UserHandle;

    invoke-static {p1}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1000(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p2, v0, v1}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$AccountAnalyzer;->mAccounts:[Landroid/accounts/Account;

    .line 964
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;Landroid/accounts/AccountManager;Lcom/android/keyguard/sec/KeyguardSPassUnlockView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassUnlockView;
    .param p2, "x1"    # Landroid/accounts/AccountManager;
    .param p3, "x2"    # Lcom/android/keyguard/sec/KeyguardSPassUnlockView$1;

    .prologue
    .line 955
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$AccountAnalyzer;-><init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;Landroid/accounts/AccountManager;)V

    return-void
.end method

.method private next()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 969
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEnableFallback:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$AccountAnalyzer;->mAccountIndex:I

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$AccountAnalyzer;->mAccounts:[Landroid/accounts/Account;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 976
    :cond_0
    :goto_0
    return-void

    .line 974
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$AccountAnalyzer;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$AccountAnalyzer;->mAccounts:[Landroid/accounts/Account;

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$AccountAnalyzer;->mAccountIndex:I

    aget-object v1, v1, v3

    new-instance v6, Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$AccountAnalyzer;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1000(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Lcom/android/internal/widget/LockPatternUtils;

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
    .locals 1
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
    .line 998
    .local p1, "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$AccountAnalyzer;->mAccountIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$AccountAnalyzer;->mAccountIndex:I

    .line 999
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$AccountAnalyzer;->next()V

    .line 1001
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 979
    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEnableFallback:Z

    .line 980
    iput v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$AccountAnalyzer;->mAccountIndex:I

    .line 981
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$AccountAnalyzer;->next()V

    .line 982
    return-void
.end method
