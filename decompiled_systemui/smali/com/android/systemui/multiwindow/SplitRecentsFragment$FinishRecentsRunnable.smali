.class Lcom/android/systemui/multiwindow/SplitRecentsFragment$FinishRecentsRunnable;
.super Ljava/lang/Object;
.source "SplitRecentsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/multiwindow/SplitRecentsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FinishRecentsRunnable"
.end annotation


# instance fields
.field mLaunchIntent:Landroid/content/Intent;

.field mLaunchOpts:Landroid/app/ActivityOptions;

.field final synthetic this$0:Lcom/android/systemui/multiwindow/SplitRecentsFragment;


# direct methods
.method public constructor <init>(Lcom/android/systemui/multiwindow/SplitRecentsFragment;Landroid/content/Intent;Landroid/app/ActivityOptions;)V
    .locals 0
    .param p2, "launchIntent"    # Landroid/content/Intent;
    .param p3, "opts"    # Landroid/app/ActivityOptions;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment$FinishRecentsRunnable;->this$0:Lcom/android/systemui/multiwindow/SplitRecentsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-object p2, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment$FinishRecentsRunnable;->mLaunchIntent:Landroid/content/Intent;

    .line 156
    iput-object p3, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment$FinishRecentsRunnable;->mLaunchOpts:Landroid/app/ActivityOptions;

    .line 157
    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 182
    return-void
.end method
