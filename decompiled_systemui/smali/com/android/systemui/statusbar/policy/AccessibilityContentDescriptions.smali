.class public Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;
.super Ljava/lang/Object;
.source "AccessibilityContentDescriptions.java"


# static fields
.field static final DATA_CONNECTION_STRENGTH:[I

.field static final PHONE_5_LEVEL_SIGNAL_STRENGTH:[I

.field static final PHONE_6_LEVEL_SIGNAL_STRENGTH:[I

.field static final PHONE_SIGNAL_STRENGTH:[I

.field static final WIFI_CONNECTION_STRENGTH:[I

.field static final WIFI_NO_CONNECTION:I = 0x7f0b0052


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 13
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 21
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->DATA_CONNECTION_STRENGTH:[I

    .line 29
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    .line 40
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_5_LEVEL_SIGNAL_STRENGTH:[I

    .line 49
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_6_LEVEL_SIGNAL_STRENGTH:[I

    return-void

    .line 13
    nop

    :array_0
    .array-data 4
        0x7f0b02e8
        0x7f0b02e9
        0x7f0b02ea
        0x7f0b02eb
        0x7f0b02ee
    .end array-data

    .line 21
    :array_1
    .array-data 4
        0x7f0b02ef
        0x7f0b02f0
        0x7f0b02f1
        0x7f0b02f2
        0x7f0b02f3
    .end array-data

    .line 29
    :array_2
    .array-data 4
        0x7f0b0052
        0x7f0b0053
        0x7f0b0054
        0x7f0b0055
        0x7f0b0056
    .end array-data

    .line 40
    :array_3
    .array-data 4
        0x7f0b02e8
        0x7f0b02e9
        0x7f0b02ea
        0x7f0b02eb
        0x7f0b02ec
        0x7f0b02ee
    .end array-data

    .line 49
    :array_4
    .array-data 4
        0x7f0b02e8
        0x7f0b02e9
        0x7f0b02ea
        0x7f0b02eb
        0x7f0b02ec
        0x7f0b02ed
        0x7f0b02ee
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
