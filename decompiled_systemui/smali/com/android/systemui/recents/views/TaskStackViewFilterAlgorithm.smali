.class public Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm;
.super Ljava/lang/Object;
.source "TaskStackViewFilterAlgorithm.java"


# instance fields
.field mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

.field mStackView:Lcom/android/systemui/recents/views/TaskStackView;

.field mViewPool:Lcom/android/systemui/recents/views/ViewPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/recents/views/ViewPool",
            "<",
            "Lcom/android/systemui/recents/views/TaskView;",
            "Lcom/android/systemui/recents/model/Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/RecentsConfiguration;Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/ViewPool;)V
    .locals 0
    .param p1, "config"    # Lcom/android/systemui/recents/RecentsConfiguration;
    .param p2, "stackView"    # Lcom/android/systemui/recents/views/TaskStackView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/recents/RecentsConfiguration;",
            "Lcom/android/systemui/recents/views/TaskStackView;",
            "Lcom/android/systemui/recents/views/ViewPool",
            "<",
            "Lcom/android/systemui/recents/views/TaskView;",
            "Lcom/android/systemui/recents/model/Task;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p3, "viewPool":Lcom/android/systemui/recents/views/ViewPool;, "Lcom/android/systemui/recents/views/ViewPool<Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    .line 37
    iput-object p2, p0, Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    .line 38
    iput-object p3, p0, Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    .line 39
    return-void
.end method


# virtual methods
.method getEnterTransformsForFilterAnimation(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/views/TaskViewTransform;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/systemui/recents/views/TaskView;",
            "Lcom/android/systemui/recents/views/TaskViewTransform;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 105
    .local p1, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    .local p2, "taskTransforms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/views/TaskViewTransform;>;"
    .local p3, "childViewTransformsOut":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;>;"
    const/4 v3, 0x0

    .line 106
    .local v3, "offset":I
    const/4 v2, 0x0

    .line 107
    .local v2, "movement":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 108
    .local v5, "taskCount":I
    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 109
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/model/Task;

    .line 110
    .local v4, "task":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 111
    .local v6, "toTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    iget-boolean v8, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    if-eqz v8, :cond_0

    .line 112
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v8, v4}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v7

    .line 113
    .local v7, "tv":Lcom/android/systemui/recents/views/TaskView;
    if-nez v7, :cond_0

    .line 115
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    invoke-virtual {v8, v4, v4}, Lcom/android/systemui/recents/views/ViewPool;->pickUpViewFromPool(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "tv":Lcom/android/systemui/recents/views/TaskView;
    check-cast v7, Lcom/android/systemui/recents/views/TaskView;

    .line 118
    .restart local v7    # "tv":Lcom/android/systemui/recents/views/TaskView;
    new-instance v0, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v0, v6}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>(Lcom/android/systemui/recents/views/TaskViewTransform;)V

    .line 119
    .local v0, "fromTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    invoke-virtual {v7, v0}, Lcom/android/systemui/recents/views/TaskView;->prepareTaskTransformForFilterTaskHidden(Lcom/android/systemui/recents/views/TaskViewTransform;)V

    .line 120
    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8}, Lcom/android/systemui/recents/views/TaskView;->updateViewPropertiesToTaskTransform(Lcom/android/systemui/recents/views/TaskViewTransform;I)V

    .line 122
    mul-int/lit8 v8, v3, 0x19

    iput v8, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->startDelay:I

    .line 123
    invoke-virtual {p3, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget v8, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->translationY:I

    iget v9, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationY:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 128
    add-int/lit8 v3, v3, 0x1

    .line 108
    .end local v0    # "fromTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .end local v7    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 132
    .end local v4    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v6    # "toTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    :cond_1
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v8, v8, Lcom/android/systemui/recents/RecentsConfiguration;->filteringNewViewsAnimDuration:I

    return v8
.end method

.method getExitTransformsForFilterAnimation(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;)I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/views/TaskViewTransform;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/views/TaskViewTransform;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/systemui/recents/views/TaskView;",
            "Lcom/android/systemui/recents/views/TaskViewTransform;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/views/TaskView;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 147
    .local p1, "curTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    .local p2, "curTaskTransforms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/views/TaskViewTransform;>;"
    .local p3, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    .local p4, "taskTransforms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/views/TaskViewTransform;>;"
    .local p5, "childViewTransformsOut":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;>;"
    .local p6, "childrenToRemoveOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/views/TaskView;>;"
    const/4 v3, 0x0

    .line 148
    .local v3, "offset":I
    const/4 v2, 0x0

    .line 149
    .local v2, "movement":I
    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v11}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v7

    .line 150
    .local v7, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    .line 151
    .local v6, "taskViewCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_4

    .line 152
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/recents/views/TaskView;

    .line 153
    .local v9, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v9}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v4

    .line 154
    .local v4, "task":Lcom/android/systemui/recents/model/Task;
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 158
    .local v5, "taskIndex":I
    if-ltz v5, :cond_0

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-boolean v11, v11, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    if-nez v11, :cond_1

    :cond_0
    const/4 v10, 0x1

    .line 159
    .local v10, "willBeInvisible":Z
    :goto_1
    if-eqz v10, :cond_3

    .line 160
    if-gez v5, :cond_2

    .line 161
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    invoke-virtual {p2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 165
    .local v8, "toTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    :goto_2
    invoke-virtual {v9, v8}, Lcom/android/systemui/recents/views/TaskView;->prepareTaskTransformForFilterTaskVisible(Lcom/android/systemui/recents/views/TaskViewTransform;)V

    .line 166
    move-object/from16 v0, p6

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    :goto_3
    mul-int/lit8 v11, v3, 0x19

    iput v11, v8, Lcom/android/systemui/recents/views/TaskViewTransform;->startDelay:I

    .line 175
    move-object/from16 v0, p5

    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    add-int/lit8 v3, v3, 0x1

    .line 151
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 158
    .end local v8    # "toTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .end local v10    # "willBeInvisible":Z
    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    .line 163
    .restart local v10    # "willBeInvisible":Z
    :cond_2
    new-instance v8, Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v8, v11}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>(Lcom/android/systemui/recents/views/TaskViewTransform;)V

    .restart local v8    # "toTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    goto :goto_2

    .line 168
    .end local v8    # "toTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    :cond_3
    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 170
    .restart local v8    # "toTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    iget v11, v8, Lcom/android/systemui/recents/views/TaskViewTransform;->translationY:I

    invoke-virtual {v9}, Lcom/android/systemui/recents/views/TaskView;->getTranslationY()F

    move-result v12

    float-to-int v12, v12

    sub-int/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    invoke-static {v2, v11}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_3

    .line 178
    .end local v4    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v5    # "taskIndex":I
    .end local v8    # "toTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .end local v9    # "tv":Lcom/android/systemui/recents/views/TaskView;
    .end local v10    # "willBeInvisible":Z
    :cond_4
    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v11, v11, Lcom/android/systemui/recents/RecentsConfiguration;->filteringCurrentViewsAnimDuration:I

    return v11
.end method

.method startFilteringAnimation(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/views/TaskViewTransform;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/views/TaskViewTransform;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "curTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    .local p2, "curTaskTransforms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/views/TaskViewTransform;>;"
    .local p3, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    .local p4, "taskTransforms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/views/TaskViewTransform;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v9, "childrenToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/views/TaskView;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .local v8, "childViewTransforms":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;>;"
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    .line 51
    invoke-virtual/range {v3 .. v9}, Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm;->getExitTransformsForFilterAnimation(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;)I

    move-result v18

    .line 56
    .local v18, "duration":I
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    .line 57
    .local v15, "unifyNewViewAnimation":Z
    if-eqz v15, :cond_0

    .line 58
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2, v8}, Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm;->getEnterTransformsForFilterAnimation(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;)I

    move-result v20

    .line 60
    .local v20, "inDuration":I
    move/from16 v0, v18

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 64
    .end local v20    # "inDuration":I
    :cond_0
    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/recents/views/TaskView;

    .line 65
    .local v13, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v8, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 66
    .local v21, "t":Lcom/android/systemui/recents/views/TaskViewTransform;
    invoke-virtual {v13}, Lcom/android/systemui/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 67
    invoke-virtual {v13}, Lcom/android/systemui/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v10, Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm$1;

    move-object/from16 v11, p0

    move-object v12, v8

    move-object v14, v9

    move-object/from16 v16, p3

    move-object/from16 v17, p4

    invoke-direct/range {v10 .. v17}, Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm$1;-><init>(Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm;Ljava/util/HashMap;Lcom/android/systemui/recents/views/TaskView;Ljava/util/ArrayList;ZLjava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v10}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 94
    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Lcom/android/systemui/recents/views/TaskView;->updateViewPropertiesToTaskTransform(Lcom/android/systemui/recents/views/TaskViewTransform;I)V

    goto :goto_0

    .line 96
    .end local v13    # "tv":Lcom/android/systemui/recents/views/TaskView;
    .end local v21    # "t":Lcom/android/systemui/recents/views/TaskViewTransform;
    :cond_1
    return-void
.end method
