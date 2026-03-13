.class public Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;
.super Ljava/lang/Object;
.source "AdaptiveEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/AdaptiveEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "WeatherInfo"
.end annotation


# instance fields
.field private final WEATHER_INFO_TRUSTED:I

.field private currentCityId:Ljava/lang/String;

.field private currentCityName:Ljava/lang/String;

.field private currentLifeDust:I

.field private currentTemperature:F

.field private highTemperature:F

.field private iconNumber:I

.field private isChangedShowOption:Z

.field private lowTemperature:F

.field private showLockAndCover:I

.field private systemLocaion:I

.field private tempScale:I

.field final synthetic this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

.field private trusted:Z

.field private widgetCount:I


# direct methods
.method protected constructor <init>(Lcom/android/keyguard/sec/AdaptiveEventManager;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 454
    iput-object p1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 452
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->WEATHER_INFO_TRUSTED:I

    .line 455
    iput v1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->iconNumber:I

    .line 456
    iput v2, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->currentTemperature:F

    .line 457
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->tempScale:I

    .line 458
    iput-object v3, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->currentCityId:Ljava/lang/String;

    .line 459
    iput-object v3, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->currentCityName:Ljava/lang/String;

    .line 460
    iput v2, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->highTemperature:F

    .line 461
    iput v2, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->lowTemperature:F

    .line 462
    iput-boolean v1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->trusted:Z

    .line 463
    iput v1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->showLockAndCover:I

    .line 464
    iput-boolean v1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->isChangedShowOption:Z

    .line 465
    iput v1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->currentLifeDust:I

    .line 466
    iput v1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->systemLocaion:I

    .line 467
    iput v1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->widgetCount:I

    .line 468
    return-void
.end method


# virtual methods
.method protected dump()V
    .locals 3

    .prologue
    .line 586
    const-string v0, "AdaptiveEventManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WeatherInfo [icon, temp, scale] = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getIconNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getCurrentTemperature()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getTempScale()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    return-void
.end method

.method protected getCurrentCityId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->currentCityId:Ljava/lang/String;

    return-object v0
.end method

.method protected getCurrentCityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->currentCityName:Ljava/lang/String;

    return-object v0
.end method

.method protected getCurrentLifeDust()I
    .locals 1

    .prologue
    .line 562
    iget v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->currentLifeDust:I

    return v0
.end method

.method protected getCurrentTemperature()F
    .locals 1

    .prologue
    .line 479
    iget v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->currentTemperature:F

    return v0
.end method

.method protected getHighTemperature()F
    .locals 1

    .prologue
    .line 511
    iget v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->highTemperature:F

    return v0
.end method

.method protected getIconNumber()I
    .locals 1

    .prologue
    .line 471
    iget v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->iconNumber:I

    return v0
.end method

.method protected getIsChangedShowOption()Z
    .locals 1

    .prologue
    .line 554
    iget-boolean v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->isChangedShowOption:Z

    return v0
.end method

.method protected getLowTemperature()F
    .locals 1

    .prologue
    .line 519
    iget v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->lowTemperature:F

    return v0
.end method

.method protected getShowLockAndCover()I
    .locals 1

    .prologue
    .line 546
    iget v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->showLockAndCover:I

    return v0
.end method

.method protected getSystemLocation()I
    .locals 1

    .prologue
    .line 570
    iget v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->systemLocaion:I

    return v0
.end method

.method protected getTempScale()I
    .locals 1

    .prologue
    .line 487
    iget v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->tempScale:I

    return v0
.end method

.method protected getTrusted()Z
    .locals 1

    .prologue
    .line 527
    iget-boolean v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->trusted:Z

    return v0
.end method

.method protected getWidgetCount()I
    .locals 1

    .prologue
    .line 578
    iget v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->widgetCount:I

    return v0
.end method

.method protected setCurrentCityId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 499
    iput-object p1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->currentCityId:Ljava/lang/String;

    .line 500
    return-void
.end method

.method protected setCurrentCityName(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 507
    iput-object p1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->currentCityName:Ljava/lang/String;

    .line 508
    return-void
.end method

.method protected setCurrentLifeDust(I)V
    .locals 0
    .param p1, "dust"    # I

    .prologue
    .line 566
    iput p1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->currentLifeDust:I

    .line 567
    return-void
.end method

.method protected setCurrentTemperature(F)V
    .locals 0
    .param p1, "temp"    # F

    .prologue
    .line 483
    iput p1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->currentTemperature:F

    .line 484
    return-void
.end method

.method protected setHighTemperature(F)V
    .locals 0
    .param p1, "temp"    # F

    .prologue
    .line 515
    iput p1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->highTemperature:F

    .line 516
    return-void
.end method

.method protected setIconNumber(I)V
    .locals 0
    .param p1, "n"    # I

    .prologue
    .line 475
    iput p1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->iconNumber:I

    .line 476
    return-void
.end method

.method protected setIsChangedShowOption(Z)V
    .locals 0
    .param p1, "ischanged"    # Z

    .prologue
    .line 558
    iput-boolean p1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->isChangedShowOption:Z

    .line 559
    return-void
.end method

.method protected setLowTemperature(F)V
    .locals 0
    .param p1, "temp"    # F

    .prologue
    .line 523
    iput p1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->lowTemperature:F

    .line 524
    return-void
.end method

.method protected setShowLockAndCover(I)V
    .locals 0
    .param p1, "show"    # I

    .prologue
    .line 550
    iput p1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->showLockAndCover:I

    .line 551
    return-void
.end method

.method protected setSystemLocation(I)V
    .locals 0
    .param p1, "location"    # I

    .prologue
    .line 574
    iput p1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->systemLocaion:I

    .line 575
    return-void
.end method

.method protected setTempScale(I)V
    .locals 0
    .param p1, "scale"    # I

    .prologue
    .line 491
    iput p1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->tempScale:I

    .line 492
    return-void
.end method

.method protected setTrusted(I)V
    .locals 3
    .param p1, "errCode"    # I

    .prologue
    const/16 v2, 0xc8

    .line 531
    if-ne p1, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getCurrentCityId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 532
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->trusted:Z

    .line 533
    const-string v0, "AdaptiveEventManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetWork State is Fine : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " & currentCityId is not null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :cond_0
    :goto_0
    return-void

    .line 535
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->trusted:Z

    .line 536
    invoke-virtual {p0}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getCurrentCityId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 537
    const-string v0, "AdaptiveEventManager"

    const-string v1, "currentCityId is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :cond_2
    if-eq p1, v2, :cond_0

    .line 540
    const-string v0, "AdaptiveEventManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetWork disabled : Don\'t refresh weather info : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected setWidgetCount(I)V
    .locals 0
    .param p1, "cnt"    # I

    .prologue
    .line 582
    iput p1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->widgetCount:I

    .line 583
    return-void
.end method
