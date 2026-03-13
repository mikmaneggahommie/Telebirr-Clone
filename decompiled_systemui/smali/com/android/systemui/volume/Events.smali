.class public Lcom/android/systemui/volume/Events;
.super Ljava/lang/Object;
.source "Events.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/Events$Callback;
    }
.end annotation


# static fields
.field public static final DISMISS_REASONS:[Ljava/lang/String;

.field public static final DISMISS_REASON_DONE_CLICKED:I = 0x6

.field public static final DISMISS_REASON_SCREEN_OFF:I = 0x4

.field public static final DISMISS_REASON_SETTINGS_CLICKED:I = 0x5

.field public static final DISMISS_REASON_TIMEOUT:I = 0x3

.field public static final DISMISS_REASON_TOUCH_OUTSIDE:I = 0x1

.field public static final DISMISS_REASON_UNKNOWN:I = 0x0

.field public static final DISMISS_REASON_VOLUME_CONTROLLER:I = 0x2

.field public static final EVENT_ACTIVE_STREAM_CHANGED:I = 0x2

.field public static final EVENT_COLLECTION_STARTED:I = 0x5

.field public static final EVENT_COLLECTION_STOPPED:I = 0x6

.field public static final EVENT_DISMISS_DIALOG:I = 0x1

.field public static final EVENT_EXPAND:I = 0x3

.field public static final EVENT_EXTERNAL_RINGER_MODE_CHANGED:I = 0xc

.field public static final EVENT_ICON_CLICK:I = 0x7

.field public static final EVENT_INTERNAL_RINGER_MODE_CHANGED:I = 0xb

.field public static final EVENT_KEY:I = 0x4

.field public static final EVENT_LEVEL_CHANGED:I = 0xa

.field public static final EVENT_MUTE_CHANGED:I = 0xf

.field public static final EVENT_SETTINGS_CLICK:I = 0x8

.field public static final EVENT_SHOW_DIALOG:I = 0x0

.field public static final EVENT_SUPPRESSOR_CHANGED:I = 0xe

.field private static final EVENT_TAGS:[Ljava/lang/String;

.field public static final EVENT_TOUCH_LEVEL_CHANGED:I = 0x9

.field public static final EVENT_TOUCH_LEVEL_DONE:I = 0x10

.field public static final EVENT_ZEN_MODE_CHANGED:I = 0xd

.field public static final ICON_STATE_MUTE:I = 0x2

.field public static final ICON_STATE_UNKNOWN:I = 0x0

.field public static final ICON_STATE_UNMUTE:I = 0x1

.field public static final ICON_STATE_VIBRATE:I = 0x3

.field public static final SHOW_REASONS:[Ljava/lang/String;

.field public static final SHOW_REASON_REMOTE_VOLUME_CHANGED:I = 0x2

.field public static final SHOW_REASON_UNKNOWN:I = 0x0

.field public static final SHOW_REASON_VOLUME_CHANGED:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field public static sCallback:Lcom/android/systemui/volume/Events$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 34
    const-class v0, Lcom/android/systemui/volume/Events;

    invoke-static {v0}, Lcom/android/systemui/volume/Util;->logTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/Events;->TAG:Ljava/lang/String;

    .line 54
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "show_dialog"

    aput-object v1, v0, v3

    const-string v1, "dismiss_dialog"

    aput-object v1, v0, v4

    const-string v1, "active_stream_changed"

    aput-object v1, v0, v5

    const-string v1, "expand"

    aput-object v1, v0, v6

    const-string v1, "key"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "collection_started"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "collection_stopped"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "icon_click"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "settings_click"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "touch_level_changed"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "level_changed"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "internal_ringer_mode_changed"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "external_ringer_mode_changed"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "zen_mode_changed"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "suppressor_changed"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "mute_changed"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "touch_level_done"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui/volume/Events;->EVENT_TAGS:[Ljava/lang/String;

    .line 81
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "unknown"

    aput-object v1, v0, v3

    const-string v1, "touch_outside"

    aput-object v1, v0, v4

    const-string v1, "volume_controller"

    aput-object v1, v0, v5

    const-string v1, "timeout"

    aput-object v1, v0, v6

    const-string v1, "screen_off"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "settings_clicked"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "done_clicked"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui/volume/Events;->DISMISS_REASONS:[Ljava/lang/String;

    .line 94
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "unknown"

    aput-object v1, v0, v3

    const-string v1, "volume_changed"

    aput-object v1, v0, v4

    const-string v1, "remote_volume_changed"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/volume/Events;->SHOW_REASONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    return-void
.end method

.method private static iconStateToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "iconState"    # I

    .prologue
    .line 186
    packed-switch p0, :pswitch_data_0

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown_state_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 187
    :pswitch_0
    const-string v0, "unmute"

    goto :goto_0

    .line 188
    :pswitch_1
    const-string v0, "mute"

    goto :goto_0

    .line 189
    :pswitch_2
    const-string v0, "vibrate"

    goto :goto_0

    .line 186
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static ringerModeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "ringerMode"    # I

    .prologue
    .line 195
    packed-switch p0, :pswitch_data_0

    .line 199
    const-string v0, "unknown"

    :goto_0
    return-object v0

    .line 196
    :pswitch_0
    const-string v0, "silent"

    goto :goto_0

    .line 197
    :pswitch_1
    const-string v0, "vibrate"

    goto :goto_0

    .line 198
    :pswitch_2
    const-string v0, "normal"

    goto :goto_0

    .line 195
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static varargs writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # I
    .param p2, "list"    # [Ljava/lang/Object;

    .prologue
    const/16 v8, 0xcf

    const/16 v7, 0x20

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 109
    .local v2, "time":J
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "writeEvent "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/android/systemui/volume/Events;->EVENT_TAGS:[Ljava/lang/String;

    aget-object v6, v6, p1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 110
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_0

    array-length v1, p2

    if-lez v1, :cond_0

    .line 111
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    packed-switch p1, :pswitch_data_0

    .line 169
    :pswitch_0
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 173
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/systemui/volume/Events;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    sget-object v1, Lcom/android/systemui/volume/Events;->sCallback:Lcom/android/systemui/volume/Events$Callback;

    if-eqz v1, :cond_1

    .line 175
    sget-object v1, Lcom/android/systemui/volume/Events;->sCallback:Lcom/android/systemui/volume/Events$Callback;

    invoke-interface {v1, v2, v3, p1, p2}, Lcom/android/systemui/volume/Events$Callback;->writeEvent(JI[Ljava/lang/Object;)V

    .line 177
    :cond_1
    return-void

    .line 114
    :pswitch_1
    invoke-static {p0, v8}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    .line 115
    const-string v6, "volume_from_keyguard"

    aget-object v1, p2, v4

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v4

    :goto_1
    invoke-static {p0, v6, v1}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 117
    sget-object v6, Lcom/android/systemui/volume/Events;->SHOW_REASONS:[Ljava/lang/String;

    aget-object v1, p2, v5

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v1, v6, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " keyguard="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v4, p2, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    move v1, v5

    .line 115
    goto :goto_1

    .line 120
    :pswitch_2
    const/16 v4, 0xd0

    aget-object v1, p2, v5

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {p0, v4, v1}, Lcom/android/internal/logging/MetricsLogger;->visibility(Landroid/content/Context;IZ)V

    .line 122
    aget-object v1, p2, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 125
    :pswitch_3
    invoke-static {p0, v8}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    .line 126
    sget-object v4, Lcom/android/systemui/volume/Events;->DISMISS_REASONS:[Ljava/lang/String;

    aget-object v1, p2, v5

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v1, v4, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 129
    :pswitch_4
    const/16 v4, 0xd2

    aget-object v1, p2, v5

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p0, v4, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 131
    aget-object v1, p2, v5

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 134
    :pswitch_5
    const/16 v6, 0xd4

    aget-object v1, p2, v4

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p0, v6, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 136
    aget-object v1, p2, v5

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v1, p2, v4

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/volume/Events;->iconStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 140
    :pswitch_6
    const/16 v6, 0xd1

    aget-object v1, p2, v4

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p0, v6, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 146
    :pswitch_7
    aget-object v1, p2, v5

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v4, p2, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 150
    :pswitch_8
    const/16 v6, 0xd3

    aget-object v1, p2, v4

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p0, v6, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 152
    aget-object v1, p2, v5

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v4, p2, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 156
    :pswitch_9
    const/16 v4, 0xd5

    aget-object v1, p2, v5

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p0, v4, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 160
    :pswitch_a
    aget-object v1, p2, v5

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/volume/Events;->ringerModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 163
    :pswitch_b
    aget-object v1, p2, v5

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/volume/Events;->zenModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 166
    :pswitch_c
    aget-object v1, p2, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v4, p2, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_7
        :pswitch_7
        :pswitch_a
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public static writeState(JLcom/android/systemui/volume/VolumeDialogController$State;)V
    .locals 2
    .param p0, "time"    # J
    .param p2, "state"    # Lcom/android/systemui/volume/VolumeDialogController$State;

    .prologue
    .line 180
    sget-object v0, Lcom/android/systemui/volume/Events;->sCallback:Lcom/android/systemui/volume/Events$Callback;

    if-eqz v0, :cond_0

    .line 181
    sget-object v0, Lcom/android/systemui/volume/Events;->sCallback:Lcom/android/systemui/volume/Events$Callback;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/systemui/volume/Events$Callback;->writeState(JLcom/android/systemui/volume/VolumeDialogController$State;)V

    .line 183
    :cond_0
    return-void
.end method

.method private static zenModeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "zenMode"    # I

    .prologue
    .line 204
    packed-switch p0, :pswitch_data_0

    .line 209
    const-string v0, "unknown"

    :goto_0
    return-object v0

    .line 205
    :pswitch_0
    const-string v0, "off"

    goto :goto_0

    .line 206
    :pswitch_1
    const-string v0, "important_interruptions"

    goto :goto_0

    .line 207
    :pswitch_2
    const-string v0, "alarms"

    goto :goto_0

    .line 208
    :pswitch_3
    const-string v0, "no_interruptions"

    goto :goto_0

    .line 204
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
