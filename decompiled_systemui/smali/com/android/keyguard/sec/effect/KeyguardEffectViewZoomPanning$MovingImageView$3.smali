.class Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView$3;
.super Ljava/lang/Object;
.source "KeyguardEffectViewZoomPanning.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;)V
    .locals 0

    .prologue
    .line 1682
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView$3;->this$1:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 1706
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 1694
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView$3;->this$1:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->access$700(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    move-result-object v0

    sget-object v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->Overlap:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    if-eq v0, v1, :cond_0

    .line 1695
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView$3;->this$1:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    sget-object v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->PinchZoom:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    invoke-static {v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->access$702(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    .line 1698
    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "start pinch zoom"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 2
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 1686
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView$3;->this$1:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    sget-object v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->TouchDown:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    invoke-static {v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->access$702(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    .line 1689
    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "end pinch zoom"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    return-void
.end method
