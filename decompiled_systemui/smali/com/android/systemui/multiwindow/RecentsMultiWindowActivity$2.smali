.class Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$2;
.super Ljava/lang/Object;
.source "RecentsMultiWindowActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$2;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 236
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 238
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$2;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    invoke-static {v0, p1}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$002(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;I)I

    .line 243
    :goto_0
    return-void

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$2;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$002(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;I)I

    goto :goto_0
.end method

.method public onPageSelected(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 245
    iget-object v2, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$2;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    invoke-static {v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$100(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)I

    move-result v2

    rem-int/2addr p1, v2

    .line 246
    iget-object v2, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$2;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    invoke-static {v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$300(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$2;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    invoke-static {v3}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$200(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 247
    .local v1, "prevIcon":Landroid/widget/ImageView;
    const v2, 0x7f0207a0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 249
    iget-object v2, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$2;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    invoke-static {v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$300(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 250
    .local v0, "curIcon":Landroid/widget/ImageView;
    const v2, 0x7f0207a1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 251
    iget-object v2, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$2;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    invoke-static {v2, p1}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$202(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;I)I

    .line 252
    return-void
.end method
