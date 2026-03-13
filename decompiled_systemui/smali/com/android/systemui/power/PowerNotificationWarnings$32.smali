.class Lcom/android/systemui/power/PowerNotificationWarnings$32;
.super Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;
.source "PowerNotificationWarnings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/power/PowerNotificationWarnings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerNotificationWarnings;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .locals 0

    .prologue
    .line 2963
    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$32;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/sdk/cover/ScoverState;)V
    .locals 3
    .param p1, "state"    # Lcom/samsung/android/sdk/cover/ScoverState;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2965
    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2966
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$32;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    iput-boolean v1, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mScoverOpen:Z

    .line 2967
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$32;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    iget-object v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mLowBatteryDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$32;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-virtual {v0}, Lcom/android/systemui/power/PowerNotificationWarnings;->isLowBatteryWarningShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2968
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$32;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    iget-object v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mLowBatteryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2969
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$32;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    iput-boolean v2, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNeedtoshowLowBatteryDialog:Z

    .line 2978
    :cond_0
    :goto_0
    return-void

    .line 2972
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$32;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    iput-boolean v2, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mScoverOpen:Z

    .line 2973
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$32;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v0}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$1200(Lcom/android/systemui/power/PowerNotificationWarnings;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$32;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    iget-boolean v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNeedtoshowLowBatteryDialog:Z

    if-eqz v0, :cond_0

    .line 2974
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$32;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v0}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$2100(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    .line 2975
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$32;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    iput-boolean v1, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNeedtoshowLowBatteryDialog:Z

    goto :goto_0
.end method
