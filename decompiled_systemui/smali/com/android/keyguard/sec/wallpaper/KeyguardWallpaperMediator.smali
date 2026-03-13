.class public Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;
.super Ljava/lang/Object;
.source "KeyguardWallpaperMediator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;
    }
.end annotation


# static fields
.field private static final DUAL_MODE_DUPLICATE:I = 0x1

.field private static final DUAL_MODE_EXPAND:I = 0x0

.field private static final DUAL_MODE_LEFT:I = 0x2

.field private static final DUAL_MODE_RIGHT:I = 0x3

.field private static final DUAL_MODE_UNKNOWN:I = -0x1

.field private static final MSG_WALLPAPER_TYPE_CHANGED:I = 0xc8

.field private static final MSG_WALLPAPER_TYPE_CHANGED_SUB:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "KeyguardWallpaperMediator"

.field private static final TEST_MODE:Z


# instance fields
.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContentObserverSub:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

.field private mControllerSub:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

.field private final mHandler:Landroid/os/Handler;

.field private mLiveController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;

.field private mLiveControllerSub:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;

.field private mWallpaperType:I

.field private mWallpaperTypeSub:I

.field private mWindowCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

.field private mWindowManager:Landroid/view/WindowManagerImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManagerImpl;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Landroid/view/WindowManagerImpl;
    .param p3, "windowCallback"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$1;-><init>(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mHandler:Landroid/os/Handler;

    .line 95
    new-instance v0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$2;

    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$2;-><init>(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mContentObserver:Landroid/database/ContentObserver;

    .line 112
    new-instance v0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$3;

    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$3;-><init>(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mContentObserverSub:Landroid/database/ContentObserver;

    .line 50
    iput-object p1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mWindowManager:Landroid/view/WindowManagerImpl;

    .line 52
    iput-object p3, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mWindowCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    .line 60
    invoke-direct {p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->setContentObserver()V

    .line 61
    invoke-direct {p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->handleWallpaperTypeChanged()V

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->handleWallpaperTypeChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->handleWallpaperTypeChangedSub()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private checkSetYahooLiveWeatherType()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 209
    iget-object v4, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lockscreen_dual_mode"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 210
    .local v0, "dualScreenMode":I
    iget-object v4, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getWallpaperType(Landroid/content/Context;I)I

    move-result v3

    .line 212
    .local v3, "wallpaperType":I
    iget-object v4, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "previous_lockscreen_wallpaper"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 213
    .local v1, "previousWallpaperType":I
    iget-object v4, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "previous_lockscreen_wallpaper_sub"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 215
    .local v2, "previousWallpaperTypeSub":I
    const-string v4, "KeyguardWallpaperMediator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkSetYahooLiveWeather() dualScreenMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", wallpaperType : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", previousWallpaperType : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", previousWallpaperTypeSub : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    if-ne v1, v8, :cond_1

    if-ne v2, v8, :cond_1

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    if-ne v3, v8, :cond_0

    .line 224
    if-ne v0, v7, :cond_2

    .line 225
    iget-object v4, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lockscreen_wallpaper_sub"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 226
    :cond_2
    const/4 v4, 0x3

    if-ne v0, v4, :cond_3

    .line 227
    const-string v4, "KeyguardWallpaperMediator"

    const-string v5, "dual screen mode type is only right!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 228
    :cond_3
    if-ne v0, v8, :cond_4

    .line 229
    iget-object v4, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lockscreen_wallpaper"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 230
    iget-object v4, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lockscreen_wallpaper_sub"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 232
    :cond_4
    const-string v4, "KeyguardWallpaperMediator"

    const-string v5, "illegal dual screen mode type!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleWallpaperTypeChanged()V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 152
    iget-object v3, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getWallpaperType(Landroid/content/Context;)I

    move-result v1

    .line 154
    .local v1, "wallpaperType":I
    if-eq v1, v0, :cond_0

    .line 155
    iget-object v3, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "white_lockscreen_wallpaper"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_1

    .line 156
    .local v0, "val":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 157
    iget-object v3, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "white_lockscreen_wallpaper"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 158
    const-string v3, "KeyguardWallpaperMediator"

    const-string v4, "Reset white_lockscreen_wallpaper due to !WALLPAPER_TYPE_FILE."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    .end local v0    # "val":Z
    :cond_0
    iget v3, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mWallpaperType:I

    if-ne v1, v3, :cond_2

    .line 205
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 155
    goto :goto_0

    .line 166
    :cond_2
    packed-switch v1, :pswitch_data_0

    .line 193
    const-string v2, "KeyguardWallpaperMediator"

    const-string v3, "illegal wallpaper type!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_3
    :goto_2
    iput v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mWallpaperType:I

    goto :goto_1

    .line 169
    :pswitch_0
    iget-object v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mLiveController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;

    if-eqz v2, :cond_4

    .line 170
    iget-object v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mLiveController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;->cleanUp()V

    .line 171
    iput-object v5, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mLiveController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;

    .line 173
    :cond_4
    iget-object v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    if-eqz v2, :cond_3

    .line 174
    iget-object v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->cleanUp()V

    .line 175
    iput-object v5, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    goto :goto_2

    .line 179
    :pswitch_1
    iget-object v3, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mLiveController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;

    if-eqz v3, :cond_5

    .line 180
    iget-object v3, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mLiveController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;->cleanUp()V

    .line 181
    iput-object v5, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mLiveController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;

    .line 183
    :cond_5
    new-instance v3, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    iget-object v4, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mWindowManager:Landroid/view/WindowManagerImpl;

    iget-object v6, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mWindowCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    invoke-direct {v3, v4, v5, v6, v2}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;-><init>(Landroid/content/Context;Landroid/view/WindowManagerImpl;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;I)V

    iput-object v3, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    goto :goto_2

    .line 186
    :pswitch_2
    iget-object v3, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    if-eqz v3, :cond_6

    .line 187
    iget-object v3, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->cleanUp()V

    .line 188
    iput-object v5, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    .line 190
    :cond_6
    new-instance v3, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;

    iget-object v4, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mWindowCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    invoke-direct {v3, v4, v5, v2}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;-><init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;I)V

    iput-object v3, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mLiveController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;

    goto :goto_2

    .line 166
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private handleWallpaperTypeChangedSub()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x1

    .line 238
    const-string v4, "KeyguardWallpaperMediator"

    const-string v5, "handleWallpaperTypeChangedSub()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v4, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getWallpaperType(Landroid/content/Context;I)I

    move-result v1

    .line 240
    .local v1, "wallpaperType":I
    const-string v4, "KeyguardWallpaperMediator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleWallpaperTypeChangedSub() wallpaperType : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    if-eq v1, v2, :cond_0

    .line 243
    iget-object v4, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "white_lockscreen_wallpaper_sub"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_1

    move v0, v2

    .line 244
    .local v0, "val":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 245
    iget-object v4, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "white_lockscreen_wallpaper_sub"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 246
    const-string v3, "KeyguardWallpaperMediator"

    const-string v4, "Reset white_lockscreen_wallpaper_sub due to !WALLPAPER_TYPE_FILE."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    .end local v0    # "val":Z
    :cond_0
    iget v3, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mWallpaperTypeSub:I

    if-ne v1, v3, :cond_2

    .line 251
    const-string v2, "KeyguardWallpaperMediator"

    const-string v3, "handleWallpaperTypeChangedSub() reutrn"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :goto_1
    return-void

    :cond_1
    move v0, v3

    .line 243
    goto :goto_0

    .line 255
    :cond_2
    packed-switch v1, :pswitch_data_0

    .line 294
    const-string v2, "KeyguardWallpaperMediator"

    const-string v3, "illegal wallpaper sub type!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_3
    :goto_2
    iput v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mWallpaperTypeSub:I

    .line 301
    iget-object v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "previous_lockscreen_wallpaper_sub"

    iget v4, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mWallpaperTypeSub:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 258
    :pswitch_0
    const-string v2, "KeyguardWallpaperMediator"

    const-string v3, "handleWallpaperTypeChangedSub() WALLPAPER_TYPE_HOME WALLPAPER_TYPE_LIVE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mLiveControllerSub:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;

    if-eqz v2, :cond_4

    .line 261
    iget-object v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mLiveControllerSub:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;->cleanUp()V

    .line 262
    iput-object v7, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mLiveControllerSub:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;

    .line 265
    :cond_4
    iget-object v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mControllerSub:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    if-eqz v2, :cond_3

    .line 266
    iget-object v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mControllerSub:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->cleanUp()V

    .line 267
    iput-object v7, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mControllerSub:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    goto :goto_2

    .line 272
    :pswitch_1
    const-string v3, "KeyguardWallpaperMediator"

    const-string v4, "handleWallpaperTypeChangedSub() WALLPAPER_TYPE_FILE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v3, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mLiveControllerSub:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;

    if-eqz v3, :cond_5

    .line 275
    iget-object v3, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mLiveControllerSub:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;->cleanUp()V

    .line 276
    iput-object v7, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mLiveControllerSub:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;

    .line 279
    :cond_5
    new-instance v3, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    iget-object v4, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mWindowManager:Landroid/view/WindowManagerImpl;

    iget-object v6, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mWindowCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    invoke-direct {v3, v4, v5, v6, v2}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;-><init>(Landroid/content/Context;Landroid/view/WindowManagerImpl;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;I)V

    iput-object v3, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mControllerSub:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    goto :goto_2

    .line 283
    :pswitch_2
    const-string v3, "KeyguardWallpaperMediator"

    const-string v4, "handleWallpaperTypeChangedSub() WALLPAPER_TYPE_JUST_ON_LOCK_LIVE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v3, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mControllerSub:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    if-eqz v3, :cond_6

    .line 286
    iget-object v3, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mControllerSub:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->cleanUp()V

    .line 287
    iput-object v7, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mControllerSub:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    .line 290
    :cond_6
    new-instance v3, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;

    iget-object v4, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mWindowCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    invoke-direct {v3, v4, v5, v2}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;-><init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;I)V

    iput-object v3, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mLiveControllerSub:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;

    goto :goto_2

    .line 255
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private setContentObserver()V
    .locals 5

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_wallpaper"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 142
    return-void
.end method

.method private setContentObserverSub()V
    .locals 5

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_wallpaper_sub"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mContentObserverSub:Landroid/database/ContentObserver;

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 148
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mWallpaperType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mWallpaperType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 420
    const-string v0, "  "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 421
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mLiveController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;

    if-eqz v0, :cond_1

    .line 425
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mLiveController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 438
    :cond_1
    return-void
.end method

.method public executeCommand(II)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "displayId"    # I

    .prologue
    .line 307
    const-string v0, "KeyguardWallpaperMediator"

    const-string v1, "executeCommand()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    if-nez p2, :cond_1

    .line 310
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->executeCommand(I)V

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mControllerSub:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mControllerSub:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->executeCommand(I)V

    goto :goto_0
.end method

.method public getUnlockDelay()J
    .locals 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->getUnlockDelay()J

    move-result-wide v0

    .line 414
    :goto_0
    return-wide v0

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mControllerSub:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    if-eqz v0, :cond_1

    .line 412
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mControllerSub:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->getUnlockDelay()J

    move-result-wide v0

    goto :goto_0

    .line 414
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public handleUnlock(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->handleUnlock(Landroid/view/MotionEvent;)V

    .line 391
    :cond_0
    return-void
.end method

.method public removeWindow()V
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->removeViewWindow()V

    .line 452
    :cond_0
    return-void
.end method

.method public sendTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 324
    const/4 v0, 0x1

    .line 332
    .local v0, "isEventFromMainDisplay":Z
    if-eqz v0, :cond_1

    .line 333
    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    if-eqz v1, :cond_0

    .line 334
    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    invoke-virtual {v1, p1}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->sendTouchEvent(Landroid/view/MotionEvent;)V

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mControllerSub:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    if-eqz v1, :cond_0

    .line 338
    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mControllerSub:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    invoke-virtual {v1, p1}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->sendTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public setContextualWallpaper(Landroid/graphics/Bitmap;I)V
    .locals 1
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "displayId"    # I

    .prologue
    .line 345
    if-nez p2, :cond_1

    .line 346
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->setContextualWallpaper(Landroid/graphics/Bitmap;)V

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mControllerSub:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mControllerSub:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->setContextualWallpaper(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;I)V
    .locals 1
    .param p1, "startDelay"    # J
    .param p3, "rect"    # Landroid/graphics/Rect;
    .param p4, "displayId"    # I

    .prologue
    .line 394
    if-nez p4, :cond_1

    .line 395
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->showUnlockAffordance(JLandroid/graphics/Rect;)V

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 401
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mControllerSub:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mControllerSub:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->showUnlockAffordance(JLandroid/graphics/Rect;)V

    goto :goto_0
.end method
