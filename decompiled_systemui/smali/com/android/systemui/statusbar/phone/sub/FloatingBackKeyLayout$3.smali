.class Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$3;
.super Ljava/lang/Object;
.source "FloatingBackKeyLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 152
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$3;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x5

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 155
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :cond_0
    :goto_0
    move v4, v5

    .line 240
    :goto_1
    return v4

    .line 158
    :pswitch_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$3;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$1402(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;Z)Z

    .line 159
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$3;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$1500(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)Lcom/android/systemui/statusbar/policy/KeyButtonView;

    move-result-object v4

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setAlpha(F)V

    .line 160
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$3;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$1700(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)Landroid/os/Handler;

    move-result-object v4

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$3;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$1600(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 161
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$3;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$1700(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)Landroid/os/Handler;

    move-result-object v4

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$3;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$1600(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)Ljava/lang/Runnable;

    move-result-object v6

    const-wide/16 v8, 0xbb8

    invoke-virtual {v4, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 163
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$3;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    float-to-int v6, v6

    invoke-static {v4, v6}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$1802(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;I)I

    .line 164
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$3;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v6, v6

    invoke-static {v4, v6}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$1902(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;I)I

    .line 166
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$3;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$2000(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 167
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$3;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$2002(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;Z)Z

    goto :goto_0

    .line 171
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    float-to-int v0, v6

    .line 172
    .local v0, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v2, v6

    .line 174
    .local v2, "y":I
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$3;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$000(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I

    move-result v6

    if-nez v6, :cond_3

    .line 175
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$3;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$2100(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$3;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$1800(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I

    move-result v4

    if-gt v0, v4, :cond_2

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$3;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$2100(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$3;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$1800(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 176
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$3;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$2200(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)V

    .line 177
    invoke-virtual {p2}, Landroid/view/MotionEvent;->cancel()V

    goto/16 :goto_0

    .line 182
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$3;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$000(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I

    move-result v6

    if-eq v6, v9, :cond_0

    .line 185
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$3;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$000(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I

    move-result v6

    if-ne v6, v4, :cond_5

    .line 186
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$3;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$1800(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I

    move-result v6

    sub-int v6, v0, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-gt v6, v7, :cond_4

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$3;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$1900(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I

    move-result v6

    sub-int v6, v2, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-le v6, v7, :cond_0

    .line 187
    :cond_4
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$3;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-static {v5, v4}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$2302(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;Z)Z

    .line 188
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$3;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-static {v5, p2}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$2400(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 191
    :cond_5
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$3;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$000(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I

    move-result v6

    if-ne v6, v8, :cond_0

    .line 192
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$3;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-static {v6, v5}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$2302(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;Z)Z

    .line 193
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$3;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-static {v5, p2}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$2400(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 199
    .end local v0    # "x":I
    .end local v2    # "y":I
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    float-to-int v1, v6

    .line 200
    .local v1, "xPosition":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v3, v6

    .line 202
    .local v3, "yPosition":I
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$3;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$000(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I

    move-result v6

    if-ne v6, v8, :cond_6

    .line 203
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$3;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-static {v6, v5}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$2302(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;Z)Z

    .line 204
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$3;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$100(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->setMoveStart(Z)V

    .line 206
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$3;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$200(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$3;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$400(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I

    move-result v7

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 207
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$3;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$200(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$3;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$700(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I

    move-result v7

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 208
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$3;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$2500(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)V

    .line 210
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$3;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$2600(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    if-ge v1, v6, :cond_8

    .line 211
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$3;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$2700(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    if-ge v3, v6, :cond_7

    .line 212
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$3;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$2802(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;I)I

    .line 222
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$3;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$1700(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)Landroid/os/Handler;

    move-result-object v4

    new-instance v6, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$3$1;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$3$1;-><init>(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$3;)V

    const-wide/16 v8, 0x32

    invoke-virtual {v4, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 229
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$3;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-static {v4, v1}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$302(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;I)I

    .line 230
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$3;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-static {v4, v3}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$602(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;I)I

    .line 232
    invoke-virtual {p2}, Landroid/view/MotionEvent;->cancel()V

    .line 235
    :cond_6
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$3;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$000(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I

    move-result v4

    if-nez v4, :cond_0

    .line 236
    invoke-virtual {p2}, Landroid/view/MotionEvent;->cancel()V

    goto/16 :goto_0

    .line 214
    :cond_7
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$3;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-static {v6, v4}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$2802(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;I)I

    goto :goto_2

    .line 216
    :cond_8
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$3;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$2700(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    if-ge v3, v4, :cond_9

    .line 217
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$3;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-static {v4, v8}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$2802(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;I)I

    goto :goto_2

    .line 219
    :cond_9
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$3;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-static {v4, v9}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$2802(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;I)I

    goto :goto_2

    .line 155
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
