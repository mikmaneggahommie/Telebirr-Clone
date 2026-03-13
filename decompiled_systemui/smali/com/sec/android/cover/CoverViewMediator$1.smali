.class Lcom/sec/android/cover/CoverViewMediator$1;
.super Landroid/content/BroadcastReceiver;
.source "CoverViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/CoverViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/CoverViewMediator;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/CoverViewMediator;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/sec/android/cover/CoverViewMediator$1;->this$0:Lcom/sec/android/cover/CoverViewMediator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 67
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "action":Ljava/lang/String;
    const-string v2, "com.samsung.cover.REMOTEVIEWS_UPDATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    const-string v2, "type"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "type":Ljava/lang/String;
    const-string v2, "shealth"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    iget-object v2, p0, Lcom/sec/android/cover/CoverViewMediator$1;->this$0:Lcom/sec/android/cover/CoverViewMediator;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sec/android/cover/CoverViewMediator;->access$002(Lcom/sec/android/cover/CoverViewMediator;Landroid/content/Intent;)Landroid/content/Intent;

    .line 72
    const-string v2, "CoverViewMediator"

    const-string v3, ":::::::BroadcastReceiver onReceive() :::::::::: shealth"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v3, p0, Lcom/sec/android/cover/CoverViewMediator$1;->this$0:Lcom/sec/android/cover/CoverViewMediator;

    invoke-virtual {p2}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    invoke-static {v3, v2}, Lcom/sec/android/cover/CoverViewMediator;->access$002(Lcom/sec/android/cover/CoverViewMediator;Landroid/content/Intent;)Landroid/content/Intent;

    .line 76
    .end local v1    # "type":Ljava/lang/String;
    :cond_0
    return-void
.end method
