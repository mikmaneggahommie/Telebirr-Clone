.class Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;
.super Landroid/os/AsyncTask;
.source "KeyguardSmartcardPINView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/KeyguardSmartcardPINView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VerifyPasswordWithCACTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field errorMsgId:I

.field password:Ljava/lang/String;

.field status:Z

.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardSmartcardPINView;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/sec/KeyguardSmartcardPINView;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 185
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->this$0:Lcom/android/keyguard/sec/KeyguardSmartcardPINView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->password:Ljava/lang/String;

    .line 187
    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->status:Z

    .line 188
    iput v1, p0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->errorMsgId:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/sec/KeyguardSmartcardPINView;Lcom/android/keyguard/sec/KeyguardSmartcardPINView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/keyguard/sec/KeyguardSmartcardPINView;
    .param p2, "x1"    # Lcom/android/keyguard/sec/KeyguardSmartcardPINView$1;

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;-><init>(Lcom/android/keyguard/sec/KeyguardSmartcardPINView;)V

    return-void
.end method

.method private verifyPIN(Ljava/lang/String;)I
    .locals 14
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    .line 200
    const/4 v7, -0x1

    .line 201
    .local v7, "ret":I
    const/4 v6, -0x1

    .line 203
    .local v6, "remainCnt":I
    const/4 v2, -0x1

    .line 204
    .local v2, "STATE_UNKNOWN":I
    const-string v0, "state"

    .line 205
    .local v0, "LOCK_STATE":Ljava/lang/String;
    const-string v1, "remainCnt"

    .line 207
    .local v1, "REMAIN_COUNT":Ljava/lang/String;
    const-string v4, "com.sec.smartcard.manager:com.samsung.ucs.agent.baiMobile"

    .line 208
    .local v4, "csName":Ljava/lang/String;
    const-string v12, "com.samsung.ucs.ucsservice"

    invoke-static {v12}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v12

    invoke-static {v12}, Lcom/sec/enterprise/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v9

    .line 209
    .local v9, "ucmService":Lcom/sec/enterprise/knox/ucm/core/IUcmService;
    if-nez v9, :cond_1

    .line 210
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->access$100()Ljava/lang/String;

    move-result-object v12

    const-string v13, "failed to get UCS service"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_0
    :goto_0
    return v11

    .line 214
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_2

    .line 217
    :try_start_0
    const-string v12, ""

    invoke-static {v4, v12}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 218
    .local v10, "uri":Ljava/lang/String;
    invoke-interface {v9, v10, p1}, Lcom/sec/enterprise/knox/ucm/core/IUcmService;->verifyPin(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 219
    .local v3, "bundle":Landroid/os/Bundle;
    if-eqz v3, :cond_0

    .line 223
    const-string v12, "state"

    const/4 v13, -0x1

    invoke-virtual {v3, v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 224
    .local v8, "state":I
    const-string v12, "remainCnt"

    const/4 v13, -0x1

    invoke-virtual {v3, v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 225
    const/16 v11, 0x83

    if-ne v8, v11, :cond_3

    .line 226
    const/4 v7, 0x0

    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v8    # "state":I
    .end local v10    # "uri":Ljava/lang/String;
    :cond_2
    :goto_1
    move v11, v7

    .line 240
    goto :goto_0

    .line 227
    .restart local v3    # "bundle":Landroid/os/Bundle;
    .restart local v8    # "state":I
    .restart local v10    # "uri":Ljava/lang/String;
    :cond_3
    const/16 v11, 0x84

    if-ne v8, v11, :cond_4

    .line 228
    const/4 v7, 0x1

    goto :goto_1

    .line 229
    :cond_4
    const/16 v11, 0x85

    if-ne v8, v11, :cond_5

    .line 230
    const/4 v7, 0x2

    goto :goto_1

    .line 231
    :cond_5
    const/16 v11, 0x86

    if-ne v8, v11, :cond_6

    .line 232
    const/4 v7, 0x4

    goto :goto_1

    .line 233
    :cond_6
    const/16 v11, 0x87

    if-ne v8, v11, :cond_2

    .line 234
    const/16 v7, 0x8

    goto :goto_1

    .line 236
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v8    # "state":I
    .end local v10    # "uri":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 237
    .local v5, "e":Ljava/lang/Exception;
    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4
    .param p1, "arg0"    # [Ljava/lang/String;

    .prologue
    .line 244
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "doInBackground():VerifyPasswordWithCACTask"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const/4 v1, 0x0

    aget-object v1, p1, v1

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->password:Ljava/lang/String;

    .line 246
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->password:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->verifyPIN(Ljava/lang/String;)I

    move-result v0

    .line 247
    .local v0, "ret":I
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VerifyPIN(withUCS-BM): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 185
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    const/4 v4, 0x0

    .line 253
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 254
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OnPostExecute():VerifyPasswordWithCACTask"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnPostExecute():VerifyPasswordWithCACTask result :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->status:Z

    .line 257
    iput v4, p0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->errorMsgId:I

    .line 258
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 279
    :pswitch_0
    sget v1, Lcom/android/keyguard/R$string;->lockscreen_smartcard_internalerror:I

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->errorMsgId:I

    .line 282
    :goto_0
    const/4 v0, 0x0

    .line 283
    .local v0, "keyguardscpinview":Lcom/android/keyguard/sec/KeyguardSmartcardPINView;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->access$500()Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-nez v1, :cond_0

    .line 285
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VerifyPasswordWithCACTask mCurrent == null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :goto_1
    return-void

    .line 260
    .end local v0    # "keyguardscpinview":Lcom/android/keyguard/sec/KeyguardSmartcardPINView;
    :pswitch_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->status:Z

    goto :goto_0

    .line 263
    :pswitch_2
    sget v1, Lcom/android/keyguard/R$string;->lockscreen_smartcard_invalid_pin:I

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->errorMsgId:I

    goto :goto_0

    .line 266
    :pswitch_3
    sget v1, Lcom/android/keyguard/R$string;->lockscreen_smartcard_locked:I

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->errorMsgId:I

    goto :goto_0

    .line 269
    :pswitch_4
    sget v1, Lcom/android/keyguard/R$string;->lockscreen_smartcard_expired:I

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->errorMsgId:I

    goto :goto_0

    .line 272
    :pswitch_5
    sget v1, Lcom/android/keyguard/R$string;->lockscreen_smartcard_connectionerror:I

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->errorMsgId:I

    goto :goto_0

    .line 275
    :pswitch_6
    sget v1, Lcom/android/keyguard/R$string;->lockscreen_smartcard_wrong_card:I

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->errorMsgId:I

    goto :goto_0

    .line 288
    .restart local v0    # "keyguardscpinview":Lcom/android/keyguard/sec/KeyguardSmartcardPINView;
    :cond_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->access$500()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "keyguardscpinview":Lcom/android/keyguard/sec/KeyguardSmartcardPINView;
    check-cast v0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;

    .restart local v0    # "keyguardscpinview":Lcom/android/keyguard/sec/KeyguardSmartcardPINView;
    if-nez v0, :cond_1

    .line 290
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VerifyPasswordWithCACTask activity == null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 293
    :cond_1
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->access$600(Lcom/android/keyguard/sec/KeyguardSmartcardPINView;)Landroid/os/Handler;

    move-result-object v1

    if-nez v1, :cond_2

    .line 295
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VerifyPasswordWithCACTask mHandler == null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 299
    :cond_2
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->access$600(Lcom/android/keyguard/sec/KeyguardSmartcardPINView;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask$1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask$1;-><init>(Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 258
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 185
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 192
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 193
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnPreExecute():VerifyPasswordWithCACTask"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->this$0:Lcom/android/keyguard/sec/KeyguardSmartcardPINView;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->access$200(Lcom/android/keyguard/sec/KeyguardSmartcardPINView;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$string;->lockscreen_smartcard_check_pin:I

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 195
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->this$0:Lcom/android/keyguard/sec/KeyguardSmartcardPINView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->access$300(Lcom/android/keyguard/sec/KeyguardSmartcardPINView;Z)V

    .line 196
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->this$0:Lcom/android/keyguard/sec/KeyguardSmartcardPINView;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->setKeepScreenOn(Z)V

    .line 197
    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->access$402(Z)Z

    .line 198
    return-void
.end method
