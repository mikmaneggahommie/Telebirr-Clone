.class final Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;
.super Landroid/app/Presentation;
.source "KeyguardDisplayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardDisplayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KeyguardPresentation"
.end annotation


# static fields
.field private static final MOVE_CLOCK_TIMEOUT:I = 0x2710

.field private static final VIDEO_SAFE_REGION:I = 0x50


# instance fields
.field private mClock:Landroid/view/View;

.field private mMarginLeft:I

.field private mMarginTop:I

.field mMoveTextRunnable:Ljava/lang/Runnable;

.field private mUsableHeight:I

.field private mUsableWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "display"    # Landroid/view/Display;
    .param p3, "theme"    # I

    .prologue
    .line 161
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;I)V

    .line 149
    new-instance v0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation$1;-><init>(Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mMoveTextRunnable:Ljava/lang/Runnable;

    .line 162
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 163
    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;

    .prologue
    .line 141
    iget v0, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mMarginLeft:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;

    .prologue
    .line 141
    iget v0, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mUsableWidth:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mClock:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;

    .prologue
    .line 141
    iget v0, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mMarginTop:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;

    .prologue
    .line 141
    iget v0, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mUsableHeight:I

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 179
    invoke-super {p0, p1}, Landroid/app/Presentation;->onCreate(Landroid/os/Bundle;)V

    .line 181
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 182
    .local v0, "p":Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 183
    iget v1, v0, Landroid/graphics/Point;->x:I

    mul-int/lit8 v1, v1, 0x50

    div-int/lit8 v1, v1, 0x64

    iput v1, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mUsableWidth:I

    .line 184
    iget v1, v0, Landroid/graphics/Point;->y:I

    mul-int/lit8 v1, v1, 0x50

    div-int/lit8 v1, v1, 0x64

    iput v1, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mUsableHeight:I

    .line 185
    iget v1, v0, Landroid/graphics/Point;->x:I

    mul-int/lit8 v1, v1, 0x14

    div-int/lit16 v1, v1, 0xc8

    iput v1, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mMarginLeft:I

    .line 186
    iget v1, v0, Landroid/graphics/Point;->y:I

    mul-int/lit8 v1, v1, 0x14

    div-int/lit16 v1, v1, 0xc8

    iput v1, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mMarginTop:I

    .line 188
    sget v1, Lcom/android/keyguard/R$layout;->keyguard_presentation:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->setContentView(I)V

    .line 189
    sget v1, Lcom/android/keyguard/R$id;->clock:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mClock:Landroid/view/View;

    .line 192
    iget-object v1, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mClock:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mMoveTextRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 193
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mClock:Landroid/view/View;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mMoveTextRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 175
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 167
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 168
    const/4 v0, 0x1

    .line 169
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Presentation;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
