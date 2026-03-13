.class public Lcom/android/systemui/recents/views/RecentsView;
.super Landroid/widget/FrameLayout;
.source "RecentsView.java"

# interfaces
.implements Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;
.implements Lcom/android/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/RecentsView$OnClickRecentsButton;,
        Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;
    }
.end annotation


# static fields
.field public static final DISMISS_TO_APP:I = 0x0

.field private static final TAG:Ljava/lang/String; = "RecentsView"


# instance fields
.field closeAllContainer:Landroid/view/View;

.field private launchIntent:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

.field mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

.field mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

.field mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

.field private mFinishActivity:Z

.field mH:Landroid/os/Handler;

.field mInflater:Landroid/view/LayoutInflater;

.field mLaunchTaskViewX:I

.field mLaunchTaskViewY:I

.field mLayoutAlgorithm:Lcom/android/systemui/recents/views/RecentsViewLayoutAlgorithm;

.field mRecentsBottomContainer:Landroid/view/ViewGroup;

.field mRecentsButtonClickListener:Lcom/android/systemui/recents/views/RecentsView$OnClickRecentsButton;

.field mRecentsButtonContainer:Landroid/view/ViewGroup;

.field mRecentsRemoveAllButton:Landroid/view/View;

.field mSearchBar:Lcom/android/systemui/recents/RecentsAppWidgetHostView;

.field mStacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/TaskStack;",
            ">;"
        }
    .end annotation
.end field

.field mTaskStackViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recents/views/TaskStackView;",
            ">;"
        }
    .end annotation
.end field

.field shortcutComponentNames:[Ljava/lang/String;

.field shortcutContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 169
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackViews:Ljava/util/List;

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mFinishActivity:Z

    .line 355
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->launchIntent:Landroid/util/SparseArray;

    .line 1271
    new-instance v0, Lcom/android/systemui/recents/views/RecentsView$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/views/RecentsView$4;-><init>(Lcom/android/systemui/recents/views/RecentsView;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mH:Landroid/os/Handler;

    .line 170
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 173
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recents/views/RecentsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 174
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 177
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/views/RecentsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 178
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 181
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackViews:Ljava/util/List;

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mFinishActivity:Z

    .line 355
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->launchIntent:Landroid/util/SparseArray;

    .line 1271
    new-instance v0, Lcom/android/systemui/recents/views/RecentsView$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/views/RecentsView$4;-><init>(Lcom/android/systemui/recents/views/RecentsView;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mH:Landroid/os/Handler;

    .line 187
    invoke-static {}, Lcom/android/systemui/recents/RecentsConfiguration;->getInstance()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    .line 189
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mInflater:Landroid/view/LayoutInflater;

    .line 190
    new-instance v0, Lcom/android/systemui/recents/views/RecentsViewLayoutAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/views/RecentsViewLayoutAlgorithm;-><init>(Lcom/android/systemui/recents/RecentsConfiguration;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/RecentsViewLayoutAlgorithm;

    .line 191
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/recents/views/RecentsView;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/views/RecentsView;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->launchIntent:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/recents/views/RecentsView;Landroid/content/Intent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/views/RecentsView;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/RecentsView;->executeApplication(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/recents/views/RecentsView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/views/RecentsView;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/recents/views/RecentsView;Lcom/android/systemui/recents/model/Task;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/recents/views/RecentsView;
    .param p1, "x1"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "x2"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/recents/views/RecentsView;->insertLogPair(Lcom/android/systemui/recents/model/Task;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/recents/views/RecentsView;)Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/views/RecentsView;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/recents/views/RecentsView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/views/RecentsView;

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mFinishActivity:Z

    return v0
.end method

.method private executeApplication(Landroid/content/Intent;)Z
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 588
    const/4 v1, 0x0

    .line 589
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-nez p1, :cond_0

    .line 606
    :goto_0
    return v2

    .line 591
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 597
    if-eqz v1, :cond_1

    iget-boolean v3, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v3, :cond_1

    .line 598
    const v3, 0x10004000

    invoke-virtual {p1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 600
    :try_start_1
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Landroid/os/UserHandle;

    const/4 v6, -0x2

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, p1, v4, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 606
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 593
    :catch_0
    move-exception v0

    .line 594
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "RecentsView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 601
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 602
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "RecentsView"

    const-string v4, "Activity Not Found"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I

    .prologue
    .line 528
    const/4 v3, 0x0

    .line 529
    .local v3, "result":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 530
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v2

    .line 532
    .local v2, "mIconDpi":I
    :try_start_0
    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 536
    :goto_0
    return-object v3

    .line 533
    :catch_0
    move-exception v1

    .line 534
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v1}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private insertLogPair(Lcom/android/systemui/recents/model/Task;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .locals 7
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1769
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    if-nez v2, :cond_1

    .line 1789
    :cond_0
    :goto_0
    return-void

    .line 1772
    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 1773
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    const-string v3, "RCSV"

    iget-object v4, p1, Lcom/android/systemui/recents/model/Task;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1776
    :cond_2
    invoke-virtual {p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_0

    .line 1777
    new-array v1, v6, [Ljava/lang/String;

    .line 1778
    .local v1, "features":[Ljava/lang/String;
    new-array v0, v6, [Ljava/lang/String;

    .line 1780
    .local v0, "extras":[Ljava/lang/String;
    const-string v2, "RCSV"

    aput-object v2, v1, v4

    .line 1781
    iget-object v2, p1, Lcom/android/systemui/recents/model/Task;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    aput-object v2, v0, v4

    .line 1783
    const-string v2, "SPLW"

    aput-object v2, v1, v5

    .line 1784
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    invoke-virtual {v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getSelectedAppPackageInfo()Landroid/util/Pair;

    move-result-object v2

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/systemui/recents/model/Task;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    .line 1787
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    const/4 v3, 0x0

    invoke-static {v2, v1, v0, v3}, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper;->insertMultipleStatusLog(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;[J)V

    goto :goto_0
.end method

.method private isEnabledApplication(Landroid/content/Intent;)Z
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 516
    const/4 v1, 0x0

    .line 518
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 523
    :goto_0
    if-eqz v1, :cond_0

    iget-boolean v3, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 524
    :cond_0
    return v2

    .line 520
    :catch_0
    move-exception v0

    .line 521
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "RecentsView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private postDrawHeaderThumbnailTransitionRunnable(Lcom/android/systemui/recents/views/TaskView;IILcom/android/systemui/recents/views/TaskViewTransform;Landroid/app/ActivityOptions$OnAnimationStartedListener;Landroid/app/ActivityOptions$OnTransitionStartedListener;)V
    .locals 9
    .param p1, "tv"    # Lcom/android/systemui/recents/views/TaskView;
    .param p2, "offsetX"    # I
    .param p3, "offsetY"    # I
    .param p4, "transform"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p5, "animStartedListener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;
    .param p6, "transitStartedListener"    # Landroid/app/ActivityOptions$OnTransitionStartedListener;

    .prologue
    .line 1187
    const/4 v1, 0x2

    new-array v8, v1, [I

    .line 1188
    .local v8, "pts":[I
    invoke-virtual {p1, v8}, Lcom/android/systemui/recents/views/TaskView;->getLocationOnScreen([I)V

    .line 1189
    const/4 v1, 0x0

    aget v1, v8, v1

    iput v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mLaunchTaskViewX:I

    .line 1190
    const/4 v1, 0x1

    aget v1, v8, v1

    iput v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mLaunchTaskViewY:I

    .line 1192
    new-instance v0, Lcom/android/systemui/recents/views/RecentsView$3;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/recents/views/RecentsView$3;-><init>(Lcom/android/systemui/recents/views/RecentsView;Lcom/android/systemui/recents/views/TaskView;IILcom/android/systemui/recents/views/TaskViewTransform;Landroid/app/ActivityOptions$OnAnimationStartedListener;Landroid/app/ActivityOptions$OnTransitionStartedListener;)V

    .line 1261
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    invoke-interface {v1, v0}, Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;->runAfterPause(Ljava/lang/Runnable;)V

    .line 1262
    return-void
.end method

.method private sendDiagnosticLogs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/String;

    .prologue
    .line 1793
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1794
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "app_id"

    const-string v3, "com.android.systemui.recents.RecentsActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1795
    const-string v2, "feature"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1796
    if-eqz p2, :cond_0

    .line 1797
    const-string v2, "extra"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1799
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1801
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1802
    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1804
    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1806
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1807
    return-void
.end method

.method private updateRecentsButtonsLayout()V
    .locals 11

    .prologue
    const v10, 0x7f0f026c

    const/16 v9, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    const v6, 0x7f0f026a

    .line 357
    sget-boolean v4, Lcom/android/systemui/recents/Constants$Features;->EnableCloseAllLayout:Z

    if-eqz v4, :cond_1

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 358
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsButtonContainer:Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    .line 359
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsRemoveAllButton:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 361
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithNoRecentTasks:Z

    if-eqz v4, :cond_3

    .line 362
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsRemoveAllButton:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 368
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->launchIntent:Landroid/util/SparseArray;

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->remove(I)V

    .line 369
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 370
    .local v2, "taskManagerButton":Landroid/view/View;
    invoke-virtual {v2, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 372
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 373
    .local v3, "taskManagerIntent":Landroid/content/Intent;
    const-string v4, "com.sec.android.app.taskmanager"

    const-string v5, "com.sec.android.app.taskmanager.activity.TaskManagerActivity"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    invoke-direct {p0, v3}, Lcom/android/systemui/recents/views/RecentsView;->isEnabledApplication(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 376
    invoke-virtual {v2, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 377
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->launchIntent:Landroid/util/SparseArray;

    invoke-virtual {v4, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 388
    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->launchIntent:Landroid/util/SparseArray;

    invoke-virtual {v4, v10}, Landroid/util/SparseArray;->remove(I)V

    .line 389
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsButtonContainer:Landroid/view/ViewGroup;

    const v5, 0x7f0f026d

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 390
    .local v0, "divider":Landroid/view/View;
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 392
    .local v1, "googleButton":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 393
    if-eqz v1, :cond_0

    .line 395
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 396
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 397
    invoke-virtual {v1, v7}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 364
    .end local v0    # "divider":Landroid/view/View;
    .end local v1    # "googleButton":Landroid/view/View;
    .end local v2    # "taskManagerButton":Landroid/view/View;
    .end local v3    # "taskManagerIntent":Landroid/content/Intent;
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsRemoveAllButton:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    .line 379
    .restart local v2    # "taskManagerButton":Landroid/view/View;
    .restart local v3    # "taskManagerIntent":Landroid/content/Intent;
    :cond_4
    const-string v4, "com.sec.android.app.controlpanel"

    const-string v5, "com.sec.android.app.controlpanel.activity.JobManagerActivity"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    invoke-direct {p0, v3}, Lcom/android/systemui/recents/views/RecentsView;->isEnabledApplication(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 382
    invoke-virtual {v2, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 383
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->launchIntent:Landroid/util/SparseArray;

    invoke-virtual {v4, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2
.end method

.method private updateShortcutLayout()V
    .locals 15

    .prologue
    const/16 v14, 0x5a

    const/4 v13, 0x0

    .line 255
    sget-boolean v10, Lcom/android/systemui/recents/Constants$Features;->EnableShortcutLayout:Z

    if-nez v10, :cond_1

    .line 322
    :cond_0
    return-void

    .line 256
    :cond_1
    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsBottomContainer:Landroid/view/ViewGroup;

    if-eqz v10, :cond_0

    .line 258
    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsBottomContainer:Landroid/view/ViewGroup;

    const v11, 0x7f0f0268

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    iput-object v10, p0, Lcom/android/systemui/recents/views/RecentsView;->shortcutContainer:Landroid/widget/LinearLayout;

    .line 259
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 261
    .local v6, "packageManager":Landroid/content/pm/PackageManager;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Framework_ShortCutListInRecentApp"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 262
    .local v9, "shortcutAppList":Ljava/lang/String;
    const-string v10, ","

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/recents/views/RecentsView;->shortcutComponentNames:[Ljava/lang/String;

    .line 264
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsView;->shortcutComponentNames:[Ljava/lang/String;

    array-length v10, v10

    if-ge v0, v10, :cond_0

    .line 265
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 266
    .local v3, "intent":Landroid/content/Intent;
    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsView;->shortcutComponentNames:[Ljava/lang/String;

    aget-object v10, v10, v0

    invoke-static {v10}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 268
    invoke-virtual {v6, v3, v13}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    .line 269
    .local v7, "rInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v7, :cond_2

    .line 270
    invoke-virtual {v7, v6}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 271
    .local v2, "iconImage":Landroid/graphics/drawable/Drawable;
    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v10, v6}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 272
    .local v5, "labelText":Ljava/lang/String;
    if-eqz v2, :cond_2

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_2

    .line 273
    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsView;->mInflater:Landroid/view/LayoutInflater;

    const v11, 0x7f04007a

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 274
    .local v8, "shortcut":Landroid/view/View;
    invoke-virtual {v8, v13}, Landroid/view/View;->setVisibility(I)V

    .line 276
    const-string v10, "android.intent.action.MAIN"

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    const v10, 0x10204000

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 279
    const-string v10, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    invoke-virtual {v8, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 281
    invoke-virtual {v8, v13}, Landroid/view/View;->setPressed(Z)V

    .line 282
    invoke-virtual {v8}, Landroid/view/View;->clearFocus()V

    .line 284
    new-instance v10, Lcom/android/systemui/recents/views/RecentsView$1;

    invoke-direct {v10, p0}, Lcom/android/systemui/recents/views/RecentsView$1;-><init>(Lcom/android/systemui/recents/views/RecentsView;)V

    invoke-virtual {v8, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    new-instance v10, Lcom/android/systemui/recents/views/RecentsView$2;

    invoke-direct {v10, p0}, Lcom/android/systemui/recents/views/RecentsView$2;-><init>(Lcom/android/systemui/recents/views/RecentsView;)V

    invoke-virtual {v8, v10}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 308
    const v10, 0x7f0f0280

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 309
    .local v1, "icon":Landroid/widget/ImageView;
    const v10, 0x7f0f0281

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 311
    .local v4, "label":Landroid/widget/TextView;
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    invoke-virtual {v2, v13, v13, v14, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 313
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 315
    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsView;->shortcutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 318
    .end local v1    # "icon":Landroid/widget/ImageView;
    .end local v2    # "iconImage":Landroid/graphics/drawable/Drawable;
    .end local v4    # "label":Landroid/widget/TextView;
    .end local v5    # "labelText":Ljava/lang/String;
    .end local v8    # "shortcut":Landroid/view/View;
    :cond_2
    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsView;->shortcutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v10

    if-lez v10, :cond_3

    .line 319
    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsView;->shortcutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 264
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method private updateShortcutTextColor()V
    .locals 6

    .prologue
    .line 325
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->shortcutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 326
    .local v1, "childCount":I
    if-lez v1, :cond_2

    .line 327
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 328
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->shortcutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 329
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 330
    const v4, 0x7f0f0281

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 331
    .local v3, "label":Landroid/widget/TextView;
    if-eqz v3, :cond_0

    .line 332
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->needDarkFont:Z

    if-eqz v4, :cond_1

    .line 333
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c00ab

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 327
    .end local v3    # "label":Landroid/widget/TextView;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 335
    .restart local v3    # "label":Landroid/widget/TextView;
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0051

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 341
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "i":I
    .end local v3    # "label":Landroid/widget/TextView;
    :cond_2
    return-void
.end method


# virtual methods
.method public disableLayersForOneFrame()V
    .locals 3

    .prologue
    .line 1170
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getTaskStackViews()Ljava/util/List;

    move-result-object v1

    .line 1171
    .local v1, "stackViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskStackView;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1172
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->disableLayersForOneFrame()V

    .line 1171
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1174
    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 1765
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    invoke-interface {v0}, Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;->dismiss()V

    .line 1766
    :cond_0
    return-void
.end method

.method public dismissFocusedTask()V
    .locals 2

    .prologue
    .line 1145
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getTaskStackViews()Ljava/util/List;

    move-result-object v0

    .line 1146
    .local v0, "stackViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskStackView;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1147
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackView;->dismissFocusedTask()V

    .line 1149
    :cond_0
    return-void
.end method

.method public focusNextTask(Z)V
    .locals 6
    .param p1, "forward"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1080
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getTaskStackViews()Ljava/util/List;

    move-result-object v2

    .line 1081
    .local v2, "stackViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskStackView;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1083
    sget-boolean v3, Lcom/android/systemui/recents/Constants$Features;->EnableCloseAllLayout:Z

    if-eqz v3, :cond_4

    .line 1084
    new-instance v1, Landroid/util/MutableBoolean;

    invoke-direct {v1, v4}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 1085
    .local v1, "isMoved":Landroid/util/MutableBoolean;
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3, p1, v5, v1}, Lcom/android/systemui/recents/views/TaskStackView;->focusNextTask(ZZLandroid/util/MutableBoolean;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1087
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsRemoveAllButton:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1088
    iput-boolean v5, v1, Landroid/util/MutableBoolean;->value:Z

    .line 1090
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsRemoveAllButton:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 1091
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/views/TaskStackView;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v4, v4, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v4

    iput v4, v3, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    .line 1094
    :cond_1
    iget-boolean v3, v1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v3, :cond_2

    .line 1095
    if-eqz p1, :cond_3

    const/4 v3, 0x2

    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/RecentsView;->playSoundEffect(I)V

    .line 1103
    .end local v1    # "isMoved":Landroid/util/MutableBoolean;
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getChildCount()I

    move-result v0

    .line 1115
    .local v0, "childCount":I
    return-void

    .line 1095
    .end local v0    # "childCount":I
    .restart local v1    # "isMoved":Landroid/util/MutableBoolean;
    :cond_3
    const/4 v3, 0x4

    goto :goto_0

    .line 1099
    .end local v1    # "isMoved":Landroid/util/MutableBoolean;
    :cond_4
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3, p1, v5}, Lcom/android/systemui/recents/views/TaskStackView;->focusNextTask(ZZ)Z

    goto :goto_1
.end method

.method public getNextTaskOrTopTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/model/Task;
    .locals 10
    .param p1, "taskToSearch"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 690
    const/4 v3, 0x0

    .line 691
    .local v3, "returnTask":Lcom/android/systemui/recents/model/Task;
    const/4 v0, 0x0

    .line 692
    .local v0, "found":Z
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getTaskStackViews()Ljava/util/List;

    move-result-object v6

    .line 693
    .local v6, "stackViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskStackView;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    .line 694
    .local v5, "stackCount":I
    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_4

    .line 695
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v9}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v4

    .line 696
    .local v4, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v4}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v8

    .line 698
    .local v8, "taskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    .local v2, "j":I
    :goto_1
    if-ltz v2, :cond_3

    .line 699
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/recents/model/Task;

    .line 701
    .local v7, "task":Lcom/android/systemui/recents/model/Task;
    if-eqz v0, :cond_0

    .line 710
    .end local v2    # "j":I
    .end local v4    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v7    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v8    # "taskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :goto_2
    return-object v7

    .line 704
    .restart local v2    # "j":I
    .restart local v4    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .restart local v7    # "task":Lcom/android/systemui/recents/model/Task;
    .restart local v8    # "taskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_0
    if-nez v3, :cond_1

    .line 705
    move-object v3, v7

    .line 706
    :cond_1
    if-ne v7, p1, :cond_2

    .line 707
    const/4 v0, 0x1

    .line 698
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 694
    .end local v7    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .end local v2    # "j":I
    .end local v4    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v8    # "taskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_4
    move-object v7, v3

    .line 710
    goto :goto_2
.end method

.method getTaskStackViews()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recents/views/TaskStackView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 685
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackViews:Ljava/util/List;

    return-object v0
.end method

.method public hasFocusedTaskStackView()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1072
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getTaskStackViews()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/TaskStackView;

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    .line 1073
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public hasValidSearchBar()Z
    .locals 1

    .prologue
    .line 887
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Lcom/android/systemui/recents/RecentsAppWidgetHostView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Lcom/android/systemui/recents/RecentsAppWidgetHostView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsAppWidgetHostView;->isReinflateRequired()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public launchFocusedTask()Z
    .locals 13

    .prologue
    const/4 v5, 0x0

    .line 716
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getTaskStackViews()Ljava/util/List;

    move-result-object v10

    .line 717
    .local v10, "stackViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskStackView;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    .line 718
    .local v9, "stackCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v9, :cond_0

    .line 719
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/views/TaskStackView;

    .line 720
    .local v1, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v3

    .line 722
    .local v3, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v12

    .line 723
    .local v12, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v11

    .line 724
    .local v11, "taskViewCount":I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    if-ge v8, v11, :cond_2

    .line 725
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskView;

    .line 726
    .local v2, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v4

    .line 727
    .local v4, "task":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->isFocusedTask()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p0

    move v6, v5

    .line 728
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/recents/views/RecentsView;->onTaskViewClicked(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;ZZ)V

    .line 729
    const/4 v5, 0x1

    .line 733
    .end local v1    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    .end local v2    # "tv":Lcom/android/systemui/recents/views/TaskView;
    .end local v3    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v4    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v8    # "j":I
    .end local v11    # "taskViewCount":I
    .end local v12    # "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    :cond_0
    return v5

    .line 724
    .restart local v1    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    .restart local v2    # "tv":Lcom/android/systemui/recents/views/TaskView;
    .restart local v3    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .restart local v4    # "task":Lcom/android/systemui/recents/model/Task;
    .restart local v8    # "j":I
    .restart local v11    # "taskViewCount":I
    .restart local v12    # "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 718
    .end local v2    # "tv":Lcom/android/systemui/recents/views/TaskView;
    .end local v4    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method public launchPreviousTask(Landroid/util/MutableBoolean;)Z
    .locals 14
    .param p1, "launchedFromMW"    # Landroid/util/MutableBoolean;

    .prologue
    .line 761
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getTaskStackViews()Ljava/util/List;

    move-result-object v11

    .line 762
    .local v11, "stackViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskStackView;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v10

    .line 763
    .local v10, "stackCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v10, :cond_5

    .line 764
    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/views/TaskStackView;

    .line 765
    .local v1, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v3

    .line 766
    .local v3, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v3}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v13

    .line 769
    .local v13, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 770
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 771
    .local v12, "taskCount":I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    if-ge v8, v12, :cond_4

    .line 772
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/model/Task;

    iget-boolean v0, v0, Lcom/android/systemui/recents/model/Task;->isLaunchTarget:Z

    if-eqz v0, :cond_3

    .line 773
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/model/Task;

    .line 774
    .local v4, "task":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {v1, v4}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v2

    .line 778
    .local v2, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v4}, Lcom/android/systemui/recents/model/Task;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v9

    .line 779
    .local v9, "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 781
    :cond_0
    if-eqz p1, :cond_1

    .line 782
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    .line 792
    :cond_1
    :goto_2
    const/4 v0, 0x1

    .line 797
    .end local v1    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    .end local v2    # "tv":Lcom/android/systemui/recents/views/TaskView;
    .end local v3    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v4    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v8    # "j":I
    .end local v9    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v12    # "taskCount":I
    .end local v13    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :goto_3
    return v0

    .line 785
    .restart local v1    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    .restart local v2    # "tv":Lcom/android/systemui/recents/views/TaskView;
    .restart local v3    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .restart local v4    # "task":Lcom/android/systemui/recents/model/Task;
    .restart local v8    # "j":I
    .restart local v9    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .restart local v12    # "taskCount":I
    .restart local v13    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_2
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/recents/views/RecentsView;->onTaskViewClicked(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;ZZ)V

    goto :goto_2

    .line 771
    .end local v2    # "tv":Lcom/android/systemui/recents/views/TaskView;
    .end local v4    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v9    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 763
    .end local v8    # "j":I
    .end local v12    # "taskCount":I
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 797
    .end local v1    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    .end local v3    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v13    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_5
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public launchTask(Lcom/android/systemui/recents/model/Task;)Z
    .locals 13
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    const/4 v5, 0x0

    .line 739
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getTaskStackViews()Ljava/util/List;

    move-result-object v10

    .line 740
    .local v10, "stackViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskStackView;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    .line 741
    .local v9, "stackCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v9, :cond_0

    .line 742
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/views/TaskStackView;

    .line 743
    .local v1, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v3

    .line 745
    .local v3, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v12

    .line 746
    .local v12, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v11

    .line 747
    .local v11, "taskViewCount":I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    if-ge v8, v11, :cond_2

    .line 748
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskView;

    .line 749
    .local v2, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    if-ne v0, p1, :cond_1

    move-object v0, p0

    move-object v4, p1

    move v6, v5

    .line 750
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/recents/views/RecentsView;->onTaskViewClicked(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;ZZ)V

    .line 751
    const/4 v5, 0x1

    .line 755
    .end local v1    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    .end local v2    # "tv":Lcom/android/systemui/recents/views/TaskView;
    .end local v3    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v8    # "j":I
    .end local v11    # "taskViewCount":I
    .end local v12    # "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    :cond_0
    return v5

    .line 747
    .restart local v1    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    .restart local v2    # "tv":Lcom/android/systemui/recents/views/TaskView;
    .restart local v3    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .restart local v8    # "j":I
    .restart local v11    # "taskViewCount":I
    .restart local v12    # "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 741
    .end local v2    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method public moveTopTask()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1129
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getTaskStackViews()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskStackView;

    .line 1130
    .local v2, "tsv":Lcom/android/systemui/recents/views/TaskStackView;
    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getTopMostTaskView()Lcom/android/systemui/recents/views/TaskView;

    move-result-object v1

    .line 1131
    .local v1, "topTaskView":Lcom/android/systemui/recents/views/TaskView;
    if-eqz v1, :cond_0

    .line 1132
    invoke-virtual {v1, v5}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 1133
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v6, "window"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 1135
    .local v0, "rotation":I
    invoke-static {}, Lcom/android/systemui/recents/views/DualScreenViewControl;->getInstance()Lcom/android/systemui/recents/views/DualScreenViewControl;

    move-result-object v6

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v3}, Lcom/android/systemui/recents/RecentsConfiguration;->getDisplayId()I

    move-result v7

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->isLandscape:Z

    if-eqz v3, :cond_1

    move v3, v4

    :goto_0
    iget-object v8, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v8, v8, Lcom/android/systemui/recents/RecentsConfiguration;->isLandscape:Z

    if-eqz v8, :cond_2

    const/4 v8, 0x3

    if-ne v0, v8, :cond_2

    :goto_1
    invoke-virtual {v6, v7, v1, v3, v4}, Lcom/android/systemui/recents/views/DualScreenViewControl;->moveTopTask(ILcom/android/systemui/recents/views/TaskView;IZ)V

    .line 1139
    .end local v0    # "rotation":I
    :cond_0
    return-void

    .restart local v0    # "rotation":I
    :cond_1
    move v3, v5

    .line 1135
    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_1
.end method

.method public onAllTaskViewsDismissed(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1619
    .local p1, "removedTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    if-eqz p1, :cond_0

    .line 1620
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1621
    .local v1, "taskCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1622
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/RecentsView;->onTaskViewDismissed(Lcom/android/systemui/recents/model/Task;)V

    .line 1621
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1626
    .end local v0    # "i":I
    .end local v1    # "taskCount":I
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    invoke-interface {v2}, Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;->onAllTaskViewsDismissed()V

    .line 1629
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "overview_task_all_dismissed"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1630
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 975
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsConfiguration;->updateSystemInsets(Landroid/graphics/Rect;)V

    .line 976
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->requestLayout()V

    .line 977
    invoke-virtual {p1}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method public onChangeMultiwindowEnabled()V
    .locals 8

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getChildCount()I

    move-result v1

    .line 196
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 197
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 198
    .local v0, "child":Landroid/view/View;
    iget-object v7, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Lcom/android/systemui/recents/RecentsAppWidgetHostView;

    if-eq v0, v7, :cond_0

    move-object v4, v0

    .line 199
    check-cast v4, Lcom/android/systemui/recents/views/TaskStackView;

    .line 200
    .local v4, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v5

    .line 201
    .local v5, "taskCount":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v5, :cond_0

    .line 202
    invoke-virtual {v4, v3}, Lcom/android/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/recents/views/TaskView;

    .line 203
    .local v6, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskView;->setNoUserInteractionState()V

    .line 201
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 196
    .end local v3    # "j":I
    .end local v4    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    .end local v5    # "taskCount":I
    .end local v6    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 207
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public onKeyDown(I)Z
    .locals 10
    .param p1, "keyCode"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 993
    iget-object v9, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsRemoveAllButton:Landroid/view/View;

    if-nez v9, :cond_1

    .line 1068
    :cond_0
    :goto_0
    return v7

    .line 995
    :cond_1
    const/16 v3, 0x13

    .line 996
    .local v3, "forwardKey":I
    const/16 v0, 0x14

    .line 997
    .local v0, "backwardKey":I
    const/4 v2, 0x0

    .line 998
    .local v2, "displayChangeKey":I
    const/4 v6, 0x0

    .line 1026
    .local v6, "rotation":I
    if-eq p1, v3, :cond_2

    if-ne p1, v0, :cond_5

    .line 1027
    :cond_2
    iget-object v9, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    sget v9, Lcom/android/systemui/recents/RecentsConfiguration;->folderType:I

    if-eqz v9, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->hasFocusedTaskStackView()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1028
    :cond_3
    if-ne p1, v3, :cond_4

    move v7, v8

    :cond_4
    invoke-virtual {p0, v7}, Lcom/android/systemui/recents/views/RecentsView;->focusNextTask(Z)V

    move v7, v8

    .line 1029
    goto :goto_0

    .line 1031
    :cond_5
    sget-boolean v9, Lcom/android/systemui/recents/Constants$Features;->EnableCloseAllLayout:Z

    if-nez v9, :cond_0

    .line 1032
    iget-object v9, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    .line 1033
    .local v1, "curFocus":Landroid/view/View;
    move-object v4, v1

    .line 1034
    .local v4, "nextFocus":Landroid/view/View;
    if-eqz v4, :cond_7

    iget-object v9, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v9, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v5

    .line 1036
    .local v5, "nextFocusIdx":I
    :cond_6
    :goto_1
    const/16 v9, 0x15

    if-ne p1, v9, :cond_8

    add-int/lit8 v5, v5, -0x2

    .line 1038
    :goto_2
    iget-object v9, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v9, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1039
    if-nez v4, :cond_9

    .line 1042
    :goto_3
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1043
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    move v7, v8

    .line 1044
    goto :goto_0

    .line 1034
    .end local v5    # "nextFocusIdx":I
    :cond_7
    const/4 v5, -0x2

    goto :goto_1

    .line 1036
    .restart local v5    # "nextFocusIdx":I
    :cond_8
    add-int/lit8 v5, v5, 0x2

    goto :goto_2

    .line 1040
    :cond_9
    invoke-virtual {v4}, Landroid/view/View;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_6

    goto :goto_3
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 951
    iget-object v5, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Lcom/android/systemui/recents/RecentsAppWidgetHostView;

    if-eqz v5, :cond_0

    .line 952
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 953
    .local v1, "searchBarSpaceBounds":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredHeight()I

    move-result v7

    iget-object v8, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v8, v8, Lcom/android/systemui/recents/RecentsConfiguration;->systemInsets:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5, v6, v7, v8, v1}, Lcom/android/systemui/recents/RecentsConfiguration;->getSearchBarBounds(IIILandroid/graphics/Rect;)V

    .line 955
    iget-object v5, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Lcom/android/systemui/recents/RecentsAppWidgetHostView;

    iget v6, v1, Landroid/graphics/Rect;->left:I

    iget v7, v1, Landroid/graphics/Rect;->top:I

    iget v8, v1, Landroid/graphics/Rect;->right:I

    iget v9, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/systemui/recents/RecentsAppWidgetHostView;->layout(IIII)V

    .line 961
    .end local v1    # "searchBarSpaceBounds":Landroid/graphics/Rect;
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getTaskStackViews()Ljava/util/List;

    move-result-object v4

    .line 962
    .local v4, "stackViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskStackView;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 963
    .local v2, "stackCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 964
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/views/TaskStackView;

    .line 965
    .local v3, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_1

    .line 966
    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, p2

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, p3

    invoke-virtual {v3, p2, p3, v5, v6}, Lcom/android/systemui/recents/views/TaskStackView;->layout(IIII)V

    .line 963
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 970
    .end local v3    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    .line 909
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 910
    .local v1, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 913
    .local v2, "height":I
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 914
    .local v5, "searchBarSpaceBounds":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Lcom/android/systemui/recents/RecentsAppWidgetHostView;

    if-eqz v0, :cond_0

    .line 915
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->systemInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/android/systemui/recents/RecentsConfiguration;->getSearchBarBounds(IIILandroid/graphics/Rect;)V

    .line 916
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Lcom/android/systemui/recents/RecentsAppWidgetHostView;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-static {v3, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v4, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/recents/RecentsAppWidgetHostView;->measure(II)V

    .line 921
    :cond_0
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 922
    .local v6, "taskStackBounds":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->systemInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->systemInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/recents/RecentsConfiguration;->getAvailableTaskStackBounds(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 927
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getTaskStackViews()Ljava/util/List;

    move-result-object v10

    .line 928
    .local v10, "stackViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskStackView;>;"
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/RecentsViewLayoutAlgorithm;

    invoke-virtual {v0, v10, v6}, Lcom/android/systemui/recents/views/RecentsViewLayoutAlgorithm;->computeStackRects(Ljava/util/List;Landroid/graphics/Rect;)Ljava/util/List;

    move-result-object v11

    .line 930
    .local v11, "stackViewsBounds":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v8

    .line 931
    .local v8, "stackCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v8, :cond_2

    .line 932
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/recents/views/TaskStackView;

    .line 933
    .local v9, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    invoke-virtual {v9}, Lcom/android/systemui/recents/views/TaskStackView;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_1

    .line 937
    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Lcom/android/systemui/recents/views/TaskStackView;->setStackInsetRect(Landroid/graphics/Rect;)V

    .line 938
    invoke-virtual {v9, p1, p2}, Lcom/android/systemui/recents/views/TaskStackView;->measure(II)V

    .line 931
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 942
    .end local v9    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    :cond_2
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/recents/views/RecentsView;->setMeasuredDimension(II)V

    .line 943
    return-void
.end method

.method public onPackagesChanged(Lcom/android/systemui/recents/model/RecentsPackageMonitor;Ljava/lang/String;I)V
    .locals 4
    .param p1, "monitor"    # Lcom/android/systemui/recents/model/RecentsPackageMonitor;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 1814
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getTaskStackViews()Ljava/util/List;

    move-result-object v3

    .line 1815
    .local v3, "stackViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskStackView;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 1816
    .local v1, "stackCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1817
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskStackView;

    .line 1818
    .local v2, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/systemui/recents/views/TaskStackView;->onPackagesChanged(Lcom/android/systemui/recents/model/RecentsPackageMonitor;Ljava/lang/String;I)V

    .line 1816
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1820
    .end local v2    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    :cond_0
    return-void
.end method

.method public onRecentsHidden()V
    .locals 4

    .prologue
    .line 1635
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getTaskStackViews()Ljava/util/List;

    move-result-object v3

    .line 1636
    .local v3, "stackViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskStackView;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 1637
    .local v1, "stackCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1638
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskStackView;

    .line 1639
    .local v2, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->onRecentsHidden()V

    .line 1637
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1641
    .end local v2    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    :cond_0
    return-void
.end method

.method public onShortcutPackagesChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 344
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->shortcutComponentNames:[Ljava/lang/String;

    if-nez v1, :cond_1

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->shortcutComponentNames:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 347
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->shortcutComponentNames:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 348
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->shortcutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 349
    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsView;->updateShortcutLayout()V

    goto :goto_0

    .line 346
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public onTaskResize(Lcom/android/systemui/recents/model/Task;)V
    .locals 1
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 1673
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    if-eqz v0, :cond_0

    .line 1674
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    invoke-interface {v0, p1}, Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;->onTaskResize(Lcom/android/systemui/recents/model/Task;)V

    .line 1676
    :cond_0
    return-void
.end method

.method public onTaskStackFilterTriggered()V
    .locals 4

    .prologue
    .line 1646
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Lcom/android/systemui/recents/RecentsAppWidgetHostView;

    if-eqz v0, :cond_0

    .line 1647
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Lcom/android/systemui/recents/RecentsAppWidgetHostView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsAppWidgetHostView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->fastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->filteringCurrentViewsAnimDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1655
    :cond_0
    return-void
.end method

.method public onTaskStackUnfilterTriggered()V
    .locals 4

    .prologue
    .line 1660
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Lcom/android/systemui/recents/RecentsAppWidgetHostView;

    if-eqz v0, :cond_0

    .line 1661
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Lcom/android/systemui/recents/RecentsAppWidgetHostView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsAppWidgetHostView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->fastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->filteringNewViewsAnimDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1669
    :cond_0
    return-void
.end method

.method public onTaskViewAppInfoClicked(Lcom/android/systemui/recents/model/Task;)V
    .locals 6
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    const/4 v5, 0x0

    .line 1596
    iget-object v2, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v0, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    .line 1597
    .local v0, "baseIntent":Landroid/content/Intent;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v3, "package"

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1599
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1600
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    move-result-object v2

    new-instance v3, Landroid/os/UserHandle;

    iget-object v4, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v4, v4, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v5, v3}, Landroid/app/TaskStackBuilder;->startActivities(Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 1603
    return-void
.end method

.method public onTaskViewClicked(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;ZZ)V
    .locals 31
    .param p1, "stackView"    # Lcom/android/systemui/recents/views/TaskStackView;
    .param p2, "tv"    # Lcom/android/systemui/recents/views/TaskView;
    .param p3, "stack"    # Lcom/android/systemui/recents/model/TaskStack;
    .param p4, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p5, "lockToTask"    # Z
    .param p6, "toSplit"    # Z

    .prologue
    .line 1291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v2}, Lcom/android/systemui/recents/RecentsConfiguration;->showOnlySplitTask()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1293
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    if-eqz p2, :cond_9

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    :goto_0
    invoke-interface {v3, v2}, Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;->onTaskViewClicked(Lcom/android/systemui/recents/model/Task;)V

    .line 1297
    :cond_0
    new-instance v6, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v6}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    .line 1299
    .local v6, "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    const/4 v4, 0x0

    .line 1300
    .local v4, "offsetX":I
    const/4 v5, 0x0

    .line 1301
    .local v5, "offsetY":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v26

    .line 1302
    .local v26, "stackScroll":F
    if-nez p2, :cond_a

    .line 1306
    move-object/from16 v9, p1

    .line 1307
    .local v9, "sourceView":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v26

    invoke-virtual {v2, v0, v1, v6, v3}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v6

    .line 1308
    iget-object v2, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    .line 1309
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->displayRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 1316
    :goto_1
    new-instance v27, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct/range {v27 .. v27}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>()V

    .line 1318
    .local v27, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/recents/views/RecentsView;->mFinishActivity:Z

    .line 1319
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/RecentsView;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    if-eqz v2, :cond_c

    .line 1320
    const/4 v2, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 1321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/RecentsView;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    invoke-virtual {v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1322
    const/16 v2, 0xc

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 1349
    :cond_1
    :goto_2
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v25

    .line 1351
    .local v25, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    const/16 v24, 0x0

    .line 1352
    .local v24, "opts":Landroid/app/ActivityOptions;
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_6

    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-lez v2, :cond_6

    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-lez v2, :cond_6

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1355
    const/4 v7, 0x0

    .line 1357
    .local v7, "animStartedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    const/4 v8, 0x0

    .line 1359
    .local v8, "transitStartedListener":Landroid/app/ActivityOptions$OnTransitionStartedListener;
    if-eqz p5, :cond_2

    .line 1360
    new-instance v7, Lcom/android/systemui/recents/views/RecentsView$5;

    .end local v7    # "animStartedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v7, v0, v1}, Lcom/android/systemui/recents/views/RecentsView$5;-><init>(Lcom/android/systemui/recents/views/RecentsView;Lcom/android/systemui/recents/model/Task;)V

    .line 1384
    .restart local v7    # "animStartedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    :cond_2
    sget-boolean v2, Lcom/android/systemui/recents/Constants$Features;->EnableExitAnimToApp:Z

    if-eqz v2, :cond_4

    .line 1385
    if-nez v7, :cond_3

    .line 1386
    new-instance v7, Lcom/android/systemui/recents/views/RecentsView$6;

    .end local v7    # "animStartedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v7, v0, v1}, Lcom/android/systemui/recents/views/RecentsView$6;-><init>(Lcom/android/systemui/recents/views/RecentsView;Lcom/android/systemui/recents/model/Task;)V

    .line 1399
    .restart local v7    # "animStartedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    :cond_3
    new-instance v8, Lcom/android/systemui/recents/views/RecentsView$7;

    .end local v8    # "transitStartedListener":Landroid/app/ActivityOptions$OnTransitionStartedListener;
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v8, v0, v1}, Lcom/android/systemui/recents/views/RecentsView$7;-><init>(Lcom/android/systemui/recents/views/RecentsView;Lcom/android/systemui/recents/model/Task;)V

    .line 1412
    .restart local v8    # "transitStartedListener":Landroid/app/ActivityOptions$OnTransitionStartedListener;
    :cond_4
    if-eqz p2, :cond_5

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    .line 1413
    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/recents/views/RecentsView;->postDrawHeaderThumbnailTransitionRunnable(Lcom/android/systemui/recents/views/TaskView;IILcom/android/systemui/recents/views/TaskViewTransform;Landroid/app/ActivityOptions$OnAnimationStartedListener;Landroid/app/ActivityOptions$OnTransitionStartedListener;)V

    .line 1417
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->multiStackEnabled:Z

    if-eqz v2, :cond_10

    .line 1418
    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f050076

    const v11, 0x7f050077

    invoke-virtual {v9}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v12

    invoke-static {v2, v3, v11, v12, v7}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v24

    .line 1433
    .end local v7    # "animStartedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    .end local v8    # "transitStartedListener":Landroid/app/ActivityOptions$OnTransitionStartedListener;
    :cond_6
    :goto_3
    move-object/from16 v16, v24

    .line 1434
    .local v16, "launchOpts":Landroid/app/ActivityOptions;
    new-instance v10, Lcom/android/systemui/recents/views/RecentsView$8;

    move-object/from16 v11, p0

    move-object/from16 v12, p4

    move-object/from16 v13, v25

    move-object/from16 v14, v27

    move/from16 v15, p5

    invoke-direct/range {v10 .. v16}, Lcom/android/systemui/recents/views/RecentsView$8;-><init>(Lcom/android/systemui/recents/views/RecentsView;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/misc/SystemServicesProxy;Lcom/samsung/android/multiwindow/MultiWindowStyle;ZLandroid/app/ActivityOptions;)V

    .line 1538
    .local v10, "launchRunnable":Ljava/lang/Runnable;
    new-instance v17, Lcom/android/systemui/recents/views/RecentsView$9;

    move-object/from16 v18, p0

    move-object/from16 v19, p2

    move-object/from16 v20, v10

    move-object/from16 v21, p4

    move-object/from16 v22, p1

    move/from16 v23, p5

    invoke-direct/range {v17 .. v23}, Lcom/android/systemui/recents/views/RecentsView$9;-><init>(Lcom/android/systemui/recents/views/RecentsView;Lcom/android/systemui/recents/views/TaskView;Ljava/lang/Runnable;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskStackView;Z)V

    .line 1561
    .local v17, "launch":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v2}, Lcom/android/systemui/recents/RecentsConfiguration;->getDisplayId()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    const/16 v28, 0x0

    .line 1572
    .local v28, "targetDisplayId":I
    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/lang/Runnable;->run()V

    .line 1577
    const/16 v30, 0x0

    .line 1578
    .local v30, "taskIndexFromFront":I
    invoke-virtual/range {p3 .. p4}, Lcom/android/systemui/recents/model/TaskStack;->indexOfTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v29

    .line 1579
    .local v29, "taskIndex":I
    const/4 v2, -0x1

    move/from16 v0, v29

    if-le v0, v2, :cond_7

    .line 1580
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v2

    sub-int v2, v2, v29

    add-int/lit8 v30, v2, -0x1

    .line 1582
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "overview_task_launch_index"

    move/from16 v0, v30

    invoke-static {v2, v3, v0}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1586
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v2}, Lcom/android/systemui/recents/RecentsConfiguration;->showOnlySplitTask()Z

    move-result v2

    if-nez v2, :cond_13

    .line 1591
    :cond_8
    :goto_5
    return-void

    .line 1293
    .end local v4    # "offsetX":I
    .end local v5    # "offsetY":I
    .end local v6    # "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .end local v9    # "sourceView":Landroid/view/View;
    .end local v10    # "launchRunnable":Ljava/lang/Runnable;
    .end local v16    # "launchOpts":Landroid/app/ActivityOptions;
    .end local v17    # "launch":Ljava/lang/Runnable;
    .end local v24    # "opts":Landroid/app/ActivityOptions;
    .end local v25    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .end local v26    # "stackScroll":F
    .end local v27    # "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v28    # "targetDisplayId":I
    .end local v29    # "taskIndex":I
    .end local v30    # "taskIndexFromFront":I
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1311
    .restart local v4    # "offsetX":I
    .restart local v5    # "offsetY":I
    .restart local v6    # "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .restart local v26    # "stackScroll":F
    :cond_a
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    .line 1312
    .restart local v9    # "sourceView":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v26

    invoke-virtual {v2, v0, v1, v6, v3}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v6

    goto/16 :goto_1

    .line 1324
    .restart local v27    # "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_b
    const/4 v2, 0x3

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 1325
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/recents/views/RecentsView;->mFinishActivity:Z

    goto/16 :goto_2

    .line 1327
    :cond_c
    if-eqz p6, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/RecentsView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportSimplificationUI(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1328
    sget-boolean v2, Lcom/android/systemui/recents/Constants$Features;->EnableExitAnimToApp:Z

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    if-eqz v2, :cond_d

    .line 1329
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    invoke-interface {v2}, Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;->clearDeferSurfaceDestroyFlag()V

    .line 1332
    :cond_d
    const/4 v2, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 1333
    const/4 v2, 0x3

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 1334
    const/high16 v2, 0x2000000

    const/4 v3, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 1335
    const/high16 v2, 0x10000000

    const/4 v3, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    goto/16 :goto_2

    .line 1336
    :cond_e
    if-nez p6, :cond_1

    .line 1337
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/android/systemui/recents/model/Task;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_f

    .line 1338
    const-string v2, "RC01"

    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/systemui/recents/model/Task;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/systemui/recents/views/RecentsView;->sendDiagnosticLogs(Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    :cond_f
    sget-boolean v2, Lcom/android/systemui/recents/Constants$Features;->EnableExitAnimToApp:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    if-eqz v2, :cond_1

    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/android/systemui/recents/model/Task;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-eqz v2, :cond_1

    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/android/systemui/recents/model/Task;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1342
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    invoke-interface {v2}, Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;->clearDeferSurfaceDestroyFlag()V

    goto/16 :goto_2

    .line 1423
    .restart local v7    # "animStartedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    .restart local v8    # "transitStartedListener":Landroid/app/ActivityOptions$OnTransitionStartedListener;
    .restart local v24    # "opts":Landroid/app/ActivityOptions;
    .restart local v25    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    :cond_10
    const/4 v2, 0x1

    const/4 v3, 0x1

    sget-object v11, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->createAshmemBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    iget-object v2, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v13

    iget-object v2, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v14

    invoke-virtual {v9}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v15

    if-nez p2, :cond_11

    move-object/from16 v17, v8

    :goto_6
    move v11, v4

    move v12, v5

    move-object/from16 v16, v7

    invoke-static/range {v9 .. v17}, Landroid/app/ActivityOptions;->makeThumbnailAspectScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Landroid/app/ActivityOptions$OnTransitionStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v24

    goto/16 :goto_3

    :cond_11
    const/16 v17, 0x0

    goto :goto_6

    .line 1561
    .end local v7    # "animStartedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    .end local v8    # "transitStartedListener":Landroid/app/ActivityOptions$OnTransitionStartedListener;
    .restart local v10    # "launchRunnable":Ljava/lang/Runnable;
    .restart local v16    # "launchOpts":Landroid/app/ActivityOptions;
    .restart local v17    # "launch":Ljava/lang/Runnable;
    :cond_12
    const/16 v28, 0x1

    goto/16 :goto_4

    .line 1588
    .restart local v28    # "targetDisplayId":I
    .restart local v29    # "taskIndex":I
    .restart local v30    # "taskIndexFromFront":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    if-eqz p2, :cond_14

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    :goto_7
    invoke-interface {v3, v2}, Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;->onTaskViewClicked(Lcom/android/systemui/recents/model/Task;)V

    goto/16 :goto_5

    :cond_14
    const/4 v2, 0x0

    goto :goto_7
.end method

.method public onTaskViewDismissed(Lcom/android/systemui/recents/model/Task;)V
    .locals 3
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 1610
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v0

    .line 1611
    .local v0, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->deleteTaskData(Lcom/android/systemui/recents/model/Task;Z)V

    .line 1614
    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    iget-object v2, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->removeTask(I)V

    .line 1615
    return-void
.end method

.method public onTaskViewFocusSwitched(IZ)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "onlyFocusChange"    # Z

    .prologue
    .line 1686
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;->onTaskViewFocusSwitched(IZ)V

    .line 1687
    return-void
.end method

.method public onTaskViewMoved()V
    .locals 1

    .prologue
    .line 1681
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    invoke-interface {v0}, Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;->onTaskViewMoved()V

    .line 1682
    return-void
.end method

.method public onToggleRecentsBottomContainer(Z)V
    .locals 6
    .param p1, "show"    # Z

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 1703
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsBottomContainer:Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    .line 1759
    :cond_0
    :goto_0
    return-void

    .line 1704
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsRemoveAllButton:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 1713
    sget-boolean v2, Lcom/android/systemui/recents/Constants$Features;->EnableCloseAllLayout:Z

    if-nez v2, :cond_3

    .line 1714
    if-eqz p1, :cond_2

    .line 1715
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsRemoveAllButton:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 1717
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsRemoveAllButton:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 1722
    :cond_3
    sget-boolean v2, Lcom/android/systemui/recents/Constants$Features;->EnableShortcutLayout:Z

    if-eqz v2, :cond_4

    sget-boolean v2, Lcom/android/systemui/recents/Constants$Features;->EnableCloseAllLayout:Z

    if-eqz v2, :cond_4

    .line 1723
    if-eqz p1, :cond_8

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->closeAllContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, v5, :cond_8

    .line 1724
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->closeAllContainer:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1734
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-nez v2, :cond_5

    if-nez p1, :cond_0

    .line 1735
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-ne v2, v5, :cond_6

    if-eqz p1, :cond_0

    .line 1738
    :cond_6
    if-eqz p1, :cond_9

    .line 1739
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mContext:Landroid/content/Context;

    const v3, 0x7f050083

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1743
    .local v0, "anim":Landroid/view/animation/Animation;
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->sineInOut90Interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1745
    sget-boolean v2, Lcom/android/systemui/recents/Constants$Features;->EnableCloseAllLayout:Z

    if-eqz v2, :cond_a

    .line 1746
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 1747
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1754
    :cond_7
    :goto_2
    if-eqz p1, :cond_b

    .line 1755
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 1726
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_8
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithNoRecentTasks:Z

    if-eqz v2, :cond_4

    .line 1727
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1728
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->closeAllContainer:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1741
    :cond_9
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mContext:Landroid/content/Context;

    const v3, 0x7f050078

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto :goto_1

    .line 1748
    :cond_a
    sget-boolean v2, Lcom/android/systemui/recents/Constants$Features;->EnableShortcutLayout:Z

    if-eqz v2, :cond_7

    .line 1749
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsBottomContainer:Landroid/view/ViewGroup;

    const v3, 0x7f0f0268

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1750
    .local v1, "shorcut":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 1751
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2

    .line 1757
    .end local v1    # "shorcut":Landroid/view/View;
    :cond_b
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public onUserInteraction()V
    .locals 4

    .prologue
    .line 983
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getTaskStackViews()Ljava/util/List;

    move-result-object v3

    .line 984
    .local v3, "stackViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskStackView;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 985
    .local v1, "stackCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 986
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskStackView;

    .line 987
    .local v2, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->onUserInteraction()V

    .line 985
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 989
    .end local v2    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    :cond_0
    return-void
.end method

.method public removeExitAnimationHandler()V
    .locals 2

    .prologue
    .line 1266
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mH:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1267
    return-void
.end method

.method public requestUpdateRecentsLayout()V
    .locals 1

    .prologue
    .line 1696
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    invoke-interface {v0}, Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;->requestUpdateRecentsLayout()V

    .line 1697
    return-void
.end method

.method public resetFocusedTask()V
    .locals 4

    .prologue
    .line 1119
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getChildCount()I

    move-result v1

    .line 1120
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1121
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1122
    .local v0, "child":Landroid/view/View;
    instance-of v3, v0, Lcom/android/systemui/recents/views/TaskStackView;

    if-eqz v3, :cond_0

    .line 1123
    check-cast v0, Lcom/android/systemui/recents/views/TaskStackView;

    .end local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->resetFocusedTask()V

    .line 1120
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1126
    :cond_1
    return-void
.end method

.method public setCallbacks(Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    .prologue
    .line 612
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    .line 613
    return-void
.end method

.method public setDebugOverlay(Lcom/android/systemui/recents/views/DebugOverlayView;)V
    .locals 0
    .param p1, "overlay"    # Lcom/android/systemui/recents/views/DebugOverlayView;

    .prologue
    .line 617
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsView;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    .line 618
    return-void
.end method

.method public setMultiWindowActivity(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsView;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    .line 211
    return-void
.end method

.method public setRecentsBottomContainerView(Landroid/view/ViewGroup;)V
    .locals 7
    .param p1, "view"    # Landroid/view/ViewGroup;

    .prologue
    const v6, 0x7f0f026e

    const/4 v5, 0x0

    .line 216
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsBottomContainer:Landroid/view/ViewGroup;

    .line 217
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsButtonClickListener:Lcom/android/systemui/recents/views/RecentsView$OnClickRecentsButton;

    if-nez v3, :cond_0

    .line 218
    new-instance v3, Lcom/android/systemui/recents/views/RecentsView$OnClickRecentsButton;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/recents/views/RecentsView$OnClickRecentsButton;-><init>(Lcom/android/systemui/recents/views/RecentsView;Lcom/android/systemui/recents/views/RecentsView$1;)V

    iput-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsButtonClickListener:Lcom/android/systemui/recents/views/RecentsView$OnClickRecentsButton;

    .line 220
    :cond_0
    sget-boolean v3, Lcom/android/systemui/recents/Constants$Features;->EnableCloseAllLayout:Z

    if-nez v3, :cond_5

    .line 221
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 226
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsBottomContainer:Landroid/view/ViewGroup;

    const v4, 0x7f0f026f

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsButtonContainer:Landroid/view/ViewGroup;

    .line 229
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 230
    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsView;->updateRecentsButtonsLayout()V

    .line 231
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 232
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 233
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 234
    .local v1, "child":Landroid/view/View;
    instance-of v3, v1, Landroid/widget/Button;

    if-nez v3, :cond_1

    instance-of v3, v1, Landroid/widget/ImageButton;

    if-eqz v3, :cond_2

    .line 235
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsButtonClickListener:Lcom/android/systemui/recents/views/RecentsView$OnClickRecentsButton;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/view/View;->setHoverPopupType(I)V

    .line 232
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 239
    .end local v1    # "child":Landroid/view/View;
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsRemoveAllButton:Landroid/view/View;

    .line 249
    .end local v0    # "N":I
    .end local v2    # "i":I
    :goto_1
    sget-boolean v3, Lcom/android/systemui/recents/Constants$Features;->EnableShortcutLayout:Z

    if-eqz v3, :cond_4

    .line 250
    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsView;->updateShortcutLayout()V

    .line 252
    :cond_4
    return-void

    .line 241
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsBottomContainer:Landroid/view/ViewGroup;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 242
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsBottomContainer:Landroid/view/ViewGroup;

    const v4, 0x7f0f0270

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->closeAllContainer:Landroid/view/View;

    .line 243
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->closeAllContainer:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 244
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->closeAllContainer:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsRemoveAllButton:Landroid/view/View;

    .line 245
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsRemoveAllButton:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsButtonClickListener:Lcom/android/systemui/recents/views/RecentsView$OnClickRecentsButton;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsRemoveAllButton:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setHoverPopupType(I)V

    goto :goto_1
.end method

.method public setSearchBar(Lcom/android/systemui/recents/RecentsAppWidgetHostView;)V
    .locals 0
    .param p1, "searchBar"    # Lcom/android/systemui/recents/RecentsAppWidgetHostView;

    .prologue
    .line 872
    return-void
.end method

.method public setSearchBarVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 892
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Lcom/android/systemui/recents/RecentsAppWidgetHostView;

    if-eqz v0, :cond_0

    .line 893
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Lcom/android/systemui/recents/RecentsAppWidgetHostView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/RecentsAppWidgetHostView;->setVisibility(I)V

    .line 895
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Lcom/android/systemui/recents/RecentsAppWidgetHostView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsAppWidgetHostView;->bringToFront()V

    .line 898
    :cond_0
    sget-boolean v0, Lcom/android/systemui/recents/Constants$Features;->EnableCloseAllLayout:Z

    if-nez v0, :cond_1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 899
    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsView;->updateRecentsButtonsLayout()V

    .line 902
    :cond_1
    return-void
.end method

.method public setTaskStacks(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/TaskStack;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 622
    .local p1, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/TaskStack;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 625
    .local v1, "numStacks":I
    const/4 v2, 0x0

    .line 626
    .local v2, "numTaskStacksToKeep":I
    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v6, v6, Lcom/android/systemui/recents/RecentsConfiguration;->launchedReuseTaskStackViews:Z

    if-eqz v6, :cond_0

    .line 627
    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackViews:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 629
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackViews:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, v2, :cond_1

    .line 631
    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackViews:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackView;->destroyViewPool()V

    .line 633
    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackViews:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {p0, v6}, Lcom/android/systemui/recents/views/RecentsView;->removeView(Landroid/view/View;)V

    .line 629
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 637
    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_2

    .line 638
    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackViews:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/recents/views/TaskStackView;

    .line 640
    .local v5, "tsv":Lcom/android/systemui/recents/views/TaskStackView;
    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskStackView;->reset()V

    .line 641
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v5, v6}, Lcom/android/systemui/recents/views/TaskStackView;->setStack(Lcom/android/systemui/recents/model/TaskStack;)V

    .line 637
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 645
    .end local v5    # "tsv":Lcom/android/systemui/recents/views/TaskStackView;
    :cond_2
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsView;->mStacks:Ljava/util/ArrayList;

    .line 646
    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackViews:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    :goto_2
    if-ge v0, v1, :cond_3

    .line 647
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/model/TaskStack;

    .line 648
    .local v3, "stack":Lcom/android/systemui/recents/model/TaskStack;
    new-instance v4, Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6, v3}, Lcom/android/systemui/recents/views/TaskStackView;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/model/TaskStack;)V

    .line 649
    .local v4, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    invoke-virtual {v4, p0}, Lcom/android/systemui/recents/views/TaskStackView;->setCallbacks(Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;)V

    .line 650
    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/views/RecentsView;->addView(Landroid/view/View;)V

    .line 651
    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackViews:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 646
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 660
    .end local v3    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v4    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v6, v6, Lcom/android/systemui/recents/RecentsConfiguration;->debugModeEnabled:Z

    if-eqz v6, :cond_4

    .line 661
    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackViews:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    :goto_3
    if-ltz v0, :cond_4

    .line 662
    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackViews:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/views/TaskStackView;

    .line 663
    .restart local v4    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentsView;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    invoke-virtual {v4, v6}, Lcom/android/systemui/recents/views/TaskStackView;->setDebugOverlay(Lcom/android/systemui/recents/views/DebugOverlayView;)V

    .line 661
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 668
    .end local v4    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    :cond_4
    sget-boolean v6, Lcom/android/systemui/recents/Constants$Features;->EnableRecentsButtonsLayout:Z

    if-eqz v6, :cond_6

    .line 669
    sget-boolean v6, Lcom/android/systemui/recents/Constants$Features;->EnableCloseAllLayout:Z

    if-nez v6, :cond_5

    .line 670
    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsView;->updateRecentsButtonsLayout()V

    .line 673
    :cond_5
    sget-boolean v6, Lcom/android/systemui/recents/Constants$Features;->EnableShortcutLayout:Z

    if-eqz v6, :cond_6

    .line 674
    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsView;->updateShortcutTextColor()V

    .line 680
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->requestLayout()V

    .line 681
    return-void
.end method

.method public startCloseAllRecentsAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewCloseAllContext;)V
    .locals 5
    .param p1, "ctx"    # Lcom/android/systemui/recents/views/ViewAnimation$TaskViewCloseAllContext;

    .prologue
    .line 854
    iget-object v4, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewCloseAllContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 856
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getChildCount()I

    move-result v1

    .line 857
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 858
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 859
    .local v0, "child":Landroid/view/View;
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Lcom/android/systemui/recents/RecentsAppWidgetHostView;

    if-eq v0, v4, :cond_0

    move-object v3, v0

    .line 860
    check-cast v3, Lcom/android/systemui/recents/views/TaskStackView;

    .line 861
    .local v3, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    const/4 v4, 0x0

    iput v4, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewCloseAllContext;->startOffset:I

    .line 862
    invoke-virtual {v3, p1}, Lcom/android/systemui/recents/views/TaskStackView;->startCloseAllAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewCloseAllContext;)V

    .line 857
    .end local v3    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 865
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    iget-object v4, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewCloseAllContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrement()V

    .line 866
    return-void
.end method

.method public startEnterRecentsAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;)V
    .locals 5
    .param p1, "ctx"    # Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;

    .prologue
    .line 804
    iget-object v4, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 806
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getTaskStackViews()Ljava/util/List;

    move-result-object v3

    .line 807
    .local v3, "stackViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskStackView;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 808
    .local v1, "stackCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 809
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskStackView;

    .line 810
    .local v2, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    invoke-virtual {v2, p1}, Lcom/android/systemui/recents/views/TaskStackView;->startEnterRecentsAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;)V

    .line 808
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 812
    .end local v2    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    :cond_0
    iget-object v4, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrement()V

    .line 813
    return-void
.end method

.method public startExitToHomeAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;)V
    .locals 5
    .param p1, "ctx"    # Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;

    .prologue
    .line 819
    iget-object v4, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 820
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getTaskStackViews()Ljava/util/List;

    move-result-object v3

    .line 821
    .local v3, "stackViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskStackView;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 822
    .local v1, "stackCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 823
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskStackView;

    .line 824
    .local v2, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    invoke-virtual {v2, p1}, Lcom/android/systemui/recents/views/TaskStackView;->startExitToHomeAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;)V

    .line 822
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 826
    .end local v2    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    :cond_0
    iget-object v4, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrement()V

    .line 829
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    invoke-interface {v4}, Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;->onExitToHomeAnimationTriggered()V

    .line 830
    return-void
.end method

.method public startExitToPreviousAppAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;Lcom/android/systemui/recents/model/Task;)V
    .locals 5
    .param p1, "ctx"    # Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;
    .param p2, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 836
    iget-object v4, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 837
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getChildCount()I

    move-result v1

    .line 838
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 839
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 840
    .local v0, "child":Landroid/view/View;
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Lcom/android/systemui/recents/RecentsAppWidgetHostView;

    if-eq v0, v4, :cond_0

    move-object v3, v0

    .line 841
    check-cast v3, Lcom/android/systemui/recents/views/TaskStackView;

    .line 842
    .local v3, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    invoke-virtual {v3, p1, p2}, Lcom/android/systemui/recents/views/TaskStackView;->startExitToPreviousAppAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;Lcom/android/systemui/recents/model/Task;)V

    .line 838
    .end local v3    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 845
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    iget-object v4, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrement()V

    .line 846
    return-void
.end method

.method public unfilterFilteredStacks()Z
    .locals 5

    .prologue
    .line 1153
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mStacks:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 1155
    const/4 v3, 0x0

    .line 1156
    .local v3, "stacksUnfiltered":Z
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1157
    .local v1, "numStacks":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 1158
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/TaskStack;

    .line 1159
    .local v2, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v2}, Lcom/android/systemui/recents/model/TaskStack;->hasFilteredTasks()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1160
    invoke-virtual {v2}, Lcom/android/systemui/recents/model/TaskStack;->unfilterTasks()V

    .line 1161
    const/4 v3, 0x1

    .line 1157
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1166
    .end local v0    # "i":I
    .end local v1    # "numStacks":I
    .end local v2    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v3    # "stacksUnfiltered":Z
    :cond_1
    const/4 v3, 0x0

    :cond_2
    return v3
.end method

.method public updateCloseAllButtonVisibility(Z)V
    .locals 4
    .param p1, "showCloseAll"    # Z

    .prologue
    const/16 v3, 0x8

    .line 488
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsRemoveAllButton:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 489
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsRemoveAllButton:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 491
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsBottomContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 492
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    .line 512
    :cond_1
    :goto_0
    return-void

    .line 493
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-ne v1, v3, :cond_3

    if-eqz p1, :cond_1

    .line 496
    :cond_3
    if-eqz p1, :cond_4

    .line 497
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mContext:Landroid/content/Context;

    const v2, 0x7f050083

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 501
    .local v0, "anim":Landroid/view/animation/Animation;
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->sineInOut90Interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 503
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 504
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 506
    if-eqz p1, :cond_5

    .line 507
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsBottomContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 499
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mContext:Landroid/content/Context;

    const v2, 0x7f050078

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto :goto_1

    .line 509
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateSwitchAppsVisibility(Ljava/lang/String;I)I
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "visibility"    # I

    .prologue
    .line 1691
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;->updateSwitchAppsVisibility(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
