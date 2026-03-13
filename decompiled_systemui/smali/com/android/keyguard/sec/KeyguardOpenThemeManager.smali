.class public Lcom/android/keyguard/sec/KeyguardOpenThemeManager;
.super Ljava/lang/Object;
.source "KeyguardOpenThemeManager.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public getNameOfClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOpenThemeWallpaperView()Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method public isActivated()Z
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public isRecreateNeeded()Z
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public pauseAnimation()V
    .locals 0

    .prologue
    .line 26
    return-void
.end method

.method public resumeAnimation()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method
