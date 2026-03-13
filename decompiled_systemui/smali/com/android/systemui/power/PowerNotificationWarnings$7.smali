.class Lcom/android/systemui/power/PowerNotificationWarnings$7;
.super Ljava/lang/Object;
.source "PowerNotificationWarnings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/power/PowerNotificationWarnings;->showFlashHighTemperatureWarning(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerNotificationWarnings;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .locals 0

    .prologue
    .line 1431
    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$7;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1433
    const-string v0, "PowerUI.Notification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismiss FlashHighTemperatureWarning mFlashOverHeatedBackToNormal = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings$7;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v2}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$1500(Lcom/android/systemui/power/PowerNotificationWarnings;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mFlashOverHeatedFromReboot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings$7;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v2}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$1600(Lcom/android/systemui/power/PowerNotificationWarnings;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$7;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFlashOverHeatedDialog:Landroid/app/AlertDialog;

    .line 1437
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$7;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v0}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$1500(Lcom/android/systemui/power/PowerNotificationWarnings;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$7;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v0}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$1600(Lcom/android/systemui/power/PowerNotificationWarnings;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1438
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$7;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v0}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$300(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$7;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    iget-object v1, v1, Lcom/android/systemui/power/PowerNotificationWarnings;->mFlashOverHeatedTask:Ljava/lang/Runnable;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1439
    :cond_0
    return-void
.end method
