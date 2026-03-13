.class public Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;
.super Ljava/lang/Object;
.source "SlookCocktailManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CocktailInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;
    }
.end annotation


# instance fields
.field private mCategory:I

.field private mClassInfo:Landroid/content/ComponentName;

.field private mContentInfo:Landroid/os/Bundle;

.field private mContentView:Landroid/widget/RemoteViews;

.field private mDisplayPolicy:I

.field private mHelpView:Landroid/widget/RemoteViews;


# direct methods
.method private constructor <init>(IIILandroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/os/Bundle;Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "displayPolicy"    # I
    .param p2, "category"    # I
    .param p3, "icon"    # I
    .param p4, "contentView"    # Landroid/widget/RemoteViews;
    .param p5, "helpView"    # Landroid/widget/RemoteViews;
    .param p6, "contentInfo"    # Landroid/os/Bundle;
    .param p7, "classInfo"    # Landroid/content/ComponentName;

    .prologue
    const/4 v0, 0x1

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    iput v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;->mDisplayPolicy:I

    .line 238
    iput v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;->mCategory:I

    .line 349
    iput p1, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;->mDisplayPolicy:I

    .line 350
    iput p2, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;->mCategory:I

    .line 351
    iput-object p4, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;->mContentView:Landroid/widget/RemoteViews;

    .line 352
    iput-object p5, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;->mHelpView:Landroid/widget/RemoteViews;

    .line 353
    iput-object p6, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;->mContentInfo:Landroid/os/Bundle;

    .line 354
    iput-object p7, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;->mClassInfo:Landroid/content/ComponentName;

    .line 355
    return-void
.end method

.method synthetic constructor <init>(IIILandroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/os/Bundle;Landroid/content/ComponentName;Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Landroid/widget/RemoteViews;
    .param p5, "x4"    # Landroid/widget/RemoteViews;
    .param p6, "x5"    # Landroid/os/Bundle;
    .param p7, "x6"    # Landroid/content/ComponentName;
    .param p8, "x7"    # Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$1;

    .prologue
    .line 235
    invoke-direct/range {p0 .. p7}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;-><init>(IIILandroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/os/Bundle;Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;

    .prologue
    .line 235
    iget v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;->mDisplayPolicy:I

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;

    .prologue
    .line 235
    iget v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;->mCategory:I

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;)Landroid/widget/RemoteViews;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;->mContentView:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;)Landroid/widget/RemoteViews;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;->mHelpView:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;->mContentInfo:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;->mClassInfo:Landroid/content/ComponentName;

    return-object v0
.end method
