.class public interface abstract annotation Lcom/android/systemui/Prefs$Key;
.super Ljava/lang/Object;
.source "Prefs.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation build Landroid/annotation/StringDef;
    value = {
        "searchAppWidgetId",
        "debugModeEnabled",
        "HotspotTileLastUsed",
        "ColorInversionTileLastUsed",
        "DndTileVisible",
        "DndTileCombinedIcon",
        "DndConfirmedPriorityIntroduction",
        "DndConfirmedSilenceIntroduction",
        "DndCountdownMinuteIndex",
        "DndNoneSelected",
        "DndFavoriteZen"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/Prefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Key"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final COLOR_INVERSION_TILE_LAST_USED:Ljava/lang/String; = "ColorInversionTileLastUsed"

.field public static final DEBUG_MODE_ENABLED:Ljava/lang/String; = "debugModeEnabled"

.field public static final DND_CONFIRMED_PRIORITY_INTRODUCTION:Ljava/lang/String; = "DndConfirmedPriorityIntroduction"

.field public static final DND_CONFIRMED_SILENCE_INTRODUCTION:Ljava/lang/String; = "DndConfirmedSilenceIntroduction"

.field public static final DND_FAVORITE_BUCKET_INDEX:Ljava/lang/String; = "DndCountdownMinuteIndex"

.field public static final DND_FAVORITE_ZEN:Ljava/lang/String; = "DndFavoriteZen"

.field public static final DND_NONE_SELECTED:Ljava/lang/String; = "DndNoneSelected"

.field public static final DND_TILE_COMBINED_ICON:Ljava/lang/String; = "DndTileCombinedIcon"

.field public static final DND_TILE_VISIBLE:Ljava/lang/String; = "DndTileVisible"

.field public static final HOTSPOT_TILE_LAST_USED:Ljava/lang/String; = "HotspotTileLastUsed"

.field public static final SEARCH_APP_WIDGET_ID:Ljava/lang/String; = "searchAppWidgetId"

.field public static final SEARCH_APP_WIDGET_PACKAGE:Ljava/lang/String; = "searchAppWidgetPackage"
