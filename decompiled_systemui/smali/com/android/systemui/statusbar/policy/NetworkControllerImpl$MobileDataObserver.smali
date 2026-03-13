.class Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileDataObserver;
.super Landroid/database/ContentObserver;
.source "NetworkControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MobileDataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .locals 1

    .prologue
    .line 4709
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .line 4710
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4711
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 4714
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2800(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileDataEnabled:Z

    .line 4715
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    .line 4716
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1300(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    .line 4717
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    .line 4718
    return-void
.end method
