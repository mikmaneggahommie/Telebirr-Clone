.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;
.super Ljava/lang/Object;
.source "NotificationPanelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateCarrierLabelView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field final synthetic val$carrierLabelHeight:I

.field final synthetic val$isCovered:Z

.field final synthetic val$isKeyGuard:Z

.field final synthetic val$isKnoxCustomCarrierLabelHidden:Z

.field final synthetic val$isShade:Z

.field final synthetic val$isShadeLocked:Z

.field final synthetic val$marginParams:Landroid/view/ViewGroup$MarginLayoutParams;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;IZZZLandroid/view/ViewGroup$MarginLayoutParams;ZZ)V
    .locals 0

    .prologue
    .line 3247
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->val$carrierLabelHeight:I

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->val$isShade:Z

    iput-boolean p4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->val$isKeyGuard:Z

    iput-boolean p5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->val$isShadeLocked:Z

    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->val$marginParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iput-boolean p7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->val$isCovered:Z

    iput-boolean p8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->val$isKnoxCustomCarrierLabelHidden:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    .prologue
    .line 3250
    const/4 v6, 0x0

    .line 3251
    .local v6, "bottomMargin":I
    const/4 v7, 0x0

    .line 3252
    .local v7, "bottomMarginForCue":I
    const/16 v18, 0x0

    .line 3253
    .local v18, "topMargin":I
    const/4 v13, 0x0

    .line 3254
    .local v13, "endMargin":I
    const/4 v14, 0x0

    .line 3255
    .local v14, "leftPadding":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getHeight()I

    move-result v16

    .line 3257
    .local v16, "rootLayoutHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isSupportNotificationOnCover()Z

    move-result v19

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3200(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/FrameLayout;

    move-result-object v19

    if-eqz v19, :cond_0

    .line 3258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3200(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/FrameLayout;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v16

    .line 3261
    :cond_0
    sget-boolean v19, Lcom/android/systemui/statusbar/Feature;->mSupportMumButton:Z

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsDetailShowing()Z

    move-result v19

    if-nez v19, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsInQSEditMode:Z

    move/from16 v19, v0

    if-eqz v19, :cond_4

    .line 3262
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 3436
    :cond_3
    :goto_0
    return-void

    .line 3267
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3500(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/qs/QSPanel;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/qs/QSPanel;->isSingleLine()Z

    move-result v19

    if-nez v19, :cond_8

    .line 3404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 3406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3500(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/qs/QSPanel;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/qs/QSPanel;->getHeight()I

    move-result v19

    sub-int v19, v16, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$500(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getHeight()I

    move-result v20

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->val$carrierLabelHeight:I

    move/from16 v20, v0

    sub-int v6, v19, v20

    .line 3415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->val$marginParams:Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 3416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->val$marginParams:Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3417
    sget-boolean v19, Lcom/android/systemui/statusbar/Feature;->mShowNotiPanelPLMNForLMR:Z

    if-eqz v19, :cond_5

    .line 3418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v19

    const/16 v20, 0x11

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setGravity(I)V

    .line 3419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {v19 .. v23}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 3421
    :cond_5
    sget-boolean v19, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v19, :cond_7

    .line 3422
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->val$isKeyGuard:Z

    move/from16 v19, v0

    if-nez v19, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->val$isShadeLocked:Z

    move/from16 v19, v0

    if-eqz v19, :cond_31

    .line 3423
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3431
    :cond_7
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->val$isKnoxCustomCarrierLabelHidden:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    .line 3432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 3268
    :cond_8
    sget-boolean v19, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v19, :cond_12

    .line 3269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3336
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3337
    .local v15, "marginParams":Landroid/view/ViewGroup$MarginLayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3600(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLastChildYTranslation()F

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3600(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getBottom()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(FF)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    sub-int v19, v16, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->val$carrierLabelHeight:I

    move/from16 v20, v0

    sub-int v20, v19, v20

    sget-boolean v19, Lcom/android/systemui/statusbar/Feature;->mIsMocha:Z

    if-eqz v19, :cond_1f

    const/16 v19, 0x0

    :goto_3
    sub-int v6, v20, v19

    .line 3341
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->val$carrierLabelHeight:I

    move/from16 v19, v0

    add-int v18, v6, v19

    .line 3342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$4600(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_9

    sget-boolean v19, Lcom/android/systemui/statusbar/Feature;->mIsTablet:Z

    if-eqz v19, :cond_20

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0a049b

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 3344
    :goto_4
    sget-boolean v19, Lcom/android/systemui/statusbar/Feature;->mIsMocha:Z

    if-eqz v19, :cond_a

    .line 3345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$4600(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0a049b

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 3347
    :cond_a
    :goto_5
    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v18

    move/from16 v2, v20

    invoke-virtual {v15, v0, v1, v2, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 3348
    invoke-virtual {v15, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 3349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsFullyOpened:Z

    move/from16 v19, v0

    if-eqz v19, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->val$isShade:Z

    move/from16 v19, v0

    if-eqz v19, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3700(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v19

    if-eqz v19, :cond_c

    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->val$isKeyGuard:Z

    move/from16 v19, v0

    if-eqz v19, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$1300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v19

    if-eqz v19, :cond_23

    sget-boolean v19, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v19, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3800(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v19

    if-eqz v19, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    move/from16 v19, v0

    if-eqz v19, :cond_23

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3900(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v19

    if-eqz v19, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3600(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isCurrentlyAnimating()Z

    move-result v19

    if-nez v19, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsStackScrollerTransparent:Z

    move/from16 v19, v0

    if-nez v19, :cond_24

    const/4 v9, 0x1

    .line 3359
    .local v9, "clearAllVisibility":Z
    :goto_6
    if-eqz v9, :cond_25

    const/16 v19, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getVisibility()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_d

    .line 3360
    sget-object v20, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "mClearAll.setVisibility - mIsFullyOpened : "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsFullyOpened:Z

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, " isShade : "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->val$isShade:Z

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, " mHasNotification : "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$1300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v21

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, " mIsUpwardFling : "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3700(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v21

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, " mQsFullyExpanded : "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, " isShadeLocked : "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->val$isShadeLocked:Z

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, " mClearAllVisible : "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3900(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v21

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, " !mNotificationStackScroller.isCurrentlyAnimating() : "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3600(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isCurrentlyAnimating()Z

    move-result v19

    if-nez v19, :cond_26

    const/16 v19, 0x1

    :goto_8
    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, "!mIsStackScrollerTransparent : "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsStackScrollerTransparent:Z

    move/from16 v19, v0

    if-nez v19, :cond_27

    const/16 v19, 0x1

    :goto_9
    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3371
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/View;

    move-result-object v20

    if-eqz v9, :cond_28

    const/16 v19, 0x0

    :goto_a
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3373
    sget-boolean v19, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v19, :cond_2a

    .line 3374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$4700(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3900(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v19

    if-nez v19, :cond_29

    const/16 v19, 0x1

    :goto_b
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPressed(Z)V

    .line 3379
    :goto_c
    sget-boolean v19, Lcom/android/systemui/statusbar/Feature;->mIsLatte:Z

    if-eqz v19, :cond_2d

    .line 3380
    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->isLayoutDirectionRTL()Z

    move-result v19

    if-eqz v19, :cond_2c

    .line 3381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v19

    const/16 v20, 0x15

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setGravity(I)V

    .line 3393
    :cond_e
    :goto_d
    sget-boolean v19, Lcom/android/systemui/statusbar/Feature;->mShowNotiPanelPLMNForLMR:Z

    if-eqz v19, :cond_3

    .line 3394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3395
    .local v8, "carrierLableMarginParams":Landroid/view/ViewGroup$MarginLayoutParams;
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v8, v0, v1, v2, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 3396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v19

    const v20, 0x800013

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setGravity(I)V

    .line 3398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v20

    sget-boolean v19, Lcom/android/systemui/statusbar/Feature;->mIsTablet:Z

    if-eqz v19, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$4800(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)I

    move-result v19

    :goto_e
    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v19

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 3399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsFullyOpened:Z

    move/from16 v19, v0

    if-eqz v19, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->val$isShade:Z

    move/from16 v19, v0

    if-eqz v19, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3700(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v19

    if-eqz v19, :cond_11

    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->val$isKeyGuard:Z

    move/from16 v19, v0

    if-nez v19, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->val$isShadeLocked:Z

    move/from16 v19, v0

    if-eqz v19, :cond_30

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    move/from16 v19, v0

    if-eqz v19, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3800(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v19

    if-eqz v19, :cond_30

    :cond_11
    const/16 v19, 0x0

    :goto_f
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 3271
    .end local v8    # "carrierLableMarginParams":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v9    # "clearAllVisibility":Z
    .end local v15    # "marginParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3600(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLastChildYTranslation()F

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3600(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getBottom()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(FF)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    sub-int v19, v16, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->val$carrierLabelHeight:I

    move/from16 v20, v0

    sub-int v6, v19, v20

    .line 3275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0a04ae

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    add-int v7, v6, v19

    .line 3276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getX()F

    move-result v19

    move/from16 v0, v19

    float-to-int v11, v0

    .line 3277
    .local v11, "clearleft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsFullyOpened:Z

    move/from16 v19, v0

    if-eqz v19, :cond_13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->val$isShade:Z

    move/from16 v19, v0

    if-eqz v19, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3700(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v19

    if-eqz v19, :cond_14

    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->val$isKeyGuard:Z

    move/from16 v19, v0

    if-eqz v19, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$1300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v19

    if-eqz v19, :cond_17

    sget-boolean v19, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v19, :cond_16

    sget-boolean v19, Lcom/android/systemui/statusbar/Feature;->mIsTablet:Z

    if-nez v19, :cond_16

    sget-boolean v19, Lcom/android/systemui/statusbar/Feature;->mDoNotShowClearOnLockScreen:Z

    if-eqz v19, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3800(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v19

    if-eqz v19, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    move/from16 v19, v0

    if-eqz v19, :cond_17

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3900(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v19

    if-eqz v19, :cond_18

    const/4 v10, 0x0

    .line 3282
    .local v10, "clearVisible":I
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$100(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/View;

    move-result-object v19

    if-eqz v19, :cond_1b

    .line 3283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->val$marginParams:Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 3284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$100(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->val$marginParams:Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3288
    sget-boolean v19, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v19, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsScreenon:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->val$isKeyGuard:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$4000(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->getIconsView()Lcom/android/systemui/statusbar/NotificationOverflowIconsView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->getChildCount()I

    move-result v19

    if-lez v19, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3600(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getVisibility()I

    move-result v19

    if-nez v19, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isMobileKeyboardAttached()Z

    move-result v19

    if-nez v19, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getUserSetup()Z

    move-result v19

    if-eqz v19, :cond_1a

    .line 3295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    new-instance v20, Lcom/android/keyguard/KeyguardSecurityContainer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$4200(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/content/Context;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Lcom/android/keyguard/KeyguardSecurityContainer;-><init>(Landroid/content/Context;)V

    invoke-static/range {v19 .. v20}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$4102(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/keyguard/KeyguardSecurityContainer;

    .line 3296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$4100(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/keyguard/KeyguardSecurityContainer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v17

    .line 3297
    .local v17, "securityMode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-object v19, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->UniversalLock:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_15

    .line 3298
    sget-boolean v19, Lcom/android/systemui/statusbar/Feature;->mUseStableMoreCue:Z

    if-eqz v19, :cond_19

    .line 3299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$100(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 3300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$100(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setFocusable(Z)V

    .line 3301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$4300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Ljava/lang/Runnable;

    move-result-object v20

    const-wide/16 v22, 0x7d0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3320
    .end local v17    # "securityMode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    :cond_15
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0a0384

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    .line 3321
    if-eqz v11, :cond_1d

    if-nez v10, :cond_1d

    .line 3322
    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->isLayoutDirectionRTL()Z

    move-result v19

    if-eqz v19, :cond_1c

    .line 3323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0a03d1

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    add-int v12, v11, v19

    .line 3324
    .local v12, "clearright":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->val$marginParams:Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2, v12, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginsRelative(IIII)V

    .line 3331
    .end local v12    # "clearright":I
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->val$marginParams:Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v14, v1, v2, v3}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 3333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsFullyOpened:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->val$isShade:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3700(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v19

    if-nez v19, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->val$isCovered:Z

    move/from16 v19, v0

    if-nez v19, :cond_1e

    const/16 v19, 0x0

    :goto_13
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 3277
    .end local v10    # "clearVisible":I
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    move/from16 v19, v0

    if-nez v19, :cond_14

    :cond_17
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->val$isShadeLocked:Z

    move/from16 v19, v0

    if-eqz v19, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3700(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v19

    if-eqz v19, :cond_14

    :cond_18
    const/16 v10, 0x8

    goto/16 :goto_10

    .line 3303
    .restart local v10    # "clearVisible":I
    .restart local v17    # "securityMode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCueIsFadedOut:Z

    move/from16 v19, v0

    if-nez v19, :cond_15

    .line 3304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCueIsFadedOut:Z

    .line 3305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$100(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 3306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$100(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setFocusable(Z)V

    .line 3307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$4400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/animation/Animation;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/animation/Animation;->cancel()V

    .line 3308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$4500(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Ljava/lang/Runnable;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_11

    .line 3313
    .end local v17    # "securityMode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$4400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/animation/Animation;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/animation/Animation;->cancel()V

    .line 3314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$100(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 3315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCueIsFadedOut:Z

    goto/16 :goto_11

    .line 3318
    :cond_1b
    sget-object v19, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    const-string v20, "mMoreNotificationCue is null"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 3326
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->val$marginParams:Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getWidth()I

    move-result v22

    sub-int v22, v22, v11

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginsRelative(IIII)V

    goto/16 :goto_12

    .line 3329
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->val$marginParams:Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginsRelative(IIII)V

    goto/16 :goto_12

    .line 3333
    :cond_1e
    const/16 v19, 0x8

    goto/16 :goto_13

    .line 3337
    .end local v10    # "clearVisible":I
    .end local v11    # "clearleft":I
    .restart local v15    # "marginParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v21, 0x7f0a04ad

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    goto/16 :goto_3

    .line 3342
    :cond_20
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 3345
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0a04ad

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    goto/16 :goto_5

    .line 3351
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    move/from16 v19, v0

    if-nez v19, :cond_c

    :cond_23
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->val$isShadeLocked:Z

    move/from16 v19, v0

    if-eqz v19, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3700(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v19

    if-eqz v19, :cond_c

    :cond_24
    const/4 v9, 0x0

    goto/16 :goto_6

    .line 3359
    .restart local v9    # "clearAllVisibility":Z
    :cond_25
    const/16 v19, 0x8

    goto/16 :goto_7

    .line 3360
    :cond_26
    const/16 v19, 0x0

    goto/16 :goto_8

    :cond_27
    const/16 v19, 0x0

    goto/16 :goto_9

    .line 3371
    :cond_28
    const/16 v19, 0x8

    goto/16 :goto_a

    .line 3374
    :cond_29
    const/16 v19, 0x0

    goto/16 :goto_b

    .line 3376
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3900(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v19

    if-nez v19, :cond_2b

    const/16 v19, 0x1

    :goto_14
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 3377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$4700(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setPressed(Z)V

    goto/16 :goto_c

    .line 3376
    :cond_2b
    const/16 v19, 0x0

    goto :goto_14

    .line 3383
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v19

    const/16 v20, 0x13

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_d

    .line 3385
    :cond_2d
    sget-boolean v19, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v19, :cond_e

    .line 3386
    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->isLayoutDirectionRTL()Z

    move-result v19

    if-eqz v19, :cond_2e

    .line 3387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v19

    const/16 v20, 0x55

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_d

    .line 3389
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v19

    const/16 v20, 0x53

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_d

    .line 3398
    .restart local v8    # "carrierLableMarginParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$4900(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)I

    move-result v19

    goto/16 :goto_e

    .line 3399
    :cond_30
    const/16 v19, 0x8

    goto/16 :goto_f

    .line 3425
    .end local v8    # "carrierLableMarginParams":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v9    # "clearAllVisibility":Z
    .end local v15    # "marginParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsFullyOpened:Z

    move/from16 v19, v0

    if-eqz v19, :cond_32

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->val$isShade:Z

    move/from16 v19, v0

    if-eqz v19, :cond_32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3700(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v19

    if-nez v19, :cond_32

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->val$isCovered:Z

    move/from16 v19, v0

    if-nez v19, :cond_32

    const/16 v19, 0x0

    :goto_15
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_32
    const/16 v19, 0x8

    goto :goto_15
.end method
