.class Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$6;
.super Ljava/lang/Object;
.source "CenterBarWindow.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;
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
    .line 880
    iput-object p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$6;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 882
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 916
    :cond_0
    :goto_0
    :pswitch_0
    return v6

    .line 886
    :pswitch_1
    const/4 v2, 0x0

    .line 888
    .local v2, "hoverImage":Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$6;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v4}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$600(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getArrangeState()I

    move-result v3

    .line 889
    .local v3, "mode":I
    if-le v3, v5, :cond_1

    .line 890
    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$6;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v4}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$700(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0202b3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 899
    :goto_1
    if-eqz v2, :cond_0

    .line 900
    const/4 v4, 0x0

    invoke-static {v4, v2}, Landroid/view/PointerIcon;->setHoveringSpenIcon(ILandroid/graphics/drawable/Drawable;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 902
    .end local v3    # "mode":I
    :catch_0
    move-exception v0

    .line 903
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "CenterBarWindow"

    const-string v5, "Failed to change Pen Point to HOVERING_SPENICON_DEFAULT"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 892
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v3    # "mode":I
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$6;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v4}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$000(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)I

    move-result v4

    if-ne v4, v5, :cond_2

    .line 893
    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$6;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v4}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$700(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0202ad

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1

    .line 895
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$6;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v4}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$700(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0202ae

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_1

    .line 904
    .end local v3    # "mode":I
    :catch_1
    move-exception v0

    .line 905
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v4, "CenterBarWindow"

    const-string v5, "Failed to change Pen Point to HOVERING_SPENICON_DEFAULT"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 910
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v2    # "hoverImage":Landroid/graphics/drawable/Drawable;
    :pswitch_2
    const/4 v4, 0x1

    const/4 v5, -0x1

    :try_start_2
    invoke-static {v4, v5}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 911
    :catch_2
    move-exception v1

    .line 912
    .local v1, "e1":Landroid/os/RemoteException;
    const-string v4, "CenterBarWindow"

    const-string v5, "Failed to change Pen Point to HOVERING_SPENICON_DEFAULT"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 882
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
