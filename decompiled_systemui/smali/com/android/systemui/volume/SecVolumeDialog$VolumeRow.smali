.class Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
.super Ljava/lang/Object;
.source "SecVolumeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/SecVolumeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VolumeRow"
.end annotation


# instance fields
.field private anim:Landroid/animation/ObjectAnimator;

.field private animTargetProgress:I

.field private cachedExpandButtonRes:I

.field private cachedIconRes:I

.field private cachedShowHeaders:Z

.field private cachedSliderBackgroundTintList:Landroid/content/res/ColorStateList;

.field private cachedSliderThumbTint:Landroid/content/res/ColorStateList;

.field private cachedSliderTint:Landroid/content/res/ColorStateList;

.field private header:Landroid/widget/TextView;

.field private icon:Landroid/widget/ImageButton;

.field private iconMuteRes:I

.field private iconRes:I

.field private iconState:I

.field private important:Z

.field private lastAudibleLevel:I

.field private requestedLevel:I

.field private settingsButton:Landroid/widget/ImageButton;

.field private slider:Landroid/widget/SeekBar;

.field private space:Landroid/view/View;

.field private ss:Lcom/android/systemui/volume/VolumeDialogController$StreamState;

.field private stream:I

.field private tracking:Z

.field private userAttempt:J

.field private view:Landroid/view/View;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1877
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1888
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->requestedLevel:I

    .line 1899
    iput-boolean v1, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->cachedShowHeaders:Z

    .line 1903
    iput v1, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->lastAudibleLevel:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/SecVolumeDialog$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog$1;

    .prologue
    .line 1877
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;-><init>()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .prologue
    .line 1877
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->space:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 1877
    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->space:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .prologue
    .line 1877
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 1877
    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->view:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .prologue
    .line 1877
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->settingsButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .param p1, "x1"    # Landroid/widget/ImageButton;

    .prologue
    .line 1877
    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->settingsButton:Landroid/widget/ImageButton;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .prologue
    .line 1877
    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->stream:I

    return v0
.end method

.method static synthetic access$1902(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .param p1, "x1"    # I

    .prologue
    .line 1877
    iput p1, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->stream:I

    return p1
.end method

.method static synthetic access$2200(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .prologue
    .line 1877
    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->iconRes:I

    return v0
.end method

.method static synthetic access$2202(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .param p1, "x1"    # I

    .prologue
    .line 1877
    iput p1, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->iconRes:I

    return p1
.end method

.method static synthetic access$2300(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .prologue
    .line 1877
    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->iconMuteRes:I

    return v0
.end method

.method static synthetic access$2302(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .param p1, "x1"    # I

    .prologue
    .line 1877
    iput p1, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->iconMuteRes:I

    return p1
.end method

.method static synthetic access$2400(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .prologue
    .line 1877
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->important:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .param p1, "x1"    # Z

    .prologue
    .line 1877
    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->important:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .prologue
    .line 1877
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->header:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 1877
    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->header:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .prologue
    .line 1877
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/widget/SeekBar;)Landroid/widget/SeekBar;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .param p1, "x1"    # Landroid/widget/SeekBar;

    .prologue
    .line 1877
    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .prologue
    .line 1877
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->icon:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .param p1, "x1"    # Landroid/widget/ImageButton;

    .prologue
    .line 1877
    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->icon:Landroid/widget/ImageButton;

    return-object p1
.end method

.method static synthetic access$3000(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .prologue
    .line 1877
    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->iconState:I

    return v0
.end method

.method static synthetic access$3002(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .param p1, "x1"    # I

    .prologue
    .line 1877
    iput p1, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->iconState:I

    return p1
.end method

.method static synthetic access$3400(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .prologue
    .line 1877
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->ss:Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Lcom/android/systemui/volume/VolumeDialogController$StreamState;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .param p1, "x1"    # Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    .prologue
    .line 1877
    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->ss:Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .prologue
    .line 1877
    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->lastAudibleLevel:I

    return v0
.end method

.method static synthetic access$3502(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .param p1, "x1"    # I

    .prologue
    .line 1877
    iput p1, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->lastAudibleLevel:I

    return p1
.end method

.method static synthetic access$3600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .prologue
    .line 1877
    iget-wide v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->userAttempt:J

    return-wide v0
.end method

.method static synthetic access$3602(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .param p1, "x1"    # J

    .prologue
    .line 1877
    iput-wide p1, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->userAttempt:J

    return-wide p1
.end method

.method static synthetic access$3900(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .prologue
    .line 1877
    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->cachedExpandButtonRes:I

    return v0
.end method

.method static synthetic access$3902(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .param p1, "x1"    # I

    .prologue
    .line 1877
    iput p1, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->cachedExpandButtonRes:I

    return p1
.end method

.method static synthetic access$4000(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .prologue
    .line 1877
    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->requestedLevel:I

    return v0
.end method

.method static synthetic access$4002(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .param p1, "x1"    # I

    .prologue
    .line 1877
    iput p1, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->requestedLevel:I

    return p1
.end method

.method static synthetic access$4100(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .prologue
    .line 1877
    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->cachedIconRes:I

    return v0
.end method

.method static synthetic access$4102(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .param p1, "x1"    # I

    .prologue
    .line 1877
    iput p1, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->cachedIconRes:I

    return p1
.end method

.method static synthetic access$4200(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .prologue
    .line 1877
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->cachedShowHeaders:Z

    return v0
.end method

.method static synthetic access$4202(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .param p1, "x1"    # Z

    .prologue
    .line 1877
    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->cachedShowHeaders:Z

    return p1
.end method

.method static synthetic access$4300(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .prologue
    .line 1877
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->tracking:Z

    return v0
.end method

.method static synthetic access$4302(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .param p1, "x1"    # Z

    .prologue
    .line 1877
    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->tracking:Z

    return p1
.end method

.method static synthetic access$6700(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .prologue
    .line 1877
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->cachedSliderThumbTint:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic access$6702(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .param p1, "x1"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 1877
    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->cachedSliderThumbTint:Landroid/content/res/ColorStateList;

    return-object p1
.end method

.method static synthetic access$6800(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .prologue
    .line 1877
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->cachedSliderTint:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic access$6802(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .param p1, "x1"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 1877
    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->cachedSliderTint:Landroid/content/res/ColorStateList;

    return-object p1
.end method

.method static synthetic access$6900(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .prologue
    .line 1877
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->cachedSliderBackgroundTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic access$6902(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .param p1, "x1"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 1877
    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->cachedSliderBackgroundTintList:Landroid/content/res/ColorStateList;

    return-object p1
.end method
