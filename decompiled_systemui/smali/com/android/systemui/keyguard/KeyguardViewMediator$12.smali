.class Lcom/android/systemui/keyguard/KeyguardViewMediator$12;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"

# interfaces
.implements Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$ScreenOnCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleNotifyScreenTurningOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field final synthetic val$callback:Lcom/android/internal/policy/IKeyguardDrawnCallback;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/internal/policy/IKeyguardDrawnCallback;)V
    .locals 0

    .prologue
    .line 2927
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$12;->val$callback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public screenOn()V
    .locals 2

    .prologue
    .line 2931
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$12;->val$callback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$6900(Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/internal/policy/IKeyguardDrawnCallback;)V

    .line 2932
    return-void
.end method
