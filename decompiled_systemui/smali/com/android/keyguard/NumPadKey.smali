.class public Lcom/android/keyguard/NumPadKey;
.super Landroid/view/ViewGroup;
.source "NumPadKey.java"


# static fields
.field private static mDefaultFont:Z

.field private static mNumTypeface:Landroid/graphics/Typeface;

.field static sKlondike:[Ljava/lang/String;

.field private static sTfkt:Landroid/graphics/Typeface;


# instance fields
.field private mDigit:I

.field private mDigitImage:Landroid/widget/ImageView;

.field private mDigitText:Landroid/widget/TextView;

.field private mEnableHaptics:Z

.field private mHandler:Landroid/os/Handler;

.field private mKeyListener:Landroid/view/View$OnKeyListener;

.field private mKlondikeText:Landroid/widget/TextView;

.field private mListener:Landroid/view/View$OnClickListener;

.field private mPM:Landroid/os/PowerManager;

.field private mRipple:Landroid/graphics/drawable/RippleDrawable;

.field private mTextView:Lcom/android/keyguard/PasswordTextView;

.field private mTextViewResId:I

.field protected mUseBlackTextOnWhiteWallpaper:Z

.field private mWhiteWallpaperObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/keyguard/NumPadKey;->mDefaultFont:Z

    .line 63
    sput-object v1, Lcom/android/keyguard/NumPadKey;->mNumTypeface:Landroid/graphics/Typeface;

    .line 65
    sput-object v1, Lcom/android/keyguard/NumPadKey;->sTfkt:Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/NumPadKey;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/NumPadKey;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 104
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    .line 71
    iput-boolean v7, p0, Lcom/android/keyguard/NumPadKey;->mUseBlackTextOnWhiteWallpaper:Z

    .line 72
    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v5, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/android/keyguard/NumPadKey;->mHandler:Landroid/os/Handler;

    .line 74
    new-instance v5, Lcom/android/keyguard/NumPadKey$1;

    invoke-direct {v5, p0}, Lcom/android/keyguard/NumPadKey$1;-><init>(Lcom/android/keyguard/NumPadKey;)V

    iput-object v5, p0, Lcom/android/keyguard/NumPadKey;->mListener:Landroid/view/View$OnClickListener;

    .line 409
    new-instance v5, Lcom/android/keyguard/NumPadKey$3;

    invoke-direct {v5, p0}, Lcom/android/keyguard/NumPadKey$3;-><init>(Lcom/android/keyguard/NumPadKey;)V

    iput-object v5, p0, Lcom/android/keyguard/NumPadKey;->mKeyListener:Landroid/view/View$OnKeyListener;

    .line 105
    invoke-virtual {p0, v6}, Lcom/android/keyguard/NumPadKey;->setFocusable(Z)V

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "white_lockscreen_wallpaper"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_2

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/android/keyguard/NumPadKey;->mUseBlackTextOnWhiteWallpaper:Z

    .line 109
    sget-object v5, Lcom/android/keyguard/R$styleable;->NumPadKey:[I

    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 112
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    sget v5, Lcom/android/keyguard/R$styleable;->NumPadKey_digit:I

    iget v8, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    .line 113
    sget v5, Lcom/android/keyguard/R$styleable;->NumPadKey_textView:I

    const/4 v8, 0x0

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lcom/android/keyguard/NumPadKey;->mTextViewResId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 118
    iget-object v5, p0, Lcom/android/keyguard/NumPadKey;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v5}, Lcom/android/keyguard/NumPadKey;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    new-instance v5, Lcom/android/keyguard/LiftToActivateListener;

    invoke-direct {v5, p1}, Lcom/android/keyguard/LiftToActivateListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v5}, Lcom/android/keyguard/NumPadKey;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 120
    new-instance v5, Lcom/android/keyguard/ObscureSpeechDelegate;

    invoke-direct {v5, p1}, Lcom/android/keyguard/ObscureSpeechDelegate;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v5}, Lcom/android/keyguard/NumPadKey;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 122
    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v5, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/keyguard/NumPadKey;->mEnableHaptics:Z

    .line 124
    iget-object v5, p0, Lcom/android/keyguard/NumPadKey;->mContext:Landroid/content/Context;

    const-string v8, "power"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    iput-object v5, p0, Lcom/android/keyguard/NumPadKey;->mPM:Landroid/os/PowerManager;

    .line 125
    invoke-virtual {p0}, Lcom/android/keyguard/NumPadKey;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v8, "layout_inflater"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 127
    .local v1, "inflater":Landroid/view/LayoutInflater;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportElasticPlugin()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/android/keyguard/NumPadKey;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v8, Lcom/android/keyguard/R$bool;->theme_use_image_pinlock:I

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 133
    sget v5, Lcom/android/keyguard/R$layout;->keyguard_image_pad_key:I

    invoke-virtual {v1, v5, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 134
    sget v5, Lcom/android/keyguard/R$id;->digit_image:I

    invoke-virtual {p0, v5}, Lcom/android/keyguard/NumPadKey;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/keyguard/NumPadKey;->mDigitImage:Landroid/widget/ImageView;

    .line 136
    iget v5, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    packed-switch v5, :pswitch_data_0

    .line 170
    :goto_1
    iget v5, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/keyguard/NumPadKey;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 211
    :cond_0
    :goto_2
    iget-object v5, p0, Lcom/android/keyguard/NumPadKey;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/keyguard/R$drawable;->lock_ripple_drawable:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/RippleDrawable;

    iput-object v5, p0, Lcom/android/keyguard/NumPadKey;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    .line 212
    iget-object v5, p0, Lcom/android/keyguard/NumPadKey;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {p0, v5}, Lcom/android/keyguard/NumPadKey;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 214
    invoke-static {p1}, Lcom/android/keyguard/sec/KeyguardProperties;->isDualLCDFolderDevice(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 215
    iget-object v5, p0, Lcom/android/keyguard/NumPadKey;->mKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {p0, v5}, Lcom/android/keyguard/NumPadKey;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 217
    :cond_1
    return-void

    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_2
    move v5, v7

    .line 107
    goto/16 :goto_0

    .line 115
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    :catchall_0
    move-exception v5

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v5

    .line 138
    .restart local v1    # "inflater":Landroid/view/LayoutInflater;
    :pswitch_0
    iget-object v5, p0, Lcom/android/keyguard/NumPadKey;->mDigitImage:Landroid/widget/ImageView;

    sget v6, Lcom/android/keyguard/R$drawable;->pin_number_image_1:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 141
    :pswitch_1
    iget-object v5, p0, Lcom/android/keyguard/NumPadKey;->mDigitImage:Landroid/widget/ImageView;

    sget v6, Lcom/android/keyguard/R$drawable;->pin_number_image_2:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 144
    :pswitch_2
    iget-object v5, p0, Lcom/android/keyguard/NumPadKey;->mDigitImage:Landroid/widget/ImageView;

    sget v6, Lcom/android/keyguard/R$drawable;->pin_number_image_3:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 147
    :pswitch_3
    iget-object v5, p0, Lcom/android/keyguard/NumPadKey;->mDigitImage:Landroid/widget/ImageView;

    sget v6, Lcom/android/keyguard/R$drawable;->pin_number_image_4:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 150
    :pswitch_4
    iget-object v5, p0, Lcom/android/keyguard/NumPadKey;->mDigitImage:Landroid/widget/ImageView;

    sget v6, Lcom/android/keyguard/R$drawable;->pin_number_image_5:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 153
    :pswitch_5
    iget-object v5, p0, Lcom/android/keyguard/NumPadKey;->mDigitImage:Landroid/widget/ImageView;

    sget v6, Lcom/android/keyguard/R$drawable;->pin_number_image_6:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 156
    :pswitch_6
    iget-object v5, p0, Lcom/android/keyguard/NumPadKey;->mDigitImage:Landroid/widget/ImageView;

    sget v6, Lcom/android/keyguard/R$drawable;->pin_number_image_7:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 159
    :pswitch_7
    iget-object v5, p0, Lcom/android/keyguard/NumPadKey;->mDigitImage:Landroid/widget/ImageView;

    sget v6, Lcom/android/keyguard/R$drawable;->pin_number_image_8:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 162
    :pswitch_8
    iget-object v5, p0, Lcom/android/keyguard/NumPadKey;->mDigitImage:Landroid/widget/ImageView;

    sget v6, Lcom/android/keyguard/R$drawable;->pin_number_image_9:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 165
    :pswitch_9
    iget-object v5, p0, Lcom/android/keyguard/NumPadKey;->mDigitImage:Landroid/widget/ImageView;

    sget v6, Lcom/android/keyguard/R$drawable;->pin_number_image_0:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 172
    :cond_3
    sget v5, Lcom/android/keyguard/R$layout;->keyguard_num_pad_key:I

    invoke-virtual {v1, v5, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 173
    sget v5, Lcom/android/keyguard/R$id;->digit_text:I

    invoke-virtual {p0, v5}, Lcom/android/keyguard/NumPadKey;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    .line 174
    iget-object v5, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    iget v8, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v5, p0, Lcom/android/keyguard/NumPadKey;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNumericThemeFont()Ljava/lang/String;

    move-result-object v4

    .line 176
    .local v4, "numericThemeFont":Ljava/lang/String;
    if-eqz v4, :cond_9

    .line 177
    invoke-static {v4}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    sput-object v5, Lcom/android/keyguard/NumPadKey;->mNumTypeface:Landroid/graphics/Typeface;

    .line 178
    sput-boolean v7, Lcom/android/keyguard/NumPadKey;->mDefaultFont:Z

    .line 183
    :cond_4
    :goto_3
    sget-object v5, Lcom/android/keyguard/NumPadKey;->mNumTypeface:Landroid/graphics/Typeface;

    if-eqz v5, :cond_5

    .line 184
    iget-object v5, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    sget-object v6, Lcom/android/keyguard/NumPadKey;->mNumTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 185
    :cond_5
    iget-object v5, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/keyguard/NumPadKey;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 187
    sget-object v5, Lcom/android/keyguard/NumPadKey;->sTfkt:Landroid/graphics/Typeface;

    if-nez v5, :cond_6

    .line 188
    invoke-virtual {p0}, Lcom/android/keyguard/NumPadKey;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$string;->theme_pin_klondike_font:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    sput-object v5, Lcom/android/keyguard/NumPadKey;->sTfkt:Landroid/graphics/Typeface;

    .line 190
    :cond_6
    sget v5, Lcom/android/keyguard/R$id;->klondike_text:I

    invoke-virtual {p0, v5}, Lcom/android/keyguard/NumPadKey;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    .line 191
    sget-object v5, Lcom/android/keyguard/NumPadKey;->sTfkt:Landroid/graphics/Typeface;

    if-eqz v5, :cond_7

    .line 192
    iget-object v5, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    sget-object v6, Lcom/android/keyguard/NumPadKey;->sTfkt:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 194
    :cond_7
    invoke-virtual {p0}, Lcom/android/keyguard/NumPadKey;->updateBlackTextOnWhiteWallpaper()V

    .line 196
    iget v5, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    if-ltz v5, :cond_0

    .line 197
    sget-object v5, Lcom/android/keyguard/NumPadKey;->sKlondike:[Ljava/lang/String;

    if-nez v5, :cond_8

    .line 198
    invoke-virtual {p0}, Lcom/android/keyguard/NumPadKey;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$array;->lockscreen_num_pad_klondike:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/keyguard/NumPadKey;->sKlondike:[Ljava/lang/String;

    .line 200
    :cond_8
    sget-object v5, Lcom/android/keyguard/NumPadKey;->sKlondike:[Ljava/lang/String;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/keyguard/NumPadKey;->sKlondike:[Ljava/lang/String;

    array-length v5, v5

    iget v6, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    if-le v5, v6, :cond_0

    .line 201
    sget-object v5, Lcom/android/keyguard/NumPadKey;->sKlondike:[Ljava/lang/String;

    iget v6, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    aget-object v2, v5, v6

    .line 202
    .local v2, "klondike":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 203
    .local v3, "len":I
    if-lez v3, :cond_a

    .line 204
    iget-object v5, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 179
    .end local v2    # "klondike":Ljava/lang/String;
    .end local v3    # "len":I
    :cond_9
    sget-boolean v5, Lcom/android/keyguard/NumPadKey;->mDefaultFont:Z

    if-nez v5, :cond_4

    .line 180
    invoke-virtual {p0}, Lcom/android/keyguard/NumPadKey;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lcom/android/keyguard/R$string;->theme_pin_digit_font:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    sput-object v5, Lcom/android/keyguard/NumPadKey;->mNumTypeface:Landroid/graphics/Typeface;

    .line 181
    sput-boolean v6, Lcom/android/keyguard/NumPadKey;->mDefaultFont:Z

    goto/16 :goto_3

    .line 206
    .restart local v2    # "klondike":Ljava/lang/String;
    .restart local v3    # "len":I
    :cond_a
    iget-object v5, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 136
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/keyguard/NumPadKey;)Lcom/android/keyguard/PasswordTextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/NumPadKey;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mTextView:Lcom/android/keyguard/PasswordTextView;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/keyguard/NumPadKey;Lcom/android/keyguard/PasswordTextView;)Lcom/android/keyguard/PasswordTextView;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/NumPadKey;
    .param p1, "x1"    # Lcom/android/keyguard/PasswordTextView;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/keyguard/NumPadKey;->mTextView:Lcom/android/keyguard/PasswordTextView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/keyguard/NumPadKey;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/NumPadKey;

    .prologue
    .line 50
    iget v0, p0, Lcom/android/keyguard/NumPadKey;->mTextViewResId:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/NumPadKey;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/NumPadKey;

    .prologue
    .line 50
    iget v0, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/NumPadKey;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/NumPadKey;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private updateRippleSize(II)V
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 397
    div-int/lit8 v0, p1, 0x2

    .line 398
    .local v0, "cx":I
    div-int/lit8 v1, p2, 0x2

    .line 402
    .local v1, "cy":I
    invoke-virtual {p0}, Lcom/android/keyguard/NumPadKey;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$dimen;->num_pad_ripple_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-double v4, v3

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    div-double/2addr v4, v6

    double-to-int v2, v4

    .line 404
    .local v2, "rad":I
    iget-object v3, p0, Lcom/android/keyguard/NumPadKey;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/NumPadKey;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    instance-of v3, v3, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v3, :cond_0

    .line 405
    iget-object v3, p0, Lcom/android/keyguard/NumPadKey;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    sub-int v4, v0, v2

    sub-int v5, v1, v2

    add-int v6, v0, v2

    add-int v7, v1, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/RippleDrawable;->setHotspotBounds(IIII)V

    .line 407
    :cond_0
    return-void
.end method


# virtual methods
.method public doHapticKeyClick()V
    .locals 2

    .prologue
    .line 389
    iget-boolean v0, p0, Lcom/android/keyguard/NumPadKey;->mEnableHaptics:Z

    if-eqz v0, :cond_0

    .line 390
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/NumPadKey;->performHapticFeedback(II)Z

    .line 394
    :cond_0
    return-void
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 384
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 233
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 235
    new-instance v0, Lcom/android/keyguard/NumPadKey$2;

    iget-object v1, p0, Lcom/android/keyguard/NumPadKey;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/NumPadKey$2;-><init>(Lcom/android/keyguard/NumPadKey;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/NumPadKey;->mWhiteWallpaperObserver:Landroid/database/ContentObserver;

    .line 251
    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "white_lockscreen_wallpaper"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/NumPadKey;->mWhiteWallpaperObserver:Landroid/database/ContentObserver;

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 253
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 221
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 224
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/keyguard/ObscureSpeechDelegate;->sAnnouncedHeadset:Z

    .line 226
    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mWhiteWallpaperObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/NumPadKey;->mWhiteWallpaperObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 229
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 12
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 300
    const/4 v4, 0x0

    .line 301
    .local v4, "klondikeHeight":I
    const/4 v5, 0x0

    .line 303
    .local v5, "klondikeWidth":I
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportElasticPlugin()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {p0}, Lcom/android/keyguard/NumPadKey;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/android/keyguard/R$bool;->theme_use_image_pinlock:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 306
    iget-object v9, p0, Lcom/android/keyguard/NumPadKey;->mDigitImage:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    .line 307
    .local v2, "digitHeight":I
    iget-object v9, p0, Lcom/android/keyguard/NumPadKey;->mDigitImage:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    .line 312
    .local v3, "digitWidth":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/NumPadKey;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/android/keyguard/R$bool;->theme_use_image_pinlock:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-nez v9, :cond_0

    .line 313
    iget-object v9, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    .line 314
    iget-object v9, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    .line 318
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/NumPadKey;->getWidth()I

    move-result v9

    div-int/lit8 v1, v9, 0x2

    .line 320
    .local v1, "centerX":I
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->useLatestPinView()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 321
    invoke-virtual {p0}, Lcom/android/keyguard/NumPadKey;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/android/keyguard/R$bool;->theme_use_image_pinlock:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 322
    const/4 v8, 0x0

    .line 323
    .local v8, "top":I
    move v0, v2

    .line 324
    .local v0, "bottom":I
    const/4 v6, 0x0

    .line 325
    .local v6, "left":I
    move v7, v3

    .line 347
    .local v7, "right":I
    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportElasticPlugin()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {p0}, Lcom/android/keyguard/NumPadKey;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/android/keyguard/R$bool;->theme_use_image_pinlock:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 350
    iget-object v9, p0, Lcom/android/keyguard/NumPadKey;->mDigitImage:Landroid/widget/ImageView;

    invoke-virtual {v9, v6, v8, v7, v0}, Landroid/widget/ImageView;->layout(IIII)V

    .line 355
    :goto_2
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->useLatestPinView()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 356
    invoke-virtual {p0}, Lcom/android/keyguard/NumPadKey;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/android/keyguard/R$bool;->theme_use_image_pinlock:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-nez v9, :cond_2

    .line 357
    invoke-virtual {p0}, Lcom/android/keyguard/NumPadKey;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/android/keyguard/R$dimen;->keyguard_numpad_key_klondike_padding_top:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    add-int v8, v0, v9

    .line 358
    add-int v9, v8, v4

    add-int/lit8 v0, v9, 0x4

    .line 359
    div-int/lit8 v9, v5, 0x2

    sub-int v6, v1, v9

    .line 360
    add-int v7, v6, v5

    .line 361
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestTabletUX()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 362
    add-int/lit8 v6, v6, -0x2

    .line 363
    add-int/lit8 v7, v7, 0x2

    .line 377
    :cond_2
    :goto_3
    invoke-virtual {p0}, Lcom/android/keyguard/NumPadKey;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/android/keyguard/R$bool;->theme_use_image_pinlock:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-nez v9, :cond_3

    .line 378
    iget-object v9, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    invoke-virtual {v9, v6, v8, v7, v0}, Landroid/widget/TextView;->layout(IIII)V

    .line 380
    :cond_3
    return-void

    .line 309
    .end local v0    # "bottom":I
    .end local v1    # "centerX":I
    .end local v2    # "digitHeight":I
    .end local v3    # "digitWidth":I
    .end local v6    # "left":I
    .end local v7    # "right":I
    .end local v8    # "top":I
    :cond_4
    iget-object v9, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    .line 310
    .restart local v2    # "digitHeight":I
    iget-object v9, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    .restart local v3    # "digitWidth":I
    goto/16 :goto_0

    .line 327
    .restart local v1    # "centerX":I
    :cond_5
    iget v9, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    if-nez v9, :cond_6

    .line 328
    invoke-virtual {p0}, Lcom/android/keyguard/NumPadKey;->getHeight()I

    move-result v9

    sub-int/2addr v9, v2

    div-int/lit8 v8, v9, 0x2

    .line 332
    .restart local v8    # "top":I
    :goto_4
    add-int v0, v8, v2

    .line 333
    .restart local v0    # "bottom":I
    div-int/lit8 v9, v3, 0x2

    sub-int v6, v1, v9

    .line 334
    .restart local v6    # "left":I
    add-int v7, v6, v3

    .line 335
    .restart local v7    # "right":I
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestTabletUX()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 336
    add-int/lit8 v6, v6, -0x2

    .line 337
    add-int/lit8 v7, v7, 0x2

    goto/16 :goto_1

    .line 330
    .end local v0    # "bottom":I
    .end local v6    # "left":I
    .end local v7    # "right":I
    .end local v8    # "top":I
    :cond_6
    invoke-virtual {p0}, Lcom/android/keyguard/NumPadKey;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/android/keyguard/R$dimen;->keyguard_numpad_key_padding_top:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .restart local v8    # "top":I
    goto :goto_4

    .line 341
    .end local v8    # "top":I
    :cond_7
    invoke-virtual {p0}, Lcom/android/keyguard/NumPadKey;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    div-int/lit8 v10, v2, 0x2

    sub-int v8, v9, v10

    .line 342
    .restart local v8    # "top":I
    mul-int/lit8 v9, v3, 0x2

    sub-int v9, v1, v9

    div-int/lit8 v10, v3, 0x2

    add-int v6, v9, v10

    .line 343
    .restart local v6    # "left":I
    add-int v7, v6, v3

    .line 344
    .restart local v7    # "right":I
    add-int v0, v8, v2

    .restart local v0    # "bottom":I
    goto/16 :goto_1

    .line 352
    :cond_8
    iget-object v9, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    invoke-virtual {v9, v6, v8, v7, v0}, Landroid/widget/TextView;->layout(IIII)V

    goto/16 :goto_2

    .line 367
    :cond_9
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyTabletUX()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 368
    invoke-virtual {p0}, Lcom/android/keyguard/NumPadKey;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    div-int/lit8 v10, v4, 0x2

    sub-int/2addr v9, v10

    add-int/lit8 v8, v9, -0x4

    .line 369
    add-int v0, v8, v4

    .line 370
    div-int/lit8 v9, v3, 0x2

    add-int/2addr v9, v7

    add-int/lit8 v6, v9, 0x3

    .line 375
    :goto_5
    add-int v7, v6, v5

    goto/16 :goto_3

    .line 372
    :cond_a
    sub-int v9, v0, v4

    invoke-virtual {p0}, Lcom/android/keyguard/NumPadKey;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/android/keyguard/R$dimen;->keyguard_numpad_key_klondike_padding_height:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    sub-int v8, v9, v10

    .line 373
    div-int/lit8 v9, v3, 0x2

    add-int v6, v7, v9

    goto :goto_5
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 291
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 292
    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/NumPadKey;->measureChildren(II)V

    .line 294
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/NumPadKey;->updateRippleSize(II)V

    .line 295
    return-void
.end method

.method protected updateBlackTextOnWhiteWallpaper()V
    .locals 8

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v6, 0x3e800000    # 0.25f

    const/4 v5, 0x0

    .line 256
    iget-object v1, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 257
    iget-object v1, p0, Lcom/android/keyguard/NumPadKey;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardProperties;->isDownloadableThemeApplied(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 258
    iget-object v1, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/keyguard/NumPadKey;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$color;->theme_pin_digit_text_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 259
    iget-object v1, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/keyguard/NumPadKey;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$color;->theme_pin_klondike_text_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 260
    iget-object v1, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getShadowDx()F

    move-result v3

    iget-object v4, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getShadowDy()F

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 262
    iget-object v1, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getShadowDx()F

    move-result v3

    iget-object v4, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getShadowDy()F

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    iget-boolean v1, p0, Lcom/android/keyguard/NumPadKey;->mUseBlackTextOnWhiteWallpaper:Z

    if-eqz v1, :cond_2

    .line 266
    iget-object v1, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/keyguard/NumPadKey;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$color;->white_bg_solution_pin_text_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 267
    iget-object v1, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/keyguard/NumPadKey;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$color;->white_bg_solution_pin_klondike_text_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 268
    iget-object v1, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getShadowDx()F

    move-result v3

    iget-object v4, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getShadowDy()F

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 270
    iget-object v1, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getShadowDx()F

    move-result v3

    iget-object v4, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getShadowDy()F

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_0

    .line 273
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/keyguard/NumPadKey;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$color;->theme_pin_digit_text_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 274
    iget-object v1, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/keyguard/NumPadKey;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$color;->theme_pin_klondike_text_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 275
    iget-object v1, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getShadowDx()F

    move-result v3

    iget-object v4, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getShadowDy()F

    move-result v4

    iget-object v5, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getShadowColor()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 277
    iget-object v1, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getShadowDx()F

    move-result v3

    iget-object v4, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getShadowDy()F

    move-result v4

    iget-object v5, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getShadowColor()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 279
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestTabletUX()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    invoke-virtual {p0}, Lcom/android/keyguard/NumPadKey;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 281
    .local v0, "density":F
    iget-object v1, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2, v7, v6}, Landroid/widget/TextView;->addStrokeTextEffect(FIF)I

    .line 282
    iget-object v1, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2, v7, v6}, Landroid/widget/TextView;->addStrokeTextEffect(FIF)I

    goto/16 :goto_0
.end method

.method public userActivity()V
    .locals 4

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 93
    return-void
.end method
