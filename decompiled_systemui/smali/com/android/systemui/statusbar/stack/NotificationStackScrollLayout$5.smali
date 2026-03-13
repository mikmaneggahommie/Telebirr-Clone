.class Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$5;
.super Ljava/lang/Object;
.source "NotificationStackScrollLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateToggleSliderView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 0

    .prologue
    .line 2808
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$5;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2811
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$5;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->access$700(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/ToggleSliderView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ToggleSliderView;->setVisibility(I)V

    .line 2812
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$5;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->access$700(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/ToggleSliderView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ToggleSliderView;->setWillBeGone(Z)V

    .line 2813
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$5;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->access$500(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    .line 2814
    return-void
.end method
