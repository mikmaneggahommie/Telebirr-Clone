.class public Lcom/android/systemui/recents/Constants$Features;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Features"
.end annotation


# static fields
.field public static final DEVICE_TYPE_TABLET:Z

.field public static final EnableCloseAllAnimation:Z

.field public static final EnableCloseAllLayout:Z

.field public static final EnableCloseAllScroll:Z

.field public static final EnableCustomizedLayout:Z = false

.field public static final EnableDismissButtonAnimation:Z = false

.field public static final EnableEnterAnimFromApp:Z

.field public static final EnableExitAnimToApp:Z

.field public static final EnableGatheredAnimToHome:Z

.field public static final EnableGoogleButtonLayout:Z = false

.field public static final EnableRecentsButtonsLayout:Z

.field public static final EnableSearchLayout:Z = false

.field public static final EnableSecondViewExpanded:Z

.field public static final EnableShortcutLayout:Z

.field public static final EnableSnapAction:Z

.field public static final EnableSplitRecentsView:Z = false

.field public static final EnableSpreadAnimFromHome:Z

.field public static final EnableViewPagerAboveAll:Z

.field private static final RecentsAppUIVersion:I

.field private static final SCafeName:Ljava/lang/String;

.field private static final SCafeVersion:Ljava/lang/String;

.field public static final SUPPORT_MOBILE_KEYBOARD:Z = false

.field public static final SUPPORT_SCOVER:Z = true

.field public static final UpperBouncePosition:Z

.field public static final UseRecentsSeparatedProcess:Z

.field private static final VERSION_CURRENT:I = 0x3

.field private static final VERSION_UPGRADE_KITKAT:I = 0x1

.field private static final VERSION_UPGRADE_LOLLYPOP:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 88
    const-string v0, "ro.build.scafe"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/recents/Constants$Features;->SCafeName:Ljava/lang/String;

    .line 89
    const-string v0, "ro.build.scafe.version"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/recents/Constants$Features;->SCafeVersion:Ljava/lang/String;

    .line 96
    sget-object v0, Lcom/android/systemui/recents/Constants$Features;->SCafeName:Ljava/lang/String;

    const-string v3, "mocha"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/systemui/recents/Constants$Features;->SCafeName:Ljava/lang/String;

    const-string v3, "americano"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    :cond_0
    sput v1, Lcom/android/systemui/recents/Constants$Features;->RecentsAppUIVersion:I

    .line 106
    :goto_0
    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/android/systemui/recents/Constants$Features;->DEVICE_TYPE_TABLET:Z

    .line 116
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/recents/Constants$Features;->UseRecentsSeparatedProcess:Z

    .line 159
    sget v0, Lcom/android/systemui/recents/Constants$Features;->RecentsAppUIVersion:I

    if-lt v0, v5, :cond_5

    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/android/systemui/recents/Constants$Features;->EnableViewPagerAboveAll:Z

    .line 162
    sget v0, Lcom/android/systemui/recents/Constants$Features;->RecentsAppUIVersion:I

    if-lt v0, v1, :cond_7

    .line 163
    sput-boolean v1, Lcom/android/systemui/recents/Constants$Features;->EnableRecentsButtonsLayout:Z

    .line 164
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Framework_ShortCutListInRecentApp"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    move v0, v1

    :goto_3
    sput-boolean v0, Lcom/android/systemui/recents/Constants$Features;->EnableShortcutLayout:Z

    .line 165
    sput-boolean v1, Lcom/android/systemui/recents/Constants$Features;->UpperBouncePosition:Z

    .line 171
    :goto_4
    sget v0, Lcom/android/systemui/recents/Constants$Features;->RecentsAppUIVersion:I

    if-lt v0, v4, :cond_b

    .line 172
    sget-boolean v0, Lcom/android/systemui/recents/Constants$Features;->EnableRecentsButtonsLayout:Z

    if-eqz v0, :cond_8

    move v0, v1

    :goto_5
    sput-boolean v0, Lcom/android/systemui/recents/Constants$Features;->EnableCloseAllLayout:Z

    .line 173
    sget-boolean v0, Lcom/android/systemui/recents/Constants$Features;->EnableRecentsButtonsLayout:Z

    if-eqz v0, :cond_9

    move v0, v1

    :goto_6
    sput-boolean v0, Lcom/android/systemui/recents/Constants$Features;->EnableCloseAllAnimation:Z

    .line 174
    sput-boolean v1, Lcom/android/systemui/recents/Constants$Features;->EnableSecondViewExpanded:Z

    .line 175
    sput-boolean v1, Lcom/android/systemui/recents/Constants$Features;->EnableSnapAction:Z

    .line 176
    sput-boolean v1, Lcom/android/systemui/recents/Constants$Features;->EnableGatheredAnimToHome:Z

    sput-boolean v1, Lcom/android/systemui/recents/Constants$Features;->EnableSpreadAnimFromHome:Z

    .line 177
    sput-boolean v1, Lcom/android/systemui/recents/Constants$Features;->EnableExitAnimToApp:Z

    sput-boolean v1, Lcom/android/systemui/recents/Constants$Features;->EnableEnterAnimFromApp:Z

    .line 178
    sget-boolean v0, Lcom/android/systemui/recents/Constants$Features;->EnableCloseAllLayout:Z

    if-eqz v0, :cond_a

    :goto_7
    sput-boolean v1, Lcom/android/systemui/recents/Constants$Features;->EnableCloseAllScroll:Z

    .line 185
    :goto_8
    return-void

    .line 98
    :cond_1
    sget-object v0, Lcom/android/systemui/recents/Constants$Features;->SCafeName:Ljava/lang/String;

    const-string v3, "latte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/systemui/recents/Constants$Features;->SCafeName:Ljava/lang/String;

    const-string v3, "capuccino"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 99
    :cond_2
    sput v4, Lcom/android/systemui/recents/Constants$Features;->RecentsAppUIVersion:I

    goto :goto_0

    .line 101
    :cond_3
    sput v5, Lcom/android/systemui/recents/Constants$Features;->RecentsAppUIVersion:I

    goto :goto_0

    :cond_4
    move v0, v2

    .line 106
    goto :goto_1

    :cond_5
    move v0, v2

    .line 159
    goto :goto_2

    :cond_6
    move v0, v2

    .line 164
    goto :goto_3

    .line 167
    :cond_7
    sput-boolean v2, Lcom/android/systemui/recents/Constants$Features;->EnableShortcutLayout:Z

    sput-boolean v2, Lcom/android/systemui/recents/Constants$Features;->EnableRecentsButtonsLayout:Z

    .line 168
    sput-boolean v2, Lcom/android/systemui/recents/Constants$Features;->UpperBouncePosition:Z

    goto :goto_4

    :cond_8
    move v0, v2

    .line 172
    goto :goto_5

    :cond_9
    move v0, v2

    .line 173
    goto :goto_6

    :cond_a
    move v1, v2

    .line 178
    goto :goto_7

    .line 180
    :cond_b
    sput-boolean v2, Lcom/android/systemui/recents/Constants$Features;->EnableCloseAllAnimation:Z

    sput-boolean v2, Lcom/android/systemui/recents/Constants$Features;->EnableCloseAllLayout:Z

    .line 181
    sput-boolean v2, Lcom/android/systemui/recents/Constants$Features;->EnableCloseAllScroll:Z

    sput-boolean v2, Lcom/android/systemui/recents/Constants$Features;->EnableSnapAction:Z

    sput-boolean v2, Lcom/android/systemui/recents/Constants$Features;->EnableSecondViewExpanded:Z

    .line 182
    sput-boolean v2, Lcom/android/systemui/recents/Constants$Features;->EnableGatheredAnimToHome:Z

    sput-boolean v2, Lcom/android/systemui/recents/Constants$Features;->EnableSpreadAnimFromHome:Z

    .line 183
    sput-boolean v2, Lcom/android/systemui/recents/Constants$Features;->EnableExitAnimToApp:Z

    sput-boolean v2, Lcom/android/systemui/recents/Constants$Features;->EnableEnterAnimFromApp:Z

    goto :goto_8
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
