.class public final enum Lcom/android/systemui/statusbar/Feature$IndianOperators;
.super Ljava/lang/Enum;
.source "Feature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/Feature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IndianOperators"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/systemui/statusbar/Feature$IndianOperators;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/statusbar/Feature$IndianOperators;

.field public static final enum AIRTEL:Lcom/android/systemui/statusbar/Feature$IndianOperators;

.field public static final enum OTHERS:Lcom/android/systemui/statusbar/Feature$IndianOperators;

.field public static final enum RELIANCE:Lcom/android/systemui/statusbar/Feature$IndianOperators;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 646
    new-instance v0, Lcom/android/systemui/statusbar/Feature$IndianOperators;

    const-string v1, "AIRTEL"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/Feature$IndianOperators;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/Feature$IndianOperators;->AIRTEL:Lcom/android/systemui/statusbar/Feature$IndianOperators;

    .line 647
    new-instance v0, Lcom/android/systemui/statusbar/Feature$IndianOperators;

    const-string v1, "RELIANCE"

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/statusbar/Feature$IndianOperators;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/Feature$IndianOperators;->RELIANCE:Lcom/android/systemui/statusbar/Feature$IndianOperators;

    .line 648
    new-instance v0, Lcom/android/systemui/statusbar/Feature$IndianOperators;

    const-string v1, "OTHERS"

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/statusbar/Feature$IndianOperators;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/Feature$IndianOperators;->OTHERS:Lcom/android/systemui/statusbar/Feature$IndianOperators;

    .line 645
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/systemui/statusbar/Feature$IndianOperators;

    sget-object v1, Lcom/android/systemui/statusbar/Feature$IndianOperators;->AIRTEL:Lcom/android/systemui/statusbar/Feature$IndianOperators;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/Feature$IndianOperators;->RELIANCE:Lcom/android/systemui/statusbar/Feature$IndianOperators;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/statusbar/Feature$IndianOperators;->OTHERS:Lcom/android/systemui/statusbar/Feature$IndianOperators;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/Feature$IndianOperators;->$VALUES:[Lcom/android/systemui/statusbar/Feature$IndianOperators;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 645
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getIndianOperator(I)Lcom/android/systemui/statusbar/Feature$IndianOperators;
    .locals 3
    .param p0, "phoneId"    # I

    .prologue
    .line 652
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->SUPPORTS_4G_INDIA:Z

    if-nez v1, :cond_0

    .line 653
    sget-object v1, Lcom/android/systemui/statusbar/Feature$IndianOperators;->OTHERS:Lcom/android/systemui/statusbar/Feature$IndianOperators;

    .line 668
    :goto_0
    return-object v1

    .line 654
    :cond_0
    const-string v0, ""

    .line 655
    .local v0, "mOperatorName":Ljava/lang/String;
    invoke-static {p0}, Lcom/android/systemui/statusbar/Feature;->access$000(I)Ljava/lang/String;

    move-result-object v0

    .line 657
    if-eqz v0, :cond_2

    .line 658
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 659
    const-string v1, "airtel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 660
    const-string v1, "SystemUI:Feature"

    const-string v2, "returning airtel"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    sget-object v1, Lcom/android/systemui/statusbar/Feature$IndianOperators;->AIRTEL:Lcom/android/systemui/statusbar/Feature$IndianOperators;

    goto :goto_0

    .line 663
    :cond_1
    const-string v1, "jio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 664
    const-string v1, "SystemUI:Feature"

    const-string v2, "returning reliance"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    sget-object v1, Lcom/android/systemui/statusbar/Feature$IndianOperators;->RELIANCE:Lcom/android/systemui/statusbar/Feature$IndianOperators;

    goto :goto_0

    .line 668
    :cond_2
    sget-object v1, Lcom/android/systemui/statusbar/Feature$IndianOperators;->OTHERS:Lcom/android/systemui/statusbar/Feature$IndianOperators;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/Feature$IndianOperators;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 645
    const-class v0, Lcom/android/systemui/statusbar/Feature$IndianOperators;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/Feature$IndianOperators;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui/statusbar/Feature$IndianOperators;
    .locals 1

    .prologue
    .line 645
    sget-object v0, Lcom/android/systemui/statusbar/Feature$IndianOperators;->$VALUES:[Lcom/android/systemui/statusbar/Feature$IndianOperators;

    invoke-virtual {v0}, [Lcom/android/systemui/statusbar/Feature$IndianOperators;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/statusbar/Feature$IndianOperators;

    return-object v0
.end method
