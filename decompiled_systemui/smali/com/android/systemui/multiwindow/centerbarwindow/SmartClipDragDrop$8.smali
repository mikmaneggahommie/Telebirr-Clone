.class Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;
.super Ljava/lang/Object;
.source "SmartClipDragDrop.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->getSmartClipData(Landroid/view/View;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

.field final synthetic val$repository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 837
    iput-object p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    iput-object p2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;->val$repository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    iput-object p3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 841
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;->val$repository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;->val$view:Landroid/view/View;

    if-eqz v6, :cond_9

    .line 844
    const-string v6, "true"

    const-string v7, "dev.knoxapp.running"

    const-string v8, "false"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 845
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    invoke-static {v6}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->access$900(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    invoke-static {v7}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->access$900(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x1040b1d

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 901
    :goto_0
    return-void

    .line 850
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;->val$repository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    invoke-virtual {v6, v10}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->dump(Z)Z

    .line 851
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;->val$repository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    invoke-static {v6, v7}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->access$1000(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)Ljava/lang/String;

    move-result-object v2

    .line 852
    .local v2, "textData":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;->val$repository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    invoke-static {v6, v7}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->access$1100(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)Ljava/lang/String;

    move-result-object v4

    .line 853
    .local v4, "urlData":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;->val$repository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    invoke-static {v6, v7}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->access$1200(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)Ljava/lang/String;

    move-result-object v3

    .line 854
    .local v3, "textSelectionData":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;->val$repository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    invoke-virtual {v6}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getContentRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 855
    .local v0, "croppedRect":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;->val$repository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    invoke-virtual {v6}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getWindowLayer()I

    move-result v1

    .line 857
    .local v1, "layerToCapture":I
    const-string v6, "SmartClipDragDrop"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onTouch : The target layer of dragging is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    if-eqz v0, :cond_1

    .line 860
    new-instance v5, Landroid/graphics/Rect;

    iget v6, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v6, v6, -0xa

    iget v7, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v7, v7, -0xa

    iget v8, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v8, v8, 0xa

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v9, v9, 0xa

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 862
    .local v5, "validRect":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    iget v6, v6, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mLastTouchX:I

    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    iget v7, v7, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mLastTouchY:I

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-nez v6, :cond_1

    .line 863
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    invoke-virtual {v6}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->stopService()V

    goto :goto_0

    .line 868
    .end local v5    # "validRect":Landroid/graphics/Rect;
    :cond_1
    if-eqz v3, :cond_2

    .line 869
    const-string v6, "SmartClipDragDrop"

    const-string v7, "onTouch : text selection is extracted"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;->val$view:Landroid/view/View;

    const/4 v8, 0x0

    invoke-static {v6, v7, v3, v8, v1}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->access$1300(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;Landroid/view/View;Ljava/lang/String;Landroid/graphics/Rect;I)V

    .line 899
    .end local v0    # "croppedRect":Landroid/graphics/Rect;
    .end local v1    # "layerToCapture":I
    .end local v2    # "textData":Ljava/lang/String;
    .end local v3    # "textSelectionData":Ljava/lang/String;
    .end local v4    # "urlData":Ljava/lang/String;
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    invoke-static {v6}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->access$1500(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;)V

    goto/16 :goto_0

    .line 871
    .restart local v0    # "croppedRect":Landroid/graphics/Rect;
    .restart local v1    # "layerToCapture":I
    .restart local v2    # "textData":Ljava/lang/String;
    .restart local v3    # "textSelectionData":Ljava/lang/String;
    .restart local v4    # "urlData":Ljava/lang/String;
    :cond_2
    if-eqz v2, :cond_3

    .line 872
    const-string v6, "SmartClipDragDrop"

    const-string v7, "onTouch : text is extracted"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;->val$view:Landroid/view/View;

    invoke-static {v6, v7, v2, v0, v1}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->access$1300(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;Landroid/view/View;Ljava/lang/String;Landroid/graphics/Rect;I)V

    goto :goto_1

    .line 874
    :cond_3
    if-eqz v4, :cond_4

    const-string v6, "youtube"

    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;->val$repository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    invoke-virtual {v7}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getContentType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-ne v6, v10, :cond_4

    .line 875
    const-string v6, "SmartClipDragDrop"

    const-string v7, "onTouch : youtube url will be pasted"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;->val$view:Landroid/view/View;

    invoke-static {v6, v7, v4, v0, v1}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->access$1300(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;Landroid/view/View;Ljava/lang/String;Landroid/graphics/Rect;I)V

    goto :goto_1

    .line 877
    :cond_4
    const-string v6, "com.android.chrome"

    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;->val$repository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    invoke-virtual {v7}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getAppPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-ne v6, v10, :cond_6

    .line 878
    if-eqz v4, :cond_5

    .line 879
    const-string v6, "SmartClipDragDrop"

    const-string v7, "onTouch : google chrome url will be pasted"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;->val$view:Landroid/view/View;

    invoke-static {v6, v7, v4, v0, v1}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->access$1300(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;Landroid/view/View;Ljava/lang/String;Landroid/graphics/Rect;I)V

    goto :goto_1

    .line 882
    :cond_5
    const-string v6, "SmartClipDragDrop"

    const-string v7, "onTouch : google chrome url is empty. stop the service"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    invoke-virtual {v6}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->stopService()V

    goto :goto_1

    .line 885
    :cond_6
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-lez v6, :cond_7

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-lez v6, :cond_7

    .line 886
    const-string v6, "SmartClipDragDrop"

    const-string v7, "onTouch : no text meta data -> image will be pasted"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;->val$view:Landroid/view/View;

    invoke-static {v6, v7, v0, v1}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->access$1400(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;Landroid/view/View;Landroid/graphics/Rect;I)V

    goto :goto_1

    .line 888
    :cond_7
    if-eqz v4, :cond_8

    .line 889
    const-string v6, "SmartClipDragDrop"

    const-string v7, "onTouch : url will be pasted"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;->val$view:Landroid/view/View;

    invoke-static {v6, v7, v4, v0, v1}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->access$1300(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;Landroid/view/View;Ljava/lang/String;Landroid/graphics/Rect;I)V

    goto/16 :goto_1

    .line 892
    :cond_8
    const-string v6, "SmartClipDragDrop"

    const-string v7, "onTouch : there is no data to drag&drop"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    invoke-virtual {v6}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->stopService()V

    goto/16 :goto_1

    .line 896
    .end local v0    # "croppedRect":Landroid/graphics/Rect;
    .end local v1    # "layerToCapture":I
    .end local v2    # "textData":Ljava/lang/String;
    .end local v3    # "textSelectionData":Ljava/lang/String;
    .end local v4    # "urlData":Ljava/lang/String;
    :cond_9
    const-string v6, "SmartClipDragDrop"

    const-string v7, "onTouch : repository is null!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    invoke-virtual {v6}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->stopService()V

    goto/16 :goto_1
.end method
