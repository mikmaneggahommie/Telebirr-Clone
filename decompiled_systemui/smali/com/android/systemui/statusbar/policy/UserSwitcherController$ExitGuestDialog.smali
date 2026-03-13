.class final Lcom/android/systemui/statusbar/policy/UserSwitcherController$ExitGuestDialog;
.super Lcom/android/systemui/statusbar/phone/SystemUIDialog;
.source "UserSwitcherController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/UserSwitcherController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ExitGuestDialog"
.end annotation


# instance fields
.field private final mGuestId:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Landroid/content/Context;I)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "guestId"    # I

    .prologue
    .line 708
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$ExitGuestDialog;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 709
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    .line 710
    const v0, 0x7f0b03e2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$ExitGuestDialog;->setTitle(I)V

    .line 711
    const v0, 0x7f0b03e3

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$ExitGuestDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 712
    const/4 v0, -0x2

    const/high16 v1, 0x1040000

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$ExitGuestDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 714
    const/4 v0, -0x1

    const v1, 0x7f0b03e4

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$ExitGuestDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 716
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$ExitGuestDialog;->setCanceledOnTouchOutside(Z)V

    .line 717
    iput p3, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$ExitGuestDialog;->mGuestId:I

    .line 718
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 722
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 723
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$ExitGuestDialog;->cancel()V

    .line 728
    :goto_0
    return-void

    .line 725
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$ExitGuestDialog;->dismiss()V

    .line 726
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$ExitGuestDialog;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$ExitGuestDialog;->mGuestId:I

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$1300(Lcom/android/systemui/statusbar/policy/UserSwitcherController;I)V

    goto :goto_0
.end method
