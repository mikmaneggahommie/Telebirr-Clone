.class Lcom/android/systemui/settings/ToggleSlider$2;
.super Ljava/lang/Object;
.source "ToggleSlider.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/settings/ToggleSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/ToggleSlider;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/ToggleSlider;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 291
    new-array v2, v3, [Ljava/lang/String;

    const-string v5, "false"

    aput-object v5, v2, v4

    .line 292
    .local v2, "selectionArgs":[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v6, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v6}, Lcom/android/systemui/settings/ToggleSlider;->access$400(Lcom/android/systemui/settings/ToggleSlider;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v8, "isSettingsChangesAllowed"

    invoke-static {v5, v6, v7, v8, v2}, Lcom/android/systemui/settings/ToggleSlider;->access$500(Lcom/android/systemui/settings/ToggleSlider;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 294
    .local v1, "isSettingsChangesAllowed":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_0

    if-nez v1, :cond_0

    .line 295
    const-string v4, "ToggleSlider"

    const-string v5, "onTouch(): Change brightness was not allowed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :goto_0
    return v3

    .line 300
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 301
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    :goto_1
    move v3, v4

    .line 309
    goto :goto_0

    .line 303
    :pswitch_0
    iget-object v5, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v5, v3}, Lcom/android/systemui/settings/ToggleSlider;->access$602(Lcom/android/systemui/settings/ToggleSlider;Z)Z

    goto :goto_1

    .line 301
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
