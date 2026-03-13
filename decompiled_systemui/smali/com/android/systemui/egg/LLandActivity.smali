.class public Lcom/android/systemui/egg/LLandActivity;
.super Landroid/app/Activity;
.source "LLandActivity.java"


# instance fields
.field mLand:Lcom/android/systemui/egg/LLand;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v0, 0x7f040050

    invoke-virtual {p0, v0}, Lcom/android/systemui/egg/LLandActivity;->setContentView(I)V

    .line 32
    const v0, 0x7f0f01b6

    invoke-virtual {p0, v0}, Lcom/android/systemui/egg/LLandActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/egg/LLand;

    iput-object v0, p0, Lcom/android/systemui/egg/LLandActivity;->mLand:Lcom/android/systemui/egg/LLand;

    .line 33
    iget-object v1, p0, Lcom/android/systemui/egg/LLandActivity;->mLand:Lcom/android/systemui/egg/LLand;

    const v0, 0x7f0f01b7

    invoke-virtual {p0, v0}, Lcom/android/systemui/egg/LLandActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/egg/LLand;->setScoreField(Landroid/widget/TextView;)V

    .line 34
    iget-object v0, p0, Lcom/android/systemui/egg/LLandActivity;->mLand:Lcom/android/systemui/egg/LLand;

    const v1, 0x7f0f01b8

    invoke-virtual {p0, v1}, Lcom/android/systemui/egg/LLandActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/egg/LLand;->setSplash(Landroid/view/View;)V

    .line 36
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui/egg/LLandActivity;->mLand:Lcom/android/systemui/egg/LLand;

    invoke-virtual {v0}, Lcom/android/systemui/egg/LLand;->stop()V

    .line 41
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 42
    return-void
.end method
