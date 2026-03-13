.class Lcom/sec/android/sviewcover/SViewCoverView$10;
.super Ljava/lang/Object;
.source "SViewCoverView.java"

# interfaces
.implements Landroid/media/RemoteController$OnClientUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/sviewcover/SViewCoverView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/sviewcover/SViewCoverView;


# direct methods
.method constructor <init>(Lcom/sec/android/sviewcover/SViewCoverView;)V
    .locals 0

    .prologue
    .line 2517
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverView$10;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientChange(Z)V
    .locals 2
    .param p1, "clearing"    # Z

    .prologue
    .line 2520
    if-eqz p1, :cond_0

    .line 2521
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView$10;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/sviewcover/SViewCoverView;->access$4000(Lcom/sec/android/sviewcover/SViewCoverView;Z)V

    .line 2523
    :cond_0
    return-void
.end method

.method public onClientMetadataUpdate(Landroid/media/RemoteController$MetadataEditor;)V
    .locals 0
    .param p1, "metadataEditor"    # Landroid/media/RemoteController$MetadataEditor;

    .prologue
    .line 2551
    return-void
.end method

.method public onClientPlaybackStateUpdate(I)V
    .locals 7
    .param p1, "state"    # I

    .prologue
    const-wide/16 v2, 0x0

    .line 2528
    const-string v0, "SViewCoverView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClientPlaybackStateUpdate(state="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2530
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView$10;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    const/high16 v6, 0x3f800000    # 1.0f

    move v1, p1

    move-wide v4, v2

    invoke-static/range {v0 .. v6}, Lcom/sec/android/sviewcover/SViewCoverView;->access$4100(Lcom/sec/android/sviewcover/SViewCoverView;IJJF)V

    .line 2531
    return-void
.end method

.method public onClientPlaybackStateUpdate(IJJF)V
    .locals 8
    .param p1, "state"    # I
    .param p2, "stateChangeTimeMs"    # J
    .param p4, "currentPosMs"    # J
    .param p6, "speed"    # F

    .prologue
    .line 2537
    const-string v0, "SViewCoverView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClientPlaybackStateUpdate(state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", stateChangeTimeMs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", currentPosMs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", speed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2542
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView$10;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-static/range {v0 .. v6}, Lcom/sec/android/sviewcover/SViewCoverView;->access$4100(Lcom/sec/android/sviewcover/SViewCoverView;IJJF)V

    .line 2543
    return-void
.end method

.method public onClientTransportControlUpdate(I)V
    .locals 0
    .param p1, "transportControlFlags"    # I

    .prologue
    .line 2547
    return-void
.end method
