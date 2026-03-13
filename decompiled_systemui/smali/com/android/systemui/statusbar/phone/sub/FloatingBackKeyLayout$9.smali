.class Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$9;
.super Ljava/lang/Object;
.source "FloatingBackKeyLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->changeRotation(IZ)V
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
    .line 770
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$9;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$9;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->collapseAndRemoveExpandedWindow()V

    .line 774
    return-void
.end method
