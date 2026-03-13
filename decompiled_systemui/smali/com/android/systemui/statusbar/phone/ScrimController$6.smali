.class Lcom/android/systemui/statusbar/phone/ScrimController$6;
.super Ljava/lang/Object;
.source "ScrimController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/ScrimController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/ScrimController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/ScrimController;)V
    .locals 0

    .prologue
    .line 504
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$6;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 508
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$6;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$500(Lcom/android/systemui/statusbar/phone/ScrimController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 518
    :goto_0
    return-void

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$6;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-static {v0, v2, v3}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$602(Lcom/android/systemui/statusbar/phone/ScrimController;J)J

    .line 511
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$6;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-static {v0, v2, v3}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$702(Lcom/android/systemui/statusbar/phone/ScrimController;J)J

    .line 512
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$6;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$802(Lcom/android/systemui/statusbar/phone/ScrimController;Z)Z

    .line 513
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$6;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$6;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$900(Lcom/android/systemui/statusbar/phone/ScrimController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$202(Lcom/android/systemui/statusbar/phone/ScrimController;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 514
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$6;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$6;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$1000(Lcom/android/systemui/statusbar/phone/ScrimController;)Lcom/android/systemui/statusbar/ScrimView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$1100(Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/ScrimView;F)V

    .line 517
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$6;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$1200(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    goto :goto_0
.end method
