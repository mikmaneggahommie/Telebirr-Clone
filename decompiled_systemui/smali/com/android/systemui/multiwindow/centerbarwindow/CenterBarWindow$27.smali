.class Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$27;
.super Ljava/lang/Object;
.source "CenterBarWindow.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->makeDragAndDropHelpPopupLayout()V
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
    .line 2917
    iput-object p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$27;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 2919
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$27;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$4700(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2920
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$27;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-virtual {v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->removeDragAndDrop()V

    .line 2926
    :goto_0
    return-void

    .line 2922
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$27;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$4702(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;Z)Z

    .line 2923
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$27;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-virtual {v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->drawDragAndDrop()V

    .line 2924
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$27;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$3800(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V

    goto :goto_0
.end method
