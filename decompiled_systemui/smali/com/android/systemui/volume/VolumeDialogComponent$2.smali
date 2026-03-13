.class Lcom/android/systemui/volume/VolumeDialogComponent$2;
.super Ljava/lang/Object;
.source "VolumeDialogComponent.java"

# interfaces
.implements Lcom/android/systemui/volume/SecVolumeDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeDialogComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogComponent;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeDialogComponent;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogComponent$2;->this$0:Lcom/android/systemui/volume/VolumeDialogComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSettingsClicked()V
    .locals 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent$2;->this$0:Lcom/android/systemui/volume/VolumeDialogComponent;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.NOTIFICATION_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialogComponent;->access$100(Lcom/android/systemui/volume/VolumeDialogComponent;Landroid/content/Intent;)V

    .line 134
    return-void
.end method

.method public onZenPrioritySettingsClicked()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent$2;->this$0:Lcom/android/systemui/volume/VolumeDialogComponent;

    sget-object v1, Lcom/android/systemui/volume/ZenModePanel;->ZEN_PRIORITY_SETTINGS:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialogComponent;->access$100(Lcom/android/systemui/volume/VolumeDialogComponent;Landroid/content/Intent;)V

    .line 144
    return-void
.end method

.method public onZenSettingsClicked()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent$2;->this$0:Lcom/android/systemui/volume/VolumeDialogComponent;

    sget-object v1, Lcom/android/systemui/volume/ZenModePanel;->ZEN_SETTINGS:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialogComponent;->access$100(Lcom/android/systemui/volume/VolumeDialogComponent;Landroid/content/Intent;)V

    .line 139
    return-void
.end method
