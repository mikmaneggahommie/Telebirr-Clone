.class Lcom/android/systemui/statusbar/policy/WifiIcons;
.super Ljava/lang/Object;
.source "WifiIcons.java"


# static fields
.field static final NWBOOSTER_WIFI_SIGNAL_STRENGTH:[[I

.field static final QS_WIFI_NO_NETWORK:I = 0x7f02017c

.field static final QS_WIFI_SIGNAL_STRENGTH:[[I

.field static final WIFI_LEVEL_COUNT:I

.field static final WIFI_NO_NETWORK:I = 0x7f02064c

.field static final WIFI_SIGNAL_STRENGTH:[[I

.field static final WIFI_SIGNAL_STRENGTH_HIDEINANDOUT:[[I

.field static final WIFI_SIGNAL_STRENGTH_KT:[[I

.field static final WIFI_SIGNAL_STRENGTH_LGT:[[I

.field static final WIFI_SIGNAL_STRENGTH_NOT_LOGIN_CAPTIVE:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x5

    .line 22
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    .line 35
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH:[[I

    .line 51
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    aget-object v0, v0, v3

    array-length v0, v0

    sput v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_LEVEL_COUNT:I

    .line 54
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->NWBOOSTER_WIFI_SIGNAL_STRENGTH:[[I

    .line 68
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_6

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_7

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_HIDEINANDOUT:[[I

    .line 81
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_8

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_9

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_LGT:[[I

    .line 96
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_a

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_b

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_KT:[[I

    .line 111
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_c

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_d

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_NOT_LOGIN_CAPTIVE:[[I

    return-void

    .line 22
    :array_0
    .array-data 4
        0x7f02063d
        0x7f020640
        0x7f020643
        0x7f020646
        0x7f020649
    .end array-data

    :array_1
    .array-data 4
        0x7f02063e
        0x7f020641
        0x7f020644
        0x7f020647
        0x7f02064a
    .end array-data

    .line 35
    :array_2
    .array-data 4
        0x7f020327
        0x7f020328
        0x7f020329
        0x7f02032a
        0x7f02032b
    .end array-data

    :array_3
    .array-data 4
        0x7f020327
        0x7f020328
        0x7f020329
        0x7f02032a
        0x7f02032b
    .end array-data

    .line 54
    :array_4
    .array-data 4
        0x7f020638
        0x7f020639
        0x7f02063a
        0x7f02063b
        0x7f02063c
    .end array-data

    :array_5
    .array-data 4
        0x7f020638
        0x7f020639
        0x7f02063a
        0x7f02063b
        0x7f02063c
    .end array-data

    .line 68
    :array_6
    .array-data 4
        0x7f02063f
        0x7f020642
        0x7f020645
        0x7f020648
        0x7f02064b
    .end array-data

    :array_7
    .array-data 4
        0x7f02063f
        0x7f020642
        0x7f020645
        0x7f020648
        0x7f02064b
    .end array-data

    .line 81
    :array_8
    .array-data 4
        0x7f020627
        0x7f020628
        0x7f020629
        0x7f02062a
        0x7f02062b
    .end array-data

    :array_9
    .array-data 4
        0x7f020627
        0x7f020628
        0x7f020629
        0x7f02062a
        0x7f02062b
    .end array-data

    .line 96
    :array_a
    .array-data 4
        0x7f02047d
        0x7f02047e
        0x7f02047f
        0x7f020480
        0x7f020481
    .end array-data

    :array_b
    .array-data 4
        0x7f02047d
        0x7f02047e
        0x7f02047f
        0x7f020480
        0x7f020481
    .end array-data

    .line 111
    :array_c
    .array-data 4
        0x7f020633
        0x7f020634
        0x7f020635
        0x7f020636
        0x7f020637
    .end array-data

    :array_d
    .array-data 4
        0x7f020633
        0x7f020634
        0x7f020635
        0x7f020636
        0x7f020637
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
