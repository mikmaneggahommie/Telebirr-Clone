.class Lcom/android/systemui/qs/tiles/VoLteTile$4;
.super Landroid/content/BroadcastReceiver;
.source "VoLteTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/VoLteTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/VoLteTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/VoLteTile;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/VoLteTile$4;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 283
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, "intentAction":Ljava/lang/String;
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 286
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/VoLteTile$4;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/VoLteTile$4;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/VoLteTile;->access$700(Lcom/android/systemui/qs/tiles/VoLteTile;)Lcom/android/systemui/qs/GlobalSetting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v4

    if-ne v4, v2, :cond_1

    :goto_0
    invoke-static {v3, v2}, Lcom/android/systemui/qs/tiles/VoLteTile;->access$002(Lcom/android/systemui/qs/tiles/VoLteTile;Z)Z

    .line 288
    const-string v2, "VoLteTile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive: ACTION_AIRPLANE_MODE_CHANGED, mIsAirPlaneMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/VoLteTile$4;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/VoLteTile;->access$000(Lcom/android/systemui/qs/tiles/VoLteTile;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VoLteTile$4;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/VoLteTile;->access$100(Lcom/android/systemui/qs/tiles/VoLteTile;)V

    .line 301
    :cond_0
    :goto_1
    return-void

    .line 286
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 291
    :cond_2
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 292
    const-string v3, "ss"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 294
    .local v1, "simState":Ljava/lang/String;
    const-string v3, "VoLteTile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive: ACTION_SIM_STATE_CHANGED, simState(\'ss\') = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/VoLteTile$4;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/VoLteTile;->access$000(Lcom/android/systemui/qs/tiles/VoLteTile;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/VoLteTile$4;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/VoLteTile;->access$000(Lcom/android/systemui/qs/tiles/VoLteTile;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const-string v3, "LOADED"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "ABSENT"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 297
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/VoLteTile$4;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-static {v3, v2}, Lcom/android/systemui/qs/tiles/VoLteTile;->access$802(Lcom/android/systemui/qs/tiles/VoLteTile;Z)Z

    .line 299
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VoLteTile$4;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/VoLteTile;->access$100(Lcom/android/systemui/qs/tiles/VoLteTile;)V

    goto :goto_1
.end method
