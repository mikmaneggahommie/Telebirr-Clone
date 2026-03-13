.class Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$1;
.super Ljava/lang/Object;
.source "FloatingBackKeyLayout.java"

# interfaces
.implements Landroid/hardware/scontext/SContextListener;


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
    .line 97
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$1;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSContextChanged(Landroid/hardware/scontext/SContextEvent;)V
    .locals 11
    .param p1, "event"    # Landroid/hardware/scontext/SContextEvent;

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x2

    .line 100
    iget-object v2, p1, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    .line 101
    .local v2, "scontext":Landroid/hardware/scontext/SContext;
    invoke-virtual {v2}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_7

    .line 102
    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getAutoRotationContext()Landroid/hardware/scontext/SContextAutoRotation;

    move-result-object v1

    .line 103
    .local v1, "autoRotation":Landroid/hardware/scontext/SContextAutoRotation;
    invoke-virtual {v1}, Landroid/hardware/scontext/SContextAutoRotation;->getAngle()I

    move-result v0

    .line 104
    .local v0, "angle":I
    const-string v3, "SubPhoneStatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onProposedRotationChanged, rotation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$1;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$000(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I

    move-result v3

    if-ne v3, v7, :cond_0

    .line 106
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$1;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$100(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->setMoveStart(Z)V

    .line 108
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$1;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$200(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$1;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$1;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$400(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$1;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$500(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$302(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;I)I

    move-result v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 109
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$1;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$200(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$1;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$1;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$700(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$1;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$500(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$602(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;I)I

    move-result v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 112
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$1;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$800(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I

    move-result v3

    if-eq v3, v0, :cond_1

    .line 113
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$1;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-static {v3, v8}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$902(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;Z)Z

    .line 116
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$1;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$800(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I

    move-result v3

    if-eq v3, v0, :cond_2

    if-eq v0, v7, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$1;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$800(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I

    move-result v3

    if-eq v3, v7, :cond_2

    .line 117
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$1;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-static {v3, v0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$1002(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;I)I

    .line 120
    :cond_2
    if-ne v0, v8, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$1;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$800(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I

    move-result v3

    if-eq v3, v10, :cond_4

    :cond_3
    if-ne v0, v10, :cond_5

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$1;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$800(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I

    move-result v3

    if-ne v3, v8, :cond_5

    .line 122
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$1;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-static {v3, v0, v9}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$1100(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;IZ)V

    .line 123
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$1;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-static {v3, v0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$802(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;I)I

    .line 126
    :cond_5
    if-ne v0, v7, :cond_6

    .line 127
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$1;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$1;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$800(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$1202(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;I)I

    .line 130
    :cond_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$1;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$800(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I

    move-result v3

    if-ne v3, v7, :cond_7

    .line 131
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$1;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$1;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$1200(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$802(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;I)I

    .line 132
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$1;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-static {v3, v0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$1002(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;I)I

    .line 135
    .end local v0    # "angle":I
    .end local v1    # "autoRotation":Landroid/hardware/scontext/SContextAutoRotation;
    :cond_7
    return-void
.end method
