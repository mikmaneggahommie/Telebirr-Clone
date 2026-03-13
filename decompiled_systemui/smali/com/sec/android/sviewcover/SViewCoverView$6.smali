.class Lcom/sec/android/sviewcover/SViewCoverView$6;
.super Ljava/lang/Object;
.source "SViewCoverView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/sviewcover/SViewCoverView;->onFinishInflate()V
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
    .line 998
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverView$6;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView$6;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-virtual {v0}, Lcom/sec/android/sviewcover/SViewCoverView;->moveToHomePage()V

    .line 1002
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView$6;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/sviewcover/SViewCoverView;->access$1800(Lcom/sec/android/sviewcover/SViewCoverView;Z)V

    .line 1003
    return-void
.end method
