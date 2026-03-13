.class Lcom/android/systemui/recents/views/TaskStackView$8;
.super Ljava/lang/Object;
.source "TaskStackView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/TaskStackView;->startDismissAllAnimation(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/TaskStackView;

.field final synthetic val$postAnimationRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/TaskStackView;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1358
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackView$8;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    iput-object p2, p0, Lcom/android/systemui/recents/views/TaskStackView$8;->val$postAnimationRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1361
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView$8;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v3

    .line 1362
    .local v3, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 1363
    .local v2, "taskViewCount":I
    const/4 v0, 0x0

    .line 1364
    .local v0, "count":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1365
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/views/TaskView;

    .line 1366
    .local v4, "tv":Lcom/android/systemui/recents/views/TaskView;
    if-lez v1, :cond_0

    const/4 v5, 0x0

    :goto_1
    mul-int/lit8 v6, v0, 0x32

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/recents/views/TaskView;->startDeleteTaskAnimation(Ljava/lang/Runnable;I)V

    .line 1367
    add-int/lit8 v0, v0, 0x1

    .line 1364
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1366
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView$8;->val$postAnimationRunnable:Ljava/lang/Runnable;

    goto :goto_1

    .line 1369
    .end local v4    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_1
    return-void
.end method
