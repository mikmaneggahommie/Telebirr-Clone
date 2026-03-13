.class public Lcom/android/systemui/recents/views/TaskView;
.super Landroid/widget/FrameLayout;
.source "TaskView.java"

# interfaces
.implements Lcom/android/systemui/recents/model/Task$TaskCallbacks;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Recents_TaskView"

.field static final sRecentsActivity:Ljava/lang/String; = "com.android.systemui.multiwindow.RecentsMultiWindowActivity"

.field static final sRecentsPackage:Ljava/lang/String; = "com.android.systemui"

.field static final sToggleRecentsAction:Ljava/lang/String; = "com.samsung.android.systemui.recents.SHOW_SPLIT"


# instance fields
.field lockButtonVisibility:I

.field mActionButtonTranslationZ:F

.field mActionButtonView:Landroid/view/View;

.field mActivityInfo:Landroid/content/pm/ActivityInfo;

.field mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

.field mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

.field mClipViewInStack:Z

.field mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

.field mContent:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field mDimAlpha:I

.field mDimAnimator:Landroid/animation/ObjectAnimator;

.field mDimColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field mDimInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field mDimLayerPaint:Landroid/graphics/Paint;

.field mFocusAnimationsEnabled:Z

.field mHandler:Landroid/os/Handler;

.field mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

.field mIsFocused:Z

.field mMaxDimScale:F

.field mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

.field mSavedDimAlpha:I

.field mTask:Lcom/android/systemui/recents/model/Task;

.field mTaskDataLoaded:Z

.field mTaskProgress:F

.field mTaskProgressAnimator:Landroid/animation/ObjectAnimator;

.field mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

.field mUpdateDimListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 155
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/views/TaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 156
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 159
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recents/views/TaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 160
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 163
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/views/TaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 164
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v3, 0x0

    .line 167
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 111
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mDimInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 112
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mDimColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 113
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mDimLayerPaint:Landroid/graphics/Paint;

    .line 138
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/recents/views/TaskView;->mSavedDimAlpha:I

    .line 139
    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAnimator:Landroid/animation/ObjectAnimator;

    .line 141
    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    .line 145
    new-instance v0, Lcom/android/systemui/recents/views/TaskView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/views/TaskView$1;-><init>(Lcom/android/systemui/recents/views/TaskView;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mUpdateDimListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 169
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

    .line 170
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

    const-string v1, "multiwindow_facade"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .line 171
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    .line 179
    invoke-static {}, Lcom/android/systemui/recents/RecentsConfiguration;->getInstance()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    .line 181
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackMaxDim:I

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/recents/views/TaskView;->mMaxDimScale:F

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mClipViewInStack:Z

    .line 183
    new-instance v0, Lcom/android/systemui/recents/views/AnimateableViewBounds;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewRoundedCornerRadiusPx:I

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/recents/views/AnimateableViewBounds;-><init>(Lcom/android/systemui/recents/views/TaskView;I)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    .line 184
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getTaskProgress()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setTaskProgress(F)V

    .line 185
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getDim()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setDim(I)V

    .line 186
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->fakeShadows:Z

    if-eqz v0, :cond_0

    .line 187
    new-instance v0, Lcom/android/systemui/recents/views/FakeShadowDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/views/FakeShadowDrawable;-><init>(Landroid/content/res/Resources;Lcom/android/systemui/recents/RecentsConfiguration;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 190
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recents/views/TaskView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/views/TaskView;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private handleOnLongClickTaskView(Landroid/view/View;Lcom/android/systemui/recents/views/TaskView;)Z
    .locals 13
    .param p1, "v"    # Landroid/view/View;
    .param p2, "tv"    # Lcom/android/systemui/recents/views/TaskView;

    .prologue
    const/4 v12, 0x4

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1361
    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportFreeStyleLaunch(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1455
    :goto_0
    return v8

    .line 1365
    :cond_0
    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v10, v10, Lcom/android/systemui/recents/RecentsConfiguration;->mIsMultiWindowSettingEnabled:Z

    if-nez v10, :cond_1

    .line 1366
    const-string v9, "Recents_TaskView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Do not execute long click: isMultiWindowEnabled = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v11, v11, Lcom/android/systemui/recents/RecentsConfiguration;->mIsMultiWindowSettingEnabled:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "isMobileKeyboardAttached"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v11, v11, Lcom/android/systemui/recents/RecentsConfiguration;->mIsMobileKeyboardAttached:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1386
    :cond_1
    invoke-virtual {p2}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v10

    iget-object v10, v10, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v7, v10, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    .line 1387
    .local v7, "taskId":I
    invoke-virtual {p2}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v10

    iget-object v10, v10, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v3, v10, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    .line 1388
    .local v3, "intent":Landroid/content/Intent;
    if-ltz v7, :cond_2

    if-nez v3, :cond_3

    .line 1389
    :cond_2
    const-string v9, "Recents_TaskView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "task has unvalid elements taskId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1393
    :cond_3
    invoke-virtual {p2}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v10

    iget-object v10, v10, Lcom/android/systemui/recents/model/Task;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {p0, v10}, Lcom/android/systemui/recents/views/TaskView;->isSupportPopupWindow(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 1394
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

    const v10, 0x103012b

    invoke-direct {v0, v8, v10}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1395
    .local v0, "context":Landroid/content/Context;
    const v8, 0x7f0b05fc

    invoke-static {v0, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    move v8, v9

    .line 1396
    goto :goto_0

    .line 1400
    .end local v0    # "context":Landroid/content/Context;
    :cond_4
    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskView;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v10, v7}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->isEnableMakePenWindow(I)Z

    move-result v10

    if-nez v10, :cond_5

    move v8, v9

    .line 1401
    goto/16 :goto_0

    .line 1404
    :cond_5
    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v10}, Lcom/android/systemui/recents/views/TaskViewHeader;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 1406
    .local v5, "parent":Landroid/view/ViewGroup;
    const-string v10, ""

    const-string v11, ""

    invoke-static {v10, v11}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    .line 1408
    .local v1, "data":Landroid/content/ClipData;
    if-nez v5, :cond_9

    .line 1409
    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v10, v12}, Lcom/android/systemui/recents/views/TaskViewHeader;->setVisibility(I)V

    .line 1410
    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v10, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1411
    new-instance v6, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v6, p1}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    .line 1417
    .local v6, "shadowBuilder":Landroid/view/View$DragShadowBuilder;
    :goto_1
    invoke-virtual {p1, v1, v6, p1, v8}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 1418
    invoke-virtual {p1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1419
    if-eqz v5, :cond_6

    .line 1420
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1421
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1424
    :cond_6
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1425
    .local v4, "mwIntent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportSimplificationUI(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1426
    const-string v8, "com.android.systemui"

    const-string v10, "com.android.systemui.multiwindow.centerbarwindow.CenterBarWindowService"

    invoke-virtual {v4, v8, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1430
    :goto_2
    const-string v8, "com.sec.android.action.RECENT_LONG_PRESS_LAUNCH"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1431
    const-string v8, "com.sec.android.multiwindow.extra.intent"

    invoke-virtual {v4, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1432
    const-string v8, "com.sec.android.multiwindow.extra.taskId"

    invoke-virtual {v4, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1433
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskView;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v8, :cond_7

    .line 1434
    const-string v8, "com.sec.android.multiwindow.extra.support_multiwindow"

    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskView;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskView;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v10, v11}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportMultiWindow(Landroid/content/pm/ActivityInfo;)Z

    move-result v10

    invoke-virtual {v4, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1436
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportSelective1Orientation(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-virtual {p2}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v8

    iget-object v8, v8, Lcom/android/systemui/recents/model/Task;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-eqz v8, :cond_b

    .line 1437
    const-string v8, "com.sec.android.multiwindow.extra.screenOrientation"

    invoke-virtual {p2}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v10

    iget-object v10, v10, Lcom/android/systemui/recents/model/Task;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getAppRequestOrientation()I

    move-result v10

    invoke-virtual {v4, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1439
    invoke-virtual {p2}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v8

    iget-object v8, v8, Lcom/android/systemui/recents/model/Task;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 1448
    :cond_7
    :goto_3
    :try_start_0
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

    sget-object v10, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v8, v4, v10}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1452
    :goto_4
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    if-eqz v8, :cond_8

    .line 1453
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    invoke-interface {v8}, Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;->dismiss()V

    :cond_8
    move v8, v9

    .line 1455
    goto/16 :goto_0

    .line 1413
    .end local v4    # "mwIntent":Landroid/content/Intent;
    .end local v6    # "shadowBuilder":Landroid/view/View$DragShadowBuilder;
    :cond_9
    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v5, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1414
    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1415
    new-instance v6, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v6, v5}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    .restart local v6    # "shadowBuilder":Landroid/view/View$DragShadowBuilder;
    goto/16 :goto_1

    .line 1428
    .restart local v4    # "mwIntent":Landroid/content/Intent;
    :cond_a
    const-string v8, "com.sec.android.app.FlashBarService"

    const-string v10, "com.sec.android.app.FlashBarService.MultiWindowTrayService"

    invoke-virtual {v4, v8, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 1441
    :cond_b
    const-string v8, "com.sec.android.multiwindow.extra.screenOrientation"

    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskView;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget v10, v10, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    invoke-virtual {v4, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1443
    invoke-virtual {p2}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v8

    iget-object v8, v8, Lcom/android/systemui/recents/model/Task;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto :goto_3

    .line 1449
    :catch_0
    move-exception v2

    .line 1450
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method private isFactoryMode()Z
    .locals 1

    .prologue
    .line 1470
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSupportPopupWindow(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z
    .locals 2
    .param p1, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    .line 1459
    if-eqz p1, :cond_0

    .line 1460
    const/high16 v0, 0x1000000

    invoke-virtual {p1, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1461
    const-string v0, "Recents_TaskView"

    const-string v1, "isSupportScaleApp OPTION_PENWINDOWABLE true"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    const/4 v0, 0x1

    .line 1466
    :goto_0
    return v0

    .line 1465
    :cond_0
    const-string v0, "Recents_TaskView"

    const-string v1, "isSupportScaleApp OPTION_PENWINDOWABLE false"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method animateDimToProgress(IILandroid/animation/Animator$AnimatorListener;)V
    .locals 5
    .param p1, "delay"    # I
    .param p2, "duration"    # I
    .param p3, "postAnimRunnable"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 974
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getDimFromTaskProgress()I

    move-result v1

    .line 975
    .local v1, "toDim":I
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getDim()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 976
    const-string v2, "dim"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v1, v3, v4

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 977
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 978
    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 979
    if-eqz p3, :cond_0

    .line 980
    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 982
    :cond_0
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 984
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_1
    return-void
.end method

.method public captureView()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getMeasuredHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 219
    .local v1, "saveBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 220
    .local v0, "canvas":Landroid/graphics/Canvas;
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    if-eqz v2, :cond_0

    .line 221
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v2, v0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->draw(Landroid/graphics/Canvas;)V

    .line 223
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->draw(Landroid/graphics/Canvas;)V

    .line 224
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    if-eqz v2, :cond_1

    .line 225
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v2, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->draw(Landroid/graphics/Canvas;)V

    .line 227
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 228
    invoke-virtual {v0}, Landroid/graphics/Canvas;->release()V

    .line 230
    return-object v1
.end method

.method public destroyHeaderView()V
    .locals 1

    .prologue
    .line 1476
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    if-eqz v0, :cond_0

    .line 1477
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->removeAllViewsInLayout()V

    .line 1479
    :cond_0
    return-void
.end method

.method public disableLayersForOneFrame()V
    .locals 1

    .prologue
    .line 1077
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->disableLayersForOneFrame()V

    .line 1078
    return-void
.end method

.method dismissTask()V
    .locals 3

    .prologue
    .line 886
    move-object v0, p0

    .line 887
    .local v0, "tv":Lcom/android/systemui/recents/views/TaskView;
    new-instance v1, Lcom/android/systemui/recents/views/TaskView$11;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/recents/views/TaskView$11;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskView;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/recents/views/TaskView;->startDeleteTaskAnimation(Ljava/lang/Runnable;I)V

    .line 898
    return-void
.end method

.method enableFocusAnimations()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1068
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mFocusAnimationsEnabled:Z

    .line 1069
    .local v0, "wasFocusAnimationsEnabled":Z
    iput-boolean v2, p0, Lcom/android/systemui/recents/views/TaskView;->mFocusAnimationsEnabled:Z

    .line 1070
    iget-boolean v1, p0, Lcom/android/systemui/recents/views/TaskView;->mIsFocused:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 1072
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v1, v2, v2}, Lcom/android/systemui/recents/views/TaskViewHeader;->onTaskViewFocusChanged(ZZ)V

    .line 1074
    :cond_0
    return-void
.end method

.method public fadeInActionButton(II)V
    .locals 4
    .param p1, "delay"    # I
    .param p2, "duration"    # I

    .prologue
    .line 627
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 630
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 635
    return-void
.end method

.method public getDim()I
    .locals 1

    .prologue
    .line 968
    iget v0, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAlpha:I

    return v0
.end method

.method getDimFromTaskProgress()I
    .locals 5

    .prologue
    .line 988
    iget v1, p0, Lcom/android/systemui/recents/views/TaskView;->mMaxDimScale:F

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mDimInterpolator:Landroid/view/animation/AccelerateInterpolator;

    const/high16 v3, 0x3f800000    # 1.0f

    iget v4, p0, Lcom/android/systemui/recents/views/TaskView;->mTaskProgress:F

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v2

    mul-float v0, v1, v2

    .line 989
    .local v0, "dim":F
    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1
.end method

.method getTask()Lcom/android/systemui/recents/model/Task;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    return-object v0
.end method

.method public getTaskProgress()F
    .locals 1

    .prologue
    .line 927
    iget v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTaskProgress:F

    return v0
.end method

.method getViewBounds()Lcom/android/systemui/recents/views/AnimateableViewBounds;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    return-object v0
.end method

.method public handleOnClickMultiWindowBtn(ILandroid/content/Intent;Ljava/lang/String;)V
    .locals 6
    .param p1, "taskId"    # I
    .param p2, "baseIntent"    # Landroid/content/Intent;
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1316
    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskView;->isFactoryMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1317
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

    const-string v3, "Factory mode cannot support multi window"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1320
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportSimplificationUI(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1321
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1322
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.sec.android.app.FlashBarService"

    const-string v3, "com.sec.android.app.FlashBarService.MultiWindowTrayService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1323
    const-string v2, "recentUI.multiwindow"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1324
    const-string v2, "recentUI.multiwindow.package"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1325
    const-string v2, "recentUI.multiwindow.taskId"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1327
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1358
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 1328
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 1329
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1332
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mHandler:Landroid/os/Handler;

    .line 1333
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/recents/views/TaskView$15;

    invoke-direct {v3, p0, p3}, Lcom/android/systemui/recents/views/TaskView$15;-><init>(Lcom/android/systemui/recents/views/TaskView;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public isFocusedTask()Z
    .locals 1

    .prologue
    .line 1063
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mIsFocused:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1187
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v6, v6, Lcom/android/systemui/recents/RecentsConfiguration;->isCloseProcessingBtnClicked:Z

    if-eqz v6, :cond_1

    .line 1188
    const-string v4, "Recents_TaskView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " onClick is blocked"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    :cond_0
    :goto_0
    return-void

    .line 1191
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v6, v6, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    if-eq p1, v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v6, v6, Lcom/android/systemui/recents/views/TaskViewHeader;->mMultiWindowButton:Landroid/widget/ImageView;

    if-eq p1, v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    if-ne p1, v6, :cond_3

    .line 1192
    :cond_2
    const-string v6, "Recents_TaskView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "add blocking for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v8, v8, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v8, v8, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " button"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean v4, v6, Lcom/android/systemui/recents/RecentsConfiguration;->isCloseProcessingBtnClicked:Z

    .line 1198
    :cond_3
    move-object v3, p0

    .line 1199
    .local v3, "tv":Lcom/android/systemui/recents/views/TaskView;
    if-eq p1, p0, :cond_4

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    if-eq p1, v6, :cond_4

    move v1, v4

    .line 1200
    .local v1, "delayViewClick":Z
    :goto_1
    if-eqz v1, :cond_5

    .line 1202
    new-instance v4, Lcom/android/systemui/recents/views/TaskView$12;

    invoke-direct {v4, p0, p1, v3}, Lcom/android/systemui/recents/views/TaskView$12;-><init>(Lcom/android/systemui/recents/views/TaskView;Landroid/view/View;Lcom/android/systemui/recents/views/TaskView;)V

    const-wide/16 v6, 0x7d

    invoke-virtual {p0, v4, v6, v7}, Lcom/android/systemui/recents/views/TaskView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .end local v1    # "delayViewClick":Z
    :cond_4
    move v1, v5

    .line 1199
    goto :goto_1

    .line 1250
    .restart local v1    # "delayViewClick":Z
    :cond_5
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    if-ne p1, v6, :cond_6

    .line 1252
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTranslationZ()F

    move-result v2

    .line 1256
    .local v2, "translationZ":F
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setTranslationZ(F)V

    .line 1260
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v6, v6, Lcom/android/systemui/recents/RecentsConfiguration;->mIsMultiWindowSettingEnabled:Z

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskView;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getRunningPenWindowCnt()I

    move-result v6

    if-lez v6, :cond_6

    .line 1262
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

    const v6, 0x10302d2

    invoke-direct {v0, v4, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 1264
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0b05f0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1265
    const v4, 0x104000a

    new-instance v6, Lcom/android/systemui/recents/views/TaskView$13;

    invoke-direct {v6, p0, v3, p1}, Lcom/android/systemui/recents/views/TaskView$13;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskView;Landroid/view/View;)V

    invoke-virtual {v0, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1276
    const/high16 v4, 0x1040000

    new-instance v6, Lcom/android/systemui/recents/views/TaskView$14;

    invoke-direct {v6, p0, v2}, Lcom/android/systemui/recents/views/TaskView$14;-><init>(Lcom/android/systemui/recents/views/TaskView;F)V

    invoke-virtual {v0, v4, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1283
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 1284
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean v5, v4, Lcom/android/systemui/recents/RecentsConfiguration;->isCloseProcessingBtnClicked:Z

    goto/16 :goto_0

    .line 1289
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "translationZ":F
    :cond_6
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    if-eqz v6, :cond_0

    .line 1290
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    if-ne p1, v8, :cond_7

    :goto_2
    invoke-interface {v6, v3, v7, v4, v5}, Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;->onTaskViewClicked(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;ZZ)V

    goto/16 :goto_0

    :cond_7
    move v4, v5

    goto :goto_2
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 237
    const v0, 0x7f0f028b

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mContent:Landroid/view/View;

    .line 238
    const v0, 0x7f0f028e

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/TaskViewHeader;

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    .line 239
    const v0, 0x7f0f028c

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    .line 240
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->updateClipToTaskBar(Landroid/view/View;)V

    .line 241
    const v0, 0x7f0f028d

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    .line 243
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setHoverPopupType(I)V

    .line 245
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/recents/views/TaskView$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/views/TaskView$2;-><init>(Lcom/android/systemui/recents/views/TaskView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 252
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationZ()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonTranslationZ:F

    .line 253
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1053
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1054
    if-nez p1, :cond_0

    .line 1055
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->unsetFocusedTask()V

    .line 1057
    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1299
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mApplicationIcon:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 1300
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    if-eqz v0, :cond_1

    .line 1301
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    invoke-interface {v0, p0}, Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;->onTaskViewAppInfoClicked(Lcom/android/systemui/recents/views/TaskView;)V

    .line 1302
    const/4 v0, 0x1

    .line 1311
    :goto_0
    return v0

    .line 1306
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->showOnlySplitTask()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1308
    invoke-direct {p0, p1, p0}, Lcom/android/systemui/recents/views/TaskView;->handleOnLongClickTaskView(Landroid/view/View;Lcom/android/systemui/recents/views/TaskView;)Z

    move-result v0

    goto :goto_0

    .line 1311
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v8, -0x80000000

    const/high16 v7, 0x40000000    # 2.0f

    .line 257
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 258
    .local v2, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 260
    .local v0, "height":I
    iget v4, p0, Lcom/android/systemui/recents/views/TaskView;->mPaddingLeft:I

    sub-int v4, v2, v4

    iget v5, p0, Lcom/android/systemui/recents/views/TaskView;->mPaddingRight:I

    sub-int v3, v4, v5

    .line 261
    .local v3, "widthWithoutPadding":I
    iget v4, p0, Lcom/android/systemui/recents/views/TaskView;->mPaddingTop:I

    sub-int v4, v0, v4

    iget v5, p0, Lcom/android/systemui/recents/views/TaskView;->mPaddingBottom:I

    sub-int v1, v4, v5

    .line 264
    .local v1, "heightWithoutPadding":I
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mContent:Landroid/view/View;

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    .line 268
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v6, v6, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarHeight:I

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/recents/views/TaskViewHeader;->measure(II)V

    .line 270
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    .line 274
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->measure(II)V

    .line 277
    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/recents/views/TaskView;->setMeasuredDimension(II)V

    .line 278
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->invalidateOutline()V

    .line 279
    return-void
.end method

.method public onMultiStackDebugTaskStackIdChanged()V
    .locals 2

    .prologue
    .line 1179
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->rebindToTask(Lcom/android/systemui/recents/model/Task;)V

    .line 1180
    return-void
.end method

.method public onTaskBound(Lcom/android/systemui/recents/model/Task;)V
    .locals 2
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 1084
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    .line 1085
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/model/Task;->setCallbacks(Lcom/android/systemui/recents/model/Task$TaskCallbacks;)V

    .line 1089
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task;->activityInfo:Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 1094
    iget-boolean v0, p1, Lcom/android/systemui/recents/model/Task;->lockToTaskEnabled:Z

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->lockToAppEnabled:Z

    if-eq v0, v1, :cond_0

    .line 1095
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->lockToAppEnabled:Z

    iput-boolean v0, p1, Lcom/android/systemui/recents/model/Task;->lockToTaskEnabled:Z

    .line 1100
    :cond_0
    iget-boolean v0, p1, Lcom/android/systemui/recents/model/Task;->lockToTaskEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/android/systemui/recents/model/Task;->lockToThisTask:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->showRecentOnMultiwindow()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const/16 v0, 0x8

    :goto_0
    iput v0, p0, Lcom/android/systemui/recents/views/TaskView;->lockButtonVisibility:I

    .line 1103
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/recents/views/TaskView;->lockButtonVisibility:I

    if-eq v0, v1, :cond_2

    .line 1104
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/recents/views/TaskView;->lockButtonVisibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1105
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->requestLayout()V

    .line 1109
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task;->activityLabel:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1119
    return-void

    .line 1100
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTaskDataLoaded()V
    .locals 3

    .prologue
    .line 1123
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    if-eqz v1, :cond_2

    .line 1125
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->rebindToTask(Lcom/android/systemui/recents/model/Task;)V

    .line 1126
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/TaskViewHeader;->rebindToTask(Lcom/android/systemui/recents/model/Task;)V

    .line 1128
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 1130
    .local v0, "am":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1131
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v1, v1, Lcom/android/systemui/recents/views/TaskViewHeader;->mApplicationIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1133
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v1, v1, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1134
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->multiStackEnabled:Z

    if-eqz v1, :cond_1

    .line 1135
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v1, v1, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1137
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1138
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v1, v1, Lcom/android/systemui/recents/views/TaskViewHeader;->mApplicationIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1142
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v1, v1, Lcom/android/systemui/recents/views/TaskViewHeader;->mMultiWindowButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1146
    .end local v0    # "am":Landroid/view/accessibility/AccessibilityManager;
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/recents/views/TaskView;->mTaskDataLoaded:Z

    .line 1148
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/systemui/recents/RecentsConfiguration;->isCloseProcessingBtnClicked:Z

    .line 1150
    return-void
.end method

.method public onTaskDataUnloaded()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1154
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    if-eqz v0, :cond_1

    .line 1156
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/Task;->setCallbacks(Lcom/android/systemui/recents/model/Task$TaskCallbacks;)V

    .line 1157
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->unbindFromTask()V

    .line 1158
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->unbindFromTask()V

    .line 1160
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mApplicationIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1161
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1162
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->multiStackEnabled:Z

    if-eqz v0, :cond_0

    .line 1163
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1165
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1166
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mApplicationIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1170
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMultiWindowButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1174
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTaskDataLoaded:Z

    .line 1175
    return-void
.end method

.method prepareEnterRecentsAnimation(ZZI)V
    .locals 7
    .param p1, "isTaskViewLaunchTargetTask"    # Z
    .param p2, "occludesLaunchTarget"    # Z
    .param p3, "offscreenY"    # I

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const v5, 0x3f333333    # 0.7f

    const/4 v4, 0x0

    .line 347
    const-string v2, "Recents_TaskView"

    const-string v3, "prepareEnterRecentsAnimation()"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getDim()I

    move-result v0

    .line 349
    .local v0, "initialDim":I
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->launchedHasConfigurationChanged:Z

    if-eqz v2, :cond_2

    .line 411
    :cond_0
    :goto_0
    sget-boolean v2, Lcom/android/systemui/recents/Constants$Features;->EnableSecondViewExpanded:Z

    if-nez v2, :cond_1

    .line 414
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setDim(I)V

    .line 417
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v2, p1}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->prepareEnterRecentsAnimation(Z)V

    .line 418
    return-void

    .line 351
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromAppWithThumbnail:Z

    if-eqz v2, :cond_5

    .line 352
    if-eqz p1, :cond_3

    .line 354
    const/4 v0, 0x0

    .line 356
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 357
    :cond_3
    if-eqz p2, :cond_4

    .line 364
    int-to-float v2, p3

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskView;->setTranslationY(F)V

    goto :goto_0

    .line 367
    :cond_4
    sget-boolean v2, Lcom/android/systemui/recents/Constants$Features;->EnableSecondViewExpanded:Z

    if-eqz v2, :cond_0

    .line 368
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 369
    .local v1, "screenSize":Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 370
    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskView;->setScaleX(F)V

    .line 376
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getLocationOnScreen()[I

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskView;->setTranslationY(F)V

    .line 378
    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/views/TaskView;->setAlpha(F)V

    goto :goto_0

    .line 382
    .end local v1    # "screenSize":Landroid/graphics/Point;
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromHome:Z

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromMultiWindowRecent:Z

    if-eqz v2, :cond_0

    .line 384
    :cond_6
    sget-boolean v2, Lcom/android/systemui/recents/Constants$Features;->EnableSpreadAnimFromHome:Z

    if-eqz v2, :cond_7

    .line 385
    invoke-virtual {p0, v5}, Lcom/android/systemui/recents/views/TaskView;->setScaleX(F)V

    .line 386
    invoke-virtual {p0, v5}, Lcom/android/systemui/recents/views/TaskView;->setScaleY(F)V

    .line 392
    const/high16 v2, 0x42480000    # 50.0f

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskView;->setTranslationY(F)V

    .line 394
    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/views/TaskView;->setAlpha(F)V

    goto :goto_0

    .line 403
    :cond_7
    int-to-float v2, p3

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskView;->setTranslationY(F)V

    .line 405
    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/views/TaskView;->setTranslationZ(F)V

    .line 406
    invoke-virtual {p0, v6}, Lcom/android/systemui/recents/views/TaskView;->setScaleX(F)V

    .line 407
    invoke-virtual {p0, v6}, Lcom/android/systemui/recents/views/TaskView;->setScaleY(F)V

    goto :goto_0
.end method

.method prepareTaskTransformForFilterTaskHidden(Lcom/android/systemui/recents/views/TaskViewTransform;)V
    .locals 2
    .param p1, "toTransform"    # Lcom/android/systemui/recents/views/TaskViewTransform;

    .prologue
    const/4 v1, 0x0

    .line 326
    iput v1, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    .line 328
    iget v0, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->translationX:I

    add-int/lit16 v0, v0, 0xc8

    iput v0, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->translationX:I

    .line 330
    iget v0, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->translationY:I

    add-int/lit16 v0, v0, 0xc8

    iput v0, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->translationY:I

    .line 331
    iput v1, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    .line 332
    return-void
.end method

.method prepareTaskTransformForFilterTaskVisible(Lcom/android/systemui/recents/views/TaskViewTransform;)V
    .locals 1
    .param p1, "fromTransform"    # Lcom/android/systemui/recents/views/TaskViewTransform;

    .prologue
    .line 340
    const/4 v0, 0x0

    iput v0, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    .line 341
    return-void
.end method

.method reset()V
    .locals 1

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->resetViewProperties()V

    .line 200
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->resetNoUserInteractionState()V

    .line 201
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 202
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setCallbacks(Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;)V

    .line 203
    return-void
.end method

.method resetNoUserInteractionState()V
    .locals 1

    .prologue
    .line 880
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->resetNoUserInteractionState()V

    .line 881
    return-void
.end method

.method resetViewProperties()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 308
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setDim(I)V

    .line 309
    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/recents/views/TaskView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 310
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 311
    invoke-static {p0}, Lcom/android/systemui/recents/views/TaskViewTransform;->reset(Landroid/view/View;)V

    .line 312
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 314
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 315
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 316
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonTranslationZ:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationZ(F)V

    .line 318
    :cond_0
    return-void
.end method

.method setCallbacks(Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    .line 195
    return-void
.end method

.method setClipViewInStack(Z)V
    .locals 1
    .param p1, "clip"    # Z

    .prologue
    .line 910
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mClipViewInStack:Z

    if-eq p1, v0, :cond_0

    .line 911
    iput-boolean p1, p0, Lcom/android/systemui/recents/views/TaskView;->mClipViewInStack:Z

    .line 912
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    if-eqz v0, :cond_0

    .line 913
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    invoke-interface {v0, p0}, Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;->onTaskViewClipStateChanged(Lcom/android/systemui/recents/views/TaskView;)V

    .line 916
    :cond_0
    return-void
.end method

.method public setDim(I)V
    .locals 7
    .param p1, "dim"    # I

    .prologue
    const/high16 v6, 0x42c80000    # 100.0f

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 932
    iput p1, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAlpha:I

    .line 933
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->useHardwareLayers:Z

    if-eqz v3, :cond_1

    .line 935
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getMeasuredWidth()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getMeasuredHeight()I

    move-result v3

    if-lez v3, :cond_0

    .line 936
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mDimColorFilter:Landroid/graphics/PorterDuffColorFilter;

    iget v4, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAlpha:I

    invoke-static {v4, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/PorterDuffColorFilter;->setColor(I)V

    .line 937
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mDimLayerPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mDimColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 938
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mContent:Landroid/view/View;

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskView;->mDimLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 964
    :cond_0
    :goto_0
    return-void

    .line 942
    :cond_1
    sget-boolean v3, Lcom/android/systemui/recents/Constants$Features;->EnableSecondViewExpanded:Z

    if-eqz v3, :cond_5

    .line 943
    const/high16 v0, 0x3f800000    # 1.0f

    .line 944
    .local v0, "alpha":F
    const/16 v3, 0x64

    if-le p1, v3, :cond_3

    .line 945
    iget v3, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAlpha:I

    int-to-float v3, v3

    sub-float/2addr v3, v6

    const/high16 v5, 0x43630000    # 227.0f

    div-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 946
    .local v2, "value":F
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->isLandscape:Z

    if-eqz v3, :cond_2

    .line 947
    iget v3, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAlpha:I

    int-to-float v3, v3

    sub-float/2addr v3, v6

    const/high16 v5, 0x42f00000    # 120.0f

    div-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 949
    :cond_2
    cmpg-float v3, v2, v4

    if-gez v3, :cond_4

    const v3, 0x3f8ccccd    # 1.1f

    div-float v3, v2, v3

    :goto_1
    sub-float v0, v4, v3

    .line 951
    .end local v2    # "value":F
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setAlpha(F)V

    goto :goto_0

    .restart local v2    # "value":F
    :cond_4
    move v3, v4

    .line 949
    goto :goto_1

    .line 954
    .end local v0    # "alpha":F
    .end local v2    # "value":F
    :cond_5
    iget v3, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAlpha:I

    int-to-float v3, v3

    const/high16 v4, 0x437f0000    # 255.0f

    div-float v1, v3, v4

    .line 955
    .local v1, "dimAlpha":F
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    if-eqz v3, :cond_6

    .line 956
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v3, v1}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->setDimAlpha(F)V

    .line 958
    :cond_6
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->doNotDrawTaskViewHeader:Z

    if-nez v3, :cond_0

    .line 960
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v3, p1}, Lcom/android/systemui/recents/views/TaskViewHeader;->setDimAlpha(I)V

    goto :goto_0
.end method

.method public setFocusedTask(Z)V
    .locals 2
    .param p1, "animateFocusedState"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1005
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mIsFocused:Z

    if-nez v0, :cond_2

    .line 1006
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mFocusAnimationsEnabled:Z

    if-eqz v0, :cond_0

    .line 1008
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/recents/views/TaskViewHeader;->onTaskViewFocusChanged(ZZ)V

    .line 1011
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->onFocusChanged(Z)V

    .line 1013
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    if-eqz v0, :cond_1

    .line 1014
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;->onTaskViewFocusChanged(Lcom/android/systemui/recents/views/TaskView;Z)V

    .line 1021
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskView;->setFocusableInTouchMode(Z)V

    .line 1022
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->requestFocus()Z

    .line 1023
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setFocusableInTouchMode(Z)V

    .line 1024
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->invalidate()V

    .line 1025
    iput-boolean v1, p0, Lcom/android/systemui/recents/views/TaskView;->mIsFocused:Z

    .line 1027
    :cond_2
    return-void
.end method

.method setLongTouchEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 843
    if-eqz p1, :cond_0

    move-object v0, p0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 844
    return-void

    .line 843
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setNoUserInteractionState()V
    .locals 2

    .prologue
    .line 865
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->setNoUserInteractionState()V

    .line 868
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportRecentUI(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 869
    const/4 v0, 0x0

    .line 870
    .local v0, "showMultiwindowButton":Z
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v1, v1, Lcom/android/systemui/recents/model/Task;->isMultiWindowVisible:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->mIsMultiWindowSettingEnabled:Z

    if-eqz v1, :cond_0

    .line 871
    const/4 v0, 0x1

    .line 873
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->setNoUserInteractionStateForMultiWindow(Z)V

    .line 876
    .end local v0    # "showMultiwindowButton":Z
    :cond_1
    return-void
.end method

.method public setTaskProgress(F)V
    .locals 1
    .param p1, "p"    # F

    .prologue
    .line 920
    iput p1, p0, Lcom/android/systemui/recents/views/TaskView;->mTaskProgress:F

    .line 921
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->setAlpha(F)V

    .line 922
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->updateDimFromTaskProgress()V

    .line 923
    return-void
.end method

.method setTouchEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 836
    if-eqz p1, :cond_0

    move-object v0, p0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 837
    return-void

    .line 836
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method shouldClipViewInStack()Z
    .locals 1

    .prologue
    .line 905
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mClipViewInStack:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method startCloseAllAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewCloseAllContext;)V
    .locals 4
    .param p1, "ctx"    # Lcom/android/systemui/recents/views/ViewAnimation$TaskViewCloseAllContext;

    .prologue
    .line 706
    const-string v0, "Recents_TaskView"

    const-string v1, "startCloseAllAnimation is called"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewCloseAllContext;->offscreenTranslation:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 714
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewCloseAllContext;->startOffset:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/views/TaskView$9;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/recents/views/TaskView$9;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/ViewAnimation$TaskViewCloseAllContext;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->pathInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewCloseAllDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewCloseAllContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrementAsRunnable()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 743
    iget-object v0, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewCloseAllContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 744
    return-void
.end method

.method startDeleteTaskAnimation(Ljava/lang/Runnable;I)V
    .locals 4
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "delay"    # I

    .prologue
    .line 806
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->hasTransientState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 807
    const-string v0, "Recents_TaskView"

    const-string v1, "DeleteTaskAnimation has already begun."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    :goto_0
    return-void

    .line 812
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 814
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewRemoveAnimTranslationXPx:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->fastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewRemoveAnimDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/views/TaskView$10;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/recents/views/TaskView$10;-><init>(Lcom/android/systemui/recents/views/TaskView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method startDismissAllAnimation()V
    .locals 0

    .prologue
    .line 749
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->dismissTask()V

    .line 750
    return-void
.end method

.method startEnterRecentsAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;)V
    .locals 11
    .param p1, "ctx"    # Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;

    .prologue
    const/high16 v10, 0x42c80000    # 100.0f

    const/high16 v7, 0x3f800000    # 1.0f

    .line 422
    const-string v6, "Recents_TaskView"

    const-string v8, "startEnterRecentsAnimation()"

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v4, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->currentTaskTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 424
    .local v4, "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    const/4 v3, 0x0

    .line 427
    .local v3, "startDelay":I
    const/high16 v0, 0x3f800000    # 1.0f

    .line 428
    .local v0, "alpha":F
    sget-boolean v6, Lcom/android/systemui/recents/Constants$Features;->EnableSpreadAnimFromHome:Z

    if-nez v6, :cond_0

    sget-boolean v6, Lcom/android/systemui/recents/Constants$Features;->EnableEnterAnimFromApp:Z

    if-eqz v6, :cond_2

    .line 429
    :cond_0
    iget v6, p0, Lcom/android/systemui/recents/views/TaskView;->mMaxDimScale:F

    const/high16 v8, 0x437f0000    # 255.0f

    mul-float/2addr v6, v8

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskView;->mDimInterpolator:Landroid/view/animation/AccelerateInterpolator;

    iget-object v9, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->currentTaskTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget v9, v9, Lcom/android/systemui/recents/views/TaskViewTransform;->p:F

    sub-float v9, v7, v9

    invoke-virtual {v8, v9}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v8

    mul-float v0, v6, v8

    .line 431
    cmpl-float v6, v0, v10

    if-lez v6, :cond_6

    .line 432
    sub-float v6, v0, v10

    const/high16 v8, 0x43630000    # 227.0f

    div-float/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 433
    .local v5, "value":F
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v6, v6, Lcom/android/systemui/recents/RecentsConfiguration;->isLandscape:Z

    if-eqz v6, :cond_1

    .line 434
    sub-float v6, v0, v10

    const/high16 v8, 0x42f00000    # 120.0f

    div-float/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 436
    :cond_1
    cmpg-float v6, v5, v7

    if-gez v6, :cond_5

    const v6, 0x3f8ccccd    # 1.1f

    div-float v6, v5, v6

    :goto_0
    sub-float v0, v7, v6

    .line 443
    .end local v5    # "value":F
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v6, v6, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromAppWithThumbnail:Z

    if-eqz v6, :cond_9

    .line 444
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v6, v6, Lcom/android/systemui/recents/model/Task;->isLaunchTarget:Z

    if-eqz v6, :cond_7

    .line 459
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v6, v6, Lcom/android/systemui/recents/RecentsConfiguration;->transitionEnterFromAppDelay:I

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v8, v8, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewEnterFromAppDuration:I

    iget-object v9, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v9}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrementOnAnimationEnd()Landroid/animation/Animator$AnimatorListener;

    move-result-object v9

    invoke-virtual {p0, v6, v8, v9}, Lcom/android/systemui/recents/views/TaskView;->animateDimToProgress(IILandroid/animation/Animator$AnimatorListener;)V

    .line 463
    iget-object v6, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v6}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 466
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v6, v6, Lcom/android/systemui/recents/RecentsConfiguration;->transitionEnterFromAppDelay:I

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v8, v8, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewEnterFromAppDuration:I

    invoke-virtual {p0, v6, v8}, Lcom/android/systemui/recents/views/TaskView;->fadeInActionButton(II)V

    .line 472
    sget-boolean v6, Lcom/android/systemui/recents/Constants$Features;->EnableEnterAnimFromApp:Z

    if-eqz v6, :cond_3

    .line 473
    const/4 v6, 0x0

    invoke-virtual {p0, v4, v6}, Lcom/android/systemui/recents/views/TaskView;->updateViewPropertiesToTaskTransform(Lcom/android/systemui/recents/views/TaskViewTransform;I)V

    .line 479
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    iget v8, v4, Lcom/android/systemui/recents/views/TaskViewTransform;->translationY:I

    int-to-float v8, v8

    invoke-virtual {v6, v8}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 481
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    iget v8, v4, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    invoke-virtual {v6, v8}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    iget v8, v4, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    invoke-virtual {v6, v8}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v7, Lcom/android/systemui/recents/views/TaskView$4;

    invoke-direct {v7, p0, p1}, Lcom/android/systemui/recents/views/TaskView$4;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;)V

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 559
    :cond_3
    :goto_2
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v3, v6, Lcom/android/systemui/recents/RecentsConfiguration;->transitionEnterFromAppDelay:I

    .line 617
    :cond_4
    :goto_3
    new-instance v6, Lcom/android/systemui/recents/views/TaskView$8;

    invoke-direct {v6, p0}, Lcom/android/systemui/recents/views/TaskView$8;-><init>(Lcom/android/systemui/recents/views/TaskView;)V

    int-to-long v8, v3

    invoke-virtual {p0, v6, v8, v9}, Lcom/android/systemui/recents/views/TaskView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 623
    return-void

    .restart local v5    # "value":F
    :cond_5
    move v6, v7

    .line 436
    goto :goto_0

    .line 438
    .end local v5    # "value":F
    :cond_6
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    .line 497
    :cond_7
    iget-boolean v6, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->currentTaskOccludesLaunchTarget:Z

    if-eqz v6, :cond_8

    .line 503
    iget v6, v4, Lcom/android/systemui/recents/views/TaskViewTransform;->translationY:I

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v8, v8, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewAffiliateGroupEnterOffsetPx:I

    add-int/2addr v6, v8

    int-to-float v6, v6

    invoke-virtual {p0, v6}, Lcom/android/systemui/recents/views/TaskView;->setTranslationY(F)V

    .line 505
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/systemui/recents/views/TaskView;->setAlpha(F)V

    .line 511
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    iget v8, v4, Lcom/android/systemui/recents/views/TaskViewTransform;->translationY:I

    int-to-float v8, v8

    invoke-virtual {v6, v8}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 513
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v7, v7, Lcom/android/systemui/recents/RecentsConfiguration;->transitionEnterFromAppDelay:I

    int-to-long v8, v7

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v7, v7, Lcom/android/systemui/recents/RecentsConfiguration;->fastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v7, v7, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewEnterFromHomeDuration:I

    int-to-long v8, v7

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v7, Lcom/android/systemui/recents/views/TaskView$5;

    invoke-direct {v7, p0, p1}, Lcom/android/systemui/recents/views/TaskView$5;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;)V

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 529
    iget-object v6, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v6}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    goto :goto_2

    .line 531
    :cond_8
    sget-boolean v6, Lcom/android/systemui/recents/Constants$Features;->EnableEnterAnimFromApp:Z

    if-eqz v6, :cond_3

    .line 537
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    iget v7, v4, Lcom/android/systemui/recents/views/TaskViewTransform;->translationY:I

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 539
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    iget v7, v4, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    iget v7, v4, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    iget-object v7, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->updateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v7, v7, Lcom/android/systemui/recents/RecentsConfiguration;->sineInOut90Interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v7, v7, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewEnterFromAppDuration:I

    int-to-long v8, v7

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v7, Lcom/android/systemui/recents/views/TaskView$6;

    invoke-direct {v7, p0, p1}, Lcom/android/systemui/recents/views/TaskView$6;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;)V

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 555
    iget-object v6, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v6}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    goto/16 :goto_2

    .line 561
    :cond_9
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v6, v6, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromHome:Z

    if-nez v6, :cond_a

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v6, v6, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromMultiWindowRecent:Z

    if-eqz v6, :cond_4

    .line 563
    :cond_a
    iget v6, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->currentStackViewCount:I

    iget v7, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->currentStackViewIndex:I

    sub-int/2addr v6, v7

    add-int/lit8 v2, v6, -0x1

    .line 564
    .local v2, "frontIndex":I
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v6, v6, Lcom/android/systemui/recents/RecentsConfiguration;->transitionEnterFromHomeDelay:I

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v7, v7, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewEnterFromHomeStaggerDelay:I

    mul-int/2addr v7, v2

    add-int v1, v6, v7

    .line 568
    .local v1, "delay":I
    sget-boolean v6, Lcom/android/systemui/recents/Constants$Features;->EnableSpreadAnimFromHome:Z

    if-nez v6, :cond_b

    .line 570
    iget v6, v4, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    invoke-virtual {p0, v6}, Lcom/android/systemui/recents/views/TaskView;->setScaleX(F)V

    .line 571
    iget v6, v4, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    invoke-virtual {p0, v6}, Lcom/android/systemui/recents/views/TaskView;->setScaleY(F)V

    .line 573
    :cond_b
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v6, v6, Lcom/android/systemui/recents/RecentsConfiguration;->fakeShadows:Z

    if-nez v6, :cond_c

    .line 574
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    iget v7, v4, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    .line 581
    :cond_c
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    iget v7, v4, Lcom/android/systemui/recents/views/TaskViewTransform;->translationY:I

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 584
    sget-boolean v6, Lcom/android/systemui/recents/Constants$Features;->EnableSpreadAnimFromHome:Z

    if-eqz v6, :cond_d

    .line 585
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    iget v7, v4, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    iget v7, v4, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v7, v7, Lcom/android/systemui/recents/RecentsConfiguration;->sineOut80Interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 594
    :goto_4
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    int-to-long v8, v1

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    iget-object v7, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->updateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v7, v7, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewEnterFromHomeDuration:I

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v8, v8, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewEnterFromHomeStaggerDelay:I

    mul-int/2addr v8, v2

    add-int/2addr v7, v8

    int-to-long v8, v7

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v7, Lcom/android/systemui/recents/views/TaskView$7;

    invoke-direct {v7, p0, p1}, Lcom/android/systemui/recents/views/TaskView$7;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;)V

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 611
    iget-object v6, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v6}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 612
    move v3, v1

    goto/16 :goto_3

    .line 592
    :cond_d
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v7, v7, Lcom/android/systemui/recents/RecentsConfiguration;->quintOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    goto :goto_4
.end method

.method startExitToHomeAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;)V
    .locals 4
    .param p1, "ctx"    # Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;

    .prologue
    const v2, 0x3f333333    # 0.7f

    .line 645
    sget-boolean v0, Lcom/android/systemui/recents/Constants$Features;->EnableGatheredAnimToHome:Z

    if-eqz v0, :cond_0

    .line 646
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->sineInOut90Interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;->updateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x42480000    # 50.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 660
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewExitToHomeDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrementAsRunnable()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 672
    iget-object v0, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 673
    return-void

    .line 655
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;->offscreenTranslation:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->fastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method startExitToPreviousAppAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;)V
    .locals 4
    .param p1, "ctx"    # Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;

    .prologue
    .line 677
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 678
    .local v0, "screenSize":Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 679
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getLocationOnScreen()[I

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->sineInOut90Interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewExitToAppDuration:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 687
    return-void
.end method

.method startExitToPreviousTopMostAppAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;)V
    .locals 4
    .param p1, "ctx"    # Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;

    .prologue
    .line 690
    const-string v1, "Recents_TaskView"

    const-string v2, "startExitToPreviousTopMostAppAnimation"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 692
    .local v0, "screenSize":Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 693
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->sineInOut90Interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewExitToAppDuration:I

    div-int/lit8 v2, v2, 0xa

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 700
    return-void
.end method

.method startLaunchTaskAnimation(Ljava/lang/Runnable;ZZZ)V
    .locals 8
    .param p1, "postAnimRunnable"    # Ljava/lang/Runnable;
    .param p2, "isLaunchingTask"    # Z
    .param p3, "occludesLaunchTarget"    # Z
    .param p4, "lockToTask"    # Z

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 755
    if-eqz p2, :cond_3

    .line 757
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v2, p1}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->startLaunchTaskAnimation(Ljava/lang/Runnable;)V

    .line 760
    iget v2, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAlpha:I

    if-lez v2, :cond_0

    .line 761
    const-string v2, "dim"

    const/4 v3, 0x1

    new-array v3, v3, [I

    aput v5, v3, v5

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 762
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewExitToAppDuration:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 763
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->fastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 764
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 768
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_0
    if-nez p4, :cond_1

    .line 769
    const v1, 0x3f666666    # 0.9f

    .line 770
    .local v1, "toScale":F
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 774
    .end local v1    # "toScale":F
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewExitToAppDuration:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->fastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 802
    :cond_2
    :goto_0
    return-void

    .line 782
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskViewHeader;->startLaunchTaskDismissAnimation()V

    .line 785
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v2, v2, Lcom/android/systemui/recents/model/Task;->isMultiWindowVisible:Z

    if-eqz v2, :cond_4

    .line 786
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskViewHeader;->startLaunchMultiWindowAnimation()V

    .line 792
    :cond_4
    if-eqz p3, :cond_2

    .line 793
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getTranslationY()F

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewAffiliateGroupEnterOffsetPx:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->fastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewExitToAppDuration:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method startNoUserInteractionAnimation()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 849
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskViewHeader;->startNoUserInteractionAnimation()V

    .line 850
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "easy_mode_switch"

    const/4 v4, -0x2

    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-nez v2, :cond_2

    .line 853
    .local v0, "isEasyModeEnabled":Z
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportRecentUI(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 854
    const/4 v1, 0x0

    .line 855
    .local v1, "showMultiwindowButton":Z
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v2, v2, Lcom/android/systemui/recents/model/Task;->isMultiWindowVisible:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->mIsMultiWindowSettingEnabled:Z

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    .line 856
    const/4 v1, 0x1

    .line 858
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v2, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->startNoUserInteractionAnimationForMultiWindow(Z)V

    .line 861
    .end local v1    # "showMultiwindowButton":Z
    :cond_1
    return-void

    .line 850
    .end local v0    # "isEasyModeEnabled":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method unsetFocusedTask()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1033
    iput-boolean v2, p0, Lcom/android/systemui/recents/views/TaskView;->mIsFocused:Z

    .line 1034
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mFocusAnimationsEnabled:Z

    if-eqz v0, :cond_0

    .line 1036
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->onTaskViewFocusChanged(ZZ)V

    .line 1040
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->onFocusChanged(Z)V

    .line 1042
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    if-eqz v0, :cond_1

    .line 1043
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    invoke-interface {v0, p0, v2}, Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;->onTaskViewFocusChanged(Lcom/android/systemui/recents/views/TaskView;Z)V

    .line 1045
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->invalidate()V

    .line 1046
    return-void
.end method

.method updateDimFromTaskProgress()V
    .locals 1

    .prologue
    .line 994
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getDimFromTaskProgress()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setDim(I)V

    .line 995
    return-void
.end method

.method updateViewPropertiesToTaskTransform(Lcom/android/systemui/recents/views/TaskViewTransform;I)V
    .locals 1
    .param p1, "toTransform"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p2, "duration"    # I

    .prologue
    .line 283
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/recents/views/TaskView;->updateViewPropertiesToTaskTransform(Lcom/android/systemui/recents/views/TaskViewTransform;ILandroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 284
    return-void
.end method

.method updateViewPropertiesToTaskTransform(Lcom/android/systemui/recents/views/TaskViewTransform;ILandroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 10
    .param p1, "toTransform"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p2, "duration"    # I
    .param p3, "updateCallback"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 289
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsConfiguration;->fastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->fakeShadows:Z

    if-nez v0, :cond_0

    move v5, v9

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->showOnlySplitTask()Z

    move-result v7

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v8, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isLandscape:Z

    move-object v0, p1

    move-object v1, p0

    move v2, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v8}, Lcom/android/systemui/recents/views/TaskViewTransform;->applyToTaskView(Landroid/view/View;ILandroid/view/animation/Interpolator;ZZLandroid/animation/ValueAnimator$AnimatorUpdateListener;ZZ)V

    .line 295
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTaskProgressAnimator:Landroid/animation/ObjectAnimator;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/Utilities;->cancelAnimationWithoutCallbacks(Landroid/animation/Animator;)V

    .line 296
    if-gtz p2, :cond_1

    .line 297
    iget v0, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->p:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setTaskProgress(F)V

    .line 304
    :goto_1
    return-void

    :cond_0
    move v5, v4

    .line 289
    goto :goto_0

    .line 299
    :cond_1
    const-string v0, "taskProgress"

    new-array v1, v9, [F

    iget v2, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->p:F

    aput v2, v1, v4

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTaskProgressAnimator:Landroid/animation/ObjectAnimator;

    .line 300
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTaskProgressAnimator:Landroid/animation/ObjectAnimator;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 301
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTaskProgressAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mUpdateDimListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 302
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTaskProgressAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1
.end method
