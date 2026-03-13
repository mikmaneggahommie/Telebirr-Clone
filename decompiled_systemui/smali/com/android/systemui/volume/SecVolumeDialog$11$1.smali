.class Lcom/android/systemui/volume/SecVolumeDialog$11$1;
.super Ljava/lang/Object;
.source "SecVolumeDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/SecVolumeDialog$11;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/volume/SecVolumeDialog$11;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/SecVolumeDialog$11;)V
    .locals 0

    .prologue
    .line 1661
    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog$11$1;->this$1:Lcom/android/systemui/volume/SecVolumeDialog$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1664
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$11$1;->this$1:Lcom/android/systemui/volume/SecVolumeDialog$11;

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog$11;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->access$2900(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1665
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$11$1;->this$1:Lcom/android/systemui/volume/SecVolumeDialog$11;

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog$11;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->access$5900(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SecVolumeDialog$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1666
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$11$1;->this$1:Lcom/android/systemui/volume/SecVolumeDialog$11;

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog$11;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->access$5900(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SecVolumeDialog$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/volume/SecVolumeDialog$Callback;->onSettingsClicked()V

    .line 1668
    :cond_0
    return-void
.end method
