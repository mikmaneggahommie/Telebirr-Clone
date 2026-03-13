.class public Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;
.super Ljava/lang/Object;
.source "MultiUserPreferences.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MultiUserPreferences"


# instance fields
.field private final DEBUG:Z

.field private final KnoxUserId:I

.field private isSupportMum:Z

.field private mContext:Landroid/content/Context;

.field private mDoc:Lorg/w3c/dom/Document;

.field private mDocBuilder:Ljavax/xml/parsers/DocumentBuilder;

.field private mDocFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mUserDataXml:Ljava/io/File;

.field private mUserId:I


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;-><init>(Ljava/lang/String;Landroid/content/Context;Z)V

    .line 53
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Z)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "forPenWindow"    # Z

    .prologue
    const/16 v4, 0x64

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->DEBUG:Z

    .line 39
    iput-boolean v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->isSupportMum:Z

    .line 40
    iput-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mPrefs:Landroid/content/SharedPreferences;

    .line 41
    iput-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 43
    iput-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mDocFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

    .line 44
    iput-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mDocBuilder:Ljavax/xml/parsers/DocumentBuilder;

    .line 45
    iput-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mUserDataXml:Ljava/io/File;

    .line 46
    iput v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mUserId:I

    .line 47
    iput-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mDoc:Lorg/w3c/dom/Document;

    .line 49
    iput v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->KnoxUserId:I

    .line 57
    iput-object p2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mContext:Landroid/content/Context;

    .line 58
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->isSupportMum:Z

    .line 59
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mUserId:I

    .line 60
    iget-boolean v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->isSupportMum:Z

    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mUserId:I

    if-lt v3, v4, :cond_0

    :goto_0
    or-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->isSupportMum:Z

    .line 61
    iget-boolean v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->isSupportMum:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 62
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mPrefs:Landroid/content/SharedPreferences;

    .line 63
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 67
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 60
    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {p0, p3}, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->openUserData(Z)V

    goto :goto_1
.end method

.method private validate(Lorg/w3c/dom/Document;)Z
    .locals 5
    .param p1, "doc"    # Lorg/w3c/dom/Document;

    .prologue
    const/4 v1, 0x0

    .line 108
    const-string v2, "MultiUserPreferences"

    const-string v3, "validate"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    if-nez p1, :cond_1

    .line 118
    :cond_0
    :goto_0
    return v1

    .line 113
    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    .line 114
    .local v0, "root":Lorg/w3c/dom/Element;
    if-eqz v0, :cond_0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mUserId:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    .line 302
    iget-boolean v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->isSupportMum:Z

    if-eqz v1, :cond_0

    .line 303
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mDoc:Lorg/w3c/dom/Document;

    if-eqz v1, :cond_0

    .line 304
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mDocBuilder:Ljavax/xml/parsers/DocumentBuilder;

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mDoc:Lorg/w3c/dom/Document;

    .line 305
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mDoc:Lorg/w3c/dom/Document;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mUserId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 306
    .local v0, "rootElement":Lorg/w3c/dom/Element;
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mDoc:Lorg/w3c/dom/Document;

    invoke-interface {v1, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 310
    .end local v0    # "rootElement":Lorg/w3c/dom/Element;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_1

    .line 311
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 313
    :cond_1
    return-void
.end method

.method public commit()V
    .locals 9

    .prologue
    .line 317
    const-string v7, "MultiUserPreferences"

    const-string v8, "commit"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-boolean v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->isSupportMum:Z

    if-eqz v7, :cond_0

    .line 319
    const/4 v1, 0x0

    .line 321
    .local v1, "outXml":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v6

    .line 322
    .local v6, "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual {v6}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v5

    .line 323
    .local v5, "transformer":Ljavax/xml/transform/Transformer;
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mUserDataXml:Ljava/io/File;

    invoke-direct {v2, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    .end local v1    # "outXml":Ljava/io/FileOutputStream;
    .local v2, "outXml":Ljava/io/FileOutputStream;
    :try_start_1
    const-string v7, "encoding"

    const-string v8, "UTF-8"

    invoke-virtual {v5, v7, v8}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const-string v7, "indent"

    const-string v8, "yes"

    invoke-virtual {v5, v7, v8}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    new-instance v4, Ljavax/xml/transform/dom/DOMSource;

    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mDoc:Lorg/w3c/dom/Document;

    invoke-direct {v4, v7}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 327
    .local v4, "source":Ljavax/xml/transform/dom/DOMSource;
    new-instance v3, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v3, v2}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    .line 328
    .local v3, "result":Ljavax/xml/transform/stream/StreamResult;
    invoke-virtual {v5, v4, v3}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 336
    if-eqz v2, :cond_0

    .line 338
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 346
    .end local v2    # "outXml":Ljava/io/FileOutputStream;
    .end local v3    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v4    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v5    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v6    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v7, :cond_1

    .line 347
    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 349
    :cond_1
    return-void

    .line 339
    .restart local v2    # "outXml":Ljava/io/FileOutputStream;
    .restart local v3    # "result":Ljavax/xml/transform/stream/StreamResult;
    .restart local v4    # "source":Ljavax/xml/transform/dom/DOMSource;
    .restart local v5    # "transformer":Ljavax/xml/transform/Transformer;
    .restart local v6    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :catch_0
    move-exception v0

    .line 340
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 329
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "outXml":Ljava/io/FileOutputStream;
    .end local v3    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v4    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v5    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v6    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    .restart local v1    # "outXml":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 330
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 336
    if-eqz v1, :cond_0

    .line 338
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 339
    :catch_2
    move-exception v0

    .line 340
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 331
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 332
    .local v0, "e":Ljavax/xml/transform/TransformerConfigurationException;
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljavax/xml/transform/TransformerConfigurationException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 336
    if-eqz v1, :cond_0

    .line 338
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 339
    :catch_4
    move-exception v0

    .line 340
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 333
    .end local v0    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 334
    .local v0, "e":Ljavax/xml/transform/TransformerException;
    :goto_3
    :try_start_7
    invoke-virtual {v0}, Ljavax/xml/transform/TransformerException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 336
    if-eqz v1, :cond_0

    .line 338
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_0

    .line 339
    :catch_6
    move-exception v0

    .line 340
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 336
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v1, :cond_2

    .line 338
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 341
    :cond_2
    :goto_5
    throw v7

    .line 339
    :catch_7
    move-exception v0

    .line 340
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 336
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "outXml":Ljava/io/FileOutputStream;
    .restart local v2    # "outXml":Ljava/io/FileOutputStream;
    .restart local v5    # "transformer":Ljavax/xml/transform/Transformer;
    .restart local v6    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :catchall_1
    move-exception v7

    move-object v1, v2

    .end local v2    # "outXml":Ljava/io/FileOutputStream;
    .restart local v1    # "outXml":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 333
    .end local v1    # "outXml":Ljava/io/FileOutputStream;
    .restart local v2    # "outXml":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v0

    move-object v1, v2

    .end local v2    # "outXml":Ljava/io/FileOutputStream;
    .restart local v1    # "outXml":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 331
    .end local v1    # "outXml":Ljava/io/FileOutputStream;
    .restart local v2    # "outXml":Ljava/io/FileOutputStream;
    :catch_9
    move-exception v0

    move-object v1, v2

    .end local v2    # "outXml":Ljava/io/FileOutputStream;
    .restart local v1    # "outXml":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 329
    .end local v1    # "outXml":Ljava/io/FileOutputStream;
    .restart local v2    # "outXml":Ljava/io/FileOutputStream;
    :catch_a
    move-exception v0

    move-object v1, v2

    .end local v2    # "outXml":Ljava/io/FileOutputStream;
    .restart local v1    # "outXml":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .prologue
    .line 238
    move v1, p2

    .line 239
    .local v1, "ret":Z
    iget-boolean v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->isSupportMum:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    .line 240
    const-string v2, "Boolean"

    invoke-virtual {p0, v2, p1}, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->readElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "data":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 242
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 247
    .end local v0    # "data":Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 244
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_0

    .line 245
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 217
    move v1, p2

    .line 218
    .local v1, "ret":I
    iget-boolean v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->isSupportMum:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    .line 219
    const-string v2, "Int"

    invoke-virtual {p0, v2, p1}, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->readElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "data":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 221
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 226
    .end local v0    # "data":Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 223
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_0

    .line 224
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .prologue
    .line 259
    move-object v1, p2

    .line 260
    .local v1, "ret":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->isSupportMum:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    .line 261
    const-string v2, "String"

    invoke-virtual {p0, v2, p1}, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->readElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "data":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 263
    move-object v1, v0

    .line 268
    .end local v0    # "data":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 265
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_0

    .line 266
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 280
    .local p2, "defValue":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v1, p2

    .line 281
    .local v1, "ret":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-boolean v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->isSupportMum:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    .line 282
    const-string v2, "StringSet"

    invoke-virtual {p0, v2, p1}, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->readElementSet(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 283
    .local v0, "data":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 284
    move-object v1, v0

    .line 289
    .end local v0    # "data":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-object v1

    .line 286
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_0

    .line 287
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2, p1, p2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    goto :goto_0
.end method

.method public openUserData(Z)V
    .locals 6
    .param p1, "forPenWindow"    # Z

    .prologue
    .line 71
    const-string v3, "MultiUserPreferences"

    const-string v4, "openUserData"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const/4 v1, 0x1

    .line 75
    .local v1, "makeNewFile":Z
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mDocFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

    .line 76
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mDocFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mDocBuilder:Ljavax/xml/parsers/DocumentBuilder;

    .line 77
    if-eqz p1, :cond_2

    .line 78
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/userfile_for_penwindow_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mUserId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mUserDataXml:Ljava/io/File;

    .line 85
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mDocBuilder:Ljavax/xml/parsers/DocumentBuilder;

    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mUserDataXml:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mDoc:Lorg/w3c/dom/Document;

    .line 86
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mDoc:Lorg/w3c/dom/Document;

    invoke-direct {p0, v3}, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->validate(Lorg/w3c/dom/Document;)Z
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v3

    if-eqz v3, :cond_0

    .line 87
    const/4 v1, 0x0

    .line 97
    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    .line 98
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mDocBuilder:Ljavax/xml/parsers/DocumentBuilder;

    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mDoc:Lorg/w3c/dom/Document;

    .line 99
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mDoc:Lorg/w3c/dom/Document;

    if-eqz v3, :cond_1

    .line 100
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mDoc:Lorg/w3c/dom/Document;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "User"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mUserId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 101
    .local v2, "rootElement":Lorg/w3c/dom/Element;
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mDoc:Lorg/w3c/dom/Document;

    invoke-interface {v3, v2}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 104
    .end local v2    # "rootElement":Lorg/w3c/dom/Element;
    :cond_1
    return-void

    .line 81
    :cond_2
    :try_start_1
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/userfile_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mUserId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mUserDataXml:Ljava/io/File;
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_1

    .line 91
    .end local v0    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v0

    .line 92
    .local v0, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_1

    .line 93
    .end local v0    # "e":Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v0

    .line 94
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->isSupportMum:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 252
    const-string v1, "Boolean"

    if-eqz p2, :cond_1

    const-string v0, "1"

    :goto_0
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->writeElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :cond_0
    :goto_1
    return-void

    .line 252
    :cond_1
    const-string v0, "0"

    goto :goto_0

    .line 253
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->isSupportMum:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 231
    const-string v0, "Int"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->writeElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->isSupportMum:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 273
    const-string v0, "String"

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->writeElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 293
    .local p2, "value":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-boolean v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->isSupportMum:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 294
    const-string v0, "StringSet"

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->writeElementSet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 295
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public readElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 175
    const-string v4, "MultiUserPreferences"

    const-string v5, "readElement"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mDoc:Lorg/w3c/dom/Document;

    invoke-interface {v4, p1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 178
    .local v3, "nodeList":Lorg/w3c/dom/NodeList;
    if-eqz v3, :cond_1

    .line 179
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 180
    invoke-interface {v3, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 181
    .local v2, "item":Lorg/w3c/dom/Element;
    const-string v4, "key"

    invoke-interface {v2, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 182
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 189
    .end local v1    # "i":I
    .end local v2    # "item":Lorg/w3c/dom/Element;
    .end local v3    # "nodeList":Lorg/w3c/dom/NodeList;
    :goto_1
    return-object v4

    .line 179
    .restart local v1    # "i":I
    .restart local v2    # "item":Lorg/w3c/dom/Element;
    .restart local v3    # "nodeList":Lorg/w3c/dom/NodeList;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 186
    .end local v1    # "i":I
    .end local v2    # "item":Lorg/w3c/dom/Element;
    .end local v3    # "nodeList":Lorg/w3c/dom/NodeList;
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 189
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public readElementSet(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;
    .locals 11
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    const-string v9, "MultiUserPreferences"

    const-string v10, "readElementSet"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 197
    .local v2, "data":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :try_start_0
    iget-object v9, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mDocBuilder:Ljavax/xml/parsers/DocumentBuilder;

    iget-object v10, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mUserDataXml:Ljava/io/File;

    invoke-virtual {v9, v10}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v3

    .line 198
    .local v3, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v3, p1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 199
    .local v8, "nodeList":Lorg/w3c/dom/NodeList;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v5, v9, :cond_1

    .line 200
    invoke-interface {v8, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    .line 201
    .local v6, "item":Lorg/w3c/dom/Element;
    const-string v9, "key"

    invoke-interface {v6, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 202
    const-string v9, "Item"

    invoke-interface {v6, v9}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 203
    .local v1, "childNodes":Lorg/w3c/dom/NodeList;
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v7, v9, :cond_0

    .line 204
    invoke-interface {v1, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 205
    .local v0, "childNode":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 199
    .end local v0    # "childNode":Lorg/w3c/dom/Node;
    .end local v1    # "childNodes":Lorg/w3c/dom/NodeList;
    .end local v7    # "j":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 209
    .end local v3    # "doc":Lorg/w3c/dom/Document;
    .end local v5    # "i":I
    .end local v6    # "item":Lorg/w3c/dom/Element;
    .end local v8    # "nodeList":Lorg/w3c/dom/NodeList;
    :catch_0
    move-exception v4

    .line 210
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 213
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v9

    if-lez v9, :cond_2

    .end local v2    # "data":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_2
    return-object v2

    .restart local v2    # "data":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public removeAllUserData(I)V
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 363
    const-string v2, "MultiUserPreferences"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeAllUserData - userId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/userfile_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 366
    .local v0, "userDataXml":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 367
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 369
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/userfile_for_penwindow_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 371
    .local v1, "userPenWindowDataXml":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 372
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 374
    :cond_1
    return-void
.end method

.method public removeUserData(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 353
    const-string v1, "MultiUserPreferences"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeUserData - userId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/userfile_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 356
    .local v0, "userDataXml":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 357
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 359
    :cond_0
    return-void
.end method

.method public writeElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 123
    const-string v6, "MultiUserPreferences"

    const-string v7, "writeElement"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :try_start_0
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mDoc:Lorg/w3c/dom/Document;

    invoke-interface {v6}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v5

    .line 127
    .local v5, "rootElement":Lorg/w3c/dom/Element;
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mDoc:Lorg/w3c/dom/Document;

    invoke-interface {v6, p1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 128
    .local v4, "nodeList":Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 129
    invoke-interface {v4, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 130
    .local v2, "item":Lorg/w3c/dom/Element;
    const-string v6, "key"

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 131
    invoke-interface {v5, v2}, Lorg/w3c/dom/Element;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 136
    .end local v2    # "item":Lorg/w3c/dom/Element;
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mDoc:Lorg/w3c/dom/Document;

    invoke-interface {v6, p1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 137
    .local v3, "newNode":Lorg/w3c/dom/Element;
    invoke-interface {v5, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 138
    const-string v6, "key"

    invoke-interface {v3, v6, p2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-interface {v3, p3}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .end local v1    # "i":I
    .end local v3    # "newNode":Lorg/w3c/dom/Element;
    .end local v4    # "nodeList":Lorg/w3c/dom/NodeList;
    .end local v5    # "rootElement":Lorg/w3c/dom/Element;
    :goto_1
    return-void

    .line 128
    .restart local v1    # "i":I
    .restart local v2    # "item":Lorg/w3c/dom/Element;
    .restart local v4    # "nodeList":Lorg/w3c/dom/NodeList;
    .restart local v5    # "rootElement":Lorg/w3c/dom/Element;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 140
    .end local v1    # "i":I
    .end local v2    # "item":Lorg/w3c/dom/Element;
    .end local v4    # "nodeList":Lorg/w3c/dom/NodeList;
    .end local v5    # "rootElement":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public writeElementSet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 11
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p3, "valueSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v9, "MultiUserPreferences"

    const-string v10, "writeElement"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :try_start_0
    iget-object v9, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mDoc:Lorg/w3c/dom/Document;

    invoke-interface {v9}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v8

    .line 151
    .local v8, "rootElement":Lorg/w3c/dom/Element;
    iget-object v9, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mDoc:Lorg/w3c/dom/Document;

    invoke-interface {v9, p1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 152
    .local v6, "nodeList":Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v2, v9, :cond_0

    .line 153
    invoke-interface {v6, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 154
    .local v4, "item":Lorg/w3c/dom/Element;
    const-string v9, "key"

    invoke-interface {v4, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 155
    invoke-interface {v8, v4}, Lorg/w3c/dom/Element;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 160
    .end local v4    # "item":Lorg/w3c/dom/Element;
    :cond_0
    iget-object v9, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mDoc:Lorg/w3c/dom/Document;

    invoke-interface {v9, p1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    .line 161
    .local v5, "newNode":Lorg/w3c/dom/Element;
    invoke-interface {v8, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 162
    const-string v9, "key"

    invoke-interface {v5, v9, p2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 164
    .local v7, "r":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mDoc:Lorg/w3c/dom/Document;

    const-string v10, "Item"

    invoke-interface {v9, v10}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 165
    .local v0, "childNode":Lorg/w3c/dom/Element;
    invoke-interface {v0, v7}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 166
    invoke-interface {v5, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 168
    .end local v0    # "childNode":Lorg/w3c/dom/Element;
    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "newNode":Lorg/w3c/dom/Element;
    .end local v6    # "nodeList":Lorg/w3c/dom/NodeList;
    .end local v7    # "r":Ljava/lang/String;
    .end local v8    # "rootElement":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v1

    .line 169
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 171
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    return-void

    .line 152
    .restart local v2    # "i":I
    .restart local v4    # "item":Lorg/w3c/dom/Element;
    .restart local v6    # "nodeList":Lorg/w3c/dom/NodeList;
    .restart local v8    # "rootElement":Lorg/w3c/dom/Element;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
