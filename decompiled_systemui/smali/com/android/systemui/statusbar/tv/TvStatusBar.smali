.class public Lcom/android/systemui/statusbar/tv/TvStatusBar;
.super Lcom/android/systemui/statusbar/BaseStatusBar;
.source "TvStatusBar.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;-><init>()V

    return-void
.end method


# virtual methods
.method public addIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 0
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "viewIndex"    # I
    .param p4, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .prologue
    .line 39
    return-void
.end method

.method public addNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 0
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;
    .param p3, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 53
    return-void
.end method

.method public animateCollapsePanels(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 73
    return-void
.end method

.method public animateExpandNotificationsPanel()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public animateExpandSettingsPanel()V
    .locals 0

    .prologue
    .line 166
    return-void
.end method

.method public appTransitionCancelled()V
    .locals 0

    .prologue
    .line 194
    return-void
.end method

.method public appTransitionPending()V
    .locals 0

    .prologue
    .line 190
    return-void
.end method

.method public appTransitionStarting(JJ)V
    .locals 0
    .param p1, "startTime"    # J
    .param p3, "duration"    # J

    .prologue
    .line 198
    return-void
.end method

.method public buzzBeepBlinked()V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method protected createAndAddWindows()V
    .locals 0

    .prologue
    .line 170
    return-void
.end method

.method public disable(IIZ)V
    .locals 0
    .param p1, "state1"    # I
    .param p2, "state2"    # I
    .param p3, "animate"    # Z

    .prologue
    .line 65
    return-void
.end method

.method public enableSignals(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 220
    return-void
.end method

.method protected getMaxKeyguardNotifications()I
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method protected getSearchLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .param p1, "layoutParams"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 111
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStatusBarView()Landroid/view/View;
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    return-object v0
.end method

.method protected haltTicker()V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method protected isSnoozedPackage(Landroid/service/notification/StatusBarNotification;)Z
    .locals 1
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 201
    const/4 v0, 0x0

    return v0
.end method

.method public notificationLightOff()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public notificationLightPulse(III)V
    .locals 0
    .param p1, "argb"    # I
    .param p2, "onMillis"    # I
    .param p3, "offMillis"    # I

    .prologue
    .line 106
    return-void
.end method

.method public notifyRecentPanelVisiblity(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 214
    return-void
.end method

.method public onActivated(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .locals 0
    .param p1, "view"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .prologue
    .line 178
    return-void
.end method

.method public onActivationReset(Lcom/android/systemui/statusbar/ActivatableNotificationView;Z)V
    .locals 0
    .param p1, "view"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;
    .param p2, "timeOut"    # Z

    .prologue
    .line 182
    return-void
.end method

.method protected refreshLayout(I)V
    .locals 0
    .param p1, "layoutDirection"    # I

    .prologue
    .line 174
    return-void
.end method

.method public removeIcon(Ljava/lang/String;II)V
    .locals 0
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "viewIndex"    # I

    .prologue
    .line 48
    return-void
.end method

.method public removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 61
    return-void
.end method

.method public resetHeadsUpDecayTimer()V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method public scheduleHeadsUpClose()V
    .locals 0

    .prologue
    .line 140
    return-void
.end method

.method public scheduleHeadsUpEscalation()V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method public scheduleHeadsUpOpen()V
    .locals 0

    .prologue
    .line 132
    return-void
.end method

.method protected setAreThereNotifications()V
    .locals 0

    .prologue
    .line 144
    return-void
.end method

.method public setCallBackground(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 206
    return-void
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;IIZ)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "vis"    # I
    .param p3, "backDisposition"    # I
    .param p4, "showImeSwitcher"    # Z

    .prologue
    .line 86
    return-void
.end method

.method public setMultiWindowBg(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 210
    return-void
.end method

.method public setOtherBar(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 0
    .param p1, "bar"    # Lcom/android/systemui/statusbar/BaseStatusBar;

    .prologue
    .line 225
    return-void
.end method

.method public setSystemUiVisibility(II)V
    .locals 0
    .param p1, "vis"    # I
    .param p2, "mask"    # I

    .prologue
    .line 77
    return-void
.end method

.method public setWindowState(II)V
    .locals 0
    .param p1, "window"    # I
    .param p2, "state"    # I

    .prologue
    .line 94
    return-void
.end method

.method public shouldDisableNavbarGestures()Z
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x1

    return v0
.end method

.method public showScreenPinningRequest()V
    .locals 0

    .prologue
    .line 186
    return-void
.end method

.method protected tick(Landroid/service/notification/StatusBarNotification;Z)V
    .locals 0
    .param p1, "n"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "firstTime"    # Z

    .prologue
    .line 120
    return-void
.end method

.method public toggleRecentApps()V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method public topAppWindowChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 81
    return-void
.end method

.method protected updateExpandedViewPos(I)V
    .locals 0
    .param p1, "expandedPosition"    # I

    .prologue
    .line 124
    return-void
.end method

.method public updateIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;Lcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 0
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "viewIndex"    # I
    .param p4, "old"    # Lcom/android/internal/statusbar/StatusBarIcon;
    .param p5, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .prologue
    .line 44
    return-void
.end method

.method protected updateNotificationRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0
    .param p1, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 57
    return-void
.end method

.method protected updateNotifications()V
    .locals 0

    .prologue
    .line 148
    return-void
.end method
