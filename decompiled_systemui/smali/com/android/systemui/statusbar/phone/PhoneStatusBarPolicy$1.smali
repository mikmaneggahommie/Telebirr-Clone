.class Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "PhoneStatusBarPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 131
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "action":Ljava/lang/String;
    const-string v6, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 133
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v6, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$000(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Z)V

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    const-string v6, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 136
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v5, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$102(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Z)Z

    .line 137
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$200(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    goto :goto_0

    .line 139
    :cond_2
    const-string v6, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 141
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$300(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    goto :goto_0

    .line 143
    :cond_4
    const-string v6, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 145
    :cond_5
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$200(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    goto :goto_0

    .line 147
    :cond_6
    const-string v6, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 148
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v5, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$400(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V

    goto :goto_0

    .line 150
    :cond_7
    const-string v6, "android.telecom.action.CURRENT_TTY_MODE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 151
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v5, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$500(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V

    goto :goto_0

    .line 153
    :cond_8
    const-string v6, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 154
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v6, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$000(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Z)V

    goto :goto_0

    .line 156
    :cond_9
    const-string v6, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 158
    const-string v6, "state"

    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 159
    .local v1, "isAirPlaneMode":Z
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    if-eqz v1, :cond_a

    :goto_1
    invoke-static {v6, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$700(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Z)V

    goto :goto_0

    :cond_a
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$600(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$ToddlerModeObserver;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$ToddlerModeObserver;->isActivated()Z

    move-result v5

    goto :goto_1

    .line 161
    .end local v1    # "isAirPlaneMode":Z
    :cond_b
    const-string v6, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 162
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 163
    .local v4, "uri":Landroid/net/Uri;
    if-eqz v4, :cond_0

    .line 164
    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 165
    .local v2, "pkgName":Ljava/lang/String;
    const-string v5, "com.sec.android.app.clockpackage"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 166
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v5, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$000(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Z)V

    goto/16 :goto_0

    .line 169
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_c
    const-string v6, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 170
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$200(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    goto/16 :goto_0

    .line 173
    :cond_d
    const-string v6, "com.android.systemui.action.dnd_off"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 175
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$800(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Landroid/app/NotificationManager;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "notification"

    invoke-virtual {v6, v5, v7, v8}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 179
    :cond_e
    const-string v6, "com.samsung.intent.action.DND"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 180
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$900(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "shared_device_status"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 181
    .local v3, "sd_status":I
    if-eq v3, v8, :cond_f

    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    .line 182
    :cond_f
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$200(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    goto/16 :goto_0
.end method
