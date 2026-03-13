.class public Lcom/android/systemui/statusbar/policy/DateView;
.super Landroid/widget/TextView;
.source "DateView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DateView"


# instance fields
.field private final mCurrentTime:Ljava/util/Date;

.field private mDateFormat:Ljava/text/SimpleDateFormat;

.field private mDatePattern:Ljava/lang/String;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLastText:Ljava/lang/String;

.field private final mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mCurrentTime:Ljava/util/Date;

    .line 48
    new-instance v1, Lcom/android/systemui/statusbar/policy/DateView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/DateView$1;-><init>(Lcom/android/systemui/statusbar/policy/DateView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 95
    new-instance v1, Lcom/android/systemui/statusbar/policy/DateView$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/DateView$2;-><init>(Lcom/android/systemui/statusbar/policy/DateView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/R$styleable;->DateView:[I

    invoke-virtual {v1, p2, v2, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 66
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDatePattern:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 70
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDatePattern:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b00b8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDatePattern:Ljava/lang/String;

    .line 73
    :cond_0
    return-void

    .line 68
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/DateView;Ljava/text/SimpleDateFormat;)Ljava/text/SimpleDateFormat;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/DateView;
    .param p1, "x1"    # Ljava/text/SimpleDateFormat;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDateFormat:Ljava/text/SimpleDateFormat;

    return-object p1
.end method

.method private getDateFormat()Ljava/lang/String;
    .locals 15

    .prologue
    .line 124
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 125
    .local v0, "dummyCal":Ljava/util/Calendar;
    const/16 v1, 0xd05

    const/16 v2, 0xa

    const/16 v3, 0x16

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 127
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormatString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    .line 128
    .local v12, "regionalDateFormat":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormatString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    .line 129
    .local v13, "regionalDateFormat2":Ljava/lang/String;
    const-string v11, ""

    .line 130
    .local v11, "month":Ljava/lang/String;
    const-string v7, ""

    .line 131
    .local v7, "date":Ljava/lang/String;
    const/4 v8, 0x0

    .line 132
    .local v8, "dateFormatSwitch":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v9, v1, :cond_3

    .line 133
    invoke-virtual {v13, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_0

    invoke-virtual {v13, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_0

    invoke-virtual {v13, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_2

    .line 134
    :cond_0
    add-int/lit8 v8, v8, 0x1

    .line 132
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 138
    :cond_2
    packed-switch v8, :pswitch_data_0

    .line 147
    :goto_1
    const/4 v1, 0x2

    if-ne v8, v1, :cond_1

    .line 151
    :cond_3
    const-string v14, ""

    .line 152
    .local v14, "returnDateFormat":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    const/4 v10, 0x1

    .line 154
    .local v10, "isRTLlanguage":Z
    :goto_2
    invoke-virtual {v12, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v12, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 155
    if-eqz v10, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0281

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 161
    :goto_3
    const-string v1, "DateView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "regionalDateFormat = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isRTLlanguage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " returnDateFormat = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return-object v14

    .line 140
    .end local v10    # "isRTLlanguage":Z
    .end local v14    # "returnDateFormat":Ljava/lang/String;
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v13, v9}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 141
    goto :goto_1

    .line 143
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v13, v9}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 152
    .restart local v14    # "returnDateFormat":Ljava/lang/String;
    :cond_4
    const/4 v10, 0x0

    goto :goto_2

    .line 155
    .restart local v10    # "isRTLlanguage":Z
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0282

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_3

    .line 158
    :cond_6
    if-eqz v10, :cond_7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0282

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    :goto_4
    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0281

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_4

    .line 138
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setDateContentDescriptionPlusFullDate()V
    .locals 5

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/DateView;->getDateFormat()Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "dateFormat":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/DateView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0281

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, "dateFormatWDM":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 171
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/DateView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0059

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 175
    :goto_0
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v0, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 176
    .local v2, "dateText":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/DateView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 177
    return-void

    .line 173
    .end local v2    # "dateText":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/DateView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0058

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 77
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 78
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DateView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 79
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 80
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DateView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 84
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->updateClock()V

    .line 85
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 89
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 90
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DateView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 92
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 93
    return-void
.end method

.method protected updateClock()V
    .locals 6

    .prologue
    .line 105
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDateFormat:Ljava/text/SimpleDateFormat;

    if-nez v3, :cond_0

    .line 106
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 107
    .local v1, "l":Ljava/util/Locale;
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDatePattern:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "fmt":Ljava/lang/String;
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-direct {v3, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 111
    .end local v0    # "fmt":Ljava/lang/String;
    .end local v1    # "l":Ljava/util/Locale;
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/DateView;->mCurrentTime:Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Date;->setTime(J)V

    .line 113
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/DateView;->getDateFormat()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 114
    .local v2, "text":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/DateView;->mLastText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 115
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/DateView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/DateView;->mLastText:Ljava/lang/String;

    .line 119
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/DateView;->setDateContentDescriptionPlusFullDate()V

    .line 120
    return-void
.end method
