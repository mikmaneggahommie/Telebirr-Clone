.class Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$7;
.super Ljava/lang/Object;
.source "FloatingBackKeyLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)V
    .locals 0

    .prologue
    .line 597
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$7;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$7;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$3100(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)V

    .line 601
    return-void
.end method
