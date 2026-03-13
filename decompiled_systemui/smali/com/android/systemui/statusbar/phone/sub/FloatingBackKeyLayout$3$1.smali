.class Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$3$1;
.super Ljava/lang/Object;
.source "FloatingBackKeyLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$3;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$3;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$3;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$3$1;->this$1:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$3$1;->this$1:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$3;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$3;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->collapseAndRemoveExpandedWindow()V

    .line 226
    return-void
.end method
