.class Lcom/android/keyguard/KeyguardUpdateMonitor$3;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .prologue
    .line 577
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 581
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "fp wakelock: TIMEOUT!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2000(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    .line 584
    return-void
.end method
