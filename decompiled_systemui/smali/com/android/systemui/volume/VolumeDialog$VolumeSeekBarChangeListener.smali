.class final Lcom/android/systemui/volume/VolumeDialog$VolumeSeekBarChangeListener;
.super Ljava/lang/Object;
.source "VolumeDialog.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VolumeSeekBarChangeListener"
.end annotation


# instance fields
.field private final mRow:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialog;


# direct methods
.method private constructor <init>(Lcom/android/systemui/volume/VolumeDialog;Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V
    .locals 0
    .param p2, "row"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .prologue
    .line 1018
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1019
    iput-object p2, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .line 1020
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/VolumeDialog;Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Lcom/android/systemui/volume/VolumeDialog$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/volume/VolumeDialog;
    .param p2, "x1"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    .param p3, "x2"    # Lcom/android/systemui/volume/VolumeDialog$1;

    .prologue
    .line 1015
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialog$VolumeSeekBarChangeListener;-><init>(Lcom/android/systemui/volume/VolumeDialog;Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 7
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 1024
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2400(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1044
    :cond_0
    :goto_0
    return-void

    .line 1025
    :cond_1
    sget-boolean v2, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialog;->access$500()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1000(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v4

    invoke-static {v4}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " onProgressChanged "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " fromUser="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    :cond_2
    if-eqz p3, :cond_0

    .line 1028
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2400(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v2

    iget v2, v2, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->levelMin:I

    if-lez v2, :cond_3

    .line 1029
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2400(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v2

    iget v2, v2, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->levelMin:I

    mul-int/lit8 v0, v2, 0x64

    .line 1030
    .local v0, "minProgress":I
    if-ge p2, v0, :cond_3

    .line 1031
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1034
    .end local v0    # "minProgress":I
    :cond_3
    invoke-static {p1, p2}, Lcom/android/systemui/volume/VolumeDialog;->access$5500(Landroid/widget/SeekBar;I)I

    move-result v1

    .line 1035
    .local v1, "userLevel":I
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2400(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v2

    iget v2, v2, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    if-ne v2, v1, :cond_4

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2400(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muted:Z

    if-eqz v2, :cond_0

    if-lez v1, :cond_0

    .line 1036
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2602(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;J)J

    .line 1037
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$3100(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 1038
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialog;->access$2200(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1000(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v3

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/volume/VolumeDialogController;->setStreamVolume(II)V

    .line 1039
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    invoke-static {v2, v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$3102(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;I)I

    .line 1040
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialog;->access$2000(Lcom/android/systemui/volume/VolumeDialog;)Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x9

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    invoke-static {v6}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1000(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 1048
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialog;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartTrackingTouch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1000(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->access$2200(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1000(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogController;->setActiveStream(I)V

    .line 1050
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$3502(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Z)Z

    .line 1051
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 6
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    const/4 v5, 0x0

    .line 1055
    sget-boolean v1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialog;->access$500()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStopTrackingTouch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1000(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    invoke-static {v1, v5}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$3502(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Z)Z

    .line 1057
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2602(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;J)J

    .line 1058
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/systemui/volume/VolumeDialog;->access$5500(Landroid/widget/SeekBar;I)I

    move-result v0

    .line 1059
    .local v0, "userLevel":I
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialog;->access$2000(Lcom/android/systemui/volume/VolumeDialog;)Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x10

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1000(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1060
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2400(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    if-eq v1, v0, :cond_1

    .line 1061
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialog;->access$200(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialog$H;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialog;->access$200(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialog$H;

    move-result-object v2

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/volume/VolumeDialog$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/systemui/volume/VolumeDialog$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1064
    :cond_1
    return-void
.end method
