.class Lcom/android/systemui/keyguard/KeyguardViewMediator$18;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/keyguard/KeyguardViewMediator;->unlockSdp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0

    .prologue
    .line 3580
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$18;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 3584
    :try_start_0
    invoke-static {}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->getInstance()Lcom/sec/enterprise/knox/sdp/SdpUtil;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->getEngineInfo(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v1

    .line 3585
    .local v1, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-eqz v1, :cond_0

    .line 3586
    invoke-static {}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;->getInstance()Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;->unlock(Ljava/lang/String;Ljava/lang/String;)V

    .line 3587
    const-string v2, "KeyguardViewMediator"

    const-string v3, "unlockSdp :: Unlock SDP Successful..!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3593
    .end local v1    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_0
    :goto_0
    return-void

    .line 3589
    :catch_0
    move-exception v0

    .line 3590
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KeyguardViewMediator"

    const-string v3, "unlockSdp :: Failed to unlock sdp engine... "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3591
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
