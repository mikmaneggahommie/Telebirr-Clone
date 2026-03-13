.class Lcom/android/systemui/volume/SecVolumeDialog$9;
.super Ljava/lang/Object;
.source "SecVolumeDialog.java"

# interfaces
.implements Lcom/android/systemui/volume/VolumeDialogController$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/SecVolumeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/SecVolumeDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/SecVolumeDialog;)V
    .locals 0

    .prologue
    .line 1566
    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog$9;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged()V
    .locals 2

    .prologue
    .line 1594
    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialog;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialog;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onConfigurationChanged : call updateLayout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$9;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->access$4900(Lcom/android/systemui/volume/SecVolumeDialog;)V

    .line 1596
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$9;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->access$5000(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SpTexts;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/volume/SpTexts;->update()V

    .line 1598
    return-void
.end method

.method public onDismissRequested(I)V
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 1574
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$9;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->dismissH(I)V

    .line 1575
    return-void
.end method

.method public onLayoutDirectionChanged(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 1589
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$9;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->access$4800(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 1590
    return-void
.end method

.method public onPlaySound()V
    .locals 1

    .prologue
    .line 1631
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$9;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->playSoundH()V

    .line 1632
    return-void
.end method

.method public onScreenOff()V
    .locals 2

    .prologue
    .line 1579
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$9;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog;->dismissH(I)V

    .line 1580
    return-void
.end method

.method public onShowRequested(I)V
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 1569
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$9;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->access$4600(Lcom/android/systemui/volume/SecVolumeDialog;I)V

    .line 1570
    return-void
.end method

.method public onShowSafetyWarning(I)V
    .locals 4
    .param p1, "flags"    # I

    .prologue
    .line 1617
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog$9;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog;->access$5200(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/samsung/android/sdk/cover/ScoverManager;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1618
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog$9;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog$9;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog;->access$2900(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->access$5300(Lcom/android/systemui/volume/SecVolumeDialog;Landroid/content/Context;)V

    .line 1619
    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialog;->access$200()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialog;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onShowSafetyWarning():initCoverManager"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog$9;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog;->access$5400(Lcom/android/systemui/volume/SecVolumeDialog;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 1623
    .local v1, "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog$9;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog;->access$1100(Lcom/android/systemui/volume/SecVolumeDialog;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog$9;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-virtual {v2}, Lcom/android/systemui/volume/SecVolumeDialog;->isSviewCoverOpened()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1900(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 1624
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog$9;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v2, v1}, Lcom/android/systemui/volume/SecVolumeDialog;->access$5500(Lcom/android/systemui/volume/SecVolumeDialog;Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    goto :goto_0

    .line 1626
    .end local v1    # "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog$9;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v2, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->access$5600(Lcom/android/systemui/volume/SecVolumeDialog;I)V

    .line 1627
    return-void
.end method

.method public onShowSilentHint()V
    .locals 3

    .prologue
    .line 1609
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$9;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->access$5100(Lcom/android/systemui/volume/SecVolumeDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1610
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$9;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->access$3100(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/volume/VolumeDialogController;->setRingerMode(IZ)V

    .line 1612
    :cond_0
    return-void
.end method

.method public onShowVibrateHint()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1602
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$9;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->access$5100(Lcom/android/systemui/volume/SecVolumeDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1603
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$9;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->access$3100(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/volume/VolumeDialogController;->setRingerMode(IZ)V

    .line 1605
    :cond_0
    return-void
.end method

.method public onStateChanged(Lcom/android/systemui/volume/VolumeDialogController$State;)V
    .locals 1
    .param p1, "state"    # Lcom/android/systemui/volume/VolumeDialogController$State;

    .prologue
    .line 1584
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$9;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->access$4700(Lcom/android/systemui/volume/SecVolumeDialog;Lcom/android/systemui/volume/VolumeDialogController$State;)V

    .line 1585
    return-void
.end method

.method public onStopSound()V
    .locals 1

    .prologue
    .line 1636
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$9;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->stopSoundH()V

    .line 1637
    return-void
.end method

.method public onThemeChanged()V
    .locals 1

    .prologue
    .line 1641
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$9;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->themeChanged()V

    .line 1642
    return-void
.end method
