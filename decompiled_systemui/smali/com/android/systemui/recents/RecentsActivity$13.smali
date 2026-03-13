.class Lcom/android/systemui/recents/RecentsActivity$13;
.super Ljava/lang/Object;
.source "RecentsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/RecentsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/RecentsActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/RecentsActivity;)V
    .locals 0

    .prologue
    .line 1807
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsActivity$13;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1809
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity$13;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v1, "Force start EnterAnimation"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1810
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity$13;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsActivity;->access$000(Lcom/android/systemui/recents/RecentsActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1811
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity$13;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/recents/RecentsActivity;->access$002(Lcom/android/systemui/recents/RecentsActivity;Z)Z

    .line 1812
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity$13;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsActivity;->onEnterAnimationTriggered()V

    .line 1814
    :cond_0
    return-void
.end method
