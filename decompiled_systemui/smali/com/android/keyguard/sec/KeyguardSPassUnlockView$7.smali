.class Lcom/android/keyguard/sec/KeyguardSPassUnlockView$7;
.super Landroid/view/OrientationEventListener;
.source "KeyguardSPassUnlockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 345
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$7;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$7;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1800(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V

    .line 349
    return-void
.end method
