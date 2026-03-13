.class public Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;
.super Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StrongAuthTracker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .prologue
    .line 1125
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;-><init>()V

    return-void
.end method


# virtual methods
.method public hasUserAuthenticatedSinceBoot()Z
    .locals 2

    .prologue
    .line 1133
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 1134
    .local v0, "userId":I
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isUnlockingWithFingerprintAllowed()Z
    .locals 2

    .prologue
    .line 1128
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 1129
    .local v0, "userId":I
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->isFingerprintAllowedForUser(I)Z

    move-result v1

    return v1
.end method
