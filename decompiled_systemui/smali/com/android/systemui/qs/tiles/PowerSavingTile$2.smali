.class Lcom/android/systemui/qs/tiles/PowerSavingTile$2;
.super Landroid/content/BroadcastReceiver;
.source "PowerSavingTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/PowerSavingTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/PowerSavingTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/PowerSavingTile;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile$2;->this$0:Lcom/android/systemui/qs/tiles/PowerSavingTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 241
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "action":Ljava/lang/String;
    const-string v1, "PowerSavingTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 244
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile$2;->this$0:Lcom/android/systemui/qs/tiles/PowerSavingTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/PowerSavingTile;->access$100(Lcom/android/systemui/qs/tiles/PowerSavingTile;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile$2;->this$0:Lcom/android/systemui/qs/tiles/PowerSavingTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/PowerSavingTile;->access$100(Lcom/android/systemui/qs/tiles/PowerSavingTile;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile$2;->this$0:Lcom/android/systemui/qs/tiles/PowerSavingTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/PowerSavingTile;->access$100(Lcom/android/systemui/qs/tiles/PowerSavingTile;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->cancel()V

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    const-string v1, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile$2;->this$0:Lcom/android/systemui/qs/tiles/PowerSavingTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/PowerSavingTile;->access$100(Lcom/android/systemui/qs/tiles/PowerSavingTile;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile$2;->this$0:Lcom/android/systemui/qs/tiles/PowerSavingTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/PowerSavingTile;->access$100(Lcom/android/systemui/qs/tiles/PowerSavingTile;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 249
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile$2;->this$0:Lcom/android/systemui/qs/tiles/PowerSavingTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/PowerSavingTile;->access$100(Lcom/android/systemui/qs/tiles/PowerSavingTile;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->cancel()V

    goto :goto_0
.end method
