.class Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$26;
.super Ljava/lang/Object;
.source "CenterBarWindow.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 2879
    iput-object p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$26;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v7, 0x1

    .line 2882
    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$26;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v4}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$600(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v4

    const-string v5, "do_not_show_help_popup_drag_and_drop"

    invoke-virtual {v4, v5, v7}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->updatePreferenceThroughSystemProcess(Ljava/lang/String;I)V

    .line 2883
    const/4 v3, 0x0

    .line 2885
    .local v3, "info":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$26;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v4}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$700(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.samsung.helphub"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 2889
    :goto_0
    if-nez v3, :cond_0

    .line 2909
    :goto_1
    return-void

    .line 2893
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.samsung.helphub.HELP"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2894
    .local v1, "helpIntent":Landroid/content/Intent;
    iget v4, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v2, v4, 0xa

    .line 2895
    .local v2, "helphubVersion":I
    if-eq v2, v7, :cond_1

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    .line 2896
    :cond_1
    const-string v4, "helphub:section"

    const-string v5, "multi_window"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2904
    :goto_2
    :try_start_1
    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$26;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v4}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$700(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2908
    :goto_3
    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$26;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-virtual {v4}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->hideDragAndDropHelpDialog()V

    goto :goto_1

    .line 2897
    :cond_2
    const/4 v4, 0x3

    if-ne v2, v4, :cond_3

    .line 2898
    const-string v4, "helphub:appid"

    const-string v5, "multi_window"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 2900
    :cond_3
    const-string v4, "CenterBarWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mHelphubVersion = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2905
    :catch_0
    move-exception v0

    .line 2906
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v4, "CenterBarWindow"

    const-string v5, "ActivityNotFoundException"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 2886
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v1    # "helpIntent":Landroid/content/Intent;
    .end local v2    # "helphubVersion":I
    :catch_1
    move-exception v4

    goto :goto_0
.end method
