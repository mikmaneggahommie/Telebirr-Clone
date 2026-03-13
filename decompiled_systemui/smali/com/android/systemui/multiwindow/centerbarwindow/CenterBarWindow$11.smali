.class Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$11;
.super Ljava/lang/Object;
.source "CenterBarWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->makeButtonPopupLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;


# direct methods
.method constructor <init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V
    .locals 0

    .prologue
    .line 1566
    iput-object p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$11;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0xcd

    .line 1568
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$11;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$700(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportStyleTransition(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1581
    :cond_0
    :goto_0
    return-void

    .line 1571
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$11;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$3300(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Landroid/os/SystemVibrator;

    move-result-object v0

    const v1, 0xc369

    const/4 v2, -0x1

    sget-object v3, Landroid/os/Vibrator$MagnitudeTypes;->MaxMagnitude:Landroid/os/Vibrator$MagnitudeTypes;

    invoke-virtual {v0, v1, v2, v5, v3}, Landroid/os/SystemVibrator;->vibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$MagnitudeTypes;)V

    .line 1572
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$11;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTimerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1573
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$11;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTimerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1574
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$11;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$600(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$11;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v1}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$1900(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v5, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->changeTaskToCascade(Landroid/graphics/Point;IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1577
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$11;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$700(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "SPLW"

    const-string v2, "MINIMIZE"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1580
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$11;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->hideButtonsPopupWindow(Z)V

    goto :goto_0
.end method
