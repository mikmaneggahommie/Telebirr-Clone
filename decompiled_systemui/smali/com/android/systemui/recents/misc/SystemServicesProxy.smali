.class public Lcom/android/systemui/recents/misc/SystemServicesProxy;
.super Ljava/lang/Object;
.source "SystemServicesProxy.java"


# static fields
.field static final TAG:Ljava/lang/String; = "SystemServicesProxy"

.field static final sBgThread:Landroid/os/HandlerThread;

.field static final sBitmapOptions:Landroid/graphics/BitmapFactory$Options;


# instance fields
.field mAccm:Landroid/view/accessibility/AccessibilityManager;

.field mAm:Landroid/app/ActivityManager;

.field mAssistComponent:Landroid/content/ComponentName;

.field mAssistUtils:Lcom/android/internal/app/AssistUtils;

.field mAwm:Landroid/appwidget/AppWidgetManager;

.field mBgProtectionCanvas:Landroid/graphics/Canvas;

.field mBgProtectionPaint:Landroid/graphics/Paint;

.field mBgThreadHandler:Landroid/os/Handler;

.field mDisplay:Landroid/view/Display;

.field mDm:Landroid/hardware/display/DisplayManager;

.field mDummyIcon:Landroid/graphics/Bitmap;

.field mDummyThumbnailHeight:I

.field mDummyThumbnailWidth:I

.field mIam:Landroid/app/IActivityManager;

.field mIpm:Landroid/content/pm/IPackageManager;

.field mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

.field mPm:Landroid/content/pm/PackageManager;

.field mPowerManager:Landroid/os/PowerManager;

.field mRecentsPackage:Ljava/lang/String;

.field mRestrictedThumbnail:Landroid/graphics/Bitmap;

.field mWm:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 114
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Recents-SystemServicesProxy"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sBgThread:Landroid/os/HandlerThread;

    .line 116
    sget-object v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 117
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 118
    sget-object v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAccm:Landroid/view/accessibility/AccessibilityManager;

    .line 154
    const-string v3, "activity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    iput-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    .line 155
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    .line 156
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAwm:Landroid/appwidget/AppWidgetManager;

    .line 157
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    .line 158
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIpm:Landroid/content/pm/IPackageManager;

    .line 159
    new-instance v3, Lcom/android/internal/app/AssistUtils;

    invoke-direct {v3, p1}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    .line 160
    const-string v3, "window"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    iput-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mWm:Landroid/view/WindowManager;

    .line 161
    iget-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mWm:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDisplay:Landroid/view/Display;

    .line 162
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mRecentsPackage:Ljava/lang/String;

    .line 163
    new-instance v3, Landroid/os/Handler;

    sget-object v4, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mBgThreadHandler:Landroid/os/Handler;

    .line 167
    const-string v3, "multiwindow_facade"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iput-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .line 178
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 179
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x1050002

    .line 180
    .local v2, "wId":I
    const v0, 0x1050001

    .line 181
    .local v0, "hId":I
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDummyThumbnailWidth:I

    .line 182
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDummyThumbnailHeight:I

    .line 185
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mBgProtectionPaint:Landroid/graphics/Paint;

    .line 186
    iget-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mBgProtectionPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 187
    iget-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mBgProtectionPaint:Landroid/graphics/Paint;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 188
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3}, Landroid/graphics/Canvas;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mBgProtectionCanvas:Landroid/graphics/Canvas;

    .line 191
    iget-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAssistComponent:Landroid/content/ComponentName;

    .line 198
    return-void
.end method

.method private bindSearchAppWidget(Landroid/appwidget/AppWidgetHost;Landroid/appwidget/AppWidgetProviderInfo;)Landroid/util/Pair;
    .locals 5
    .param p1, "host"    # Landroid/appwidget/AppWidgetHost;
    .param p2, "resolvedSearchWidgetInfo"    # Landroid/appwidget/AppWidgetProviderInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/appwidget/AppWidgetHost;",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 886
    iget-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAwm:Landroid/appwidget/AppWidgetManager;

    if-nez v3, :cond_1

    .line 898
    :cond_0
    :goto_0
    return-object v2

    .line 887
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAssistComponent:Landroid/content/ComponentName;

    if-eqz v3, :cond_0

    .line 890
    invoke-virtual {p1}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    .line 891
    .local v1, "searchWidgetId":I
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 892
    .local v0, "opts":Landroid/os/Bundle;
    const-string v3, "appWidgetCategory"

    const/4 v4, 0x4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 894
    iget-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAwm:Landroid/appwidget/AppWidgetManager;

    iget-object v4, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3, v1, v4, v0}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 895
    invoke-virtual {p1, v1}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    goto :goto_0

    .line 898
    :cond_2
    new-instance v2, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getCombinedThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "mainBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "subBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 585
    if-nez p1, :cond_0

    .line 604
    .end local p0    # "mainBitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object p0

    .line 588
    .restart local p0    # "mainBitmap":Landroid/graphics/Bitmap;
    :cond_0
    const/4 v6, 0x0

    .line 589
    .local v6, "combinedBitmap":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 591
    .local v5, "paint":Landroid/graphics/Paint;
    const/4 v7, 0x0

    .line 593
    .local v7, "height":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 594
    .local v8, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 595
    const v1, -0x505051

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 597
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v7, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 599
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 600
    .local v0, "comboImage":Landroid/graphics/Canvas;
    invoke-virtual {v0, p1, v2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 601
    div-int/lit8 v1, v8, 0x2

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 602
    div-int/lit8 v1, v8, 0x2

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    div-int/lit8 v3, v8, 0x2

    add-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    int-to-float v4, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object p0, v6

    .line 604
    goto :goto_0
.end method

.method public static getDualScreenThumbnail(Landroid/app/ActivityManager;II)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "activityManager"    # Landroid/app/ActivityManager;
    .param p1, "mainTaskId"    # I
    .param p2, "subTaskId"    # I

    .prologue
    .line 567
    invoke-static {p0, p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getThumbnail(Landroid/app/ActivityManager;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 568
    .local v0, "mainThumbnail":Landroid/graphics/Bitmap;
    invoke-static {p0, p2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getThumbnail(Landroid/app/ActivityManager;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 570
    .local v1, "subThumbnail":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 571
    const-string v3, "SystemServicesProxy"

    const-string v4, "getDualScreenThumbnail: main thumbnail is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    const/4 v2, 0x0

    .line 581
    :goto_0
    return-object v2

    .line 575
    :cond_0
    if-eqz v1, :cond_1

    .line 576
    invoke-static {v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getCombinedThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .local v2, "thumbnail":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 578
    .end local v2    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_1
    move-object v2, v0

    .restart local v2    # "thumbnail":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public static getThumbnail(Landroid/app/ActivityManager;I)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "activityManager"    # Landroid/app/ActivityManager;
    .param p1, "taskId"    # I

    .prologue
    const/4 v3, 0x0

    .line 537
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->getTaskThumbnail(I)Landroid/app/ActivityManager$TaskThumbnail;

    move-result-object v2

    .line 538
    .local v2, "taskThumbnail":Landroid/app/ActivityManager$TaskThumbnail;
    if-nez v2, :cond_1

    .line 561
    :cond_0
    :goto_0
    return-object v3

    .line 540
    :cond_1
    iget-object v3, v2, Landroid/app/ActivityManager$TaskThumbnail;->mainThumbnail:Landroid/graphics/Bitmap;

    .line 541
    .local v3, "thumbnail":Landroid/graphics/Bitmap;
    iget-object v0, v2, Landroid/app/ActivityManager$TaskThumbnail;->thumbnailFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 542
    .local v0, "descriptor":Landroid/os/ParcelFileDescriptor;
    if-eqz v0, :cond_0

    .line 546
    if-nez v3, :cond_2

    .line 547
    :try_start_0
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    const/4 v5, 0x0

    sget-object v6, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v4, v5, v6}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 556
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 557
    :catch_0
    move-exception v4

    goto :goto_0

    .line 551
    :catch_1
    move-exception v1

    .line 552
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    :try_start_2
    const-string v4, "SystemServicesProxy"

    const-string v5, "Can\'t decode file because of OOM"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 556
    :try_start_3
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 557
    :catch_2
    move-exception v4

    goto :goto_0

    .line 555
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v4

    .line 556
    :try_start_4
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 558
    :goto_1
    throw v4

    .line 557
    :catch_3
    move-exception v5

    goto :goto_1
.end method

.method private resolveSearchAppWidget()Landroid/appwidget/AppWidgetProviderInfo;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 870
    iget-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAssistComponent:Landroid/content/ComponentName;

    if-nez v4, :cond_0

    move-object v1, v3

    .line 878
    :goto_0
    return-object v1

    .line 871
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAwm:Landroid/appwidget/AppWidgetManager;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders(I)Ljava/util/List;

    move-result-object v2

    .line 873
    .local v2, "widgets":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/appwidget/AppWidgetProviderInfo;

    .line 874
    .local v1, "info":Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v4, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAssistComponent:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .end local v1    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    :cond_2
    move-object v1, v3

    .line 878
    goto :goto_0
.end method


# virtual methods
.method public getActivityIcon(Landroid/content/pm/ActivityInfo;I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;
    .param p2, "userId"    # I

    .prologue
    const/4 v3, 0x1

    .line 746
    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    if-nez v2, :cond_1

    const/4 v0, 0x0

    .line 763
    :cond_0
    :goto_0
    return-object v0

    .line 754
    :cond_1
    invoke-static {p1, p2}, Landroid/os/PersonaManager;->getBBCBadgeIcon(Landroid/content/pm/ActivityInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 755
    .local v0, "drw":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 761
    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v2, v3, v3}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 763
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v1, p2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getBadgedIcon(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public getActivityInfo(Landroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;
    .locals 4
    .param p1, "cn"    # Landroid/content/ComponentName;

    .prologue
    const/4 v1, 0x0

    .line 691
    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    if-nez v2, :cond_0

    .line 698
    :goto_0
    return-object v1

    .line 695
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    const/16 v3, 0x80

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 696
    :catch_0
    move-exception v0

    .line 697
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .locals 4
    .param p1, "cn"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 674
    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIpm:Landroid/content/pm/IPackageManager;

    if-nez v2, :cond_0

    .line 681
    :goto_0
    return-object v1

    .line 678
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIpm:Landroid/content/pm/IPackageManager;

    const/16 v3, 0x80

    invoke-interface {v2, p1, v3, p2}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 679
    :catch_0
    move-exception v0

    .line 680
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getActivityLabel(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 704
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 711
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAllStackInfos()Landroid/util/SparseArray;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/ActivityManager$StackInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 419
    iget-object v6, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    if-nez v6, :cond_1

    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 433
    :cond_0
    :goto_0
    return-object v5

    .line 422
    :cond_1
    :try_start_0
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 424
    .local v5, "stacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/ActivityManager$StackInfo;>;"
    iget-object v6, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    invoke-interface {v6}, Landroid/app/IActivityManager;->getAllStackInfos()Ljava/util/List;

    move-result-object v3

    .line 425
    .local v3, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 426
    .local v4, "stackCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_0

    .line 427
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$StackInfo;

    .line 428
    .local v2, "info":Landroid/app/ActivityManager$StackInfo;
    iget v6, v2, Landroid/app/ActivityManager$StackInfo;->stackId:I

    invoke-virtual {v5, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 431
    .end local v1    # "i":I
    .end local v2    # "info":Landroid/app/ActivityManager$StackInfo;
    .end local v3    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackInfo;>;"
    .end local v4    # "stackCount":I
    .end local v5    # "stacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/ActivityManager$StackInfo;>;"
    :catch_0
    move-exception v0

    .line 432
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 433
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    goto :goto_0
.end method

.method public getApplicationLabel(Landroid/content/Intent;I)Ljava/lang/String;
    .locals 5
    .param p1, "baseIntent"    # Landroid/content/Intent;
    .param p2, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 716
    iget-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    if-nez v3, :cond_1

    .line 725
    :cond_0
    :goto_0
    return-object v2

    .line 723
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4, p2}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 724
    .local v1, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 725
    .local v0, "label":Ljava/lang/CharSequence;
    :goto_1
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .end local v0    # "label":Ljava/lang/CharSequence;
    :cond_2
    move-object v0, v2

    .line 724
    goto :goto_1
.end method

.method public getBadgedIcon(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "userId"    # I

    .prologue
    .line 770
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eq p2, v0, :cond_0

    .line 771
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 773
    :cond_0
    return-object p1
.end method

.method public getBadgedLabel(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 780
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eq p2, v0, :cond_0

    .line 781
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 783
    :cond_0
    return-object p1
.end method

.method public getBlackTaskThumbnail()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 526
    iget v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDummyThumbnailWidth:I

    iget v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDummyThumbnailHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 528
    .local v0, "thumbnail":Landroid/graphics/Bitmap;
    const v1, -0xcccccd

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 529
    return-object v0
.end method

.method public getContentDescription(Landroid/content/Intent;ILjava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 5
    .param p1, "baseIntent"    # Landroid/content/Intent;
    .param p2, "userId"    # I
    .param p3, "activityLabel"    # Ljava/lang/String;
    .param p4, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 731
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getApplicationLabel(Landroid/content/Intent;I)Ljava/lang/String;

    move-result-object v0

    .line 732
    .local v0, "applicationLabel":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 733
    invoke-virtual {p0, p3, p2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getBadgedLabel(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 736
    :cond_0
    :goto_0
    return-object v1

    .line 735
    :cond_1
    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getBadgedLabel(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 736
    .local v1, "badgedApplicationLabel":Ljava/lang/String;
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const v2, 0x7f0b0321

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object p3, v3, v4

    invoke-virtual {p4, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getFocusedStack()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 439
    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    if-nez v2, :cond_0

    .line 445
    :goto_0
    return v1

    .line 442
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    invoke-interface {v2}, Landroid/app/IActivityManager;->getFocusedStackId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 443
    :catch_0
    move-exception v0

    .line 444
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getGlobalSetting(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "setting"    # Ljava/lang/String;

    .prologue
    .line 914
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 915
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public getHomeActivityPackageName()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 788
    iget-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    if-nez v4, :cond_1

    .line 801
    :cond_0
    :goto_0
    return-object v3

    .line 791
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 792
    .local v1, "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    .line 793
    .local v0, "defaultHomeActivity":Landroid/content/ComponentName;
    if-eqz v0, :cond_2

    .line 794
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 795
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 796
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 797
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_0

    .line 798
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getMultipleScreenState()I
    .locals 1

    .prologue
    .line 1011
    const/4 v0, -0x1

    return v0
.end method

.method public getOrBindSearchAppWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;)Landroid/appwidget/AppWidgetProviderInfo;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "host"    # Landroid/appwidget/AppWidgetHost;

    .prologue
    .line 826
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRecentTasks(IIZI)Ljava/util/List;
    .locals 10
    .param p1, "numLatestTasks"    # I
    .param p2, "userId"    # I
    .param p3, "isTopTaskHome"    # Z
    .param p4, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZI)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 203
    iget-object v8, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    if-nez v8, :cond_0

    const/4 v8, 0x0

    .line 311
    :goto_0
    return-object v8

    .line 237
    :cond_0
    const/16 v4, 0xa

    .line 238
    .local v4, "minNumTasksToQuery":I
    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 239
    .local v5, "numTasksToQuery":I
    iget-object v8, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    const/16 v9, 0x1f

    invoke-virtual {v8, v5, v9, p2}, Landroid/app/ActivityManager;->getRecentTasksForUser(III)Ljava/util/List;

    move-result-object v7

    .line 247
    .local v7, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    if-nez v7, :cond_1

    .line 248
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 251
    :cond_1
    const/4 v2, 0x1

    .line 252
    .local v2, "isFirstValidTask":Z
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 253
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 254
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 280
    .local v6, "t":Landroid/app/ActivityManager$RecentTaskInfo;
    iget-object v8, v6, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getFlags()I

    move-result v8

    const/high16 v9, 0x800000

    and-int/2addr v8, v9

    const/high16 v9, 0x800000

    if-ne v8, v9, :cond_3

    const/4 v1, 0x1

    .line 284
    .local v1, "isExcluded":Z
    :goto_2
    iget-object v8, v6, Landroid/app/ActivityManager$RecentTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-eqz v8, :cond_4

    iget-object v8, v6, Landroid/app/ActivityManager$RecentTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v9, 0x4000000

    invoke-virtual {v8, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 287
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 288
    iget-object v8, v6, Landroid/app/ActivityManager$RecentTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v8

    if-nez v8, :cond_2

    .line 289
    const/4 v2, 0x0

    goto :goto_1

    .line 280
    .end local v1    # "isExcluded":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    .line 295
    .restart local v1    # "isExcluded":Z
    :cond_4
    if-eqz v1, :cond_6

    if-nez p3, :cond_5

    if-nez v2, :cond_6

    .line 296
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 302
    :cond_6
    new-instance v0, Landroid/content/Intent;

    iget-object v8, v6, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 303
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.google.android.setupwizard"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 304
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 308
    :cond_7
    const/4 v2, 0x0

    .line 309
    goto :goto_1

    .line 311
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "isExcluded":Z
    .end local v6    # "t":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_8
    const/4 v8, 0x0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9, p1}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-interface {v7, v8, v9}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v8

    goto/16 :goto_0
.end method

.method public getRestrictedThumbnail()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 1024
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mRestrictedThumbnail:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 1025
    iget v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDummyThumbnailWidth:I

    iget v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDummyThumbnailHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mRestrictedThumbnail:Landroid/graphics/Bitmap;

    .line 1027
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mRestrictedThumbnail:Landroid/graphics/Bitmap;

    const v1, -0xcccccd

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 1030
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mRestrictedThumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getRunningTasks(I)Ljava/util/List;
    .locals 1
    .param p1, "numTasks"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 318
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningTasks(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRunningTasks(II)Ljava/util/List;
    .locals 1
    .param p1, "numTasks"    # I
    .param p2, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 323
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/ActivityManager;->getRunningTasks(II)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getSearchAppWidgetId(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 817
    const-string v0, "searchAppWidgetId"

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lcom/android/systemui/Prefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 930
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSystemSetting(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "setting"    # Ljava/lang/String;

    .prologue
    .line 922
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 923
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public getTaskBounds(I)Landroid/graphics/Rect;
    .locals 2
    .param p1, "stackId"    # I

    .prologue
    .line 400
    invoke-virtual {p0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getAllStackInfos()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$StackInfo;

    .line 401
    .local v0, "info":Landroid/app/ActivityManager$StackInfo;
    if-eqz v0, :cond_0

    .line 402
    iget-object v1, v0, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    .line 403
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    goto :goto_0
.end method

.method public getTaskThumbnail(Lcom/android/systemui/recents/model/Task;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 463
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    if-nez v0, :cond_1

    move-object v7, v9

    .line 520
    :cond_0
    :goto_0
    return-object v7

    .line 474
    :cond_1
    const/4 v7, 0x0

    .line 475
    .local v7, "thumbnail":Landroid/graphics/Bitmap;
    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v6, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    .line 477
    .local v6, "taskId":I
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v8

    .line 478
    .local v8, "versionInfo":Landroid/os/Bundle;
    const-string v0, "2.0"

    const-string v2, "version"

    invoke-virtual {v8, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    const/16 v2, 0x64

    if-lt v0, v2, :cond_2

    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    const/16 v2, 0xc8

    if-gt v0, v2, :cond_2

    .line 481
    invoke-virtual {p0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getBlackTaskThumbnail()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 507
    :goto_1
    if-eqz v7, :cond_0

    .line 508
    invoke-virtual {v7, v3}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 512
    invoke-virtual {v7, v3, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mBgProtectionCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 514
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mBgProtectionCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v3, v2

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v4, v2

    iget-object v5, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mBgProtectionPaint:Landroid/graphics/Paint;

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 516
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mBgProtectionCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v9}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 517
    const-string v0, "SystemServicesProxy"

    const-string v1, "Invalid screenshot detected from getTaskThumbnail()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 504
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    invoke-static {v0, v6}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getThumbnail(Landroid/app/ActivityManager;I)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_1
.end method

.method public getTopMostTask()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 1

    .prologue
    .line 329
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTopMostTask(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    return-object v0
.end method

.method public getTopMostTask(I)Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 2
    .param p1, "displayId"    # I

    .prologue
    .line 347
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 348
    .local v0, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 349
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 351
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTopMostTask(Z)Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 5
    .param p1, "excludeRecentsMW"    # Z

    .prologue
    .line 356
    if-eqz p1, :cond_3

    .line 357
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 358
    .local v2, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v2, :cond_2

    .line 359
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 360
    .local v1, "task":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v3, v1, Landroid/app/ActivityManager$RunningTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-eqz v3, :cond_1

    iget-object v3, v1, Landroid/app/ActivityManager$RunningTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v4, 0x4000000

    invoke-virtual {v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 369
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "task":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v2    # "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_1
    :goto_0
    return-object v1

    .line 367
    .restart local v2    # "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 369
    .end local v2    # "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTopMostTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    goto :goto_0
.end method

.method public getWindowRect(I)Landroid/graphics/Rect;
    .locals 5
    .param p1, "displayId"    # I

    .prologue
    const/4 v4, 0x0

    .line 937
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 938
    .local v1, "windowRect":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mWm:Landroid/view/WindowManager;

    if-nez v2, :cond_1

    .line 958
    :cond_0
    :goto_0
    return-object v1

    .line 940
    :cond_1
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 951
    .local v0, "p":Landroid/graphics/Point;
    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mWm:Landroid/view/WindowManager;

    if-eqz v2, :cond_0

    .line 953
    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mWm:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 957
    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public isForegroundUserOwner()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 808
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    if-nez v1, :cond_1

    .line 810
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isInHomeStack(I)Z
    .locals 1
    .param p1, "taskId"    # I

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 458
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->isInHomeStack(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isRecentsTopMost(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/util/MutableBoolean;)Z
    .locals 4
    .param p1, "topTask"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "isHomeTopMost"    # Landroid/util/MutableBoolean;

    .prologue
    const/4 v1, 0x0

    .line 376
    if-eqz p1, :cond_1

    .line 377
    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 380
    .local v0, "topActivity":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.systemui"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.systemui.recents.RecentsActivity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.systemui.recents.SeparatedRecentsActivity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 391
    :cond_0
    if-eqz p2, :cond_1

    .line 392
    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isInHomeStack(I)Z

    move-result v2

    iput-boolean v2, p2, Landroid/util/MutableBoolean;->value:Z

    .line 395
    .end local v0    # "topActivity":Landroid/content/ComponentName;
    :cond_1
    :goto_0
    return v1

    .line 385
    .restart local v0    # "topActivity":Landroid/content/ComponentName;
    :cond_2
    if-eqz p2, :cond_3

    .line 386
    iput-boolean v1, p2, Landroid/util/MutableBoolean;->value:Z

    .line 388
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isTouchExplorationEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 905
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAccm:Landroid/view/accessibility/AccessibilityManager;

    if-nez v1, :cond_1

    .line 907
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAccm:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAccm:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public moveOnlySpecificTaskToFront(Landroid/content/Context;ILjava/lang/String;Landroid/app/ActivityOptions;Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "taskId"    # I
    .param p3, "taskName"    # Ljava/lang/String;
    .param p4, "opts"    # Landroid/app/ActivityOptions;
    .param p5, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 624
    const-string v3, "SystemServicesProxy"

    const-string v4, "moveOnlySpecificTaskToFront"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    iget-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-nez v3, :cond_0

    .line 633
    :goto_0
    return v1

    .line 627
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    move-object v4, v3

    :goto_1
    invoke-virtual {p5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v1

    :goto_2
    invoke-virtual {v5, p2, v4, v3, p5}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->moveOnlySpecificTaskToFront(ILandroid/os/Bundle;ILcom/samsung/android/multiwindow/MultiWindowStyle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 628
    goto :goto_0

    .line 627
    :cond_1
    const/4 v3, 0x0

    move-object v4, v3

    goto :goto_1

    :cond_2
    move v3, v2

    goto :goto_2

    .line 629
    :catch_0
    move-exception v0

    .line 630
    .local v0, "e":Ljava/lang/Exception;
    const v3, 0x7f0b03b9

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v1

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/systemui/recents/misc/Console;->logError(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public moveTaskToFront(ILandroid/app/ActivityOptions;)V
    .locals 3
    .param p1, "taskId"    # I
    .param p2, "opts"    # Landroid/app/ActivityOptions;

    .prologue
    const/4 v2, 0x1

    .line 610
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    .line 619
    :goto_0
    return-void

    .line 613
    :cond_0
    if-eqz p2, :cond_1

    .line 614
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, p1, v2, v1}, Landroid/app/ActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V

    goto :goto_0

    .line 617
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v0, p1, v2}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    goto :goto_0
.end method

.method public registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/app/ITaskStackListener;

    .prologue
    .line 999
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    if-nez v1, :cond_0

    .line 1006
    :goto_0
    return-void

    .line 1002
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1003
    :catch_0
    move-exception v0

    .line 1004
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public removeTask(I)V
    .locals 2
    .param p1, "taskId"    # I

    .prologue
    .line 655
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    .line 665
    :goto_0
    return-void

    .line 659
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mBgThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/recents/misc/SystemServicesProxy$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy$1;-><init>(Lcom/android/systemui/recents/misc/SystemServicesProxy;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public resizeTask(ILandroid/graphics/Rect;)V
    .locals 2
    .param p1, "taskId"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 408
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    if-nez v1, :cond_0

    .line 415
    :goto_0
    return-void

    .line 411
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    invoke-interface {v1, p1, p2}, Landroid/app/IActivityManager;->resizeTask(ILandroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 412
    :catch_0
    move-exception v0

    .line 413
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public startActivityFromRecentMultiWindow(Landroid/content/Context;ILjava/lang/String;Landroid/app/ActivityOptions;Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "taskId"    # I
    .param p3, "taskName"    # Ljava/lang/String;
    .param p4, "options"    # Landroid/app/ActivityOptions;
    .param p5, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 639
    const-string v3, "SystemServicesProxy"

    const-string v4, "startActivityFromRecentMultiWindow"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    iget-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-eqz v3, :cond_1

    .line 642
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-nez p4, :cond_0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v4, p2, v3, p5}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->startActivityFromRecentMultiWindow(ILandroid/os/Bundle;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 649
    :goto_1
    return v1

    .line 642
    :cond_0
    invoke-virtual {p4}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 644
    :catch_0
    move-exception v0

    .line 645
    .local v0, "e":Ljava/lang/Exception;
    const v3, 0x7f0b03b9

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p3, v1, v2

    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/systemui/recents/misc/Console;->logError(Landroid/content/Context;Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move v1, v2

    .line 649
    goto :goto_1
.end method

.method public startActivityFromRecents(Landroid/content/Context;ILjava/lang/String;Landroid/app/ActivityOptions;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "taskId"    # I
    .param p3, "taskName"    # Ljava/lang/String;
    .param p4, "options"    # Landroid/app/ActivityOptions;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 964
    iget-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    if-eqz v3, :cond_1

    .line 975
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    if-nez p4, :cond_0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v4, p2, v3}, Landroid/app/IActivityManager;->startActivityFromRecents(ILandroid/os/Bundle;)I

    .line 983
    :goto_1
    return v1

    .line 975
    :cond_0
    invoke-virtual {p4}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 978
    :catch_0
    move-exception v0

    .line 979
    .local v0, "e":Ljava/lang/Exception;
    const v3, 0x7f0b03b9

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p3, v1, v2

    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/systemui/recents/misc/Console;->logError(Landroid/content/Context;Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move v1, v2

    .line 983
    goto :goto_1
.end method

.method public startInPlaceAnimationOnFrontMostApplication(Landroid/app/ActivityOptions;)V
    .locals 2
    .param p1, "opts"    # Landroid/app/ActivityOptions;

    .prologue
    .line 988
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    if-nez v1, :cond_0

    .line 995
    :goto_0
    return-void

    .line 991
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->startInPlaceAnimationOnFrontMostApplication(Landroid/app/ActivityOptions;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 992
    :catch_0
    move-exception v0

    .line 993
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
