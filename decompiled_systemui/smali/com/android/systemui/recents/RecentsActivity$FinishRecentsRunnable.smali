.class Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;
.super Ljava/lang/Object;
.source "RecentsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/RecentsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FinishRecentsRunnable"
.end annotation


# instance fields
.field mLaunchIntent:Landroid/content/Intent;

.field mLaunchOpts:Landroid/app/ActivityOptions;

.field final synthetic this$0:Lcom/android/systemui/recents/RecentsActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/RecentsActivity;Landroid/content/Intent;Landroid/app/ActivityOptions;)V
    .locals 0
    .param p2, "launchIntent"    # Landroid/content/Intent;
    .param p3, "opts"    # Landroid/app/ActivityOptions;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput-object p2, p0, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;->mLaunchIntent:Landroid/content/Intent;

    .line 223
    iput-object p3, p0, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;->mLaunchOpts:Landroid/app/ActivityOptions;

    .line 224
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 228
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v2, "FinishRecentsRunnable run"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;->mLaunchIntent:Landroid/content/Intent;

    if-eqz v1, :cond_1

    .line 296
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;->mLaunchOpts:Landroid/app/ActivityOptions;

    if-eqz v1, :cond_0

    .line 297
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;->mLaunchIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;->mLaunchOpts:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/recents/RecentsActivity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFromHomeKey(Z)V

    .line 328
    :goto_1
    return-void

    .line 299
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;->mLaunchIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/recents/RecentsActivity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    const v3, 0x7f0b03b9

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "Home"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/recents/RecentsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/recents/misc/Console;->logError(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 312
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFromHomeKey(Z)V

    goto :goto_1

    .line 311
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 312
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setFromHomeKey(Z)V

    throw v1

    .line 317
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsActivity;->finish()V

    .line 319
    sget-boolean v1, Lcom/android/systemui/recents/Constants$Features;->EnableSecondViewExpanded:Z

    if-eqz v1, :cond_2

    .line 320
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    const v2, 0x7f050086

    const v3, 0x7f050089

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/recents/RecentsActivity;->overridePendingTransition(II)V

    goto :goto_1

    .line 324
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    const v2, 0x7f050084

    const v3, 0x7f050087

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/recents/RecentsActivity;->overridePendingTransition(II)V

    goto :goto_1
.end method
