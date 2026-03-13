.class Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;
.super Ljava/lang/Object;
.source "CenterBarWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;


# direct methods
.method constructor <init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V
    .locals 0

    .prologue
    .line 1126
    iput-object p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v11, 0xce

    const/16 v10, 0xcd

    const/16 v9, 0x1e

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1128
    const-string v5, "CenterBarWindow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "centerBarWindow onTouch event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v5}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$900(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1249
    :cond_0
    :goto_0
    return v3

    .line 1135
    :cond_1
    invoke-static {}, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->getSealedState()Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x1b9

    invoke-static {v5}, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->getKnoxSealedMultiWindowFixedState(I)I

    move-result v5

    if-ne v5, v3, :cond_2

    move v3, v4

    .line 1137
    goto :goto_0

    .line 1142
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v5}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$1000(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Landroid/view/GestureDetector;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1143
    const-string v3, "CenterBarWindow"

    const-string v5, "mCenterBarGestureDetector.onTouchEvent return true"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 1144
    goto :goto_0

    .line 1147
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v1, v5

    .line 1148
    .local v1, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v2, v5

    .line 1150
    .local v2, "y":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_5

    .line 1151
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v5, v4}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$1102(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;Z)Z

    .line 1153
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v5, v4}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$1202(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;I)I

    .line 1154
    const-string v5, "CenterBarWindow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mTouchListener : mIsCrossRect = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v7}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$1300(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v5, v3}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$1402(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;Z)Z

    .line 1156
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v5, v4}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$1502(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;Z)Z

    .line 1157
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v5, v1}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$1602(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;I)I

    .line 1158
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v5, v2}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$1702(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;I)I

    .line 1160
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v6}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$600(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getArrangeState()I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$1802(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;I)I

    .line 1161
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v5}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$1800(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)I

    move-result v5

    if-eqz v5, :cond_4

    .line 1162
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v5}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$1800(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)I

    move-result v5

    if-ne v5, v3, :cond_4

    .line 1163
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v5}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$600(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v6}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$1900(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setFocusAppByZone(I)V

    .line 1166
    :cond_4
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v6}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$100(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->x:I

    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v7}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$100(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Landroid/graphics/Point;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-static {v5, v6, v7}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$2000(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;II)V

    .line 1168
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v5}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$2100(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Landroid/graphics/Point;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v6}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$100(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->x:I

    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v7}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$100(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Landroid/graphics/Point;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Point;->set(II)V

    .line 1169
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v5, v4}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$2202(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;Z)Z

    goto/16 :goto_0

    .line 1170
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-eq v5, v3, :cond_6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_f

    .line 1171
    :cond_6
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v5}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$2300(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V

    .line 1172
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v5, v4}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$1302(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;Z)Z

    .line 1173
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v5, v4}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$1402(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;Z)Z

    .line 1174
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-virtual {v5}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->hideGuideCenterBar()V

    .line 1175
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v5, v4}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$2402(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;Z)Z

    .line 1177
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v5}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$2200(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1178
    const/4 v0, 0x0

    .line 1179
    .local v0, "point":Landroid/graphics/Point;
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v5}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$600(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getCenterBarPoint(I)Landroid/graphics/Point;

    move-result-object v0

    .line 1180
    if-eqz v0, :cond_7

    .line 1181
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v5}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$100(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Landroid/graphics/Point;

    move-result-object v5

    iget v6, v0, Landroid/graphics/Point;->x:I

    iput v6, v5, Landroid/graphics/Point;->x:I

    .line 1182
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v5}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$100(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Landroid/graphics/Point;

    move-result-object v5

    iget v6, v0, Landroid/graphics/Point;->y:I

    iput v6, v5, Landroid/graphics/Point;->y:I

    .line 1184
    :cond_7
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v6}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$100(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->x:I

    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v7}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$100(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Landroid/graphics/Point;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->drawCenterBar(II)V

    .line 1226
    .end local v0    # "point":Landroid/graphics/Point;
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v5, v4}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$2202(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;Z)Z

    .line 1227
    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    iget-object v4, v4, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTimerHandler:Landroid/os/Handler;

    invoke-virtual {v4, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1228
    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    iget-object v4, v4, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTimerHandler:Landroid/os/Handler;

    invoke-virtual {v4, v11}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 1187
    :cond_8
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    new-instance v6, Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    float-to-int v8, v8

    invoke-direct {v6, v7, v8}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {v5, v6}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$2500(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;Landroid/graphics/Point;)Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$EdgeArea;

    move-result-object v5

    sget-object v6, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$EdgeArea;->NONE:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$EdgeArea;

    if-eq v5, v6, :cond_9

    .line 1188
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v5, p2}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$2600(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1189
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v5}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$600(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v6}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$2700(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setFocusAppByZone(I)V

    .line 1190
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v5}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$1600(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)I

    move-result v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    float-to-int v6, v6

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, v9, :cond_0

    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v5}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$1700(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)I

    move-result v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v6, v6

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, v9, :cond_0

    .line 1197
    :cond_9
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-virtual {v5}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->checkFixedBoundsForDimLayer()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1198
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v5}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$600(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v6}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$2700(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setFocusAppByZone(I)V

    .line 1201
    :cond_a
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v5}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$1600(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)I

    move-result v5

    sub-int/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, v9, :cond_d

    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v5}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$1700(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)I

    move-result v5

    sub-int/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, v9, :cond_d

    .line 1203
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v5}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$2800(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1204
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-virtual {v5, v4}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->hideButtonsPopupWindow(Z)V

    .line 1206
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v6}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$2100(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->x:I

    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v7}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$2100(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Landroid/graphics/Point;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->drawCenterBar(II)V

    .line 1215
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v5}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$100(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Landroid/graphics/Point;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v6}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$2100(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->x:I

    iput v6, v5, Landroid/graphics/Point;->x:I

    .line 1216
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v5}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$100(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Landroid/graphics/Point;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v6}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$2100(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->y:I

    iput v6, v5, Landroid/graphics/Point;->y:I

    goto/16 :goto_1

    .line 1208
    :cond_b
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    iget-object v5, v5, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTimerHandler:Landroid/os/Handler;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1209
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    iget-object v5, v5, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTimerHandler:Landroid/os/Handler;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 1211
    :cond_c
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    iget-object v5, v5, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTimerHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    iget-object v6, v6, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTimerHandler:Landroid/os/Handler;

    invoke-static {v6, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v6

    invoke-static {}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$2900()I

    move-result v7

    int-to-long v8, v7

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1213
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v6}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$2100(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->x:I

    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v7}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$2100(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Landroid/graphics/Point;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->drawCenterBar(II)V

    goto :goto_2

    .line 1219
    :cond_d
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-virtual {v5, v3}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->centerControlBarDocking(Z)Z

    .line 1220
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v5}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$2100(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Landroid/graphics/Point;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v6}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$100(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Landroid/graphics/Point;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 1221
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v5}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$600(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v6}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$100(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Landroid/graphics/Point;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setCenterBarPoint(ILandroid/graphics/Point;)V

    .line 1223
    :cond_e
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v6}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$100(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->x:I

    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v7}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$100(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Landroid/graphics/Point;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->drawCenterBar(II)V

    goto/16 :goto_1

    .line 1230
    :cond_f
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 1231
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v5}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$1100(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1235
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v5}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$1600(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)I

    move-result v5

    sub-int/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-gt v5, v9, :cond_10

    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v5}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$1700(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)I

    move-result v5

    sub-int/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-gt v5, v9, :cond_10

    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v5}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$1500(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1237
    :cond_10
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v5, v3}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$1502(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;Z)Z

    .line 1238
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    float-to-int v6, v6

    invoke-static {v5, v6}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$3002(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;I)I

    .line 1239
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v6, v6

    invoke-static {v5, v6}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$3102(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;I)I

    .line 1240
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v5}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$3200(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V

    .line 1241
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-virtual {v5, v4}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->hideButtonsPopupWindow(Z)V

    .line 1242
    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->setCenterBarViewsVisibility(I)V

    .line 1245
    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v5}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$100(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-static {v6}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$100(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-static {v4, v5, v6}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$2000(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;II)V

    goto/16 :goto_0
.end method
