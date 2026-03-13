.class public Lcom/android/systemui/power/PowerNotificationWarnings$CocktailProvider;
.super Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailProvider;
.source "PowerNotificationWarnings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/power/PowerNotificationWarnings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CocktailProvider"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1047
    invoke-direct {p0}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1060
    invoke-super {p0, p1}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailProvider;->onDisabled(Landroid/content/Context;)V

    .line 1061
    return-void
.end method

.method public onDroped(Landroid/content/Context;Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;Landroid/view/DragEvent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cocktailManager"    # Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;
    .param p3, "dragEvent"    # Landroid/view/DragEvent;

    .prologue
    .line 1065
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailProvider;->onDroped(Landroid/content/Context;Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;Landroid/view/DragEvent;)V

    .line 1066
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1055
    invoke-super {p0, p1}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailProvider;->onEnabled(Landroid/content/Context;)V

    .line 1056
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;[I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cocktailManager"    # Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;
    .param p3, "cocktailIds"    # [I

    .prologue
    .line 1050
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailProvider;->onUpdate(Landroid/content/Context;Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;[I)V

    .line 1051
    return-void
.end method
