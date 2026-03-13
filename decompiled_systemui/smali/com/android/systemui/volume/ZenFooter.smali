.class public Lcom/android/systemui/volume/ZenFooter;
.super Landroid/widget/LinearLayout;
.source "ZenFooter.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mConfig:Landroid/service/notification/ZenModeConfig;

.field private final mContext:Landroid/content/Context;

.field private mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

.field private mEndNowButton:Landroid/widget/TextView;

.field private mIcon:Landroid/widget/ImageView;

.field private final mSpTexts:Lcom/android/systemui/volume/SpTexts;

.field private mSummaryLine1:Landroid/widget/TextView;

.field private mSummaryLine2:Landroid/widget/TextView;

.field private mZen:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/android/systemui/volume/ZenFooter;

    invoke-static {v0}, Lcom/android/systemui/volume/Util;->logTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/ZenFooter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/volume/ZenFooter;->mZen:I

    .line 53
    iput-object p1, p0, Lcom/android/systemui/volume/ZenFooter;->mContext:Landroid/content/Context;

    .line 54
    new-instance v1, Lcom/android/systemui/volume/SpTexts;

    iget-object v2, p0, Lcom/android/systemui/volume/ZenFooter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/volume/SpTexts;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/volume/ZenFooter;->mSpTexts:Lcom/android/systemui/volume/SpTexts;

    .line 55
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    .line 56
    .local v0, "layoutTransition":Landroid/animation/LayoutTransition;
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/animation/LayoutTransition;->setDuration(J)V

    .line 57
    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenFooter;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/volume/ZenFooter;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenFooter;
    .param p1, "x1"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenFooter;->setZen(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/volume/ZenFooter;Landroid/service/notification/ZenModeConfig;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenFooter;
    .param p1, "x1"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenFooter;->setConfig(Landroid/service/notification/ZenModeConfig;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/android/systemui/volume/ZenFooter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private isZenAlarms()Z
    .locals 2

    .prologue
    .line 116
    iget v0, p0, Lcom/android/systemui/volume/ZenFooter;->mZen:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isZenNone()Z
    .locals 2

    .prologue
    .line 120
    iget v0, p0, Lcom/android/systemui/volume/ZenFooter;->mZen:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isZenPriority()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 112
    iget v1, p0, Lcom/android/systemui/volume/ZenFooter;->mZen:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setConfig(Landroid/service/notification/ZenModeConfig;)V
    .locals 1
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    :goto_0
    return-void

    .line 103
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/volume/ZenFooter;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 104
    invoke-virtual {p0}, Lcom/android/systemui/volume/ZenFooter;->update()V

    goto :goto_0
.end method

.method private setZen(I)V
    .locals 1
    .param p1, "zen"    # I

    .prologue
    .line 96
    iget v0, p0, Lcom/android/systemui/volume/ZenFooter;->mZen:I

    if-ne v0, p1, :cond_0

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    iput p1, p0, Lcom/android/systemui/volume/ZenFooter;->mZen:I

    .line 98
    invoke-virtual {p0}, Lcom/android/systemui/volume/ZenFooter;->update()V

    goto :goto_0
.end method


# virtual methods
.method public init(Lcom/android/systemui/statusbar/policy/ZenModeController;)V
    .locals 2
    .param p1, "controller"    # Lcom/android/systemui/statusbar/policy/ZenModeController;

    .prologue
    .line 73
    new-instance v0, Lcom/android/systemui/volume/ZenFooter$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/ZenFooter$1;-><init>(Lcom/android/systemui/volume/ZenFooter;)V

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/ZenModeController;->addCallback(Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V

    .line 83
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mEndNowButton:Landroid/widget/TextView;

    new-instance v1, Lcom/android/systemui/volume/ZenFooter$2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/volume/ZenFooter$2;-><init>(Lcom/android/systemui/volume/ZenFooter;Lcom/android/systemui/statusbar/policy/ZenModeController;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getZen()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/ZenFooter;->mZen:I

    .line 90
    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 91
    iput-object p1, p0, Lcom/android/systemui/volume/ZenFooter;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 92
    invoke-virtual {p0}, Lcom/android/systemui/volume/ZenFooter;->update()V

    .line 93
    return-void
.end method

.method public isZen()Z
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenFooter;->isZenPriority()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/volume/ZenFooter;->isZenAlarms()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/volume/ZenFooter;->isZenNone()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mSpTexts:Lcom/android/systemui/volume/SpTexts;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SpTexts;->update()V

    .line 143
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 62
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 63
    const v0, 0x7f0f0402

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mIcon:Landroid/widget/ImageView;

    .line 64
    const v0, 0x7f0f0403

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mSummaryLine1:Landroid/widget/TextView;

    .line 65
    const v0, 0x7f0f0404

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mSummaryLine2:Landroid/widget/TextView;

    .line 66
    const v0, 0x7f0f0405

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mEndNowButton:Landroid/widget/TextView;

    .line 67
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mSpTexts:Lcom/android/systemui/volume/SpTexts;

    iget-object v1, p0, Lcom/android/systemui/volume/ZenFooter;->mSummaryLine1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SpTexts;->add(Landroid/widget/TextView;)I

    .line 68
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mSpTexts:Lcom/android/systemui/volume/SpTexts;

    iget-object v1, p0, Lcom/android/systemui/volume/ZenFooter;->mSummaryLine2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SpTexts;->add(Landroid/widget/TextView;)I

    .line 69
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mSpTexts:Lcom/android/systemui/volume/SpTexts;

    iget-object v1, p0, Lcom/android/systemui/volume/ZenFooter;->mEndNowButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SpTexts;->add(Landroid/widget/TextView;)I

    .line 70
    return-void
.end method

.method public update()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 124
    iget-object v5, p0, Lcom/android/systemui/volume/ZenFooter;->mIcon:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/systemui/volume/ZenFooter;->isZenNone()Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f0200e7

    :goto_0
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 125
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenFooter;->isZenPriority()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/volume/ZenFooter;->mContext:Landroid/content/Context;

    const v5, 0x7f0b03d2

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, "line1":Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/volume/ZenFooter;->mSummaryLine1:Landroid/widget/TextView;

    invoke-static {v3, v1}, Lcom/android/systemui/volume/Util;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    .line 132
    iget-object v3, p0, Lcom/android/systemui/volume/ZenFooter;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/volume/ZenFooter;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v3, v3, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/volume/ZenFooter;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v3, v3, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v3, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    if-nez v3, :cond_4

    move v0, v4

    .line 134
    .local v0, "isForever":Z
    :goto_2
    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/android/systemui/volume/ZenFooter;->mContext:Landroid/content/Context;

    const v4, 0x104058d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, "line2":Ljava/lang/String;
    :goto_3
    iget-object v3, p0, Lcom/android/systemui/volume/ZenFooter;->mSummaryLine2:Landroid/widget/TextView;

    invoke-static {v3, v2}, Lcom/android/systemui/volume/Util;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    .line 139
    return-void

    .line 124
    .end local v0    # "isForever":Z
    .end local v1    # "line1":Ljava/lang/String;
    .end local v2    # "line2":Ljava/lang/String;
    :cond_0
    const v3, 0x7f0200e4

    goto :goto_0

    .line 125
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenFooter;->isZenAlarms()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/volume/ZenFooter;->mContext:Landroid/content/Context;

    const v5, 0x7f0b03d4

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenFooter;->isZenNone()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/volume/ZenFooter;->mContext:Landroid/content/Context;

    const v5, 0x7f0b03d1

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 132
    .restart local v1    # "line1":Ljava/lang/String;
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 134
    .restart local v0    # "isForever":Z
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/volume/ZenFooter;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/volume/ZenFooter;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v6, p0, Lcom/android/systemui/volume/ZenFooter;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v6}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getCurrentUser()I

    move-result v6

    invoke-static {v3, v5, v6, v4}, Landroid/service/notification/ZenModeConfig;->getConditionSummary(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;IZ)Ljava/lang/String;

    move-result-object v2

    goto :goto_3
.end method
