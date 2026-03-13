.class Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$3;
.super Landroid/database/ContentObserver;
.source "StatusBarWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 443
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$3;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 446
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 448
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$3;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->userActivityTimeoutChanged()V

    .line 449
    return-void
.end method
