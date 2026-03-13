.class Lcom/android/systemui/volume/VolumeDialog$8;
.super Ljava/lang/Object;
.source "VolumeDialog.java"

# interfaces
.implements Lcom/android/systemui/volume/VolumeDialogController$Callbacks;


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
    .line 856
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialog$8;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged()V
    .locals 1

    .prologue
    .line 884
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$8;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->access$4400(Lcom/android/systemui/volume/VolumeDialog;)V

    .line 885
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$8;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->access$4500(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/SpTexts;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/volume/SpTexts;->update()V

    .line 886
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$8;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->access$4600(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/ZenFooter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/volume/ZenFooter;->onConfigurationChanged()V

    .line 887
    return-void
.end method

.method public onDismissRequested(I)V
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 864
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$8;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/VolumeDialog;->dismissH(I)V

    .line 865
    return-void
.end method

.method public onLayoutDirectionChanged(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 879
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$8;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->access$4300(Lcom/android/systemui/volume/VolumeDialog;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 880
    return-void
.end method

.method public onPlaySound()V
    .locals 0

    .prologue
    .line 911
    return-void
.end method

.method public onScreenOff()V
    .locals 2

    .prologue
    .line 869
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$8;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialog;->dismissH(I)V

    .line 870
    return-void
.end method

.method public onShowRequested(I)V
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 859
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$8;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v0, p1}, Lcom/android/systemui/volume/VolumeDialog;->access$4100(Lcom/android/systemui/volume/VolumeDialog;I)V

    .line 860
    return-void
.end method

.method public onShowSafetyWarning(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 905
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$8;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v0, p1}, Lcom/android/systemui/volume/VolumeDialog;->access$4800(Lcom/android/systemui/volume/VolumeDialog;I)V

    .line 906
    return-void
.end method

.method public onShowSilentHint()V
    .locals 3

    .prologue
    .line 898
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$8;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->access$4700(Lcom/android/systemui/volume/VolumeDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 899
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$8;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->access$2200(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/volume/VolumeDialogController;->setRingerMode(IZ)V

    .line 901
    :cond_0
    return-void
.end method

.method public onShowVibrateHint()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 891
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$8;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->access$4700(Lcom/android/systemui/volume/VolumeDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 892
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$8;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->access$2200(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/volume/VolumeDialogController;->setRingerMode(IZ)V

    .line 894
    :cond_0
    return-void
.end method

.method public onStateChanged(Lcom/android/systemui/volume/VolumeDialogController$State;)V
    .locals 1
    .param p1, "state"    # Lcom/android/systemui/volume/VolumeDialogController$State;

    .prologue
    .line 874
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$8;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v0, p1}, Lcom/android/systemui/volume/VolumeDialog;->access$4200(Lcom/android/systemui/volume/VolumeDialog;Lcom/android/systemui/volume/VolumeDialogController$State;)V

    .line 875
    return-void
.end method

.method public onStopSound()V
    .locals 0

    .prologue
    .line 916
    return-void
.end method

.method public onThemeChanged()V
    .locals 0

    .prologue
    .line 922
    return-void
.end method
