.class public Lcom/android/systemui/statusbar/DelegateViewHelper;
.super Ljava/lang/Object;
.source "DelegateViewHelper.java"


# instance fields
.field private mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

.field private mDelegateView:Landroid/view/View;

.field private mDisabled:Z

.field private mDownPoint:[F

.field mInitialTouch:Landroid/graphics/RectF;

.field private mPanelShowing:Z

.field private mSourceView:Landroid/view/View;

.field private mStarted:Z

.field private mSwapXY:Z

.field private mTempPoint:[I

.field private mTriggerThreshhold:F


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "sourceView"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mTempPoint:[I

    .line 31
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mDownPoint:[F

    .line 35
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mInitialTouch:Landroid/graphics/RectF;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mSwapXY:Z

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/DelegateViewHelper;->setSourceView(Landroid/view/View;)V

    .line 42
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v12, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 53
    iget-object v7, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mSourceView:Landroid/view/View;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mDelegateView:Landroid/view/View;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->shouldDisableNavbarGestures()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 108
    :cond_0
    :goto_0
    return v9

    .line 57
    :cond_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mSourceView:Landroid/view/View;

    iget-object v10, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mTempPoint:[I

    invoke-virtual {v7, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 58
    iget-object v7, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mTempPoint:[I

    aget v7, v7, v9

    int-to-float v5, v7

    .line 59
    .local v5, "sourceX":F
    iget-object v7, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mTempPoint:[I

    aget v7, v7, v8

    int-to-float v6, v7

    .line 61
    .local v6, "sourceY":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 62
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 71
    :goto_1
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mStarted:Z

    if-eqz v7, :cond_0

    .line 93
    if-nez v0, :cond_4

    .line 94
    iget-object v7, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v7, v12, v8}, Lcom/android/systemui/statusbar/BaseStatusBar;->setInteracting(IZ)V

    .line 99
    :cond_2
    :goto_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mDelegateView:Landroid/view/View;

    iget-object v10, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mTempPoint:[I

    invoke-virtual {v7, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 100
    iget-object v7, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mTempPoint:[I

    aget v7, v7, v9

    int-to-float v1, v7

    .line 101
    .local v1, "delegateX":F
    iget-object v7, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mTempPoint:[I

    aget v7, v7, v8

    int-to-float v2, v7

    .line 103
    .local v2, "delegateY":F
    sub-float v3, v5, v1

    .line 104
    .local v3, "deltaX":F
    sub-float v4, v6, v2

    .line 105
    .local v4, "deltaY":F
    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 106
    iget-object v7, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mDelegateView:Landroid/view/View;

    invoke-virtual {v7, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 107
    neg-float v7, v3

    neg-float v8, v4

    invoke-virtual {p1, v7, v8}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 108
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mPanelShowing:Z

    goto :goto_0

    .line 64
    .end local v1    # "delegateX":F
    .end local v2    # "delegateY":F
    .end local v3    # "deltaX":F
    .end local v4    # "deltaY":F
    :pswitch_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mDelegateView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_3

    move v7, v8

    :goto_3
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mPanelShowing:Z

    .line 65
    iget-object v7, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mDownPoint:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    aput v10, v7, v9

    .line 66
    iget-object v7, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mDownPoint:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    aput v10, v7, v8

    .line 67
    iget-object v7, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mInitialTouch:Landroid/graphics/RectF;

    iget-object v10, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mDownPoint:[F

    aget v10, v10, v9

    add-float/2addr v10, v5

    iget-object v11, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mDownPoint:[F

    aget v11, v11, v8

    add-float/2addr v11, v6

    invoke-virtual {v7, v10, v11}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mStarted:Z

    goto :goto_1

    :cond_3
    move v7, v9

    .line 64
    goto :goto_3

    .line 95
    :cond_4
    if-eq v0, v8, :cond_5

    const/4 v7, 0x3

    if-ne v0, v7, :cond_2

    .line 96
    :cond_5
    iget-object v7, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v7, v12, v9}, Lcom/android/systemui/statusbar/BaseStatusBar;->setInteracting(IZ)V

    goto :goto_2

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setBar(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 0
    .param p1, "phoneStatusBar"    # Lcom/android/systemui/statusbar/BaseStatusBar;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    .line 50
    return-void
.end method

.method public setDelegateView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mDelegateView:Landroid/view/View;

    .line 46
    return-void
.end method

.method public setDisabled(Z)V
    .locals 0
    .param p1, "disabled"    # Z

    .prologue
    .line 151
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mDisabled:Z

    .line 152
    return-void
.end method

.method public varargs setInitialTouchRegion([Landroid/view/View;)V
    .locals 11
    .param p1, "views"    # [Landroid/view/View;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 127
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 128
    .local v0, "bounds":Landroid/graphics/RectF;
    const/4 v4, 0x2

    new-array v2, v4, [I

    .line 129
    .local v2, "p":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_2

    .line 130
    aget-object v3, p1, v1

    .line 131
    .local v3, "view":Landroid/view/View;
    if-nez v3, :cond_0

    .line 129
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    :cond_0
    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 133
    if-nez v1, :cond_1

    .line 134
    aget v4, v2, v9

    int-to-float v4, v4

    aget v5, v2, v10

    int-to-float v5, v5

    aget v6, v2, v9

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    aget v7, v2, v10

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_1

    .line 136
    :cond_1
    aget v4, v2, v9

    int-to-float v4, v4

    aget v5, v2, v10

    int-to-float v5, v5

    aget v6, v2, v9

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    aget v7, v2, v10

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/RectF;->union(FFFF)V

    goto :goto_1

    .line 139
    .end local v3    # "view":Landroid/view/View;
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mInitialTouch:Landroid/graphics/RectF;

    invoke-virtual {v4, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 140
    return-void
.end method

.method public setSourceView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mSourceView:Landroid/view/View;

    .line 113
    iget-object v1, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mSourceView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mSourceView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 115
    .local v0, "r":Landroid/content/res/Resources;
    const v1, 0x7f0a02c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mTriggerThreshhold:F

    .line 117
    .end local v0    # "r":Landroid/content/res/Resources;
    :cond_0
    return-void
.end method

.method public setSwapXY(Z)V
    .locals 0
    .param p1, "swap"    # Z

    .prologue
    .line 147
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mSwapXY:Z

    .line 148
    return-void
.end method
