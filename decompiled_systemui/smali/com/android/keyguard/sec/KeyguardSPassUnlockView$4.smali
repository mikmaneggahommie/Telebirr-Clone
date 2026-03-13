.class Lcom/android/keyguard/sec/KeyguardSPassUnlockView$4;
.super Ljava/lang/Object;
.source "KeyguardSPassUnlockView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/KeyguardSPassUnlockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$4;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$4;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1400(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V

    .line 250
    return-void
.end method
