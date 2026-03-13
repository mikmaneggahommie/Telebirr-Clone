.class Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$12;
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
    .line 1590
    iput-object p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$12;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 1592
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$12;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v2}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$700(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "multiwindow_facade"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .line 1594
    .local v1, "mwf":Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getArrangeState()I

    move-result v0

    .line 1595
    .local v0, "currentState":I
    if-eqz v0, :cond_0

    .line 1596
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 1597
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$12;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-virtual {v2, v4}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->hideButtonsPopupWindow(Z)V

    .line 1598
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$12;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v2}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$600(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$12;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v3}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$1900(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$12;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v4}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$1900(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)I

    move-result v4

    xor-int/lit8 v4, v4, -0x1

    and-int/lit8 v4, v4, 0xf

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->exchangeTopTaskToZone(II)Z

    .line 1600
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$12;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$12;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v3}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$1900(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)I

    move-result v3

    xor-int/lit8 v3, v3, -0x1

    and-int/lit8 v3, v3, 0xf

    invoke-static {v2, v3}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$1902(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;I)I

    .line 1601
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$12;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v2}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$700(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "SPLW"

    const-string v4, "SWITCH"

    invoke-static {v2, v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1606
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$12;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-virtual {v2}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->checkFixedBoundsForDimLayer()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1607
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$12;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v2}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$600(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$12;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v3}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$2700(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setFocusAppByZone(I)V

    .line 1613
    :cond_0
    :goto_0
    return-void

    .line 1610
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$12;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-virtual {v2, v4}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->hideButtonsPopupWindow(Z)V

    goto :goto_0
.end method
