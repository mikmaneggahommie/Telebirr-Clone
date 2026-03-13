.class Lcom/android/systemui/settings/ToggleSlider$11;
.super Ljava/lang/Object;
.source "ToggleSlider.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/settings/ToggleSlider;->showConfirmPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/ToggleSlider;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/ToggleSlider;)V
    .locals 0

    .prologue
    .line 1014
    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSlider$11;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "unused"    # Landroid/content/DialogInterface;

    .prologue
    .line 1016
    const-string v0, "ToggleSlider"

    const-string v1, "mAlertDialog is  null "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$11;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/settings/ToggleSlider;->access$1202(Lcom/android/systemui/settings/ToggleSlider;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1018
    return-void
.end method
