.class public Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;
.super Landroid/widget/LinearLayout;
.source "KeyguardShortcutView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/KeyguardShortcutView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShortcutItem"
.end annotation


# instance fields
.field private mClsName:Ljava/lang/String;

.field private mIcon:Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;

.field private mIntent:Landroid/content/Intent;

.field private mIsDummy:Z

.field private mItemPadding:I

.field private mPkgName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/sec/KeyguardShortcutView;Landroid/content/Context;Landroid/content/ComponentName;Z)V
    .locals 12
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cn"    # Landroid/content/ComponentName;
    .param p4, "isNotDummy"    # Z

    .prologue
    .line 453
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    .line 454
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 456
    if-nez p4, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIsDummy:Z

    .line 458
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 459
    .local v9, "inflater":Landroid/view/LayoutInflater;
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_shortcut_item:I

    const/4 v1, 0x1

    invoke-virtual {v9, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 461
    sget v0, Lcom/android/keyguard/R$id;->shortcut_item_root:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 462
    .local v10, "mRoot":Landroid/widget/LinearLayout;
    sget v0, Lcom/android/keyguard/R$id;->icon:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIcon:Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;

    .line 464
    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mItemPadding:I

    .line 465
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$dimen;->keyguard_lockscreen_application_shortcut_icon_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-static {p1, v0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$502(Lcom/android/keyguard/sec/KeyguardShortcutView;I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$402(Lcom/android/keyguard/sec/KeyguardShortcutView;I)I

    .line 467
    invoke-static {p1}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$600(Lcom/android/keyguard/sec/KeyguardShortcutView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    invoke-static {p1}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$100(Lcom/android/keyguard/sec/KeyguardShortcutView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIconWidth ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$400(Lcom/android/keyguard/sec/KeyguardShortcutView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_0
    invoke-static {p1, p3}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$700(Lcom/android/keyguard/sec/KeyguardShortcutView;Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIntent:Landroid/content/Intent;

    .line 471
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIntent:Landroid/content/Intent;

    if-nez v0, :cond_3

    .line 472
    invoke-static {p1}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$600(Lcom/android/keyguard/sec/KeyguardShortcutView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 473
    invoke-static {p1}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$100(Lcom/android/keyguard/sec/KeyguardShortcutView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "There\'s no activity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIntent:Landroid/content/Intent;

    .line 518
    :goto_1
    return-void

    .line 456
    .end local v9    # "inflater":Landroid/view/LayoutInflater;
    .end local v10    # "mRoot":Landroid/widget/LinearLayout;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 477
    .restart local v9    # "inflater":Landroid/view/LayoutInflater;
    .restart local v10    # "mRoot":Landroid/widget/LinearLayout;
    :cond_3
    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mPkgName:Ljava/lang/String;

    .line 478
    invoke-virtual {p3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mClsName:Ljava/lang/String;

    .line 480
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 481
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$800()Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$900()[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "package=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" and class=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 486
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_5

    .line 487
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 488
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIcon:Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->setBadgeCount(I)V

    .line 490
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 493
    .end local v7    # "c":Landroid/database/Cursor;
    :cond_5
    invoke-static {p1}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1000(Lcom/android/keyguard/sec/KeyguardShortcutView;)Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIntent:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v11

    .line 494
    .local v11, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-nez v11, :cond_7

    .line 495
    invoke-static {p1}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$600(Lcom/android/keyguard/sec/KeyguardShortcutView;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 496
    invoke-static {p1}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$100(Lcom/android/keyguard/sec/KeyguardShortcutView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "There\'s no activity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIntent:Landroid/content/Intent;

    goto/16 :goto_1

    .line 500
    :cond_7
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIcon:Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;

    invoke-virtual {p1, v11}, Lcom/android/keyguard/sec/KeyguardShortcutView;->getFullResIcon(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p1, v1, p2}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1100(Lcom/android/keyguard/sec/KeyguardShortcutView;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 501
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIcon:Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 504
    :try_start_0
    invoke-static {p1}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1000(Lcom/android/keyguard/sec/KeyguardShortcutView;)Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    .line 505
    .local v6, "aInfo":Landroid/content/pm/ActivityInfo;
    invoke-static {p1}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1200(Lcom/android/keyguard/sec/KeyguardShortcutView;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1000(Lcom/android/keyguard/sec/KeyguardShortcutView;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->zzz_tts_lockscreen_shortcut_swipe:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->setContentDescription(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    .end local v6    # "aInfo":Landroid/content/pm/ActivityInfo;
    :goto_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->setFocusableInTouchMode(Z)V

    goto/16 :goto_1

    .line 509
    .restart local v6    # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_8
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1000(Lcom/android/keyguard/sec/KeyguardShortcutView;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->zzz_tts_lockscreen_shortcut_swipe_touch_exploration:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->setContentDescription(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 514
    .end local v6    # "aInfo":Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v8

    .line 515
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v8}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_2
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIntent:Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mClsName:Ljava/lang/String;

    return-object v0
.end method

.method public getItemPadding()I
    .locals 1

    .prologue
    .line 521
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mItemPadding:I

    return v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public isDummy()Z
    .locals 1

    .prologue
    .line 525
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIsDummy:Z

    return v0
.end method

.method public onPressed(Z)V
    .locals 1
    .param p1, "pressed"    # Z

    .prologue
    .line 529
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIcon:Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->onPressed(Z)V

    .line 530
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 26
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$600(Lcom/android/keyguard/sec/KeyguardShortcutView;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$100(Lcom/android/keyguard/sec/KeyguardShortcutView;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "onTouch()"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1300(Lcom/android/keyguard/sec/KeyguardShortcutView;)Z

    move-result v19

    if-nez v19, :cond_1

    .line 558
    const/16 v19, 0x0

    .line 664
    :goto_0
    return v19

    .line 560
    :cond_1
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 561
    .local v7, "touchedEventX":F
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v16

    .line 563
    .local v16, "touchedEventY":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1400(Lcom/android/keyguard/sec/KeyguardShortcutView;)Landroid/view/animation/AlphaAnimation;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$100(Lcom/android/keyguard/sec/KeyguardShortcutView;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "faded out"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    const/16 v19, 0x0

    goto :goto_0

    .line 568
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 569
    .local v4, "action":I
    packed-switch v4, :pswitch_data_0

    .line 662
    :cond_3
    :goto_1
    const-string v19, "ShortcutWidget"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->setTag(Ljava/lang/Object;)V

    .line 663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2300(Lcom/android/keyguard/sec/KeyguardShortcutView;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 664
    const/16 v19, 0x1

    goto :goto_0

    .line 571
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1500(Lcom/android/keyguard/sec/KeyguardShortcutView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$100(Lcom/android/keyguard/sec/KeyguardShortcutView;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "action down"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v7}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1602(Lcom/android/keyguard/sec/KeyguardShortcutView;F)F

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1702(Lcom/android/keyguard/sec/KeyguardShortcutView;F)F

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x0

    invoke-static/range {v19 .. v21}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1802(Lcom/android/keyguard/sec/KeyguardShortcutView;D)D

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1900(Lcom/android/keyguard/sec/KeyguardShortcutView;Landroid/view/View;Z)V

    .line 577
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->onPressed(Z)V

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2000(Lcom/android/keyguard/sec/KeyguardShortcutView;)Lcom/android/keyguard/sec/KeyguardUnlockView$HelpTextCallback;

    move-result-object v19

    if-eqz v19, :cond_3

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2000(Lcom/android/keyguard/sec/KeyguardShortcutView;)Lcom/android/keyguard/sec/KeyguardUnlockView$HelpTextCallback;

    move-result-object v19

    const/16 v20, 0x1

    invoke-interface/range {v19 .. v20}, Lcom/android/keyguard/sec/KeyguardUnlockView$HelpTextCallback;->showShortcutHelpText(Z)V

    goto/16 :goto_1

    .line 583
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x0

    invoke-static/range {v19 .. v21}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1802(Lcom/android/keyguard/sec/KeyguardShortcutView;D)D

    goto/16 :goto_1

    .line 586
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$100(Lcom/android/keyguard/sec/KeyguardShortcutView;)Ljava/lang/String;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "action up/cancel mDistance: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1800(Lcom/android/keyguard/sec/KeyguardShortcutView;)D

    move-result-wide v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2100(Lcom/android/keyguard/sec/KeyguardShortcutView;)I

    move-result v19

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1800(Lcom/android/keyguard/sec/KeyguardShortcutView;)D

    move-result-wide v22

    cmpg-double v19, v20, v22

    if-gez v19, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1800(Lcom/android/keyguard/sec/KeyguardShortcutView;)D

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2200(Lcom/android/keyguard/sec/KeyguardShortcutView;)I

    move-result v19

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v22, v0

    cmpg-double v19, v20, v22

    if-ltz v19, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1800(Lcom/android/keyguard/sec/KeyguardShortcutView;)D

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2200(Lcom/android/keyguard/sec/KeyguardShortcutView;)I

    move-result v19

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v22, v0

    cmpl-double v19, v20, v22

    if-ltz v19, :cond_6

    .line 589
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1302(Lcom/android/keyguard/sec/KeyguardShortcutView;Z)Z

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2300(Lcom/android/keyguard/sec/KeyguardShortcutView;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1500(Lcom/android/keyguard/sec/KeyguardShortcutView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v19

    if-eqz v19, :cond_6

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIntent:Landroid/content/Intent;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/Intent;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2402(Lcom/android/keyguard/sec/KeyguardShortcutView;Landroid/content/Intent;)Landroid/content/Intent;

    .line 593
    new-instance v19, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem$1;-><init>(Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2300(Lcom/android/keyguard/sec/KeyguardShortcutView;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->getUnlockDelay()J

    move-result-wide v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 606
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1300(Lcom/android/keyguard/sec/KeyguardShortcutView;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1900(Lcom/android/keyguard/sec/KeyguardShortcutView;Landroid/view/View;Z)V

    .line 608
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->onPressed(Z)V

    .line 609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2000(Lcom/android/keyguard/sec/KeyguardShortcutView;)Lcom/android/keyguard/sec/KeyguardUnlockView$HelpTextCallback;

    move-result-object v19

    if-eqz v19, :cond_3

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2000(Lcom/android/keyguard/sec/KeyguardShortcutView;)Lcom/android/keyguard/sec/KeyguardUnlockView$HelpTextCallback;

    move-result-object v19

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Lcom/android/keyguard/sec/KeyguardUnlockView$HelpTextCallback;->showShortcutHelpText(Z)V

    goto/16 :goto_1

    .line 615
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1500(Lcom/android/keyguard/sec/KeyguardShortcutView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 616
    const/4 v5, 0x0

    .line 617
    .local v5, "diffX":I
    const/4 v6, 0x0

    .line 618
    .local v6, "diffY":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->getMeasuredWidth()I

    move-result v19

    div-int/lit8 v17, v19, 0x2

    .line 619
    .local v17, "viewCenterX":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->getMeasuredHeight()I

    move-result v19

    div-int/lit8 v18, v19, 0x2

    .line 620
    .local v18, "viewCenterY":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v5, v0

    .line 621
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v6, v0

    .line 623
    int-to-double v0, v5

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    int-to-double v0, v6

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    add-double v10, v20, v22

    .line 625
    .local v10, "distance_square":D
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .line 626
    .local v8, "distance":D
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->getMeasuredWidth()I

    move-result v19

    mul-int/lit8 v19, v19, 0x3

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    div-double v14, v20, v22

    .line 627
    .local v14, "threshold":D
    div-double v12, v8, v14

    .line 632
    .local v12, "mDistanceRatio":D
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->setOpacity(D)V

    .line 633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1600(Lcom/android/keyguard/sec/KeyguardShortcutView;)F

    move-result v19

    sub-float v19, v7, v19

    move/from16 v0, v19

    float-to-int v5, v0

    .line 634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1700(Lcom/android/keyguard/sec/KeyguardShortcutView;)F

    move-result v19

    sub-float v19, v16, v19

    move/from16 v0, v19

    float-to-int v6, v0

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    int-to-double v0, v5

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    int-to-double v0, v6

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    add-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    invoke-static/range {v19 .. v21}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1802(Lcom/android/keyguard/sec/KeyguardShortcutView;D)D

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$600(Lcom/android/keyguard/sec/KeyguardShortcutView;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$100(Lcom/android/keyguard/sec/KeyguardShortcutView;)Ljava/lang/String;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "ACTION_MOVE mDistance: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1800(Lcom/android/keyguard/sec/KeyguardShortcutView;)D

    move-result-wide v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1800(Lcom/android/keyguard/sec/KeyguardShortcutView;)D

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2200(Lcom/android/keyguard/sec/KeyguardShortcutView;)I

    move-result v19

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v22, v0

    cmpl-double v19, v20, v22

    if-ltz v19, :cond_3

    .line 641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1302(Lcom/android/keyguard/sec/KeyguardShortcutView;Z)Z

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2300(Lcom/android/keyguard/sec/KeyguardShortcutView;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1500(Lcom/android/keyguard/sec/KeyguardShortcutView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v19

    if-eqz v19, :cond_3

    .line 644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIntent:Landroid/content/Intent;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/Intent;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2402(Lcom/android/keyguard/sec/KeyguardShortcutView;Landroid/content/Intent;)Landroid/content/Intent;

    .line 645
    new-instance v19, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem$2;-><init>(Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2300(Lcom/android/keyguard/sec/KeyguardShortcutView;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->getUnlockDelay()J

    move-result-wide v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 569
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public refreshBadgeCount()V
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIcon:Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->postInvalidate()V

    .line 550
    return-void
.end method

.method public setBadgeCount(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 545
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIcon:Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->setBadgeCount(I)V

    .line 546
    return-void
.end method

.method public setOpacity(D)V
    .locals 1
    .param p1, "distanceRatio"    # D

    .prologue
    .line 533
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIcon:Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->setDistanceRatio(D)V

    .line 534
    return-void
.end method
