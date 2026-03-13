.class Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$28;
.super Ljava/lang/Object;
.source "CenterBarWindow.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    .line 2929
    iput-object p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$28;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 2932
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 2933
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$28;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v0, v2}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$4702(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;Z)Z

    .line 2934
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$28;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$4800(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2936
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
