.class Lcom/sec/android/cover/CoverViewMediator$3;
.super Ljava/util/TimerTask;
.source "CoverViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/cover/CoverViewMediator;->startMCScreenOnTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/CoverViewMediator;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/CoverViewMediator;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/sec/android/cover/CoverViewMediator$3;->this$0:Lcom/sec/android/cover/CoverViewMediator;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/sec/android/cover/CoverViewMediator$3;->this$0:Lcom/sec/android/cover/CoverViewMediator;

    invoke-static {v0}, Lcom/sec/android/cover/CoverViewMediator;->access$300(Lcom/sec/android/cover/CoverViewMediator;)Z

    .line 168
    return-void
.end method
