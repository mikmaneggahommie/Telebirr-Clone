.class Lcom/android/systemui/volume/SecVolumeDialog$Accessibility$1;
.super Ljava/lang/Object;
.source "SecVolumeDialog.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;)V
    .locals 0

    .prologue
    .line 1817
    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility$1;->this$1:Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1826
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialog;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onViewAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1827
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility$1;->this$1:Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;->access$6600(Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;)V

    .line 1828
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1820
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialog;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onViewDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1822
    :cond_0
    return-void
.end method
