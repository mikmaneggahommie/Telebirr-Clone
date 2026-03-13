.class Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$7;
.super Ljava/lang/Object;
.source "SmartClipDragDrop.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->initDragDrop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;


# direct methods
.method constructor <init>(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;)V
    .locals 0

    .prologue
    .line 407
    iput-object p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$7;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x1

    .line 410
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_2

    .line 411
    move-object v2, p1

    .line 412
    .local v2, "getView":Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v3, v5

    .line 413
    .local v3, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v4, v5

    .line 414
    .local v4, "y":I
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$7;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    iput v3, v5, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mLastTouchX:I

    .line 415
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$7;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    iput v4, v5, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mLastTouchY:I

    .line 416
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 417
    .local v1, "centerBarRect":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$7;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    invoke-static {v5}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->access$300(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getCenterBarPoint(I)Landroid/graphics/Point;

    move-result-object v0

    .line 418
    .local v0, "centerBarPoint":Landroid/graphics/Point;
    if-eqz v0, :cond_0

    .line 419
    iget v5, v0, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$7;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    invoke-static {v6}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->access$400(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;)I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    iget v6, v0, Landroid/graphics/Point;->y:I

    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$7;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    invoke-static {v7}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->access$400(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;)I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    iget v7, v0, Landroid/graphics/Point;->x:I

    iget-object v8, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$7;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    invoke-static {v8}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->access$400(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;)I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    iget v8, v0, Landroid/graphics/Point;->y:I

    iget-object v9, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$7;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    invoke-static {v9}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->access$400(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;)I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 423
    :cond_0
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$7;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    invoke-static {v5}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->access$500(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;)Landroid/os/HandlerThread;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$7;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    invoke-static {v5}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->access$500(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;)Landroid/os/HandlerThread;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getState()Ljava/lang/Thread$State;

    move-result-object v5

    sget-object v6, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v5, v6, :cond_1

    .line 424
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$7;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    invoke-static {v5}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->access$500(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;)Landroid/os/HandlerThread;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/HandlerThread;->start()V

    .line 425
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$7;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$7;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    invoke-static {v6}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->access$500(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;)Landroid/os/HandlerThread;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->access$602(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;Landroid/os/Looper;)Landroid/os/Looper;

    .line 426
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$7;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    new-instance v6, Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$7;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    invoke-static {v7}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->access$600(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;)Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {v5, v6}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->access$702(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;Landroid/os/Handler;)Landroid/os/Handler;

    .line 427
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$7;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    invoke-static {v5}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->access$700(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$7$1;

    invoke-direct {v6, p0, v2, v3, v4}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$7$1;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$7;Landroid/view/View;II)V

    const-wide/16 v8, 0xc8

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 444
    .end local v0    # "centerBarPoint":Landroid/graphics/Point;
    .end local v1    # "centerBarRect":Landroid/graphics/Rect;
    .end local v2    # "getView":Landroid/view/View;
    .end local v3    # "x":I
    .end local v4    # "y":I
    :cond_1
    :goto_0
    return v10

    .line 434
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 435
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$7;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    iput v6, v5, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mLastTouchX:I

    .line 436
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$7;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    iput v6, v5, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mLastTouchY:I

    goto :goto_0

    .line 437
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v10, :cond_1

    .line 438
    const-string v5, "SmartClipDragDrop"

    const-string v6, "onTouch : ACTION_UP : stopService()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$7;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    invoke-static {v5}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->access$700(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;)Landroid/os/Handler;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 440
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$7;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    invoke-static {v5}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->access$700(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 442
    :cond_4
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$7;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    invoke-virtual {v5}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->stopService()V

    goto :goto_0
.end method
