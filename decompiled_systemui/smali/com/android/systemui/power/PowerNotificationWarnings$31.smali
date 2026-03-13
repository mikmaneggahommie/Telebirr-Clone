.class Lcom/android/systemui/power/PowerNotificationWarnings$31;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 2944
    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$31;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v4, 0x0

    .line 2948
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mGooglePowerSettingConcept:Z

    if-eqz v1, :cond_0

    .line 2949
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$31;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$100(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "low_power"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2953
    .local v0, "powerSaving":I
    :goto_0
    if-eqz v0, :cond_1

    .line 2954
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$31;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$502(Lcom/android/systemui/power/PowerNotificationWarnings;I)I

    .line 2960
    :goto_1
    return-void

    .line 2951
    .end local v0    # "powerSaving":I
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$31;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$100(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "powersaving_switch"

    const/4 v3, -0x2

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .restart local v0    # "powerSaving":I
    goto :goto_0

    .line 2956
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$31;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v1, v4}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$502(Lcom/android/systemui/power/PowerNotificationWarnings;I)I

    goto :goto_1
.end method
