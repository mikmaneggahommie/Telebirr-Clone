.class public Lcom/android/systemui/statusbar/phone/MultiUserSwitch;
.super Landroid/widget/FrameLayout;
.source "MultiUserSwitch.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mKeyguardMode:Z

.field private mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

.field private mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mQsPanel:Lcom/android/systemui/qs/QSPanel;

.field private mUserListener:Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;

.field final mUserManager:Landroid/os/UserManager;

.field private mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mUserManager:Landroid/os/UserManager;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/MultiUserSwitch;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->refreshContentDescription()V

    return-void
.end method

.method private opensUserSwitcherWhenClicked()Z
    .locals 2

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 192
    .local v0, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private refreshContentDescription()V
    .locals 3

    .prologue
    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, "currentUser":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mUserManager:Landroid/os/UserManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->isUserSwitcherAvailable(Landroid/os/UserManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    if-eqz v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->getCurrentUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 142
    :cond_0
    return-void
.end method

.method private registerListener()V
    .locals 2

    .prologue
    .line 85
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mUserManager:Landroid/os/UserManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->isUserSwitcherAvailable(Landroid/os/UserManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mUserListener:Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;

    if-nez v1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 88
    .local v0, "controller":Lcom/android/systemui/statusbar/policy/UserSwitcherController;
    if-eqz v0, :cond_0

    .line 89
    new-instance v1, Lcom/android/systemui/statusbar/phone/MultiUserSwitch$1;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch$1;-><init>(Lcom/android/systemui/statusbar/phone/MultiUserSwitch;Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mUserListener:Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;

    .line 100
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->refreshContentDescription()V

    .line 103
    .end local v0    # "controller":Lcom/android/systemui/statusbar/policy/UserSwitcherController;
    :cond_0
    return-void
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 107
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->opensUserSwitcherWhenClicked()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 111
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isFmmLock()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->multiUserButtonClickOnKeyguard()Z

    move-result v2

    if-nez v2, :cond_0

    .line 115
    :cond_2
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mKeyguardMode:Z

    if-eqz v2, :cond_3

    .line 116
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    if-eqz v2, :cond_0

    .line 117
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->show(Z)V

    goto :goto_0

    .line 120
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v2, :cond_0

    .line 121
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSPanel;->getHost()Lcom/android/systemui/statusbar/phone/QSTileHost;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getUserSwitcherController()Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    move-result-object v1

    .line 123
    .local v1, "userSwitcherController":Lcom/android/systemui/statusbar/policy/UserSwitcherController;
    if-eqz v1, :cond_0

    .line 124
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v3, v1, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->userDetailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    invoke-virtual {v2, v4, v3}, Lcom/android/systemui/qs/QSPanel;->showDetailAdapter(ZLcom/android/systemui/qs/QSTile$DetailAdapter;)V

    goto :goto_0

    .line 129
    .end local v1    # "userSwitcherController":Lcom/android/systemui/statusbar/policy/UserSwitcherController;
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static {v2, p1, v3, v4, v5}, Landroid/provider/ContactsContract$QuickContact;->composeQuickContactsIntent(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 132
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/os/UserHandle;

    const/4 v4, -0x2

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 57
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 58
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 146
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 148
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 150
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->opensUserSwitcherWhenClicked()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 151
    const/4 v1, 0x0

    .line 152
    .local v1, "currentUser":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v3, :cond_0

    .line 153
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSPanel;->getHost()Lcom/android/systemui/statusbar/phone/QSTileHost;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getUserSwitcherController()Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    move-result-object v0

    .line 155
    .local v0, "controller":Lcom/android/systemui/statusbar/policy/UserSwitcherController;
    if-eqz v0, :cond_0

    .line 156
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->getCurrentUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 160
    .end local v0    # "controller":Lcom/android/systemui/statusbar/policy/UserSwitcherController;
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mContext:Landroid/content/Context;

    const v4, 0x7f0b03d9

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 161
    .local v2, "text":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 162
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mContext:Landroid/content/Context;

    const v5, 0x7f0b03db

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 178
    .end local v1    # "currentUser":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 179
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    .end local v2    # "text":Ljava/lang/String;
    :cond_2
    return-void

    .line 176
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mContext:Landroid/content/Context;

    const v4, 0x7f0b03dc

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "text":Ljava/lang/String;
    goto :goto_0
.end method

.method public setKeyguardMode(Z)V
    .locals 0
    .param p1, "keyguardShowing"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mKeyguardMode:Z

    .line 82
    return-void
.end method

.method public setKeyguardUserSwitcher(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)V
    .locals 0
    .param p1, "keyguardUserSwitcher"    # Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    .line 78
    return-void
.end method

.method public setPhoneStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p1, "bar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 67
    return-void
.end method

.method public setQsPanel(Lcom/android/systemui/qs/QSPanel;)V
    .locals 0
    .param p1, "qsPanel"    # Lcom/android/systemui/qs/QSPanel;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    .line 63
    return-void
.end method

.method public setUserSwitcherController(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V
    .locals 0
    .param p1, "userSwitcherController"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 72
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->registerListener()V

    .line 73
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->refreshContentDescription()V

    .line 74
    return-void
.end method
