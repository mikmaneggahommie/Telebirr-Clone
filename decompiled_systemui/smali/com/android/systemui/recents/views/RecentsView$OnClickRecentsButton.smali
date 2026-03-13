.class final Lcom/android/systemui/recents/views/RecentsView$OnClickRecentsButton;
.super Ljava/lang/Object;
.source "RecentsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/views/RecentsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnClickRecentsButton"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/RecentsView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/recents/views/RecentsView;)V
    .locals 0

    .prologue
    .line 539
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsView$OnClickRecentsButton;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/recents/views/RecentsView;Lcom/android/systemui/recents/views/RecentsView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/recents/views/RecentsView;
    .param p2, "x1"    # Lcom/android/systemui/recents/views/RecentsView$1;

    .prologue
    .line 539
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/RecentsView$OnClickRecentsButton;-><init>(Lcom/android/systemui/recents/views/RecentsView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v6, 0x8

    .line 542
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 584
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 544
    :pswitch_1
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView$OnClickRecentsButton;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-static {v4}, Lcom/android/systemui/recents/views/RecentsView;->access$100(Lcom/android/systemui/recents/views/RecentsView;)Landroid/util/SparseArray;

    move-result-object v4

    const v5, 0x7f0f026a

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 545
    .local v3, "taskManagerIntent":Landroid/content/Intent;
    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView$OnClickRecentsButton;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-static {v4, v3}, Lcom/android/systemui/recents/views/RecentsView;->access$200(Lcom/android/systemui/recents/views/RecentsView;Landroid/content/Intent;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 546
    const-string v4, "RecentsView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " package disabled in background?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 551
    .end local v3    # "taskManagerIntent":Landroid/content/Intent;
    :pswitch_2
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView$OnClickRecentsButton;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v4, v4, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->isCloseProcessingBtnClicked:Z

    if-eqz v4, :cond_1

    .line 552
    const-string v4, "RecentsView"

    const-string v5, "OnClickRemoveAllButton is blocked"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 555
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView$OnClickRecentsButton;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v4, v4, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/systemui/recents/RecentsConfiguration;->isCloseProcessingBtnClicked:Z

    .line 557
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_2

    .line 558
    const-string v4, "RecentsView"

    const-string v5, "OnClickRemoveAllButton: button is hidden. return."

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 562
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView$OnClickRecentsButton;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 564
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v4, -0x1

    invoke-virtual {v0, v4, v6}, Landroid/app/ActivityManager;->removeTask(II)Z

    .line 566
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView$OnClickRecentsButton;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v4, v4, Lcom/android/systemui/recents/views/RecentsView;->mRecentsBottomContainer:Landroid/view/ViewGroup;

    if-eqz v4, :cond_3

    sget-boolean v4, Lcom/android/systemui/recents/Constants$Features;->EnableCloseAllLayout:Z

    if-eqz v4, :cond_3

    .line 567
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView$OnClickRecentsButton;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-static {v4}, Lcom/android/systemui/recents/views/RecentsView;->access$300(Lcom/android/systemui/recents/views/RecentsView;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f050078

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 569
    .local v1, "animation":Landroid/view/animation/Animation;
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView$OnClickRecentsButton;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v4, v4, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->sineInOut90Interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 570
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView$OnClickRecentsButton;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v4, v4, Lcom/android/systemui/recents/views/RecentsView;->mRecentsBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 571
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView$OnClickRecentsButton;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v4, v4, Lcom/android/systemui/recents/views/RecentsView;->mRecentsBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 574
    .end local v1    # "animation":Landroid/view/animation/Animation;
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView$OnClickRecentsButton;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v4, v4, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView$OnClickRecentsButton;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v4, v4, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    invoke-interface {v4}, Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;->onCloseAllButtonClicked()V

    goto/16 :goto_0

    .line 577
    .end local v0    # "am":Landroid/app/ActivityManager;
    :pswitch_3
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView$OnClickRecentsButton;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-static {v4}, Lcom/android/systemui/recents/views/RecentsView;->access$100(Lcom/android/systemui/recents/views/RecentsView;)Landroid/util/SparseArray;

    move-result-object v4

    const v5, 0x7f0f026c

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 578
    .local v2, "googleLaunchIntent":Landroid/content/Intent;
    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView$OnClickRecentsButton;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-static {v4, v2}, Lcom/android/systemui/recents/views/RecentsView;->access$200(Lcom/android/systemui/recents/views/RecentsView;Landroid/content/Intent;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 579
    const-string v4, "RecentsView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " package disabled in background?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 542
    nop

    :pswitch_data_0
    .packed-switch 0x7f0f026a
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
