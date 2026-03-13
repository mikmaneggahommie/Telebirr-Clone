.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$45;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    .prologue
    .line 5724
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$45;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5726
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$45;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$12600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5727
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$45;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->haltTicker()V

    .line 5728
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$45;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$12602(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 5730
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$45;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$12402(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 5731
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$45;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    if-eqz v0, :cond_1

    .line 5732
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$45;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/IconMerger;->setVisibility(I)V

    .line 5733
    :cond_1
    return-void
.end method
