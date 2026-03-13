.class public interface abstract Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;
.super Ljava/lang/Object;
.source "KeyguardSpassUnlockThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SpassCallback"
.end annotation


# virtual methods
.method public abstract reportFailedUnlockAttempts()V
.end method

.method public abstract setAttributionViewEnabled(Z)V
.end method

.method public abstract showBackupPassword()V
.end method

.method public abstract showErrorMessage(Ljava/lang/String;I)V
.end method

.method public abstract showErrorPopup(I)V
.end method

.method public abstract updateFingerPrintAnimation(I)V
.end method
