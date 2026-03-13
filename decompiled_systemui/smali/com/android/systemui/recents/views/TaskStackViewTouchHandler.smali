.class Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;
.super Ljava/lang/Object;
.source "TaskStackViewTouchHandler.java"

# interfaces
.implements Lcom/android/systemui/recents/views/SwipeHelper$Callback;


# static fields
.field static INACTIVE_POINTER_ID:I


# instance fields
.field mActivePointerId:I

.field mActiveTaskView:Lcom/android/systemui/recents/views/TaskView;

.field mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

.field mDeltaP:F

.field mDeltaSwipeP:F

.field mInitialMotionX:I

.field mInitialMotionY:I

.field mInitialP:F

.field mInterceptedBySwipeHelper:Z

.field mIsScrolling:Z

.field mLastMotionX:I

.field mLastMotionY:I

.field mLastP:F

.field mMaximumVelocity:I

.field mMinimumVelocity:I

.field mPagingTouchSlop:F

.field mPreveiousScrollP:F

.field mScrollTouchSlop:I

.field mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

.field mSv:Lcom/android/systemui/recents/views/TaskStackView;

.field mSwipeHelper:Lcom/android/systemui/recents/views/SwipeHelper;

.field mTotalPMotion:F

.field mVelocityTracker:Landroid/view/VelocityTracker;

.field mWasScrolling:Z

.field final mWindowTouchSlop:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, -0x1

    sput v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->INACTIVE_POINTER_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/RecentsConfiguration;Lcom/android/systemui/recents/views/TaskStackViewScroller;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sv"    # Lcom/android/systemui/recents/views/TaskStackView;
    .param p3, "config"    # Lcom/android/systemui/recents/RecentsConfiguration;
    .param p4, "scroller"    # Lcom/android/systemui/recents/views/TaskStackViewScroller;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    sget v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->INACTIVE_POINTER_ID:I

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/android/systemui/recents/views/TaskView;

    .line 92
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    .line 93
    .local v6, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mMinimumVelocity:I

    .line 94
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mMaximumVelocity:I

    .line 95
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScrollTouchSlop:I

    .line 96
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mPagingTouchSlop:F

    .line 97
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mWindowTouchSlop:I

    .line 98
    iput-object p2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    .line 99
    iput-object p4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    .line 100
    iput-object p3, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    .line 109
    .local v3, "densityScale":F
    new-instance v0, Lcom/android/systemui/recents/views/SwipeHelper;

    const/4 v1, 0x0

    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mPagingTouchSlop:F

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/views/SwipeHelper;-><init>(ILcom/android/systemui/recents/views/SwipeHelper$Callback;FFLcom/android/systemui/recents/RecentsConfiguration;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelper:Lcom/android/systemui/recents/views/SwipeHelper;

    .line 112
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelper:Lcom/android/systemui/recents/views/SwipeHelper;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/SwipeHelper;->setMinAlpha(F)V

    .line 113
    return-void
.end method


# virtual methods
.method public canChildBeDismissed(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 747
    const/4 v0, 0x1

    return v0
.end method

.method createMotionEventForStackScroll(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 152
    sget-boolean v1, Lcom/android/systemui/recents/Constants$Features;->EnableSnapAction:Z

    if-eqz v1, :cond_0

    .line 157
    .end local p1    # "ev":Landroid/view/MotionEvent;
    :goto_0
    return-object p1

    .line 155
    .restart local p1    # "ev":Landroid/view/MotionEvent;
    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 156
    .local v0, "pev":Landroid/view/MotionEvent;
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->progressToScrollRange(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    move-object p1, v0

    .line 157
    goto :goto_0
.end method

.method findViewAtPoint(II)Lcom/android/systemui/recents/views/TaskView;
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 137
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v2

    .line 138
    .local v2, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 139
    .local v1, "taskViewCount":I
    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 140
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/views/TaskView;

    .line 141
    .local v3, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 142
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    int-to-float v5, p1

    int-to-float v6, p2

    invoke-virtual {v4, v5, v6, v3}, Lcom/android/systemui/recents/views/TaskStackView;->isTransformedTouchPointInView(FFLandroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 147
    .end local v3    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :goto_1
    return-object v3

    .line 139
    .restart local v3    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 147
    .end local v3    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 742
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->findViewAtPoint(II)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v0

    return-object v0
.end method

.method initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 118
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 125
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 127
    :cond_0
    return-void
.end method

.method maybeHideRecentsFromBackgroundTap(II)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 690
    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mInitialMotionX:I

    sub-int/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 691
    .local v0, "dx":I
    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mInitialMotionY:I

    sub-int/2addr v4, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 692
    .local v1, "dy":I
    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScrollTouchSlop:I

    if-gt v0, v4, :cond_0

    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScrollTouchSlop:I

    if-le v1, v4, :cond_1

    .line 712
    :cond_0
    :goto_0
    return-void

    .line 698
    :cond_1
    move v3, p1

    .line 699
    .local v3, "shiftedX":I
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackView;->getTouchableRegion()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    if-le p1, v4, :cond_2

    .line 700
    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mWindowTouchSlop:I

    sub-int/2addr v3, v4

    .line 704
    :goto_1
    invoke-virtual {p0, v3, p2}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->findViewAtPoint(II)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v4

    if-nez v4, :cond_0

    .line 710
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/recents/Recents;->getInstanceAndStartIfNeeded(Landroid/content/Context;)Lcom/android/systemui/recents/Recents;

    move-result-object v2

    .line 711
    .local v2, "recents":Lcom/android/systemui/recents/Recents;
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lcom/android/systemui/recents/Recents;->hideRecents(ZZ)V

    goto :goto_0

    .line 702
    .end local v2    # "recents":Lcom/android/systemui/recents/Recents;
    :cond_2
    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mWindowTouchSlop:I

    add-int/2addr v3, v4

    goto :goto_1
.end method

.method public onBeginDrag(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 752
    move-object v1, p1

    check-cast v1, Lcom/android/systemui/recents/views/TaskView;

    .line 754
    .local v1, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 756
    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/TaskView;->setTouchEnabled(Z)V

    .line 760
    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/TaskView;->setLongTouchEnabled(Z)V

    .line 764
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 765
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 766
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 769
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/TaskStackView;->hideDismissAllButton(Ljava/lang/Runnable;)V

    .line 770
    return-void
.end method

.method public onChildDismissed(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 779
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/recents/views/TaskView;

    .line 781
    .local v0, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v0, v3}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 783
    invoke-virtual {v0, v3}, Lcom/android/systemui/recents/views/TaskView;->setTouchEnabled(Z)V

    .line 787
    invoke-virtual {v0, v3}, Lcom/android/systemui/recents/views/TaskView;->setLongTouchEnabled(Z)V

    .line 791
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/recents/views/TaskStackView;->onTaskViewDismissed(Lcom/android/systemui/recents/views/TaskView;Z)V

    .line 793
    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "overview_task_dismissed_source"

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 795
    return-void
.end method

.method public onChildMoved(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 822
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    check-cast p1, Lcom/android/systemui/recents/views/TaskView;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {v1, p1}, Lcom/android/systemui/recents/views/TaskStackView;->onTaskViewMoved(Lcom/android/systemui/recents/views/TaskView;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 826
    :goto_0
    return-void

    .line 823
    :catch_0
    move-exception v0

    .line 824
    .local v0, "e":Ljava/lang/ClassCastException;
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_0
.end method

.method public onDragCancelled(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 817
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 716
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 718
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 719
    .local v0, "action":I
    and-int/lit16 v4, v0, 0xff

    packed-switch v4, :pswitch_data_0

    .end local v0    # "action":I
    :cond_0
    move v2, v3

    .line 735
    :cond_1
    :goto_0
    return v2

    .line 722
    .restart local v0    # "action":I
    :pswitch_0
    const/16 v4, 0x9

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .line 723
    .local v1, "vScroll":F
    const/4 v4, 0x0

    cmpl-float v4, v1, v4

    if-lez v4, :cond_2

    .line 724
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v4, v2}, Lcom/android/systemui/recents/views/TaskStackView;->ensureFocusedTask(Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 725
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v4, v2, v3}, Lcom/android/systemui/recents/views/TaskStackView;->focusNextTask(ZZ)Z

    goto :goto_0

    .line 728
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v4, v2}, Lcom/android/systemui/recents/views/TaskStackView;->ensureFocusedTask(Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 729
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v4, v3, v3}, Lcom/android/systemui/recents/views/TaskStackView;->focusNextTask(ZZ)Z

    goto :goto_0

    .line 719
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 163
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v9}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_1

    move v2, v8

    .line 164
    .local v2, "hasTaskViews":Z
    :goto_0
    if-nez v2, :cond_2

    .line 286
    :cond_0
    :goto_1
    return v7

    .end local v2    # "hasTaskViews":Z
    :cond_1
    move v2, v7

    .line 163
    goto :goto_0

    .line 168
    .restart local v2    # "hasTaskViews":Z
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 169
    .local v0, "action":I
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v9, v9, Lcom/android/systemui/recents/RecentsConfiguration;->multiStackEnabled:Z

    if-eqz v9, :cond_3

    .line 171
    and-int/lit16 v9, v0, 0xff

    if-nez v9, :cond_3

    .line 172
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v9}, Lcom/android/systemui/recents/views/TaskStackView;->getTouchableRegion()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 180
    :cond_3
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v9}, Lcom/android/systemui/recents/RecentsConfiguration;->useRemoveTaskActionBySwipe()Z

    move-result v9

    if-nez v9, :cond_8

    .line 192
    :cond_4
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v9}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->isScrolling()Z

    move-result v9

    if-nez v9, :cond_5

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    iget-object v9, v9, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    iget-object v9, v9, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v9

    if-eqz v9, :cond_9

    :cond_5
    move v4, v8

    .line 197
    .local v4, "wasScrolling":Z
    :goto_2
    iput-boolean v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mWasScrolling:Z

    .line 201
    and-int/lit16 v9, v0, 0xff

    packed-switch v9, :pswitch_data_0

    .line 286
    :cond_6
    :goto_3
    if-nez v4, :cond_7

    iget-boolean v9, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    if-eqz v9, :cond_0

    :cond_7
    move v7, v8

    goto :goto_1

    .line 186
    .end local v4    # "wasScrolling":Z
    :cond_8
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelper:Lcom/android/systemui/recents/views/SwipeHelper;

    invoke-virtual {v9, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mInterceptedBySwipeHelper:Z

    .line 187
    iget-boolean v9, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mInterceptedBySwipeHelper:Z

    if-eqz v9, :cond_4

    move v7, v8

    .line 188
    goto :goto_1

    :cond_9
    move v4, v7

    .line 192
    goto :goto_2

    .line 204
    .restart local v4    # "wasScrolling":Z
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v9, v9

    iput v9, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionX:I

    iput v9, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mInitialMotionX:I

    .line 205
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v9, v9

    iput v9, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionY:I

    iput v9, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mInitialMotionY:I

    .line 211
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v9, v9, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget v10, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionY:I

    invoke-virtual {v9, v10}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->screenYToCurveProgress(I)F

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastP:F

    iput v9, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mInitialP:F

    .line 213
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    .line 214
    iget v9, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionX:I

    iget v10, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionY:I

    invoke-virtual {p0, v9, v10}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->findViewAtPoint(II)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v9

    iput-object v9, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/android/systemui/recents/views/TaskView;

    .line 216
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v9}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopScroller()V

    .line 217
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v9}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopBoundScrollAnimation()V

    .line 219
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->initOrResetVelocityTracker()V

    .line 220
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->createMotionEventForStackScroll(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_3

    .line 224
    :pswitch_1
    iget v9, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    sget v10, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->INACTIVE_POINTER_ID:I

    if-eq v9, v10, :cond_6

    .line 227
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->initVelocityTrackerIfNotExists()V

    .line 228
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->createMotionEventForStackScroll(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 230
    iget v9, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 237
    .local v1, "activePointerIndex":I
    if-ltz v1, :cond_6

    .line 239
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    float-to-int v6, v9

    .line 240
    .local v6, "y":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    float-to-int v5, v9

    .line 243
    .local v5, "x":I
    iget v9, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mInitialMotionY:I

    sub-int v9, v6, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    iget v10, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScrollTouchSlop:I

    if-gt v9, v10, :cond_b

    .line 261
    :cond_a
    :goto_4
    iput v5, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionX:I

    .line 262
    iput v6, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionY:I

    .line 268
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v9, v9, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget v10, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionY:I

    invoke-virtual {v9, v10}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->screenYToCurveProgress(I)F

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastP:F

    goto/16 :goto_3

    .line 248
    :cond_b
    iput-boolean v8, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    .line 255
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v9}, Lcom/android/systemui/recents/views/TaskStackView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 256
    .local v3, "parent":Landroid/view/ViewParent;
    if-eqz v3, :cond_a

    .line 257
    invoke-interface {v3, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_4

    .line 275
    .end local v1    # "activePointerIndex":I
    .end local v3    # "parent":Landroid/view/ViewParent;
    .end local v5    # "x":I
    .end local v6    # "y":I
    :pswitch_2
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v9}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->animateBoundScroll()Landroid/animation/ObjectAnimator;

    .line 277
    iput-boolean v7, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    .line 278
    sget v9, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->INACTIVE_POINTER_ID:I

    iput v9, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    .line 279
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/android/systemui/recents/views/TaskView;

    .line 280
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mTotalPMotion:F

    .line 281
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->recycleVelocityTracker()V

    goto/16 :goto_3

    .line 201
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onSnapBackCompleted(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 799
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/recents/views/TaskView;

    .line 801
    .local v0, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 803
    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskView;->setTouchEnabled(Z)V

    .line 807
    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskView;->setLongTouchEnabled(Z)V

    .line 811
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackView;->showDismissAllButton()V

    .line 812
    return-void
.end method

.method public onSwipeChanged(Landroid/view/View;F)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "delta"    # F

    .prologue
    .line 775
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 54
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 292
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    const/16 v35, 0x1

    .line 293
    .local v35, "hasTaskViews":Z
    :goto_0
    if-nez v35, :cond_1

    .line 294
    const/4 v6, 0x0

    .line 683
    :goto_1
    return v6

    .line 292
    .end local v35    # "hasTaskViews":Z
    :cond_0
    const/16 v35, 0x0

    goto :goto_0

    .line 297
    .restart local v35    # "hasTaskViews":Z
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v27

    .line 298
    .local v27, "action":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v6, v6, Lcom/android/systemui/recents/RecentsConfiguration;->multiStackEnabled:Z

    if-eqz v6, :cond_2

    .line 300
    move/from16 v0, v27

    and-int/lit16 v6, v0, 0xff

    if-nez v6, :cond_2

    .line 301
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackView;->getTouchableRegion()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v6, v9, v10}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-nez v6, :cond_2

    .line 302
    const/4 v6, 0x0

    goto :goto_1

    .line 309
    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v6}, Lcom/android/systemui/recents/RecentsConfiguration;->useRemoveTaskActionBySwipe()Z

    move-result v6

    if-nez v6, :cond_6

    .line 321
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->initVelocityTrackerIfNotExists()V

    .line 323
    move/from16 v0, v27

    and-int/lit16 v6, v0, 0xff

    packed-switch v6, :pswitch_data_0

    .line 677
    :cond_4
    :goto_2
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v6}, Lcom/android/systemui/recents/RecentsConfiguration;->useRemoveTaskActionBySwipe()Z

    move-result v6

    if-nez v6, :cond_2b

    .line 679
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mWasScrolling:Z

    if-nez v6, :cond_5

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    if-eqz v6, :cond_2a

    :cond_5
    const/4 v6, 0x1

    goto :goto_1

    .line 315
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mInterceptedBySwipeHelper:Z

    if-eqz v6, :cond_3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelper:Lcom/android/systemui/recents/views/SwipeHelper;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/android/systemui/recents/views/SwipeHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 316
    const/4 v6, 0x1

    goto :goto_1

    .line 326
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionX:I

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mInitialMotionX:I

    .line 327
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionY:I

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mInitialMotionY:I

    .line 333
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v6, v6, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionY:I

    invoke-virtual {v6, v9}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->screenYToCurveProgress(I)F

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastP:F

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mInitialP:F

    .line 336
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDeltaSwipeP:F

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDeltaP:F

    .line 338
    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    .line 339
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionX:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionY:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v9}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->findViewAtPoint(II)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/android/systemui/recents/views/TaskView;

    .line 341
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopScroller()V

    .line 342
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopBoundScrollAnimation()V

    .line 344
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->initOrResetVelocityTracker()V

    .line 345
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->createMotionEventForStackScroll(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 347
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackView;->getParent()Landroid/view/ViewParent;

    move-result-object v43

    .line 348
    .local v43, "parent":Landroid/view/ViewParent;
    if-eqz v43, :cond_4

    .line 349
    const/4 v6, 0x1

    move-object/from16 v0, v43

    invoke-interface {v0, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_2

    .line 354
    .end local v43    # "parent":Landroid/view/ViewParent;
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v37

    .line 355
    .local v37, "index":I
    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    .line 356
    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    float-to-int v6, v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionX:I

    .line 357
    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v6, v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionY:I

    .line 363
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v6, v6, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionY:I

    invoke-virtual {v6, v9}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->screenYToCurveProgress(I)F

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastP:F

    .line 366
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDeltaSwipeP:F

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDeltaP:F

    goto/16 :goto_2

    .line 371
    .end local v37    # "index":I
    :pswitch_3
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    sget v9, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->INACTIVE_POINTER_ID:I

    if-eq v6, v9, :cond_4

    .line 373
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->createMotionEventForStackScroll(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 375
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v28

    .line 377
    .local v28, "activePointerIndex":I
    if-ltz v28, :cond_4

    .line 379
    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    float-to-int v0, v6

    move/from16 v50, v0

    .line 380
    .local v50, "x":I
    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v0, v6

    move/from16 v52, v0

    .line 381
    .local v52, "y":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mInitialMotionY:I

    sub-int v6, v52, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v53

    .line 383
    .local v53, "yTotal":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mInitialMotionX:I

    sub-int v6, v50, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v51

    .line 389
    .local v51, "xTotal":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v6, v6, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    move/from16 v0, v52

    invoke-virtual {v6, v0}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->screenYToCurveProgress(I)F

    move-result v30

    .line 392
    .local v30, "curP":F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastP:F

    sub-float v32, v6, v30

    .line 394
    .local v32, "deltaP":F
    sget-boolean v6, Lcom/android/systemui/recents/Constants$Features;->EnableSnapAction:Z

    if-eqz v6, :cond_7

    .line 402
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionY:I

    sub-int v6, v6, v52

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v9}, Lcom/android/systemui/recents/views/TaskStackView;->getMeasuredHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v6, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v9, v9, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackScrollTouchSensitivity:F

    div-float v32, v6, v9

    .line 403
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mInitialMotionY:I

    sub-int v6, v6, v52

    int-to-float v6, v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDeltaP:F

    .line 404
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mInitialMotionX:I

    sub-int v6, v6, v50

    int-to-float v6, v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDeltaSwipeP:F

    .line 408
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    if-nez v6, :cond_8

    .line 411
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScrollTouchSlop:I

    move/from16 v0, v53

    if-gt v0, v6, :cond_b

    .line 423
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    if-eqz v6, :cond_a

    .line 424
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v31

    .line 425
    .local v31, "curStackScroll":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    add-float v9, v31, v32

    invoke-virtual {v6, v9}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getScrollAmountOutOfBounds(F)F

    move-result v40

    .line 426
    .local v40, "overScrollAmount":F
    const/4 v6, 0x0

    move/from16 v0, v40

    invoke-static {v0, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-eqz v6, :cond_9

    .line 429
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v0, v6, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackOverscrollPct:F

    move/from16 v38, v0

    .line 430
    .local v38, "maxOverScroll":F
    const/high16 v6, 0x3f800000    # 1.0f

    move/from16 v0, v38

    move/from16 v1, v40

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v9

    div-float v9, v9, v38

    sub-float/2addr v6, v9

    mul-float v32, v32, v6

    .line 433
    .end local v38    # "maxOverScroll":F
    :cond_9
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    add-float v9, v31, v32

    invoke-virtual {v6, v9}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setStackScroll(F)V

    .line 435
    sget-boolean v6, Lcom/android/systemui/recents/Constants$Features;->EnableCloseAllScroll:Z

    if-eqz v6, :cond_a

    .line 437
    const/16 v29, 0x1

    .line 444
    .local v29, "closeAllScroll":Z
    if-eqz v29, :cond_a

    .line 446
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mInitialMotionY:I

    sub-int v6, v52, v6

    if-gez v6, :cond_c

    .line 447
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v6, v6, Lcom/android/systemui/recents/views/TaskStackView;->mCb:Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;

    const/4 v9, 0x1

    invoke-interface {v6, v9}, Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;->onToggleRecentsBottomContainer(Z)V

    .line 455
    .end local v29    # "closeAllScroll":Z
    .end local v31    # "curStackScroll":F
    .end local v40    # "overScrollAmount":F
    :cond_a
    :goto_4
    move/from16 v0, v50

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionX:I

    .line 456
    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionY:I

    .line 462
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v6, v6, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionY:I

    invoke-virtual {v6, v9}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->screenYToCurveProgress(I)F

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastP:F

    .line 464
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mTotalPMotion:F

    invoke-static/range {v32 .. v32}, Ljava/lang/Math;->abs(F)F

    move-result v9

    add-float/2addr v6, v9

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mTotalPMotion:F

    goto/16 :goto_2

    .line 415
    :cond_b
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    .line 417
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackView;->getParent()Landroid/view/ViewParent;

    move-result-object v43

    .line 418
    .restart local v43    # "parent":Landroid/view/ViewParent;
    if-eqz v43, :cond_8

    .line 419
    const/4 v6, 0x1

    move-object/from16 v0, v43

    invoke-interface {v0, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_3

    .line 449
    .end local v43    # "parent":Landroid/view/ViewParent;
    .restart local v29    # "closeAllScroll":Z
    .restart local v31    # "curStackScroll":F
    .restart local v40    # "overScrollAmount":F
    :cond_c
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v6, v6, Lcom/android/systemui/recents/views/TaskStackView;->mCb:Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;

    const/4 v9, 0x0

    invoke-interface {v6, v9}, Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;->onToggleRecentsBottomContainer(Z)V

    goto :goto_4

    .line 473
    .end local v28    # "activePointerIndex":I
    .end local v29    # "closeAllScroll":Z
    .end local v30    # "curP":F
    .end local v31    # "curStackScroll":F
    .end local v32    # "deltaP":F
    .end local v40    # "overScrollAmount":F
    .end local v50    # "x":I
    .end local v51    # "xTotal":I
    .end local v52    # "y":I
    .end local v53    # "yTotal":I
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mMaximumVelocity:I

    int-to-float v10, v10

    invoke-virtual {v6, v9, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 474
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    invoke-virtual {v6, v9}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v9

    sget-boolean v6, Lcom/android/systemui/recents/Constants$Features;->EnableSnapAction:Z

    if-eqz v6, :cond_12

    const/high16 v6, -0x40800000    # -1.0f

    :goto_5
    mul-float v49, v9, v6

    .line 476
    .local v49, "velocity":F
    sget-boolean v6, Lcom/android/systemui/recents/Constants$Features;->EnableSnapAction:Z

    if-nez v6, :cond_d

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    if-eqz v6, :cond_26

    invoke-static/range {v49 .. v49}, Ljava/lang/Math;->abs(F)F

    move-result v6

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mMinimumVelocity:I

    int-to-float v9, v9

    const/high16 v10, 0x447a0000    # 1000.0f

    div-float/2addr v9, v10

    cmpl-float v6, v6, v9

    if-lez v6, :cond_26

    .line 478
    :cond_d
    const/high16 v6, 0x447a0000    # 1000.0f

    mul-float v6, v6, v49

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mMaximumVelocity:I

    int-to-float v9, v9

    div-float/2addr v6, v9

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v42

    .line 480
    .local v42, "overscrollRangePct":F
    const/16 v41, 0x0

    .line 482
    .local v41, "overscrollRange":I
    sget-boolean v6, Lcom/android/systemui/recents/Constants$Features;->EnableSnapAction:Z

    if-eqz v6, :cond_14

    .line 483
    const/high16 v9, 0x3f800000    # 1.0f

    mul-float v10, v42, v42

    invoke-static/range {v49 .. v49}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v11, 0x41200000    # 10.0f

    cmpl-float v6, v6, v11

    if-lez v6, :cond_13

    invoke-static/range {v49 .. v49}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v11, 0x41200000    # 10.0f

    div-float/2addr v6, v11

    :goto_6
    mul-float/2addr v6, v10

    invoke-static {v9, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    const/high16 v9, 0x42c00000    # 96.0f

    mul-float/2addr v6, v9

    const/high16 v9, 0x43340000    # 180.0f

    mul-float/2addr v6, v9

    float-to-int v0, v6

    move/from16 v41, v0

    .line 493
    :goto_7
    sget-boolean v6, Lcom/android/systemui/recents/Constants$Features;->EnableSnapAction:Z

    if-eqz v6, :cond_25

    .line 494
    const/high16 v12, -0x40800000    # -1.0f

    .line 495
    .local v12, "overscrollTarget":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v6, v6, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v6, v6, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mScrollProgressMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v47

    .line 496
    .local v47, "size":I
    invoke-static/range {v49 .. v49}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v9, 0x3f800000    # 1.0f

    cmpg-float v6, v6, v9

    if-gez v6, :cond_16

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDeltaP:F

    const/high16 v9, -0x3ccc0000    # -180.0f

    cmpg-float v6, v6, v9

    if-gez v6, :cond_16

    .line 497
    const/16 v36, 0x0

    .local v36, "i":I
    :goto_8
    add-int/lit8 v6, v47, -0x1

    move/from16 v0, v36

    if-ge v0, v6, :cond_e

    .line 498
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v9}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v9

    invoke-virtual {v6, v9}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->progressToScrollRange(F)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v6, v6, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v6, v6, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mScrollProgressMap:Ljava/util/HashMap;

    add-int/lit8 v11, v36, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v10, v6}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->progressToScrollRange(F)I

    move-result v6

    if-ge v9, v6, :cond_15

    .line 500
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v6, v6, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v6, v6, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mScrollProgressMap:Ljava/util/HashMap;

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v12

    .line 553
    :cond_e
    :goto_9
    const/high16 v6, -0x40800000    # -1.0f

    cmpl-float v6, v12, v6

    if-nez v6, :cond_f

    .line 554
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v6, v6, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v6, v6, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mScrollProgressMap:Ljava/util/HashMap;

    add-int/lit8 v9, v47, -0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v12

    .line 556
    :cond_f
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mPreveiousScrollP:F

    .line 557
    const-wide/16 v14, 0x0

    .line 558
    .local v14, "totalDuration":J
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v6

    sub-float v6, v12, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v9, 0x43cd0000    # 410.0f

    mul-float v34, v6, v9

    .line 559
    .local v34, "duration":F
    invoke-static/range {v41 .. v41}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/16 v9, 0xb

    if-ge v6, v9, :cond_24

    .line 561
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDeltaP:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v9, 0x41a00000    # 20.0f

    cmpg-float v6, v6, v9

    if-gez v6, :cond_21

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v6

    sub-float v6, v12, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v9, 0x3d3851ec    # 0.045f

    cmpg-float v6, v6, v9

    if-gez v6, :cond_21

    .line 563
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 564
    .local v2, "downTime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 565
    .local v4, "eventTime":J
    const/4 v6, 0x2

    new-array v0, v6, [I

    move-object/from16 v46, v0

    .line 566
    .local v46, "pts":[I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/android/systemui/recents/views/TaskView;

    if-eqz v6, :cond_20

    .line 567
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/android/systemui/recents/views/TaskView;

    move-object/from16 v0, v46

    invoke-virtual {v6, v0}, Lcom/android/systemui/recents/views/TaskView;->getLocationOnScreen([I)V

    .line 571
    :goto_a
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionX:I

    const/4 v9, 0x0

    aget v9, v46, v9

    sub-int/2addr v6, v9

    int-to-float v7, v6

    .line 572
    .local v7, "motionX":F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionY:I

    const/4 v9, 0x1

    aget v9, v46, v9

    sub-int/2addr v6, v9

    int-to-float v8, v6

    .line 573
    .local v8, "motionY":F
    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v33

    .line 574
    .local v33, "downEvent":Landroid/view/MotionEvent;
    const/4 v6, 0x1

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v48

    .line 575
    .local v48, "upEvent":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/android/systemui/recents/views/TaskView;

    if-eqz v6, :cond_10

    .line 576
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/android/systemui/recents/views/TaskView;

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Lcom/android/systemui/recents/views/TaskView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 577
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/android/systemui/recents/views/TaskView;

    move-object/from16 v0, v48

    invoke-virtual {v6, v0}, Lcom/android/systemui/recents/views/TaskView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 579
    :cond_10
    if-eqz v33, :cond_11

    .line 580
    invoke-virtual/range {v33 .. v33}, Landroid/view/MotionEvent;->recycle()V

    .line 581
    const/16 v33, 0x0

    .line 583
    :cond_11
    if-eqz v48, :cond_4

    .line 584
    invoke-virtual/range {v48 .. v48}, Landroid/view/MotionEvent;->recycle()V

    .line 585
    const/16 v48, 0x0

    goto/16 :goto_2

    .line 474
    .end local v2    # "downTime":J
    .end local v4    # "eventTime":J
    .end local v7    # "motionX":F
    .end local v8    # "motionY":F
    .end local v12    # "overscrollTarget":F
    .end local v14    # "totalDuration":J
    .end local v33    # "downEvent":Landroid/view/MotionEvent;
    .end local v34    # "duration":F
    .end local v36    # "i":I
    .end local v41    # "overscrollRange":I
    .end local v42    # "overscrollRangePct":F
    .end local v46    # "pts":[I
    .end local v47    # "size":I
    .end local v48    # "upEvent":Landroid/view/MotionEvent;
    .end local v49    # "velocity":F
    :cond_12
    const/high16 v6, 0x3f800000    # 1.0f

    goto/16 :goto_5

    .line 483
    .restart local v41    # "overscrollRange":I
    .restart local v42    # "overscrollRangePct":F
    .restart local v49    # "velocity":F
    :cond_13
    const/high16 v6, 0x3f800000    # 1.0f

    goto/16 :goto_6

    .line 488
    :cond_14
    const/high16 v6, 0x3f800000    # 1.0f

    move/from16 v0, v42

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v6

    const/high16 v9, 0x42c00000    # 96.0f

    mul-float/2addr v6, v9

    float-to-int v0, v6

    move/from16 v41, v0

    goto/16 :goto_7

    .line 497
    .restart local v12    # "overscrollTarget":F
    .restart local v36    # "i":I
    .restart local v47    # "size":I
    :cond_15
    add-int/lit8 v36, v36, 0x1

    goto/16 :goto_8

    .line 504
    .end local v36    # "i":I
    :cond_16
    invoke-static/range {v49 .. v49}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v9

    if-ltz v6, :cond_18

    invoke-static/range {v49 .. v49}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v9, 0x40e00000    # 7.0f

    cmpg-float v6, v6, v9

    if-gez v6, :cond_18

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDeltaP:F

    const/high16 v9, -0x3d100000    # -120.0f

    cmpg-float v6, v6, v9

    if-gez v6, :cond_18

    .line 505
    const/16 v36, 0x0

    .restart local v36    # "i":I
    :goto_b
    add-int/lit8 v6, v47, -0x1

    move/from16 v0, v36

    if-ge v0, v6, :cond_e

    .line 506
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v9}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v9

    invoke-virtual {v6, v9}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->progressToScrollRange(F)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v6, v6, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v6, v6, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mScrollProgressMap:Ljava/util/HashMap;

    add-int/lit8 v11, v36, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v10, v6}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->progressToScrollRange(F)I

    move-result v6

    if-ge v9, v6, :cond_17

    .line 508
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v6, v6, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v6, v6, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mScrollProgressMap:Ljava/util/HashMap;

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v12

    .line 509
    goto/16 :goto_9

    .line 505
    :cond_17
    add-int/lit8 v36, v36, 0x1

    goto :goto_b

    .line 512
    .end local v36    # "i":I
    :cond_18
    invoke-static/range {v49 .. v49}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v9, 0x40a00000    # 5.0f

    cmpg-float v6, v6, v9

    if-gez v6, :cond_1a

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDeltaP:F

    const/high16 v9, 0x43160000    # 150.0f

    cmpg-float v6, v6, v9

    if-gez v6, :cond_1a

    const/high16 v6, 0x41a00000    # 20.0f

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDeltaP:F

    cmpg-float v6, v6, v9

    if-gtz v6, :cond_1a

    .line 513
    const/16 v36, 0x0

    .restart local v36    # "i":I
    :goto_c
    add-int/lit8 v6, v47, -0x1

    move/from16 v0, v36

    if-ge v0, v6, :cond_e

    .line 514
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v9}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v9

    invoke-virtual {v6, v9}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->progressToScrollRange(F)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v6, v6, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v6, v6, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mScrollProgressMap:Ljava/util/HashMap;

    add-int/lit8 v11, v36, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v10, v6}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->progressToScrollRange(F)I

    move-result v6

    if-ge v9, v6, :cond_19

    .line 516
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v6, v6, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v6, v6, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mScrollProgressMap:Ljava/util/HashMap;

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v12

    .line 517
    goto/16 :goto_9

    .line 513
    :cond_19
    add-int/lit8 v36, v36, 0x1

    goto :goto_c

    .line 520
    .end local v36    # "i":I
    :cond_1a
    invoke-static/range {v49 .. v49}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v9, 0x40a00000    # 5.0f

    cmpg-float v6, v6, v9

    if-gez v6, :cond_1d

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDeltaP:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v9, 0x41a00000    # 20.0f

    cmpg-float v6, v6, v9

    if-gez v6, :cond_1d

    .line 521
    const/16 v36, 0x0

    .restart local v36    # "i":I
    :goto_d
    add-int/lit8 v6, v47, -0x1

    move/from16 v0, v36

    if-ge v0, v6, :cond_e

    .line 522
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mPreveiousScrollP:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v9}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v9

    cmpl-float v6, v6, v9

    if-ltz v6, :cond_1b

    .line 523
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v9}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v9

    invoke-virtual {v6, v9}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->progressToScrollRange(F)I

    move-result v6

    add-int v9, v41, v6

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v6, v6, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v6, v6, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mScrollProgressMap:Ljava/util/HashMap;

    add-int/lit8 v11, v36, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v10, v6}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->progressToScrollRange(F)I

    move-result v6

    if-ge v9, v6, :cond_1c

    .line 525
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v6, v6, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v6, v6, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mScrollProgressMap:Ljava/util/HashMap;

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v12

    .line 526
    goto/16 :goto_9

    .line 529
    :cond_1b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v9}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v9

    invoke-virtual {v6, v9}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->progressToScrollRange(F)I

    move-result v6

    add-int v9, v41, v6

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v6, v6, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v6, v6, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mScrollProgressMap:Ljava/util/HashMap;

    add-int/lit8 v11, v36, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v10, v6}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->progressToScrollRange(F)I

    move-result v6

    if-ge v9, v6, :cond_1c

    .line 531
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v6, v6, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v6, v6, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mScrollProgressMap:Ljava/util/HashMap;

    add-int/lit8 v9, v36, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v12

    .line 532
    goto/16 :goto_9

    .line 521
    :cond_1c
    add-int/lit8 v36, v36, 0x1

    goto/16 :goto_d

    .line 537
    .end local v36    # "i":I
    :cond_1d
    const/16 v36, 0x0

    .restart local v36    # "i":I
    :goto_e
    move/from16 v0, v36

    move/from16 v1, v47

    if-ge v0, v1, :cond_e

    .line 538
    const/4 v6, 0x0

    cmpl-float v6, v49, v6

    if-ltz v6, :cond_1e

    .line 539
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v9}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v9

    invoke-virtual {v6, v9}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->progressToScrollRange(F)I

    move-result v6

    add-int v9, v41, v6

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v6, v6, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v6, v6, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mScrollProgressMap:Ljava/util/HashMap;

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v10, v6}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->progressToScrollRange(F)I

    move-result v6

    if-ge v9, v6, :cond_1f

    .line 541
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v6, v6, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v6, v6, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mScrollProgressMap:Ljava/util/HashMap;

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v12

    .line 542
    goto/16 :goto_9

    .line 545
    :cond_1e
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v9}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v9

    invoke-virtual {v6, v9}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->progressToScrollRange(F)I

    move-result v6

    sub-int v9, v6, v41

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v6, v6, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v6, v6, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mScrollProgressMap:Ljava/util/HashMap;

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v10, v6}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->progressToScrollRange(F)I

    move-result v6

    if-ge v9, v6, :cond_1f

    .line 547
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v6, v6, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v6, v6, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mScrollProgressMap:Ljava/util/HashMap;

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v12

    .line 548
    goto/16 :goto_9

    .line 537
    :cond_1f
    add-int/lit8 v36, v36, 0x1

    goto/16 :goto_e

    .line 569
    .restart local v2    # "downTime":J
    .restart local v4    # "eventTime":J
    .restart local v14    # "totalDuration":J
    .restart local v34    # "duration":F
    .restart local v46    # "pts":[I
    :cond_20
    const/4 v6, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput v10, v46, v9

    aput v10, v46, v6

    goto/16 :goto_a

    .line 588
    .end local v2    # "downTime":J
    .end local v4    # "eventTime":J
    .end local v46    # "pts":[I
    :cond_21
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDeltaSwipeP:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v9, 0x43e10000    # 450.0f

    cmpl-float v6, v6, v9

    if-lez v6, :cond_23

    .line 589
    const/high16 v6, 0x43c80000    # 400.0f

    add-float v6, v6, v34

    float-to-long v14, v6

    .line 598
    :goto_f
    const/4 v13, 0x0

    .line 608
    .local v13, "postRun":Ljava/lang/Runnable;
    const-string v6, "TaskStackViewTouchHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "velocity:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v49

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/overscrollRange:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v41

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/overscrollRangePct:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v42

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/totalDuration:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    const-string v6, "TaskStackViewTouchHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mDeltaP:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDeltaP:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/getStackScroll:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v11}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->progressToScrollRange(F)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/overscrollTarget:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v11

    invoke-virtual/range {v10 .. v15}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->animateScroll(FFLjava/lang/Runnable;J)V

    .line 623
    .end local v12    # "overscrollTarget":F
    .end local v13    # "postRun":Ljava/lang/Runnable;
    .end local v14    # "totalDuration":J
    .end local v34    # "duration":F
    .end local v36    # "i":I
    .end local v47    # "size":I
    :goto_10
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackView;->invalidate()V

    .line 632
    .end local v41    # "overscrollRange":I
    .end local v42    # "overscrollRangePct":F
    :cond_22
    :goto_11
    sget v6, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->INACTIVE_POINTER_ID:I

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    .line 633
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    .line 634
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mTotalPMotion:F

    .line 635
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->recycleVelocityTracker()V

    goto/16 :goto_2

    .line 591
    .restart local v12    # "overscrollTarget":F
    .restart local v14    # "totalDuration":J
    .restart local v34    # "duration":F
    .restart local v36    # "i":I
    .restart local v41    # "overscrollRange":I
    .restart local v42    # "overscrollRangePct":F
    .restart local v47    # "size":I
    :cond_23
    const/high16 v6, 0x43c80000    # 400.0f

    add-float v6, v6, v34

    float-to-long v14, v6

    goto/16 :goto_f

    .line 594
    :cond_24
    const/high16 v6, 0x44160000    # 600.0f

    add-float v6, v6, v34

    const/high16 v9, 0x44af0000    # 1400.0f

    invoke-static {v6, v9}, Ljava/lang/Math;->min(FF)F

    move-result v6

    float-to-long v14, v6

    goto/16 :goto_f

    .line 613
    .end local v12    # "overscrollTarget":F
    .end local v14    # "totalDuration":J
    .end local v34    # "duration":F
    .end local v36    # "i":I
    .end local v47    # "size":I
    :cond_25
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    iget-object v0, v6, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v9}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v9

    invoke-virtual {v6, v9}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->progressToScrollRange(F)I

    move-result v18

    const/16 v19, 0x0

    const/high16 v6, 0x447a0000    # 1000.0f

    mul-float v6, v6, v49

    float-to-int v0, v6

    move/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v9, v9, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget v9, v9, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mMinScrollP:F

    invoke-virtual {v6, v9}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->progressToScrollRange(F)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v9, v9, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget v9, v9, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mMaxScrollP:F

    invoke-virtual {v6, v9}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->progressToScrollRange(F)I

    move-result v24

    const/16 v25, 0x0

    add-int/lit8 v26, v41, 0x20

    invoke-virtual/range {v16 .. v26}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    goto :goto_10

    .line 624
    .end local v41    # "overscrollRange":I
    .end local v42    # "overscrollRangePct":F
    :cond_26
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    if-eqz v6, :cond_27

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->isScrollOutOfBounds()Z

    move-result v6

    if-eqz v6, :cond_27

    .line 626
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->animateBoundScroll()Landroid/animation/ObjectAnimator;

    goto/16 :goto_11

    .line 627
    :cond_27
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/android/systemui/recents/views/TaskView;

    if-nez v6, :cond_22

    .line 629
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v9, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v9}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->maybeHideRecentsFromBackgroundTap(II)V

    goto/16 :goto_11

    .line 639
    .end local v49    # "velocity":F
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v45

    .line 640
    .local v45, "pointerIndex":I
    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v44

    .line 641
    .local v44, "pointerId":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    move/from16 v0, v44

    if-ne v0, v6, :cond_4

    .line 643
    if-nez v45, :cond_28

    const/16 v39, 0x1

    .line 644
    .local v39, "newPointerIndex":I
    :goto_12
    move-object/from16 v0, p1

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    .line 645
    move-object/from16 v0, p1

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    float-to-int v6, v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionX:I

    .line 646
    move-object/from16 v0, p1

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v6, v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionY:I

    .line 652
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v6, v6, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionY:I

    invoke-virtual {v6, v9}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->screenYToCurveProgress(I)F

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastP:F

    .line 654
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_2

    .line 643
    .end local v39    # "newPointerIndex":I
    :cond_28
    const/16 v39, 0x0

    goto :goto_12

    .line 664
    .end local v44    # "pointerId":I
    .end local v45    # "pointerIndex":I
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->isScrollOutOfBounds()Z

    move-result v6

    if-eqz v6, :cond_29

    .line 666
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->animateBoundScroll()Landroid/animation/ObjectAnimator;

    .line 668
    :cond_29
    sget v6, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->INACTIVE_POINTER_ID:I

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    .line 669
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    .line 670
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mTotalPMotion:F

    .line 671
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->recycleVelocityTracker()V

    goto/16 :goto_2

    .line 679
    :cond_2a
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 683
    :cond_2b
    const/4 v6, 0x1

    goto/16 :goto_1

    .line 323
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method recycleVelocityTracker()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 133
    :cond_0
    return-void
.end method
