.class Lcom/android/systemui/recents/views/TaskView$12;
.super Ljava/lang/Object;
.source "TaskView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/TaskView;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/TaskView;

.field final synthetic val$tv:Lcom/android/systemui/recents/views/TaskView;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/TaskView;Landroid/view/View;Lcom/android/systemui/recents/views/TaskView;)V
    .locals 0

    .prologue
    .line 1202
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskView$12;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iput-object p2, p0, Lcom/android/systemui/recents/views/TaskView$12;->val$v:Landroid/view/View;

    iput-object p3, p0, Lcom/android/systemui/recents/views/TaskView$12;->val$tv:Lcom/android/systemui/recents/views/TaskView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 1205
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView$12;->val$v:Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskView$12;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v5, v5, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v5, v5, Lcom/android/systemui/recents/views/TaskViewHeader;->mApplicationIcon:Landroid/widget/ImageView;

    if-ne v4, v5, :cond_1

    .line 1211
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView$12;->this$0:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "accessibility"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 1213
    .local v0, "am":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1214
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView$12;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v4, v4, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    if-eqz v4, :cond_0

    .line 1215
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView$12;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v4, v4, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskView$12;->val$tv:Lcom/android/systemui/recents/views/TaskView;

    invoke-interface {v4, v5}, Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;->onTaskViewAppInfoClicked(Lcom/android/systemui/recents/views/TaskView;)V

    .line 1247
    .end local v0    # "am":Landroid/view/accessibility/AccessibilityManager;
    :cond_0
    :goto_0
    return-void

    .line 1219
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView$12;->val$v:Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskView$12;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v5, v5, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v5, v5, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    if-ne v4, v5, :cond_2

    .line 1220
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView$12;->this$0:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskView;->dismissTask()V

    .line 1222
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView$12;->this$0:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "overview_task_dismissed_source"

    const/4 v6, 0x2

    invoke-static {v4, v5, v6}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 1224
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView$12;->val$v:Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskView$12;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v5, v5, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v5, v5, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    if-ne v4, v5, :cond_3

    .line 1225
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView$12;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v4, v4, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    if-eqz v4, :cond_0

    .line 1226
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView$12;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v4, v4, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskView$12;->val$tv:Lcom/android/systemui/recents/views/TaskView;

    invoke-interface {v4, v5}, Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;->onTaskResize(Lcom/android/systemui/recents/views/TaskView;)V

    goto :goto_0

    .line 1229
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView$12;->val$v:Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskView$12;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v5, v5, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v5, v5, Lcom/android/systemui/recents/views/TaskViewHeader;->mMultiWindowButton:Landroid/widget/ImageView;

    if-ne v4, v5, :cond_0

    .line 1230
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView$12;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v4, v4, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationZ(F)V

    .line 1231
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView$12;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v4, v4, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    if-eqz v4, :cond_4

    .line 1232
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView$12;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v4, v4, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskView$12;->val$tv:Lcom/android/systemui/recents/views/TaskView;

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskView$12;->val$tv:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-interface {v4, v5, v6, v7, v8}, Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;->onTaskViewClicked(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;ZZ)V

    .line 1234
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView$12;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v4, v4, Lcom/android/systemui/recents/views/TaskView;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_0

    .line 1235
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView$12;->val$tv:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v4

    iget-object v4, v4, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v3, v4, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    .line 1236
    .local v3, "taskId":I
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView$12;->val$tv:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v4

    iget-object v4, v4, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v1, v4, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    .line 1237
    .local v1, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView$12;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v4, v4, Lcom/android/systemui/recents/views/TaskView;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1238
    .local v2, "packageName":Ljava/lang/String;
    if-ltz v3, :cond_5

    if-eqz v1, :cond_5

    if-nez v2, :cond_6

    .line 1239
    :cond_5
    const-string v4, "Recents_TaskView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "task has unvalid elements taskId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " packageName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1242
    :cond_6
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView$12;->this$0:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v4, v3, v1, v2}, Lcom/android/systemui/recents/views/TaskView;->handleOnClickMultiWindowBtn(ILandroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
