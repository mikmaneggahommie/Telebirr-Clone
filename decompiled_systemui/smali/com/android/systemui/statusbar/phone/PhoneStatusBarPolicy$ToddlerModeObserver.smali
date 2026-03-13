.class Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$ToddlerModeObserver;
.super Lcom/android/systemui/qs/ToddlerModeSetting;
.source "PhoneStatusBarPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ToddlerModeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$ToddlerModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .line 191
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p2, v0}, Lcom/android/systemui/qs/ToddlerModeSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 192
    return-void
.end method


# virtual methods
.method protected handleValueChanged(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 196
    invoke-super {p0, p1}, Lcom/android/systemui/qs/ToddlerModeSetting;->handleValueChanged(I)V

    .line 197
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$ToddlerModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$ToddlerModeObserver;->isActivated()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$700(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Z)V

    .line 198
    return-void
.end method
