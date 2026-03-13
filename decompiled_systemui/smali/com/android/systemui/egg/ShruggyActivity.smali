.class public Lcom/android/systemui/egg/ShruggyActivity;
.super Landroid/app/Activity;
.source "ShruggyActivity.java"


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
    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v0, 0x7f0b0656

    invoke-virtual {p0, v0}, Lcom/android/systemui/egg/ShruggyActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 31
    const-string v0, "SystemUI"

    const-string v1, "Hey, it\'s just a preview; what did you expect?"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-virtual {p0}, Lcom/android/systemui/egg/ShruggyActivity;->finish()V

    .line 33
    return-void
.end method
