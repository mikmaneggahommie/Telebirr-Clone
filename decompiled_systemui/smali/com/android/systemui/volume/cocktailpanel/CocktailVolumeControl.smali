.class public Lcom/android/systemui/volume/cocktailpanel/CocktailVolumeControl;
.super Ljava/lang/Object;
.source "CocktailVolumeControl.java"


# instance fields
.field private final STREAM_MASTER:I

.field private final TAG:Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "CocktailVolumeControl"

    iput-object v0, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumeControl;->TAG:Ljava/lang/String;

    .line 20
    const/16 v0, -0x64

    iput v0, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumeControl;->STREAM_MASTER:I

    .line 23
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumeControl;->mAudioManager:Landroid/media/AudioManager;

    .line 24
    return-void
.end method

.method private getStreamVolume(I)I
    .locals 1
    .param p1, "streamType"    # I

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumeControl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    return v0
.end method

.method private setStreamVolume(III)V
    .locals 1
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumeControl;->getStreamVolume(I)I

    move-result v0

    if-eq v0, p2, :cond_0

    .line 58
    iget-object v0, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumeControl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 61
    :cond_0
    return-void
.end method


# virtual methods
.method public controlVolume(Landroid/widget/SeekBar;IIZI)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "streamType"    # I
    .param p4, "fromUser"    # Z
    .param p5, "flags"    # I

    .prologue
    .line 27
    const-string v0, "CocktailVolumeControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgressChanged stream type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    if-eqz p3, :cond_0

    const/4 v0, 0x6

    if-ne p3, v0, :cond_2

    .line 31
    :cond_0
    if-lez p2, :cond_1

    .line 32
    add-int/lit8 p2, p2, -0x1

    .line 35
    :cond_1
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    if-nez v0, :cond_2

    .line 36
    const-string v0, "CocktailVolumeControl"

    const-string v1, "Set force progress level 1 for call volume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 40
    :cond_2
    if-eqz p4, :cond_3

    .line 41
    invoke-direct {p0, p3, p2, p5}, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumeControl;->setStreamVolume(III)V

    .line 43
    :cond_3
    return-void
.end method
