.class Lcom/sec/android/sviewcover/SViewCoverView$7;
.super Landroid/telephony/PhoneStateListener;
.source "SViewCoverView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/sviewcover/SViewCoverView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/sviewcover/SViewCoverView;


# direct methods
.method constructor <init>(Lcom/sec/android/sviewcover/SViewCoverView;)V
    .locals 0

    .prologue
    .line 1089
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverView$7;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView$7;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverView;->access$2300(Lcom/sec/android/sviewcover/SViewCoverView;)V

    .line 1093
    return-void
.end method
