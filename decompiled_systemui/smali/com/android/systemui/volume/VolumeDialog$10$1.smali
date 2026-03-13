.class Lcom/android/systemui/volume/VolumeDialog$10$1;
.super Ljava/lang/Object;
.source "VolumeDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumeDialog$10;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/volume/VolumeDialog$10;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeDialog$10;)V
    .locals 0

    .prologue
    .line 939
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialog$10$1;->this$1:Lcom/android/systemui/volume/VolumeDialog$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 942
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$10$1;->this$1:Lcom/android/systemui/volume/VolumeDialog$10;

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialog$10;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->access$2000(Lcom/android/systemui/volume/VolumeDialog;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 943
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$10$1;->this$1:Lcom/android/systemui/volume/VolumeDialog$10;

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialog$10;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->access$5000(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialog$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 944
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$10$1;->this$1:Lcom/android/systemui/volume/VolumeDialog$10;

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialog$10;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->access$5000(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialog$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/volume/VolumeDialog$Callback;->onSettingsClicked()V

    .line 946
    :cond_0
    return-void
.end method
