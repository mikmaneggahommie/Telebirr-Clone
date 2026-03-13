.class public Lcom/android/systemui/usb/UsbDebuggingActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "UsbDebuggingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/usb/UsbDebuggingActivity$UsbDisconnectedReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UsbDebuggingActivity"


# instance fields
.field private mAlwaysAllow:Landroid/widget/CheckBox;

.field private mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDebuggingActivity$UsbDisconnectedReceiver;

.field private mKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 111
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 149
    const-string v6, "UsbDebuggingActivity"

    const-string v7, "onClick !!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const/4 v6, -0x1

    if-ne p2, v6, :cond_0

    move v0, v1

    .line 151
    .local v0, "allow":Z
    :goto_0
    if-eqz v0, :cond_1

    iget-object v6, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mAlwaysAllow:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 153
    .local v1, "alwaysAllow":Z
    :goto_1
    :try_start_0
    const-string v5, "usb"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 154
    .local v2, "b":Landroid/os/IBinder;
    invoke-static {v2}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v4

    .line 155
    .local v4, "service":Landroid/hardware/usb/IUsbManager;
    if-eqz v0, :cond_2

    .line 156
    iget-object v5, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mKey:Ljava/lang/String;

    invoke-interface {v4, v1, v5}, Landroid/hardware/usb/IUsbManager;->allowUsbDebugging(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .end local v2    # "b":Landroid/os/IBinder;
    .end local v4    # "service":Landroid/hardware/usb/IUsbManager;
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbDebuggingActivity;->finish()V

    .line 164
    return-void

    .end local v0    # "allow":Z
    .end local v1    # "alwaysAllow":Z
    :cond_0
    move v0, v5

    .line 150
    goto :goto_0

    .restart local v0    # "allow":Z
    :cond_1
    move v1, v5

    .line 151
    goto :goto_1

    .line 158
    .restart local v1    # "alwaysAllow":Z
    .restart local v2    # "b":Landroid/os/IBinder;
    .restart local v4    # "service":Landroid/hardware/usb/IUsbManager;
    :cond_2
    :try_start_1
    invoke-interface {v4}, Landroid/hardware/usb/IUsbManager;->denyUsbDebugging()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 160
    .end local v2    # "b":Landroid/os/IBinder;
    .end local v4    # "service":Landroid/hardware/usb/IUsbManager;
    :catch_0
    move-exception v3

    .line 161
    .local v3, "e":Ljava/lang/Exception;
    const-string v5, "UsbDebuggingActivity"

    const-string v6, "Unable to notify Usb service"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    .line 55
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbDebuggingActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    .line 56
    .local v6, "window":Landroid/view/Window;
    const/high16 v7, 0x80000

    invoke-virtual {v6, v7}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 57
    const/16 v7, 0x7d8

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    .line 59
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const-string v7, "service.adb.tcp.port"

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_0

    .line 62
    new-instance v7, Lcom/android/systemui/usb/UsbDebuggingActivity$UsbDisconnectedReceiver;

    invoke-direct {v7, p0, p0}, Lcom/android/systemui/usb/UsbDebuggingActivity$UsbDisconnectedReceiver;-><init>(Lcom/android/systemui/usb/UsbDebuggingActivity;Landroid/app/Activity;)V

    iput-object v7, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDebuggingActivity$UsbDisconnectedReceiver;

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbDebuggingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 66
    .local v5, "intent":Landroid/content/Intent;
    const-string v7, "fingerprints"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 67
    .local v3, "fingerprints":Ljava/lang/String;
    const-string v7, "key"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mKey:Ljava/lang/String;

    .line 69
    if-eqz v3, :cond_1

    iget-object v7, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mKey:Ljava/lang/String;

    if-nez v7, :cond_2

    .line 70
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbDebuggingActivity;->finish()V

    .line 109
    :goto_0
    return-void

    .line 74
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 75
    .local v0, "ap":Lcom/android/internal/app/AlertController$AlertParams;
    const v7, 0x7f0b02be

    invoke-virtual {p0, v7}, Lcom/android/systemui/usb/UsbDebuggingActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 76
    const v7, 0x7f0b02bf

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v3, v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/android/systemui/usb/UsbDebuggingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 77
    const v7, 0x104000a

    invoke-virtual {p0, v7}, Lcom/android/systemui/usb/UsbDebuggingActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 78
    const/high16 v7, 0x1040000

    invoke-virtual {p0, v7}, Lcom/android/systemui/usb/UsbDebuggingActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 79
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 80
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 83
    iget-object v7, v0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 84
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v7, 0x1090031

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 85
    .local v1, "checkbox":Landroid/view/View;
    const v7, 0x1020378

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    iput-object v7, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mAlwaysAllow:Landroid/widget/CheckBox;

    .line 86
    iget-object v7, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mAlwaysAllow:Landroid/widget/CheckBox;

    const v8, 0x7f0b02c0

    invoke-virtual {p0, v8}, Lcom/android/systemui/usb/UsbDebuggingActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 89
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbDebuggingActivity;->setupAlert()V

    .line 92
    new-instance v2, Lcom/android/systemui/usb/UsbDebuggingActivity$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/usb/UsbDebuggingActivity$1;-><init>(Lcom/android/systemui/usb/UsbDebuggingActivity;)V

    .line 107
    .local v2, "filterTouchListener":Landroid/view/View$OnTouchListener;
    iget-object v7, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 108
    const-string v7, "UsbDebuggingActivity"

    const-string v8, "onCreate --"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 132
    const-string v1, "UsbDebuggingActivity"

    const-string v2, "onStart !!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStart()V

    .line 134
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 135
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDebuggingActivity$UsbDisconnectedReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/usb/UsbDebuggingActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 136
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 140
    const-string v0, "UsbDebuggingActivity"

    const-string v1, "onStop !!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDebuggingActivity$UsbDisconnectedReceiver;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDebuggingActivity$UsbDisconnectedReceiver;

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/UsbDebuggingActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 144
    :cond_0
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    .line 145
    return-void
.end method
