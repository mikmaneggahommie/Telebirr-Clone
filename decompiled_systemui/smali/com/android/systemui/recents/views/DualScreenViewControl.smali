.class public Lcom/android/systemui/recents/views/DualScreenViewControl;
.super Ljava/lang/Object;
.source "DualScreenViewControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;
    }
.end annotation


# static fields
.field public static final ALPHA_PROPERTY:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty",
            "<",
            "Lcom/android/systemui/recents/views/TaskView;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEBUG:Z

.field public static final DEBUG_VIEW_MOVEMENT:Z = false

.field public static final DIM_AMOUNT:I = 0x4c

.field public static final DIM_DURATION:I = 0x14a

.field public static final DIM_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/systemui/recents/views/TaskView;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAIN_RECENTS_DISPLAY:I = 0x0

.field public static final SUB_RECENTS_DISPLAY:I = 0x1

.field public static final SWAP_DURATION:I = 0x1a0

.field public static final SWAP_POSITION:I = 0x21c

.field public static final TAG:Ljava/lang/String; = "DualScreenViewControl"

.field public static final TRANSLATION_X:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final TRANSLATION_Y:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static mLaunchRunnable:Ljava/lang/Runnable;

.field private static final mLock:Ljava/lang/Object;

.field private static sInstance:Lcom/android/systemui/recents/views/DualScreenViewControl;


# instance fields
.field private mInfos:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 40
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/systemui/recents/views/DualScreenViewControl;->DEBUG:Z

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/views/DualScreenViewControl;->mLock:Ljava/lang/Object;

    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/recents/views/DualScreenViewControl;->mLaunchRunnable:Ljava/lang/Runnable;

    .line 59
    new-instance v0, Lcom/android/systemui/recents/views/DualScreenViewControl$1;

    const-string v1, "dim"

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/views/DualScreenViewControl$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/recents/views/DualScreenViewControl;->DIM_PROPERTY:Landroid/util/Property;

    .line 212
    new-instance v0, Lcom/android/systemui/recents/views/DualScreenViewControl$2;

    const-string v1, "translation"

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/views/DualScreenViewControl$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/recents/views/DualScreenViewControl;->TRANSLATION_X:Landroid/util/Property;

    .line 225
    new-instance v0, Lcom/android/systemui/recents/views/DualScreenViewControl$3;

    const-string v1, "translation"

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/views/DualScreenViewControl$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/recents/views/DualScreenViewControl;->TRANSLATION_Y:Landroid/util/Property;

    .line 238
    new-instance v0, Lcom/android/systemui/recents/views/DualScreenViewControl$4;

    const-string v1, "alpha"

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/views/DualScreenViewControl$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/recents/views/DualScreenViewControl;->ALPHA_PROPERTY:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/DualScreenViewControl;->mInfos:Landroid/util/SparseArray;

    .line 71
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/android/systemui/recents/views/DualScreenViewControl;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/recents/views/DualScreenViewControl;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/views/DualScreenViewControl;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/recents/views/DualScreenViewControl;->mInfos:Landroid/util/SparseArray;

    return-object v0
.end method

.method public static getInstance()Lcom/android/systemui/recents/views/DualScreenViewControl;
    .locals 2

    .prologue
    .line 91
    sget-object v1, Lcom/android/systemui/recents/views/DualScreenViewControl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 92
    :try_start_0
    sget-object v0, Lcom/android/systemui/recents/views/DualScreenViewControl;->sInstance:Lcom/android/systemui/recents/views/DualScreenViewControl;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lcom/android/systemui/recents/views/DualScreenViewControl;

    invoke-direct {v0}, Lcom/android/systemui/recents/views/DualScreenViewControl;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/views/DualScreenViewControl;->sInstance:Lcom/android/systemui/recents/views/DualScreenViewControl;

    .line 95
    :cond_0
    sget-object v0, Lcom/android/systemui/recents/views/DualScreenViewControl;->sInstance:Lcom/android/systemui/recents/views/DualScreenViewControl;

    monitor-exit v1

    return-object v0

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static launchTask()V
    .locals 3

    .prologue
    .line 281
    sget-object v2, Lcom/android/systemui/recents/views/DualScreenViewControl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 282
    :try_start_0
    sget-object v1, Lcom/android/systemui/recents/views/DualScreenViewControl;->mLaunchRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 283
    sget-object v0, Lcom/android/systemui/recents/views/DualScreenViewControl;->mLaunchRunnable:Ljava/lang/Runnable;

    .line 284
    .local v0, "launch":Ljava/lang/Runnable;
    const/4 v1, 0x0

    sput-object v1, Lcom/android/systemui/recents/views/DualScreenViewControl;->mLaunchRunnable:Ljava/lang/Runnable;

    .line 285
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 287
    :cond_0
    monitor-exit v2

    .line 288
    return-void

    .line 287
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private makeLaunchRunnable(IIZLjava/lang/String;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Ljava/lang/Runnable;
    .locals 7
    .param p1, "fromScreen"    # I
    .param p2, "taskId"    # I
    .param p3, "isActive"    # Z
    .param p4, "taskName"    # Ljava/lang/String;
    .param p5, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;

    .prologue
    .line 307
    new-instance v0, Lcom/android/systemui/recents/views/DualScreenViewControl$6;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/recents/views/DualScreenViewControl$6;-><init>(Lcom/android/systemui/recents/views/DualScreenViewControl;IIZLjava/lang/String;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    .line 340
    .local v0, "run":Ljava/lang/Runnable;
    return-object v0
.end method


# virtual methods
.method public addRootView(ILandroid/view/ViewGroup;)V
    .locals 4
    .param p1, "fromScreen"    # I
    .param p2, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 100
    sget-object v3, Lcom/android/systemui/recents/views/DualScreenViewControl;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 101
    :try_start_0
    new-instance v0, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;

    invoke-direct {v0}, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;-><init>()V

    .line 102
    .local v0, "info":Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;
    iput-object p2, v0, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->rootView:Landroid/view/ViewGroup;

    .line 103
    const v2, 0x7f0f0271

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 104
    .local v1, "iv":Landroid/widget/ImageView;
    iput-object v1, v0, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->animationView:Landroid/widget/ImageView;

    .line 105
    iget-object v2, p0, Lcom/android/systemui/recents/views/DualScreenViewControl;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 106
    monitor-exit v3

    .line 107
    return-void

    .line 106
    .end local v0    # "info":Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;
    .end local v1    # "iv":Landroid/widget/ImageView;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public canTaskBeMoved(Lcom/samsung/android/dualscreen/TaskInfo;)Z
    .locals 3
    .param p1, "tInfo"    # Lcom/samsung/android/dualscreen/TaskInfo;

    .prologue
    .line 403
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 405
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/dualscreen/TaskInfo;->isCoupled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p1, Lcom/samsung/android/dualscreen/TaskInfo;->canMoveTaskToScreen:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/dualscreen/TaskInfo;->getScreen()Lcom/samsung/android/dualscreen/DualScreen;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/dualscreen/DualScreen;->FULL:Lcom/samsung/android/dualscreen/DualScreen;

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getMultipleScreenState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSetLauchTask()Z
    .locals 2

    .prologue
    .line 291
    sget-object v1, Lcom/android/systemui/recents/views/DualScreenViewControl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 292
    :try_start_0
    sget-object v0, Lcom/android/systemui/recents/views/DualScreenViewControl;->mLaunchRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 293
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public moveAnimationView(Landroid/view/View;IZ)V
    .locals 10
    .param p1, "moveView"    # Landroid/view/View;
    .param p2, "swipeDireciton"    # I
    .param p3, "isMove"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 357
    sget-object v7, Lcom/android/systemui/recents/views/DualScreenViewControl;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 358
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v8

    if-nez v8, :cond_0

    .line 359
    monitor-exit v7

    .line 400
    .end local p1    # "moveView":Landroid/view/View;
    :goto_0
    return-void

    .line 360
    .restart local p1    # "moveView":Landroid/view/View;
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    .line 361
    .local v1, "fromScreen":I
    if-nez v1, :cond_5

    .line 362
    .local v4, "toScreen":I
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/recents/views/DualScreenViewControl;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;

    .line 363
    .local v2, "info":Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;
    if-eqz v2, :cond_4

    iget-object v6, v2, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->rootView:Landroid/view/ViewGroup;

    if-eqz v6, :cond_4

    iget-object v6, v2, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->animationView:Landroid/widget/ImageView;

    if-eqz v6, :cond_4

    .line 364
    iget-object v6, v2, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->animationView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_1

    .line 365
    iget-object v6, v2, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->animationView:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 368
    :cond_1
    const/4 v5, 0x0

    .line 369
    .local v5, "translate":F
    if-nez p2, :cond_6

    .line 370
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v5

    .line 371
    iget-object v6, v2, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->animationView:Landroid/widget/ImageView;

    iget v8, v2, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->startX:F

    add-float/2addr v8, v5

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 377
    :goto_2
    sget-boolean v6, Lcom/android/systemui/recents/views/DualScreenViewControl;->DEBUG:Z

    if-eqz v6, :cond_2

    .line 381
    :cond_2
    if-eqz p3, :cond_7

    .line 382
    iget-object v6, v2, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->taskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    if-eqz v6, :cond_3

    .line 383
    iget-object v8, v2, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->taskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/recents/views/TaskView;

    move-object v6, v0

    const/4 v9, 0x1

    invoke-virtual {v8, v6, v9}, Lcom/android/systemui/recents/views/TaskStackView;->setDimAllTask(Lcom/android/systemui/recents/views/TaskView;Z)V

    .line 385
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/recents/views/DualScreenViewControl;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;

    .line 386
    .local v3, "oppositeInfo":Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;
    if-eqz v3, :cond_4

    iget-object v6, v3, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->taskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    if-eqz v6, :cond_4

    .line 387
    iget-object v6, v3, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->taskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    check-cast p1, Lcom/android/systemui/recents/views/TaskView;

    .end local p1    # "moveView":Landroid/view/View;
    const/4 v8, 0x1

    invoke-virtual {v6, p1, v8}, Lcom/android/systemui/recents/views/TaskStackView;->setDimAllTask(Lcom/android/systemui/recents/views/TaskView;Z)V

    .line 399
    .end local v3    # "oppositeInfo":Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;
    .end local v5    # "translate":F
    :cond_4
    :goto_3
    monitor-exit v7

    goto :goto_0

    .end local v1    # "fromScreen":I
    .end local v2    # "info":Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;
    .end local v4    # "toScreen":I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .restart local v1    # "fromScreen":I
    .restart local p1    # "moveView":Landroid/view/View;
    :cond_5
    move v4, v6

    .line 361
    goto :goto_1

    .line 373
    .restart local v2    # "info":Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;
    .restart local v4    # "toScreen":I
    .restart local v5    # "translate":F
    :cond_6
    :try_start_1
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v5

    .line 374
    iget-object v6, v2, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->animationView:Landroid/widget/ImageView;

    iget v8, v2, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->startY:F

    add-float/2addr v8, v5

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setTranslationY(F)V

    goto :goto_2

    .line 390
    :cond_7
    iget-object v6, v2, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->taskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    if-eqz v6, :cond_8

    .line 391
    iget-object v6, v2, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->taskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Lcom/android/systemui/recents/views/TaskStackView;->setDimAllTask(Lcom/android/systemui/recents/views/TaskView;Z)V

    .line 393
    :cond_8
    iget-object v6, p0, Lcom/android/systemui/recents/views/DualScreenViewControl;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;

    .line 394
    .restart local v3    # "oppositeInfo":Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;
    if-eqz v3, :cond_4

    iget-object v6, v3, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->taskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    if-eqz v6, :cond_4

    .line 395
    iget-object v6, v3, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->taskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Lcom/android/systemui/recents/views/TaskStackView;->setDimAllTask(Lcom/android/systemui/recents/views/TaskView;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method public moveTopTask(ILcom/android/systemui/recents/views/TaskView;IZ)V
    .locals 10
    .param p1, "fromScreen"    # I
    .param p2, "tv"    # Lcom/android/systemui/recents/views/TaskView;
    .param p3, "swipeDireciton"    # I
    .param p4, "reverseRotation"    # Z

    .prologue
    .line 252
    sget-boolean v0, Lcom/android/systemui/recents/views/DualScreenViewControl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DualScreenViewControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveTopTask - fromScreen : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  Task : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_0
    const/16 v5, 0x21c

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/views/DualScreenViewControl;->showAnimationView(ILcom/android/systemui/recents/views/TaskView;IZI)V

    .line 254
    iget-object v0, p2, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v2, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    iget-object v0, p2, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v3, v0, Lcom/android/systemui/recents/model/Task;->isActive:Z

    iget-object v0, p2, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v4, v0, Lcom/android/systemui/recents/model/Task;->activityLabel:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/views/DualScreenViewControl;->makeLaunchRunnable(IIZLjava/lang/String;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Ljava/lang/Runnable;

    move-result-object v8

    .line 256
    .local v8, "run":Ljava/lang/Runnable;
    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    if-nez p4, :cond_2

    .line 257
    if-nez p1, :cond_1

    const/16 v0, 0x21c

    :goto_0
    int-to-float v7, v0

    .line 261
    .local v7, "newPosition":F
    :goto_1
    if-nez p3, :cond_4

    sget-object v0, Lcom/android/systemui/recents/views/DualScreenViewControl;->TRANSLATION_X:Landroid/util/Property;

    :goto_2
    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v7, v1, v2

    invoke-static {p2, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 263
    .local v9, "translationAnim":Landroid/animation/ObjectAnimator;
    const-wide/16 v0, 0x1a0

    invoke-virtual {v9, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 264
    new-instance v0, Landroid/view/animation/interpolator/SineInOut90;

    invoke-direct {v0}, Landroid/view/animation/interpolator/SineInOut90;-><init>()V

    invoke-virtual {v9, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 265
    new-instance v0, Lcom/android/systemui/recents/views/DualScreenViewControl$5;

    invoke-direct {v0, p0, v8}, Lcom/android/systemui/recents/views/DualScreenViewControl$5;-><init>(Lcom/android/systemui/recents/views/DualScreenViewControl;Ljava/lang/Runnable;)V

    invoke-virtual {v9, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 272
    sget-object v0, Lcom/android/systemui/recents/views/DualScreenViewControl;->ALPHA_PROPERTY:Landroid/util/FloatProperty;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {p2, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 273
    .local v6, "alphaAnim":Landroid/animation/ObjectAnimator;
    const-wide/16 v0, 0x1a0

    invoke-virtual {v6, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 274
    new-instance v0, Landroid/view/animation/interpolator/SineInOut80;

    invoke-direct {v0}, Landroid/view/animation/interpolator/SineInOut80;-><init>()V

    invoke-virtual {v6, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 276
    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->start()V

    .line 277
    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->start()V

    .line 278
    return-void

    .line 257
    .end local v6    # "alphaAnim":Landroid/animation/ObjectAnimator;
    .end local v7    # "newPosition":F
    .end local v9    # "translationAnim":Landroid/animation/ObjectAnimator;
    :cond_1
    const/16 v0, -0x21c

    goto :goto_0

    .line 259
    :cond_2
    if-nez p1, :cond_3

    const/16 v0, -0x21c

    :goto_3
    int-to-float v7, v0

    .restart local v7    # "newPosition":F
    goto :goto_1

    .end local v7    # "newPosition":F
    :cond_3
    const/16 v0, 0x21c

    goto :goto_3

    .line 261
    .restart local v7    # "newPosition":F
    :cond_4
    sget-object v0, Lcom/android/systemui/recents/views/DualScreenViewControl;->TRANSLATION_Y:Landroid/util/Property;

    goto :goto_2
.end method

.method public resetAllAnimationView()V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/DualScreenViewControl;->resetAnimationView(I)V

    .line 120
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/DualScreenViewControl;->resetAnimationView(I)V

    .line 121
    return-void
.end method

.method public resetAnimationView(I)V
    .locals 8
    .param p1, "fromScreen"    # I

    .prologue
    const/4 v3, 0x0

    .line 124
    sget-object v5, Lcom/android/systemui/recents/views/DualScreenViewControl;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 125
    if-nez p1, :cond_0

    const/4 v3, 0x1

    .line 126
    .local v3, "toScreen":I
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/recents/views/DualScreenViewControl;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;

    .line 128
    .local v1, "info":Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;
    sget-boolean v4, Lcom/android/systemui/recents/views/DualScreenViewControl;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "DualScreenViewControl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resetAnimationView - fromScreen : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  info : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_1
    if-eqz v1, :cond_6

    iget-object v4, v1, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->rootView:Landroid/view/ViewGroup;

    if-eqz v4, :cond_6

    iget-object v4, v1, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->animationView:Landroid/widget/ImageView;

    if-eqz v4, :cond_6

    iget v4, v1, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->semaphore:I

    if-lez v4, :cond_6

    iget v4, v1, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->semaphore:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v1, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->semaphore:I

    if-nez v4, :cond_6

    .line 130
    iget-object v4, v1, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->animationView:Landroid/widget/ImageView;

    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 131
    iget-object v4, v1, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->animationView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 132
    .local v0, "bg":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 133
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 135
    :cond_2
    const/high16 v4, -0x40800000    # -1.0f

    iput v4, v1, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->startX:F

    .line 136
    const/high16 v4, -0x40800000    # -1.0f

    iput v4, v1, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->startY:F

    .line 137
    iget-object v4, v1, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->transform:Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskViewTransform;->reset()V

    .line 138
    iget-object v4, v1, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->headerBM:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_3

    .line 139
    iget-object v4, v1, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->headerBM:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 140
    const/4 v4, 0x0

    iput-object v4, v1, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->headerBM:Landroid/graphics/Bitmap;

    .line 142
    :cond_3
    iget-object v4, v1, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->taskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    if-eqz v4, :cond_4

    .line 143
    iget-object v4, v1, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->taskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Lcom/android/systemui/recents/views/TaskStackView;->setDimAllTask(Lcom/android/systemui/recents/views/TaskView;Z)V

    .line 145
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/recents/views/DualScreenViewControl;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;

    .line 146
    .local v2, "oppositeInfo":Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;
    if-eqz v2, :cond_5

    iget-object v4, v2, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->taskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    if-eqz v4, :cond_5

    .line 147
    iget-object v4, v2, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->taskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Lcom/android/systemui/recents/views/TaskStackView;->setDimAllTask(Lcom/android/systemui/recents/views/TaskView;Z)V

    .line 149
    :cond_5
    iget-object v4, v1, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->animationView:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 151
    .end local v0    # "bg":Landroid/graphics/drawable/BitmapDrawable;
    .end local v2    # "oppositeInfo":Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;
    :cond_6
    monitor-exit v5

    .line 152
    return-void

    .line 151
    .end local v1    # "info":Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public setAlphaAnimationView(Landroid/view/View;)V
    .locals 7
    .param p1, "moveView"    # Landroid/view/View;

    .prologue
    .line 344
    sget-object v4, Lcom/android/systemui/recents/views/DualScreenViewControl;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 345
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v3

    if-nez v3, :cond_0

    .line 346
    monitor-exit v4

    .line 354
    :goto_0
    return-void

    .line 347
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    .line 348
    .local v0, "fromScreen":I
    if-nez v0, :cond_2

    const/4 v2, 0x1

    .line 349
    .local v2, "toScreen":I
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/recents/views/DualScreenViewControl;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;

    .line 350
    .local v1, "info":Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;
    if-eqz v1, :cond_1

    iget-object v3, v1, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->rootView:Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->animationView:Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    .line 351
    iget-object v3, v1, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->animationView:Landroid/widget/ImageView;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 353
    :cond_1
    monitor-exit v4

    goto :goto_0

    .end local v0    # "fromScreen":I
    .end local v1    # "info":Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;
    .end local v2    # "toScreen":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 348
    .restart local v0    # "fromScreen":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public setLaunchTask(IIZLjava/lang/String;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V
    .locals 1
    .param p1, "fromScreen"    # I
    .param p2, "taskId"    # I
    .param p3, "isActive"    # Z
    .param p4, "taskName"    # Ljava/lang/String;
    .param p5, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;

    .prologue
    .line 303
    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/recents/views/DualScreenViewControl;->makeLaunchRunnable(IIZLjava/lang/String;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Ljava/lang/Runnable;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/recents/views/DualScreenViewControl;->mLaunchRunnable:Ljava/lang/Runnable;

    .line 304
    return-void
.end method

.method public setLaunchTask(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "launchRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 297
    sget-object v1, Lcom/android/systemui/recents/views/DualScreenViewControl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 298
    :try_start_0
    sput-object p1, Lcom/android/systemui/recents/views/DualScreenViewControl;->mLaunchRunnable:Ljava/lang/Runnable;

    .line 299
    monitor-exit v1

    .line 300
    return-void

    .line 299
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setTaskStackView(ILcom/android/systemui/recents/views/TaskStackView;)V
    .locals 3
    .param p1, "fromScreen"    # I
    .param p2, "taskStackView"    # Lcom/android/systemui/recents/views/TaskStackView;

    .prologue
    .line 110
    sget-object v2, Lcom/android/systemui/recents/views/DualScreenViewControl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/DualScreenViewControl;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;

    .line 112
    .local v0, "info":Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;
    if-eqz v0, :cond_0

    .line 113
    iput-object p2, v0, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->taskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    .line 115
    :cond_0
    monitor-exit v2

    .line 116
    return-void

    .line 115
    .end local v0    # "info":Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public showAnimationView(ILcom/android/systemui/recents/views/TaskView;IZI)V
    .locals 17
    .param p1, "fromScreen"    # I
    .param p2, "tv"    # Lcom/android/systemui/recents/views/TaskView;
    .param p3, "swipeDireciton"    # I
    .param p4, "reverseRotation"    # Z
    .param p5, "offset"    # I

    .prologue
    .line 157
    sget-object v14, Lcom/android/systemui/recents/views/DualScreenViewControl;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 158
    :try_start_0
    sget-boolean v13, Lcom/android/systemui/recents/views/DualScreenViewControl;->DEBUG:Z

    if-eqz v13, :cond_0

    const-string v13, "DualScreenViewControl"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "showAnimationView - fromScreen : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "  Task : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_0
    if-nez p1, :cond_3

    const/4 v11, 0x1

    .line 160
    .local v11, "toScreen":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recents/views/DualScreenViewControl;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v13, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;

    .line 162
    .local v6, "info":Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;
    if-eqz v6, :cond_2

    iget-object v13, v6, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->rootView:Landroid/view/ViewGroup;

    if-eqz v13, :cond_2

    .line 163
    iget v13, v6, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->semaphore:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v6, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->semaphore:I

    .line 164
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 165
    .local v2, "dm":Landroid/util/DisplayMetrics;
    iget-object v13, v6, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->animationView:Landroid/widget/ImageView;

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->captureView()Landroid/graphics/Bitmap;

    move-result-object v15

    invoke-virtual {v13, v15}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 166
    if-nez p3, :cond_5

    .line 167
    iget v13, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int v12, v13, p5

    .line 168
    .local v12, "width":I
    iget-object v13, v6, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->animationView:Landroid/widget/ImageView;

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->getX()F

    move-result v15

    if-nez p1, :cond_4

    .end local v12    # "width":I
    :goto_1
    int-to-float v0, v12

    move/from16 v16, v0

    add-float v15, v15, v16

    invoke-virtual {v13, v15}, Landroid/widget/ImageView;->setX(F)V

    .line 169
    iget-object v13, v6, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->animationView:Landroid/widget/ImageView;

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->getY()F

    move-result v15

    invoke-virtual {v13, v15}, Landroid/widget/ImageView;->setY(F)V

    .line 179
    :goto_2
    iget-object v13, v6, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->animationView:Landroid/widget/ImageView;

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->getScaleX()F

    move-result v15

    invoke-virtual {v13, v15}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 180
    iget-object v13, v6, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->animationView:Landroid/widget/ImageView;

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->getScaleY()F

    move-result v15

    invoke-virtual {v13, v15}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 182
    iget-object v13, v6, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->animationView:Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/widget/ImageView;->getX()F

    move-result v13

    iput v13, v6, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->startX:F

    .line 183
    iget-object v13, v6, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->animationView:Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/widget/ImageView;->getY()F

    move-result v13

    iput v13, v6, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->startY:F

    .line 185
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/recents/views/TaskStackView;

    .line 186
    .local v9, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    .line 187
    .local v10, "task":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {v9}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v8

    .line 189
    .local v8, "stackScroll":F
    invoke-virtual {v9}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    move-result-object v13

    iget-object v15, v6, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->transform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v13, v10, v8, v15, v0}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v13

    iput-object v13, v6, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->transform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 191
    iget-object v13, v10, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v13, :cond_1

    iget-object v13, v10, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    if-lez v13, :cond_1

    iget-object v13, v10, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    if-lez v13, :cond_1

    .line 193
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->getScaleX()F

    move-result v7

    .line 194
    .local v7, "scale":F
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v13}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredWidth()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v7

    float-to-int v4, v13

    .line 195
    .local v4, "fromHeaderWidth":I
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v13}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredHeight()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v7

    float-to-int v3, v13

    .line 196
    .local v3, "fromHeaderHeight":I
    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    iput-object v13, v6, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->headerBM:Landroid/graphics/Bitmap;

    .line 201
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v13, v6, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->headerBM:Landroid/graphics/Bitmap;

    invoke-direct {v1, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 202
    .local v1, "c":Landroid/graphics/Canvas;
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->getScaleX()F

    move-result v13

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->getScaleY()F

    move-result v15

    invoke-virtual {v1, v13, v15}, Landroid/graphics/Canvas;->scale(FF)V

    .line 203
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v13, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->draw(Landroid/graphics/Canvas;)V

    .line 204
    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 207
    .end local v1    # "c":Landroid/graphics/Canvas;
    .end local v3    # "fromHeaderHeight":I
    .end local v4    # "fromHeaderWidth":I
    .end local v7    # "scale":F
    :cond_1
    sget-boolean v13, Lcom/android/systemui/recents/views/DualScreenViewControl;->DEBUG:Z

    if-eqz v13, :cond_2

    const-string v13, "DualScreenViewControl"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "showAnimationView - update : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    .end local v2    # "dm":Landroid/util/DisplayMetrics;
    .end local v8    # "stackScroll":F
    .end local v9    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    .end local v10    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_2
    monitor-exit v14

    .line 210
    return-void

    .line 159
    .end local v6    # "info":Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;
    .end local v11    # "toScreen":I
    :cond_3
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 168
    .restart local v2    # "dm":Landroid/util/DisplayMetrics;
    .restart local v6    # "info":Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;
    .restart local v11    # "toScreen":I
    .restart local v12    # "width":I
    :cond_4
    neg-int v12, v12

    goto/16 :goto_1

    .line 171
    .end local v12    # "width":I
    :cond_5
    iget v13, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int v5, v13, p5

    .line 172
    .local v5, "height":I
    iget-object v13, v6, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->animationView:Landroid/widget/ImageView;

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->getX()F

    move-result v15

    invoke-virtual {v13, v15}, Landroid/widget/ImageView;->setX(F)V

    .line 173
    if-eqz p4, :cond_7

    .line 174
    iget-object v13, v6, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->animationView:Landroid/widget/ImageView;

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->getY()F

    move-result v15

    if-nez p1, :cond_6

    .end local v5    # "height":I
    :goto_3
    int-to-float v0, v5

    move/from16 v16, v0

    add-float v15, v15, v16

    invoke-virtual {v13, v15}, Landroid/widget/ImageView;->setY(F)V

    goto/16 :goto_2

    .line 209
    .end local v2    # "dm":Landroid/util/DisplayMetrics;
    .end local v6    # "info":Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;
    .end local v11    # "toScreen":I
    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v13

    .line 174
    .restart local v2    # "dm":Landroid/util/DisplayMetrics;
    .restart local v5    # "height":I
    .restart local v6    # "info":Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;
    .restart local v11    # "toScreen":I
    :cond_6
    neg-int v5, v5

    goto :goto_3

    .line 176
    :cond_7
    :try_start_1
    iget-object v13, v6, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->animationView:Landroid/widget/ImageView;

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->getY()F

    move-result v15

    if-nez p1, :cond_8

    neg-int v5, v5

    .end local v5    # "height":I
    :cond_8
    int-to-float v0, v5

    move/from16 v16, v0

    add-float v15, v15, v16

    invoke-virtual {v13, v15}, Landroid/widget/ImageView;->setY(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2
.end method
