.class public Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "RecentsMultiWindowActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$SpiltPagerAdapter;,
        Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$LoadAppListAsyncTask;,
        Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$FragmentUpdateCallbacks;
    }
.end annotation


# static fields
.field private static final ANDROID_INTERNAL_PKGNAME:Ljava/lang/String; = "com.android.internal.app"

.field public static final PAGE_APPLIST:I = 0x0

.field public static final PAGE_RECENT:I = 0x0

.field public static final TAG:Ljava/lang/String; = "Recents_RecentsMultiWindowActivity"


# instance fields
.field private mAppListViewPager:Landroid/support/v4/view/ViewPager;

.field private mAppListViewPagerAdapter:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$SpiltPagerAdapter;

.field private mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$FragmentUpdateCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mCenterShadowLineLand:Landroid/widget/LinearLayout;

.field private mCenterShadowLinePort:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mDisplaySize:Landroid/graphics/Point;

.field private mEmptyTextShadowDistance:F

.field private mEmptyTextShadowOpacity:F

.field private mEmptyTextShadowSize:F

.field private mEmptyTextStrokeOpacity:F

.field private mFinishRequested:Z

.field mGenericMotionListener:Landroid/view/View$OnGenericMotionListener;

.field private mGuideText:Landroid/widget/TextView;

.field private mGuideTextMarginLand:I

.field private mGuideTextMarginPort:I

.field private mGuideView:Landroid/widget/FrameLayout;

.field private mHandler:Landroid/os/Handler;

.field private mLastOrientation:I

.field mLastTabKeyEventTime:J

.field mLocalReceiver:Landroid/content/BroadcastReceiver;

.field private mMainView:Landroid/widget/LinearLayout;

.field private mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

.field private mMultiWindowAppListInfo:Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

.field mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

.field mNeedDarkFont:Z

.field private mNeedMoveAppListPage:Z

.field private mProcessObserver:Landroid/app/IProcessObserver;

.field private mSelectedAppInfo:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mShadowLineLand:Landroid/widget/LinearLayout;

.field private mShadowLinePort:Landroid/widget/LinearLayout;

.field private mStartTouchX:F

.field private mViewPagerCount:I

.field private mViewPagerMark:Landroid/widget/LinearLayout;

.field private mViewPagerMarkerMarginLeft:I

.field private mViewPagerMarkerSize:I

.field mViewPagerOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mViewPagerScrollIdlePage:I

.field private mViewPagerSelectedPage:I

.field mVisible:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 120
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mHandler:Landroid/os/Handler;

    .line 121
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mDisplaySize:Landroid/graphics/Point;

    .line 122
    iput-boolean v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mNeedMoveAppListPage:Z

    .line 132
    iput-boolean v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mNeedDarkFont:Z

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mCallbacks:Ljava/util/ArrayList;

    .line 140
    iput-boolean v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mFinishRequested:Z

    .line 303
    new-instance v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$4;-><init>(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mGenericMotionListener:Landroid/view/View$OnGenericMotionListener;

    .line 331
    new-instance v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$5;-><init>(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mLocalReceiver:Landroid/content/BroadcastReceiver;

    .line 348
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mStartTouchX:F

    .line 349
    new-instance v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$6;-><init>(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 675
    new-instance v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$8;-><init>(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 747
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    .prologue
    .line 88
    iget v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerScrollIdlePage:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;
    .param p1, "x1"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerScrollIdlePage:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    .prologue
    .line 88
    iget v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerCount:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->initViewPageMark()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;
    .param p1, "x1"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerCount:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mAppListViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mNeedMoveAppListPage:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mNeedMoveAppListPage:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mFinishRequested:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    .prologue
    .line 88
    iget v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerSelectedPage:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;
    .param p1, "x1"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerSelectedPage:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerMark:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$SpiltPagerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mAppListViewPagerAdapter:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$SpiltPagerAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    .prologue
    .line 88
    iget v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mStartTouchX:F

    return v0
.end method

.method static synthetic access$702(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;
    .param p1, "x1"    # F

    .prologue
    .line 88
    iput p1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mStartTouchX:F

    return p1
.end method

.method static synthetic access$800(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mMultiWindowAppListInfo:Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;Landroid/util/Pair;)Landroid/util/Pair;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;
    .param p1, "x1"    # Landroid/util/Pair;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mSelectedAppInfo:Landroid/util/Pair;

    return-object p1
.end method

.method private initViewPageMark()V
    .locals 5

    .prologue
    const/4 v4, -0x2

    .line 640
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerMark:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 641
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerCount:I

    if-ge v0, v3, :cond_2

    .line 642
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 643
    .local v1, "iv":Landroid/widget/ImageView;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 644
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 646
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-nez v0, :cond_1

    .line 650
    const v3, 0x7f0207a1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 656
    :goto_1
    iget-boolean v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mNeedDarkFont:Z

    if-eqz v3, :cond_0

    .line 657
    const v3, -0xbbbbbc

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 659
    :cond_0
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 660
    iget v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerMarkerSize:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 661
    iget v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerMarkerSize:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 662
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 664
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerMark:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 665
    new-instance v3, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$7;

    invoke-direct {v3, p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$7;-><init>(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 641
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 653
    :cond_1
    const v3, 0x7f0207a0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 654
    iget v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerMarkerMarginLeft:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_1

    .line 673
    .end local v1    # "iv":Landroid/widget/ImageView;
    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    return-void
.end method

.method private isKnoxLauncherMode()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 815
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 816
    .local v1, "intentToResolve":Landroid/content/Intent;
    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 817
    iget-object v4, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 819
    .local v2, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 820
    .local v0, "HomeReceiver":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_0

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v5, "com.android.internal.app"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 821
    const/4 v3, 0x1

    .line 823
    :cond_0
    return v3
.end method


# virtual methods
.method public finishActivity()V
    .locals 4

    .prologue
    .line 737
    const-string v0, "Recents_RecentsMultiWindowActivity"

    const-string v1, "finishActivity"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mFinishRequested:Z

    .line 739
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$9;

    invoke-direct {v1, p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$9;-><init>(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 745
    return-void
.end method

.method public getMultiWindowAppListInfo()Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mMultiWindowAppListInfo:Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

    return-object v0
.end method

.method public getSelectedAppPackageInfo()Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 449
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mSelectedAppInfo:Landroid/util/Pair;

    if-nez v0, :cond_0

    .line 450
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getTopRunningPackage(Z)Landroid/util/Pair;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mSelectedAppInfo:Landroid/util/Pair;

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mSelectedAppInfo:Landroid/util/Pair;

    return-object v0
.end method

.method public getTopRunningPackage(Z)Landroid/util/Pair;
    .locals 9
    .param p1, "force"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 698
    iget-object v6, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    const/16 v7, 0xa

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getRunningTasks(II)Ljava/util/List;

    move-result-object v4

    .line 701
    .local v4, "runningTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    new-instance v2, Landroid/util/Pair;

    const-string v6, ""

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 703
    .local v2, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v5

    .line 704
    .local v5, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v6

    if-nez v6, :cond_0

    if-eqz p1, :cond_2

    .line 705
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 706
    .local v3, "rInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    const-string v6, "Recents_RecentsMultiWindowActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getTopRunningPackage - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " | isSplit : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Landroid/app/ActivityManager$RunningTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "| zone : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Landroid/app/ActivityManager$RunningTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " | id : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    :try_start_0
    iget-object v6, v3, Landroid/app/ActivityManager$RunningTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v3, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, v3, Landroid/app/ActivityManager$RunningTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v7

    if-eq v6, v7, :cond_1

    .line 713
    iget-object v6, v3, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget v7, v3, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 721
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "rInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_2
    return-object v2

    .line 716
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "rInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :catch_0
    move-exception v0

    .line 717
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "Recents_RecentsMultiWindowActivity"

    const-string v7, "getTopRunningPackage - baseActivity is null"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public moveViewPage(IZ)V
    .locals 1
    .param p1, "page"    # I
    .param p2, "anim"    # Z

    .prologue
    .line 456
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerCount:I

    if-lt p1, v0, :cond_1

    .line 462
    :cond_0
    :goto_0
    return-void

    .line 459
    :cond_1
    iget v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerSelectedPage:I

    if-eq v0, p1, :cond_0

    .line 460
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mAppListViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 632
    const-string v0, "Recents_RecentsMultiWindowActivity"

    const-string v1, "onBackPressed is getting called "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->finish()V

    .line 634
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 635
    const v0, 0x10a0049

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->overridePendingTransition(II)V

    .line 637
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 503
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 504
    const-string v1, "Recents_RecentsMultiWindowActivity"

    const-string v2, "onConfigurationChanged is getting called "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mLastOrientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_0

    .line 506
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mLastOrientation:I

    .line 507
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->updateMainLayout()V

    .line 508
    iget-object v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mAppListViewPagerAdapter:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$SpiltPagerAdapter;

    invoke-virtual {v1}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$SpiltPagerAdapter;->notifyDataSetChanged()V

    .line 509
    iget-object v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mDisplaySize:Landroid/graphics/Point;

    iget v0, v1, Landroid/graphics/Point;->x:I

    .line 510
    .local v0, "tmp":I
    iget-object v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mDisplaySize:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mDisplaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 511
    iget-object v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mDisplaySize:Landroid/graphics/Point;

    iput v0, v1, Landroid/graphics/Point;->y:I

    .line 513
    .end local v0    # "tmp":I
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 21
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 150
    const-string v2, "Recents_RecentsMultiWindowActivity"

    const-string v3, "onCreate is getting called"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mContext:Landroid/content/Context;

    .line 154
    invoke-static/range {p0 .. p0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->initialize(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoader;

    .line 157
    const v2, 0x7f040078

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->setContentView(I)V

    .line 159
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mLastOrientation:I

    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a048a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerMarkerSize:I

    .line 161
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a048b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerMarkerMarginLeft:I

    .line 162
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a04a7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mGuideTextMarginPort:I

    .line 163
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a04a8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mGuideTextMarginLand:I

    .line 165
    const-string v2, "multiwindow_facade"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .line 166
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->initialize(Landroid/content/Context;)Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

    .line 167
    invoke-static {}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->getInstance()Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mMultiWindowAppListInfo:Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

    .line 169
    const v2, 0x7f0f0277

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mMainView:Landroid/widget/LinearLayout;

    .line 170
    const v2, 0x7f0f0278

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mAppListViewPager:Landroid/support/v4/view/ViewPager;

    .line 171
    const v2, 0x7f0f027b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerMark:Landroid/widget/LinearLayout;

    .line 172
    const v2, 0x7f0f027c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mGuideView:Landroid/widget/FrameLayout;

    .line 173
    const v2, 0x7f0f027d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mGuideText:Landroid/widget/TextView;

    .line 175
    new-instance v9, Landroid/util/TypedValue;

    invoke-direct {v9}, Landroid/util/TypedValue;-><init>()V

    .line 176
    .local v9, "appListShadowDistance":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a04a5

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v9, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 177
    invoke-virtual {v9}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mEmptyTextShadowDistance:F

    .line 179
    new-instance v10, Landroid/util/TypedValue;

    invoke-direct {v10}, Landroid/util/TypedValue;-><init>()V

    .line 180
    .local v10, "appListShadowOpacity":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a04a6

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v10, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 181
    invoke-virtual {v10}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mEmptyTextShadowOpacity:F

    .line 183
    new-instance v11, Landroid/util/TypedValue;

    invoke-direct {v11}, Landroid/util/TypedValue;-><init>()V

    .line 184
    .local v11, "appListShadowSize":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0513

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v11, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 185
    invoke-virtual {v11}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mEmptyTextShadowSize:F

    .line 187
    new-instance v12, Landroid/util/TypedValue;

    invoke-direct {v12}, Landroid/util/TypedValue;-><init>()V

    .line 188
    .local v12, "appListStrokeOpacity":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a04a4

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v12, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 189
    invoke-virtual {v12}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mEmptyTextStrokeOpacity:F

    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "need_dark_font"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mNeedDarkFont:Z

    .line 193
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mNeedDarkFont:Z

    if-eqz v2, :cond_2

    .line 194
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mGuideText:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c00ab

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 195
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mGuideText:Landroid/widget/TextView;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, -0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mEmptyTextStrokeOpacity:F

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/TextView;->addStrokeTextEffect(FIF)I

    .line 196
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mGuideText:Landroid/widget/TextView;

    const/high16 v3, 0x42b40000    # 90.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mEmptyTextShadowDistance:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mEmptyTextShadowSize:F

    const/4 v6, -0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mEmptyTextShadowOpacity:F

    invoke-virtual/range {v2 .. v7}, Landroid/widget/TextView;->addOuterShadowTextEffect(FFFIF)I

    .line 204
    :goto_1
    const v2, 0x7f0f027e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mCenterShadowLinePort:Landroid/widget/LinearLayout;

    .line 205
    const v2, 0x7f0f027f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mCenterShadowLineLand:Landroid/widget/LinearLayout;

    .line 206
    const v2, 0x7f0f0279

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mShadowLinePort:Landroid/widget/LinearLayout;

    .line 207
    const v2, 0x7f0f027a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mShadowLineLand:Landroid/widget/LinearLayout;

    .line 210
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v15

    .line 211
    .local v15, "display":Landroid/view/Display;
    new-instance v14, Landroid/graphics/Point;

    invoke-direct {v14}, Landroid/graphics/Point;-><init>()V

    .line 212
    .local v14, "centerbarPoint":Landroid/graphics/Point;
    if-eqz v15, :cond_0

    .line 213
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v15, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 215
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mDisplaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    div-int/lit8 v2, v2, 0x2

    iput v2, v14, Landroid/graphics/Point;->x:I

    .line 216
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mDisplaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    div-int/lit8 v2, v2, 0x2

    iput v2, v14, Landroid/graphics/Point;->y:I

    .line 217
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v14}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setCenterBarPoint(ILandroid/graphics/Point;)V

    .line 220
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$1;-><init>(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 229
    new-instance v13, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$LoadAppListAsyncTask;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$LoadAppListAsyncTask;-><init>(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)V

    .line 230
    .local v13, "appListloadTask":Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$LoadAppListAsyncTask;
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Boolean;

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v13, v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$LoadAppListAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 232
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v17

    .line 233
    .local v17, "fm":Landroid/support/v4/app/FragmentManager;
    new-instance v2, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$SpiltPagerAdapter;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v2, v0, v1}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$SpiltPagerAdapter;-><init>(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;Landroid/support/v4/app/FragmentManager;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mAppListViewPagerAdapter:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$SpiltPagerAdapter;

    .line 234
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mAppListViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v3, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$2;-><init>(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 254
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mAppListViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mAppListViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mGenericMotionListener:Landroid/view/View$OnGenericMotionListener;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    .line 257
    new-instance v2, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;-><init>(Landroid/app/Activity;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    .line 258
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    new-instance v3, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$3;-><init>(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->setStateChangeListener(Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;)Z

    .line 278
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getWindow()Landroid/view/Window;

    move-result-object v20

    .line 279
    .local v20, "win":Landroid/view/Window;
    invoke-virtual/range {v20 .. v20}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v19

    .line 280
    .local v19, "lp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v19

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x400

    move-object/from16 v0, v19

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 281
    move-object/from16 v0, v19

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/lit8 v2, v2, 0x2

    move-object/from16 v0, v19

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 282
    move-object/from16 v0, v19

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    or-int/lit8 v2, v2, 0x40

    move-object/from16 v0, v19

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    .line 283
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 285
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v8

    .line 287
    .local v8, "am":Landroid/app/IActivityManager;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v8, v2}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    :goto_2
    :try_start_1
    new-instance v18, Landroid/content/IntentFilter;

    invoke-direct/range {v18 .. v18}, Landroid/content/IntentFilter;-><init>()V

    .line 294
    .local v18, "localIntentFilter":Landroid/content/IntentFilter;
    const-string v2, "com.samsung.systemui.recents.CLOSE_RECENTS_MULTIWINDOW"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 295
    const-string v2, "com.samsung.systemui.recents.REFRESH_RECENTS_MULTIWINDOW"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 296
    invoke-static/range {p0 .. p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mLocalReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 300
    .end local v18    # "localIntentFilter":Landroid/content/IntentFilter;
    :goto_3
    invoke-super/range {p0 .. p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 301
    return-void

    .line 191
    .end local v8    # "am":Landroid/app/IActivityManager;
    .end local v13    # "appListloadTask":Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$LoadAppListAsyncTask;
    .end local v14    # "centerbarPoint":Landroid/graphics/Point;
    .end local v15    # "display":Landroid/view/Display;
    .end local v17    # "fm":Landroid/support/v4/app/FragmentManager;
    .end local v19    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v20    # "win":Landroid/view/Window;
    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 199
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mGuideText:Landroid/widget/TextView;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x1000000

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mEmptyTextStrokeOpacity:F

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/TextView;->addStrokeTextEffect(FIF)I

    .line 200
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mGuideText:Landroid/widget/TextView;

    const/high16 v3, 0x42b40000    # 90.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mEmptyTextShadowDistance:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mEmptyTextShadowSize:F

    const/high16 v6, -0x1000000

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mEmptyTextShadowOpacity:F

    invoke-virtual/range {v2 .. v7}, Landroid/widget/TextView;->addOuterShadowTextEffect(FFFIF)I

    goto/16 :goto_1

    .line 288
    .restart local v8    # "am":Landroid/app/IActivityManager;
    .restart local v13    # "appListloadTask":Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$LoadAppListAsyncTask;
    .restart local v14    # "centerbarPoint":Landroid/graphics/Point;
    .restart local v15    # "display":Landroid/view/Display;
    .restart local v17    # "fm":Landroid/support/v4/app/FragmentManager;
    .restart local v19    # "lp":Landroid/view/WindowManager$LayoutParams;
    .restart local v20    # "win":Landroid/view/Window;
    :catch_0
    move-exception v16

    .line 289
    .local v16, "e":Landroid/os/RemoteException;
    const-string v2, "Recents_RecentsMultiWindowActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to registerProcessObserver, e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 297
    .end local v16    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    goto :goto_3
.end method

.method protected onDestroy()V
    .locals 5

    .prologue
    .line 579
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 580
    const-string v2, "Recents_RecentsMultiWindowActivity"

    const-string v3, "onDestroy is getting called "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 584
    .local v0, "am":Landroid/app/IActivityManager;
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v0, v2}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 590
    :goto_0
    :try_start_1
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mLocalReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 595
    :goto_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mContext:Landroid/content/Context;

    .line 596
    return-void

    .line 585
    :catch_0
    move-exception v1

    .line 586
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Recents_RecentsMultiWindowActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to unregisterProcessObserver, e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 591
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 592
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Recents_RecentsMultiWindowActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to unregisterBroadcastReceiver, e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 600
    sparse-switch p1, :sswitch_data_0

    .line 626
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :sswitch_0
    return v0

    .line 600
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x3d -> :sswitch_0
        0x43 -> :sswitch_0
        0x70 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 517
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 518
    const-string v0, "Recents_RecentsMultiWindowActivity"

    const-string v1, "onNewIntent is getting called "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    invoke-virtual {p0, p1}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->setIntent(Landroid/content/Intent;)V

    .line 520
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 530
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 531
    const-string v1, "Recents_RecentsMultiWindowActivity"

    const-string v2, "onResume is getting called "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ultra_powersaving_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v4, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->isKnoxLauncherMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 535
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x100000

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 536
    iget-object v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mMainView:Landroid/widget/LinearLayout;

    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 540
    :cond_1
    iput-boolean v4, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mVisible:Z

    .line 542
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->updateMainLayout()V

    .line 543
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 545
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.OUTSIDE_TOUCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 546
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 552
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    sget-boolean v1, Lcom/android/systemui/recents/Constants$Features;->EnableViewPagerAboveAll:Z

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "recentUI.multiwindow.package"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 568
    :goto_0
    return-void

    .line 558
    :cond_3
    iget v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerCount:I

    if-nez v1, :cond_4

    .line 559
    iput-boolean v4, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mNeedMoveAppListPage:Z

    .line 565
    :goto_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const-string v2, "RecentsMultiWindow"

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 566
    :catch_0
    move-exception v1

    goto :goto_0

    .line 561
    :cond_4
    invoke-virtual {p0, v3, v3}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->moveViewPage(IZ)V

    goto :goto_1
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 524
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 525
    const-string v0, "Recents_RecentsMultiWindowActivity"

    const-string v1, "onStart is getting called "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 572
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 573
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->finish()V

    .line 574
    const-string v0, "Recents_RecentsMultiWindowActivity"

    const-string v1, "onStop is getting called "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    return-void
.end method

.method public registerCallbacks(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$FragmentUpdateCallbacks;)V
    .locals 2
    .param p1, "cb"    # Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$FragmentUpdateCallbacks;

    .prologue
    .line 725
    iget-object v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 726
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 727
    monitor-exit v1

    .line 728
    return-void

    .line 727
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterCallbacks(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$FragmentUpdateCallbacks;)V
    .locals 2
    .param p1, "cb"    # Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$FragmentUpdateCallbacks;

    .prologue
    .line 731
    iget-object v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 732
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 733
    monitor-exit v1

    .line 734
    return-void

    .line 733
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateMainLayout()V
    .locals 9

    .prologue
    const/16 v8, 0xc

    const/4 v7, 0x3

    const/4 v4, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 394
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    .line 395
    .local v1, "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 396
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mGuideView:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 397
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mCenterShadowLinePort:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 398
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mCenterShadowLineLand:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 399
    iget v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mLastOrientation:I

    if-ne v3, v4, :cond_2

    .line 400
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mShadowLinePort:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 401
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mShadowLineLand:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 402
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mShadowLinePort:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 403
    .local v2, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v3

    if-ne v3, v7, :cond_1

    .line 404
    const/16 v3, 0x50

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 405
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mShadowLinePort:Landroid/widget/LinearLayout;

    const v4, 0x7f0203a6

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 410
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mShadowLinePort:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 441
    .end local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mMultiWindowAppListInfo:Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

    iget v4, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mLastOrientation:I

    invoke-virtual {v3, v4}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->updateMultiWindowItemNum(I)V

    .line 442
    return-void

    .line 406
    .restart local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v3

    if-ne v3, v8, :cond_0

    .line 407
    const/16 v3, 0x30

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 408
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mShadowLinePort:Landroid/widget/LinearLayout;

    const v4, 0x7f0203a5

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 412
    .end local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mShadowLinePort:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 413
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mShadowLineLand:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 414
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mShadowLineLand:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 415
    .restart local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v3

    if-ne v3, v7, :cond_4

    .line 416
    const/4 v3, 0x5

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 417
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mShadowLineLand:Landroid/widget/LinearLayout;

    const v4, 0x7f0203a4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 422
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mShadowLineLand:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 418
    :cond_4
    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v3

    if-ne v3, v8, :cond_3

    .line 419
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mShadowLineLand:Landroid/widget/LinearLayout;

    const v4, 0x7f0203a3

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 420
    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_2

    .line 425
    .end local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mGuideView:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 426
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mGuideText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 427
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mLastOrientation:I

    if-ne v3, v4, :cond_6

    .line 428
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mMainView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 429
    iget v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mGuideTextMarginPort:I

    iget v4, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mGuideTextMarginPort:I

    invoke-virtual {v0, v3, v5, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 430
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mCenterShadowLinePort:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 431
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mCenterShadowLineLand:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 438
    :goto_3
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mGuideText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 433
    :cond_6
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mMainView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 434
    iget v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mGuideTextMarginLand:I

    iget v4, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mGuideTextMarginLand:I

    invoke-virtual {v0, v3, v5, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 435
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mCenterShadowLinePort:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 436
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mCenterShadowLineLand:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3
.end method

.method public updateSelectedPackageName(Z)V
    .locals 7
    .param p1, "force"    # Z

    .prologue
    .line 796
    invoke-virtual {p0, p1}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getTopRunningPackage(Z)Landroid/util/Pair;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mSelectedAppInfo:Landroid/util/Pair;

    .line 797
    iget-boolean v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mFinishRequested:Z

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_1

    .line 798
    iget-object v4, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    .line 799
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 800
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$FragmentUpdateCallbacks;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 802
    .local v0, "cb":Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$FragmentUpdateCallbacks;
    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mSelectedAppInfo:Landroid/util/Pair;

    invoke-interface {v0, v3}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$FragmentUpdateCallbacks;->updateSelectedPackageName(Landroid/util/Pair;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 799
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 803
    :catch_0
    move-exception v1

    .line 804
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "Recents_RecentsMultiWindowActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 808
    .end local v0    # "cb":Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$FragmentUpdateCallbacks;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v2    # "i":I
    :cond_0
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 810
    .end local v2    # "i":I
    :cond_1
    return-void
.end method
