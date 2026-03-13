.class Lcom/android/systemui/volume/VolumeDialog$9;
.super Ljava/lang/Object;
.source "VolumeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeDialog;)V
    .locals 0

    .prologue
    .line 926
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialog$9;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 929
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog$9;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialog;->access$2800(Lcom/android/systemui/volume/VolumeDialog;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 933
    :goto_0
    return-void

    .line 930
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog$9;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialog;->access$4900(Lcom/android/systemui/volume/VolumeDialog;)Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 931
    .local v0, "newExpand":Z
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog$9;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialog;->access$2000(Lcom/android/systemui/volume/VolumeDialog;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v3, v4, v1}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 932
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog$9;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v1, v0}, Lcom/android/systemui/volume/VolumeDialog;->access$2700(Lcom/android/systemui/volume/VolumeDialog;Z)V

    goto :goto_0

    .end local v0    # "newExpand":Z
    :cond_1
    move v0, v2

    .line 930
    goto :goto_1
.end method
