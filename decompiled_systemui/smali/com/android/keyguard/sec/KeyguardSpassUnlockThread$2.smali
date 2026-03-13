.class Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;
.super Landroid/os/Handler;
.source "KeyguardSpassUnlockThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    .line 118
    const/4 v0, 0x0

    .line 120
    .local v0, "errorMessage":Ljava/lang/String;
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 232
    const-string v2, "KeyguardSpassUnlockThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled message = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 122
    :sswitch_0
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->handleFingerPrintDataBaseError()V

    goto :goto_0

    .line 125
    :sswitch_1
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->handleRespondingError()V

    goto :goto_0

    .line 128
    :sswitch_2
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->handleSensorFailure()V

    goto :goto_0

    .line 131
    :sswitch_3
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->handleSensorError()V

    goto :goto_0

    .line 134
    :sswitch_4
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->handleStartFingerPrintSensor()V

    goto :goto_0

    .line 137
    :sswitch_5
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->unregisterClient()V

    goto :goto_0

    .line 140
    :sswitch_6
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$100(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)V

    goto :goto_0

    .line 143
    :sswitch_7
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->handleStopIdentify()V

    goto :goto_0

    .line 146
    :sswitch_8
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$200(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)V

    goto :goto_0

    .line 149
    :sswitch_9
    const-string v2, "KeyguardSpassUnlockThread"

    const-string v3, "handleMessage : EVENT_IDENTIFY_STARTED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$300(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 151
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$300(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;->setAttributionViewEnabled(Z)V

    .line 152
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$300(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;->updateFingerPrintAnimation(I)V

    goto :goto_0

    .line 157
    :sswitch_a
    const-string v2, "KeyguardSpassUnlockThread"

    const-string v3, "handleMessage : EVENT_FINGER_REMOVED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$300(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 159
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$300(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    move-result-object v2

    invoke-interface {v2, v6}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;->setAttributionViewEnabled(Z)V

    goto :goto_0

    .line 163
    :sswitch_b
    const-string v2, "KeyguardSpassUnlockThread"

    const-string v3, "handleMessage : EVENT_IDENTIFY_READY"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$300(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 165
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$300(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    move-result-object v2

    invoke-interface {v2, v6}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;->updateFingerPrintAnimation(I)V

    goto/16 :goto_0

    .line 170
    :sswitch_c
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$400(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$400(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 171
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$300(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 172
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$300(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;->showBackupPassword()V

    goto/16 :goto_0

    .line 176
    :cond_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/fingerprint/FingerprintEvent;

    .line 177
    .local v1, "event":Lcom/samsung/android/fingerprint/FingerprintEvent;
    iget v2, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    if-nez v2, :cond_5

    .line 178
    const-string v2, "KeyguardSpassUnlockThread"

    const-string v3, "handleMessage : RESULT_SUCCESS"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$500(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Landroid/os/SystemVibrator;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 181
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$500(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Landroid/os/SystemVibrator;

    move-result-object v2

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v4, v5}, Landroid/os/SystemVibrator;->vibrate(J)V

    .line 183
    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$600(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)V

    .line 213
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$700(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 214
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$700(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 215
    :cond_4
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$300(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 216
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$300(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    move-result-object v2

    invoke-interface {v2, v6}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;->setAttributionViewEnabled(Z)V

    goto/16 :goto_0

    .line 184
    :cond_5
    iget v2, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 185
    const-string v2, "KeyguardSpassUnlockThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage : RESULT_FAILED eventStatus = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget v2, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_6

    .line 189
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$100(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)V

    goto :goto_1

    .line 190
    :cond_6
    iget v2, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_7

    .line 191
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$000(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 192
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$000(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x461

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 194
    :cond_7
    iget v2, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v3, 0x79

    if-ne v2, v3, :cond_8

    .line 195
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$000(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 196
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$000(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x462

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 198
    :cond_8
    iget v2, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v3, 0x7a

    if-ne v2, v3, :cond_9

    .line 199
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$000(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 200
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$000(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x465

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 201
    :cond_9
    iget v2, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_3

    .line 202
    iget v2, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v3, 0xb

    if-ne v2, v3, :cond_a

    .line 204
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$300(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 205
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$300(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;->reportFailedUnlockAttempts()V

    .line 207
    :cond_a
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$300(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 208
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$300(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getImageQualityFeedback()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getImageQuality()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;->showErrorMessage(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 220
    .end local v1    # "event":Lcom/samsung/android/fingerprint/FingerprintEvent;
    :sswitch_d
    const-string v2, "KeyguardSpassUnlockThread"

    const-string v3, "handleMessage : EVENT_IDENTIFY_STATUS  "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/fingerprint/FingerprintEvent;

    .line 222
    .restart local v1    # "event":Lcom/samsung/android/fingerprint/FingerprintEvent;
    iget v2, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v3, 0x14

    if-ne v2, v3, :cond_0

    .line 223
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$300(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 224
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$300(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getImageQualityFeedback()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getImageQuality()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;->showErrorMessage(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 228
    .end local v1    # "event":Lcom/samsung/android/fingerprint/FingerprintEvent;
    :sswitch_e
    const-string v2, "KeyguardSpassUnlockThread"

    const-string v3, "handleMessage : EVENT_IDENTIFY_COMPLETED  "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$100(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)V

    goto/16 :goto_0

    .line 120
    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_b
        0xc -> :sswitch_9
        0xd -> :sswitch_c
        0xe -> :sswitch_d
        0x10 -> :sswitch_e
        0x3f3 -> :sswitch_a
        0x45c -> :sswitch_6
        0x45d -> :sswitch_7
        0x45f -> :sswitch_4
        0x460 -> :sswitch_5
        0x461 -> :sswitch_3
        0x462 -> :sswitch_2
        0x463 -> :sswitch_1
        0x464 -> :sswitch_8
        0x465 -> :sswitch_0
    .end sparse-switch
.end method
