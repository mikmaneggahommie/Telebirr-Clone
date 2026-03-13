.class Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$1;
.super Landroid/os/Handler;
.source "KeyguardWallpaperMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$1;->this$0:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 80
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 92
    :goto_0
    return-void

    .line 82
    :sswitch_0
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$1;->this$0:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;

    invoke-static {v0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->access$000(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;)V

    goto :goto_0

    .line 86
    :sswitch_1
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$1;->this$0:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;

    invoke-static {v0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->access$100(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;)V

    goto :goto_0

    .line 80
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x12c -> :sswitch_1
    .end sparse-switch
.end method
