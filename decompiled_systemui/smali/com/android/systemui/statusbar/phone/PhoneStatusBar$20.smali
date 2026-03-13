.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->makeStatusBarView()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    .prologue
    .line 2041
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v4, 0x3ef

    const/16 v1, 0x3ed

    .line 2043
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSEditPanel:Lcom/android/systemui/qs/QSEditPanel;

    if-nez v0, :cond_1

    .line 2044
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$8900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2045
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$9000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 2047
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$9100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 2050
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$9200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2062
    :goto_0
    return-void

    .line 2054
    :cond_2
    invoke-static {}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$9300()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2055
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const-string v1, "EDITBUTTON"

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$8300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Ljava/lang/String;)V

    .line 2058
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$9400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2059
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$9500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 2061
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$9600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
