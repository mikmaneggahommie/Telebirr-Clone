.class Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;
.super Landroid/os/AsyncTask;
.source "SViewCoverMissedEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->updateMissedEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mMissedEventTable:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;)V
    .locals 1

    .prologue
    .line 823
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 824
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->mMissedEventTable:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 48
    .param p1, "arg0"    # [Ljava/lang/String;

    .prologue
    .line 844
    const-string v4, "SViewCoverMissedEvents"

    const-string v8, "doInBackground() "

    invoke-static {v4, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->mMissedEventTable:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 847
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    invoke-static {v4}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->access$2400(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;)Landroid/content/Context;

    move-result-object v20

    .line 849
    .local v20, "context":Landroid/content/Context;
    const-string v4, "content://logs/call/group"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 850
    .local v5, "URI_LOGS":Landroid/net/Uri;
    const-string v7, "type=3 AND new>0"

    .line 852
    .local v7, "where":Ljava/lang/String;
    const/4 v4, 0x5

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v8, "count"

    aput-object v8, v6, v4

    const/4 v4, 0x1

    const-string v8, "_id"

    aput-object v8, v6, v4

    const/4 v4, 0x2

    const-string v8, "name"

    aput-object v8, v6, v4

    const/4 v4, 0x3

    const-string v8, "number"

    aput-object v8, v6, v4

    const/4 v4, 0x4

    const-string v8, "date"

    aput-object v8, v6, v4

    .line 859
    .local v6, "callProjection":[Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 862
    .local v18, "c":Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    iget-object v4, v4, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v4}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$1600(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/app/KeyguardManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 863
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    iget-object v4, v4, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v4}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$2500(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)I

    move-result v4

    const/4 v8, 0x3

    if-ne v4, v8, :cond_b

    .line 864
    if-eqz v18, :cond_6

    .line 865
    :goto_0
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 866
    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 867
    .local v25, "mCount":I
    const-string v4, "name"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 869
    .local v29, "name":Ljava/lang/String;
    const-string v4, "number"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 871
    .local v30, "number":Ljava/lang/String;
    if-nez v29, :cond_0

    .line 872
    move-object/from16 v29, v30

    .line 875
    :cond_0
    const-wide/16 v44, 0x0

    .line 877
    .local v44, "time":J
    :try_start_0
    const-string v4, "date"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v44

    .line 883
    :goto_1
    new-instance v21, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    const/4 v8, 0x0

    move-object/from16 v0, v21

    invoke-direct {v0, v4, v8}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;-><init>(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;Lcom/sec/android/sviewcover/SViewCoverMissedEvents$1;)V

    .line 885
    .local v21, "e":Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;
    move/from16 v0, v25

    move-object/from16 v1, v21

    iput v0, v1, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->unreadCount:I

    .line 886
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    iget-object v4, v4, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-virtual {v4}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v8, Lcom/sec/android/sviewcover/R$string;->missed_call_title:I

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    iput-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->name:Ljava/lang/String;

    .line 887
    move-wide/from16 v0, v44

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->time:J

    .line 888
    const/4 v4, 0x1

    move-object/from16 v0, v21

    iput v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->type:I

    .line 889
    const/4 v4, 0x0

    move-object/from16 v0, v21

    iput-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->photoUri:Ljava/lang/String;

    .line 891
    const/16 v36, 0x0

    .line 892
    .local v36, "str":Ljava/lang/String;
    const/4 v4, 0x1

    move/from16 v0, v25

    if-ne v0, v4, :cond_1

    .line 893
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    iget-object v4, v4, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-virtual {v4}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v8, Lcom/sec/android/sviewcover/R$string;->missed_call_title:I

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v36

    .line 899
    :goto_2
    new-instance v22, Ljava/lang/StringBuffer;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    .line 901
    .local v22, "idsStr":Ljava/lang/StringBuffer;
    const/4 v4, 0x1

    move/from16 v0, v25

    if-le v0, v4, :cond_4

    .line 902
    const/16 v28, 0x0

    .line 903
    .local v28, "mIndex":I
    const-string v4, "content://logs/call"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 904
    .local v9, "URI_ID_LOGS":Landroid/net/Uri;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "type=3 AND new>0 AND number=\'"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "\'"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 910
    .local v11, "whereForID":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    .line 914
    .local v26, "mCursorForID":Landroid/database/Cursor;
    :goto_3
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 915
    const-string v4, "_id"

    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 919
    .local v27, "mId":Ljava/lang/String;
    if-nez v28, :cond_2

    .line 920
    const-string v4, "_id="

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 921
    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 927
    :goto_4
    add-int/lit8 v28, v28, 0x1

    .line 928
    goto :goto_3

    .line 878
    .end local v9    # "URI_ID_LOGS":Landroid/net/Uri;
    .end local v11    # "whereForID":Ljava/lang/String;
    .end local v21    # "e":Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;
    .end local v22    # "idsStr":Ljava/lang/StringBuffer;
    .end local v26    # "mCursorForID":Landroid/database/Cursor;
    .end local v27    # "mId":Ljava/lang/String;
    .end local v28    # "mIndex":I
    .end local v36    # "str":Ljava/lang/String;
    :catch_0
    move-exception v21

    .line 879
    .local v21, "e":Ljava/lang/Exception;
    const-string v4, "SViewCoverMissedEvents"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "missed call\'s time or id is null. name : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 895
    .local v21, "e":Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;
    .restart local v36    # "str":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    iget-object v4, v4, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-virtual {v4}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v8, Lcom/sec/android/sviewcover/R$string;->missed_calls_count:I

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v10, v12

    invoke-virtual {v4, v8, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    goto/16 :goto_2

    .line 923
    .restart local v9    # "URI_ID_LOGS":Landroid/net/Uri;
    .restart local v11    # "whereForID":Ljava/lang/String;
    .restart local v22    # "idsStr":Ljava/lang/StringBuffer;
    .restart local v26    # "mCursorForID":Landroid/database/Cursor;
    .restart local v27    # "mId":Ljava/lang/String;
    .restart local v28    # "mIndex":I
    :cond_2
    const-string v4, " OR _id= "

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 924
    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 930
    .end local v27    # "mId":Ljava/lang/String;
    :cond_3
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 937
    .end local v9    # "URI_ID_LOGS":Landroid/net/Uri;
    .end local v11    # "whereForID":Ljava/lang/String;
    .end local v26    # "mCursorForID":Landroid/database/Cursor;
    .end local v28    # "mIndex":I
    :goto_5
    move-object/from16 v0, v36

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->number:Ljava/lang/String;

    .line 938
    move-object/from16 v0, v36

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->content:Ljava/lang/String;

    .line 939
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    iput-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->callId:Ljava/lang/String;

    .line 940
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->mMissedEventTable:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 941
    const-string v4, "MISSED"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ID="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 932
    :cond_4
    const-string v4, "_id="

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 933
    const-string v4, "_id"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 943
    .end local v21    # "e":Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;
    .end local v22    # "idsStr":Ljava/lang/StringBuffer;
    .end local v25    # "mCount":I
    .end local v29    # "name":Ljava/lang/String;
    .end local v30    # "number":Ljava/lang/String;
    .end local v36    # "str":Ljava/lang/String;
    .end local v44    # "time":J
    :cond_5
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 1083
    :cond_6
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    const-string v8, "com.android.mms"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0, v8}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 1084
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    iget-object v4, v4, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-virtual {v4}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->isMultiSIMDevice()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 1085
    const/4 v4, 0x2

    new-array v0, v4, [Z

    move-object/from16 v24, v0

    fill-array-data v24, :array_0

    .line 1089
    .local v24, "isPreviewArray":[Z
    const/16 v35, 0x0

    .line 1090
    .local v35, "slotIdAll":I
    const/16 v46, 0x0

    .line 1091
    .local v46, "total_unreadCount":I
    const-wide/16 v42, 0x0

    .line 1093
    .local v42, "threadIdforGeneral":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getPreviewMessagePreferenceForMultisim(Landroid/content/Context;)[Z

    move-result-object v31

    .line 1094
    .local v31, "pPreviewValue":[Z
    const/4 v4, 0x0

    const/4 v8, 0x0

    aget-boolean v8, v31, v8

    aput-boolean v8, v24, v4

    .line 1095
    const/4 v4, 0x1

    const/4 v8, 0x1

    aget-boolean v8, v31, v8

    aput-boolean v8, v24, v4

    .line 1097
    const-string v7, "unread_count>0"

    .line 1099
    const/4 v4, 0x5

    new-array v14, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v8, "_id"

    aput-object v8, v14, v4

    const/4 v4, 0x1

    const-string v8, "recipient_ids"

    aput-object v8, v14, v4

    const/4 v4, 0x2

    const-string v8, "unread_count"

    aput-object v8, v14, v4

    const/4 v4, 0x3

    const-string v8, "snippet"

    aput-object v8, v14, v4

    const/4 v4, 0x4

    const-string v8, "date"

    aput-object v8, v14, v4

    .line 1106
    .local v14, "projection":[Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v4, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v8, "simple"

    const-string v10, "true"

    invoke-virtual {v4, v8, v10}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v13

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v15, v7

    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 1111
    if-eqz v18, :cond_1e

    .line 1112
    :goto_7
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1113
    const-string v4, "_id"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v40

    .line 1115
    .local v40, "threadId":J
    const-string v4, "recipient_ids"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 1118
    .local v33, "recipient_ids":Ljava/lang/String;
    const-string v4, "unread_count"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v47

    .line 1120
    .local v47, "unreadCount":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    move-object/from16 v0, v20

    move-object/from16 v1, v33

    invoke-static {v4, v0, v1}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->access$2900(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 1122
    .restart local v29    # "name":Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    invoke-virtual {v4}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->isKoreaFeature()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1123
    sget v4, Lcom/sec/android/sviewcover/R$string;->unknown_address:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 1126
    :cond_7
    new-instance v21, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    const/4 v8, 0x0

    move-object/from16 v0, v21

    invoke-direct {v0, v4, v8}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;-><init>(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;Lcom/sec/android/sviewcover/SViewCoverMissedEvents$1;)V

    .line 1127
    .restart local v21    # "e":Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    move-object/from16 v0, v20

    move-wide/from16 v1, v40

    move-object/from16 v3, v21

    invoke-static {v4, v0, v1, v2, v3}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->access$3000(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;Landroid/content/Context;JLcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;)I

    move-result v34

    .line 1129
    .local v34, "slotId":I
    const/4 v4, 0x1

    move/from16 v0, v34

    if-ne v0, v4, :cond_8

    const/4 v4, 0x1

    aget-boolean v4, v24, v4

    if-nez v4, :cond_9

    :cond_8
    if-nez v34, :cond_18

    const/4 v4, 0x0

    aget-boolean v4, v24, v4

    if-eqz v4, :cond_18

    .line 1131
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    move-object/from16 v0, v20

    move-object/from16 v1, v33

    invoke-static {v4, v0, v1}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->access$3100(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 1133
    .local v32, "photoUri":Ljava/lang/String;
    if-eqz v32, :cond_a

    const-string v4, "null"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1134
    const/16 v32, 0x0

    .line 1142
    :cond_a
    move-object/from16 v0, v29

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->name:Ljava/lang/String;

    .line 1143
    move-object/from16 v0, v32

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->photoUri:Ljava/lang/String;

    .line 1144
    move/from16 v0, v47

    move-object/from16 v1, v21

    iput v0, v1, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->unreadCount:I

    .line 1145
    const/4 v4, 0x0

    move-object/from16 v0, v21

    iput v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->type:I

    .line 1146
    move-wide/from16 v0, v40

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->id:J

    .line 1147
    move/from16 v0, v34

    move-object/from16 v1, v21

    iput v0, v1, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->slotId:I

    .line 1148
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->mMissedEventTable:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1179
    .end local v32    # "photoUri":Ljava/lang/String;
    :goto_8
    const-string v4, "SViewCoverMissedEvents"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "threadID="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, v40

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 946
    .end local v14    # "projection":[Ljava/lang/String;
    .end local v21    # "e":Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;
    .end local v24    # "isPreviewArray":[Z
    .end local v29    # "name":Ljava/lang/String;
    .end local v31    # "pPreviewValue":[Z
    .end local v33    # "recipient_ids":Ljava/lang/String;
    .end local v34    # "slotId":I
    .end local v35    # "slotIdAll":I
    .end local v40    # "threadId":J
    .end local v42    # "threadIdforGeneral":J
    .end local v46    # "total_unreadCount":I
    .end local v47    # "unreadCount":I
    :cond_b
    const/16 v37, 0x0

    .line 948
    .local v37, "total_missedCount":I
    if-eqz v18, :cond_6

    .line 949
    const-wide/16 v44, 0x0

    .line 950
    .restart local v44    # "time":J
    :goto_9
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 951
    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 952
    .restart local v25    # "mCount":I
    add-int v37, v37, v25

    .line 955
    :try_start_1
    const-string v4, "date"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v44

    goto :goto_9

    .line 956
    :catch_1
    move-exception v21

    .line 957
    .local v21, "e":Ljava/lang/Exception;
    const-string v4, "SViewCoverMissedEvents"

    const-string v8, "missed call\'s time or id is null."

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 961
    .end local v21    # "e":Ljava/lang/Exception;
    .end local v25    # "mCount":I
    :cond_c
    if-lez v37, :cond_6

    .line 962
    new-instance v21, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    const/4 v8, 0x0

    move-object/from16 v0, v21

    invoke-direct {v0, v4, v8}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;-><init>(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;Lcom/sec/android/sviewcover/SViewCoverMissedEvents$1;)V

    .line 963
    .local v21, "e":Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    iget-object v4, v4, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-virtual {v4}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v8, Lcom/sec/android/sviewcover/R$string;->missed_call_title:I

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    iput-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->name:Ljava/lang/String;

    .line 965
    move/from16 v0, v37

    move-object/from16 v1, v21

    iput v0, v1, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->unreadCount:I

    .line 966
    const/16 v36, 0x0

    .line 967
    .restart local v36    # "str":Ljava/lang/String;
    const/4 v4, 0x1

    move/from16 v0, v37

    if-ne v0, v4, :cond_d

    .line 968
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    iget-object v4, v4, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-virtual {v4}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v8, Lcom/sec/android/sviewcover/R$string;->missed_call_title:I

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v36

    .line 975
    :goto_a
    move-wide/from16 v0, v44

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->time:J

    .line 976
    const/4 v4, 0x1

    move-object/from16 v0, v21

    iput v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->type:I

    .line 977
    move-object/from16 v0, v36

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->number:Ljava/lang/String;

    .line 978
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->mMissedEventTable:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 971
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    iget-object v4, v4, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-virtual {v4}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v8, Lcom/sec/android/sviewcover/R$string;->missed_calls_count:I

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v10, v12

    invoke-virtual {v4, v8, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    goto :goto_a

    .line 983
    .end local v21    # "e":Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;
    .end local v36    # "str":Ljava/lang/String;
    .end local v37    # "total_missedCount":I
    .end local v44    # "time":J
    :cond_e
    if-eqz v18, :cond_6

    .line 984
    :goto_b
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 985
    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 986
    .restart local v25    # "mCount":I
    const-string v4, "name"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 988
    .restart local v29    # "name":Ljava/lang/String;
    const-string v4, "number"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 989
    .restart local v30    # "number":Ljava/lang/String;
    if-nez v29, :cond_f

    .line 990
    move-object/from16 v29, v30

    .line 993
    :cond_f
    const-wide/16 v44, 0x0

    .line 995
    .restart local v44    # "time":J
    :try_start_2
    const-string v4, "date"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-wide v44

    .line 1000
    :goto_c
    new-instance v21, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    const/4 v8, 0x0

    move-object/from16 v0, v21

    invoke-direct {v0, v4, v8}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;-><init>(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;Lcom/sec/android/sviewcover/SViewCoverMissedEvents$1;)V

    .line 1002
    .restart local v21    # "e":Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;
    move/from16 v0, v25

    move-object/from16 v1, v21

    iput v0, v1, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->unreadCount:I

    .line 1003
    move-object/from16 v0, v29

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->name:Ljava/lang/String;

    .line 1004
    move-wide/from16 v0, v44

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->time:J

    .line 1005
    const/4 v4, 0x1

    move-object/from16 v0, v21

    iput v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->type:I

    .line 1006
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    move-object/from16 v0, v30

    invoke-static {v4, v0}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->access$2700(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 1007
    .restart local v32    # "photoUri":Ljava/lang/String;
    move-object/from16 v0, v32

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->photoUri:Ljava/lang/String;

    .line 1009
    new-instance v22, Ljava/lang/StringBuffer;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    .line 1011
    .restart local v22    # "idsStr":Ljava/lang/StringBuffer;
    const/4 v4, 0x1

    move/from16 v0, v25

    if-le v0, v4, :cond_16

    .line 1012
    const/16 v28, 0x0

    .line 1013
    .restart local v28    # "mIndex":I
    const-string v4, "content://logs/call"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 1014
    .restart local v9    # "URI_ID_LOGS":Landroid/net/Uri;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "type=3 AND new>0 AND number=\'"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "\'"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1020
    .restart local v11    # "whereForID":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    .line 1024
    .restart local v26    # "mCursorForID":Landroid/database/Cursor;
    :goto_d
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1025
    const-string v4, "_id"

    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 1029
    .restart local v27    # "mId":Ljava/lang/String;
    if-nez v28, :cond_10

    .line 1030
    const-string v4, "_id="

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1031
    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1032
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-wide/from16 v0, v16

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->id:J

    .line 1038
    :goto_e
    add-int/lit8 v28, v28, 0x1

    .line 1039
    goto :goto_d

    .line 996
    .end local v9    # "URI_ID_LOGS":Landroid/net/Uri;
    .end local v11    # "whereForID":Ljava/lang/String;
    .end local v21    # "e":Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;
    .end local v22    # "idsStr":Ljava/lang/StringBuffer;
    .end local v26    # "mCursorForID":Landroid/database/Cursor;
    .end local v27    # "mId":Ljava/lang/String;
    .end local v28    # "mIndex":I
    .end local v32    # "photoUri":Ljava/lang/String;
    :catch_2
    move-exception v21

    .line 997
    .local v21, "e":Ljava/lang/Exception;
    const-string v4, "SViewCoverMissedEvents"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "missed call\'s time or id is null. name : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 1034
    .restart local v9    # "URI_ID_LOGS":Landroid/net/Uri;
    .restart local v11    # "whereForID":Ljava/lang/String;
    .local v21, "e":Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;
    .restart local v22    # "idsStr":Ljava/lang/StringBuffer;
    .restart local v26    # "mCursorForID":Landroid/database/Cursor;
    .restart local v27    # "mId":Ljava/lang/String;
    .restart local v28    # "mIndex":I
    .restart local v32    # "photoUri":Ljava/lang/String;
    :cond_10
    const-string v4, " OR _id= "

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1035
    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_e

    .line 1041
    .end local v27    # "mId":Ljava/lang/String;
    :cond_11
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 1050
    .end local v9    # "URI_ID_LOGS":Landroid/net/Uri;
    .end local v11    # "whereForID":Ljava/lang/String;
    .end local v26    # "mCursorForID":Landroid/database/Cursor;
    .end local v28    # "mIndex":I
    :goto_f
    const-string v4, "-1"

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1051
    const-string v4, "MISSED"

    const-string v8, "unknown"

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    iget-object v4, v4, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-virtual {v4}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v8, Lcom/sec/android/sviewcover/R$string;->unknown:I

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 1055
    :cond_12
    const-string v4, "-2"

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1056
    const-string v4, "MISSED"

    const-string v8, "private_num"

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    iget-object v4, v4, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-virtual {v4}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v8, Lcom/sec/android/sviewcover/R$string;->private_num:I

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 1061
    :cond_13
    const-string v4, "-3"

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1062
    const-string v4, "MISSED"

    const-string v8, "payphone"

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    iget-object v4, v4, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-virtual {v4}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v8, Lcom/sec/android/sviewcover/R$string;->payphone:I

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 1067
    :cond_14
    move-object/from16 v0, v30

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->number:Ljava/lang/String;

    .line 1068
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    iput-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->content:Ljava/lang/String;

    .line 1069
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    iput-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->callId:Ljava/lang/String;

    .line 1070
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    move-object/from16 v0, v30

    invoke-static {v4, v0}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->access$2800(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1071
    .local v19, "contactId":Ljava/lang/String;
    if-eqz v19, :cond_15

    .line 1072
    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v38

    .line 1073
    .local v38, "tempContactId":J
    const-wide/16 v16, 0x0

    cmp-long v4, v38, v16

    if-lez v4, :cond_15

    .line 1074
    move-wide/from16 v0, v38

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->id:J

    .line 1076
    .end local v38    # "tempContactId":J
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->mMissedEventTable:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1077
    const-string v4, "MISSED"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ID="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 1043
    .end local v19    # "contactId":Ljava/lang/String;
    :cond_16
    const-string v4, "_id="

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1044
    const-string v4, "_id"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1046
    const-string v4, "_id"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-wide/from16 v0, v16

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->id:J

    goto/16 :goto_f

    .line 1079
    .end local v21    # "e":Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;
    .end local v22    # "idsStr":Ljava/lang/StringBuffer;
    .end local v25    # "mCount":I
    .end local v29    # "name":Ljava/lang/String;
    .end local v30    # "number":Ljava/lang/String;
    .end local v32    # "photoUri":Ljava/lang/String;
    .end local v44    # "time":J
    :cond_17
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    goto/16 :goto_6

    .line 1150
    .restart local v14    # "projection":[Ljava/lang/String;
    .restart local v21    # "e":Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;
    .restart local v24    # "isPreviewArray":[Z
    .restart local v29    # "name":Ljava/lang/String;
    .restart local v31    # "pPreviewValue":[Z
    .restart local v33    # "recipient_ids":Ljava/lang/String;
    .restart local v34    # "slotId":I
    .restart local v35    # "slotIdAll":I
    .restart local v40    # "threadId":J
    .restart local v42    # "threadIdforGeneral":J
    .restart local v46    # "total_unreadCount":I
    .restart local v47    # "unreadCount":I
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    iget-object v4, v4, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v4}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$2500(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)I

    move-result v4

    const/4 v8, 0x3

    if-ne v4, v8, :cond_1b

    .line 1151
    if-gez v34, :cond_19

    .line 1152
    const-string v4, "date"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    move-wide/from16 v0, v16

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->time:J

    .line 1156
    :cond_19
    const/16 v36, 0x0

    .line 1157
    .restart local v36    # "str":Ljava/lang/String;
    const/4 v4, 0x1

    move/from16 v0, v47

    if-ne v0, v4, :cond_1a

    .line 1158
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    iget-object v4, v4, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-virtual {v4}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v8, Lcom/sec/android/sviewcover/R$string;->new_message:I

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v36

    .line 1163
    :goto_10
    move-object/from16 v0, v36

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->content:Ljava/lang/String;

    .line 1164
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    iget-object v4, v4, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-virtual {v4}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v8, Lcom/sec/android/sviewcover/R$string;->new_message_title:I

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    iput-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->name:Ljava/lang/String;

    .line 1166
    const/4 v4, 0x0

    move-object/from16 v0, v21

    iput-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->photoUri:Ljava/lang/String;

    .line 1167
    move/from16 v0, v47

    move-object/from16 v1, v21

    iput v0, v1, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->unreadCount:I

    .line 1168
    const/4 v4, 0x0

    move-object/from16 v0, v21

    iput v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->type:I

    .line 1169
    move-wide/from16 v0, v40

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->id:J

    .line 1170
    move/from16 v0, v34

    move-object/from16 v1, v21

    iput v0, v1, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->slotId:I

    .line 1171
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->mMissedEventTable:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 1160
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    iget-object v4, v4, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-virtual {v4}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v8, Lcom/sec/android/sviewcover/R$string;->message_count:I

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v10, v12

    invoke-virtual {v4, v8, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    goto :goto_10

    .line 1174
    .end local v36    # "str":Ljava/lang/String;
    :cond_1b
    move/from16 v35, v34

    .line 1175
    add-int v46, v46, v47

    .line 1176
    move-wide/from16 v42, v40

    goto/16 :goto_8

    .line 1182
    .end local v21    # "e":Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;
    .end local v29    # "name":Ljava/lang/String;
    .end local v33    # "recipient_ids":Ljava/lang/String;
    .end local v34    # "slotId":I
    .end local v40    # "threadId":J
    .end local v47    # "unreadCount":I
    :cond_1c
    if-lez v46, :cond_1d

    .line 1183
    new-instance v21, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    const/4 v8, 0x0

    move-object/from16 v0, v21

    invoke-direct {v0, v4, v8}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;-><init>(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;Lcom/sec/android/sviewcover/SViewCoverMissedEvents$1;)V

    .line 1184
    .restart local v21    # "e":Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    iget-object v4, v4, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-virtual {v4}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v8, Lcom/sec/android/sviewcover/R$string;->new_message_title:I

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    iput-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->name:Ljava/lang/String;

    .line 1186
    move/from16 v0, v46

    move-object/from16 v1, v21

    iput v0, v1, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->unreadCount:I

    .line 1187
    const/16 v36, 0x0

    .line 1188
    .restart local v36    # "str":Ljava/lang/String;
    const/4 v4, 0x1

    move/from16 v0, v46

    if-ne v0, v4, :cond_20

    .line 1189
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    iget-object v4, v4, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-virtual {v4}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v8, Lcom/sec/android/sviewcover/R$string;->new_message:I

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v36

    .line 1195
    :goto_11
    move-object/from16 v0, v36

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->content:Ljava/lang/String;

    .line 1196
    const/4 v4, 0x0

    move-object/from16 v0, v21

    iput v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->type:I

    .line 1197
    move-wide/from16 v0, v42

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->id:J

    .line 1198
    const/4 v4, 0x0

    aget-boolean v4, v24, v4

    if-nez v4, :cond_21

    const/4 v4, 0x1

    aget-boolean v4, v24, v4

    if-nez v4, :cond_21

    .line 1199
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    move-object/from16 v0, v20

    invoke-static {v4, v0}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->access$3200(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;Landroid/content/Context;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->time:J

    .line 1209
    :goto_12
    move/from16 v0, v35

    move-object/from16 v1, v21

    iput v0, v1, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->slotId:I

    .line 1210
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->mMissedEventTable:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1213
    .end local v21    # "e":Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;
    .end local v36    # "str":Ljava/lang/String;
    :cond_1d
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 1369
    .end local v14    # "projection":[Ljava/lang/String;
    .end local v24    # "isPreviewArray":[Z
    .end local v31    # "pPreviewValue":[Z
    .end local v35    # "slotIdAll":I
    .end local v42    # "threadIdforGeneral":J
    .end local v46    # "total_unreadCount":I
    :cond_1e
    :goto_13
    if-eqz v18, :cond_1f

    .line 1370
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 1371
    :cond_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->mMissedEventTable:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    invoke-static {v8}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->access$3500(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;)Ljava/util/Comparator;

    move-result-object v8

    invoke-static {v4, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1372
    const/4 v4, 0x0

    return-object v4

    .line 1192
    .restart local v14    # "projection":[Ljava/lang/String;
    .restart local v21    # "e":Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;
    .restart local v24    # "isPreviewArray":[Z
    .restart local v31    # "pPreviewValue":[Z
    .restart local v35    # "slotIdAll":I
    .restart local v36    # "str":Ljava/lang/String;
    .restart local v42    # "threadIdforGeneral":J
    .restart local v46    # "total_unreadCount":I
    :cond_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    iget-object v4, v4, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-virtual {v4}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v8, Lcom/sec/android/sviewcover/R$string;->message_count:I

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v10, v12

    invoke-virtual {v4, v8, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    goto :goto_11

    .line 1201
    :cond_21
    const/4 v4, 0x1

    aget-boolean v4, v24, v4

    if-nez v4, :cond_22

    .line 1202
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    const/4 v8, 0x1

    move-object/from16 v0, v20

    invoke-static {v4, v0, v8}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->access$3300(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;Landroid/content/Context;I)J

    move-result-wide v16

    move-wide/from16 v0, v16

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->time:J

    goto :goto_12

    .line 1206
    :cond_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    const/4 v8, 0x0

    move-object/from16 v0, v20

    invoke-static {v4, v0, v8}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->access$3300(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;Landroid/content/Context;I)J

    move-result-wide v16

    move-wide/from16 v0, v16

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->time:J

    goto :goto_12

    .line 1217
    .end local v14    # "projection":[Ljava/lang/String;
    .end local v21    # "e":Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;
    .end local v24    # "isPreviewArray":[Z
    .end local v31    # "pPreviewValue":[Z
    .end local v35    # "slotIdAll":I
    .end local v36    # "str":Ljava/lang/String;
    .end local v42    # "threadIdforGeneral":J
    .end local v46    # "total_unreadCount":I
    :cond_23
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getPreviewMesagePreference(Landroid/content/Context;)Z

    move-result v23

    .line 1218
    .local v23, "isPreview":Z
    const/16 v46, 0x0

    .line 1220
    .restart local v46    # "total_unreadCount":I
    const-string v7, "unread_count>0"

    .line 1226
    sget-object v4, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v8, "simple"

    const-string v10, "true"

    invoke-virtual {v4, v8, v10}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v8, "integrated"

    const-string v10, "true"

    invoke-virtual {v4, v8, v10}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v13

    .line 1230
    .local v13, "uri":Landroid/net/Uri;
    const/4 v4, 0x5

    new-array v14, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v8, "_id"

    aput-object v8, v14, v4

    const/4 v4, 0x1

    const-string v8, "recipient_ids"

    aput-object v8, v14, v4

    const/4 v4, 0x2

    const-string v8, "unread_count"

    aput-object v8, v14, v4

    const/4 v4, 0x3

    const-string v8, "snippet"

    aput-object v8, v14, v4

    const/4 v4, 0x4

    const-string v8, "date"

    aput-object v8, v14, v4

    .line 1237
    .restart local v14    # "projection":[Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v15, v7

    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 1240
    if-eqz v23, :cond_29

    .line 1241
    if-eqz v18, :cond_1e

    .line 1242
    :cond_24
    :goto_14
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 1243
    const-string v4, "_id"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v40

    .line 1245
    .restart local v40    # "threadId":J
    const-string v4, "recipient_ids"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 1248
    .restart local v33    # "recipient_ids":Ljava/lang/String;
    const-string v4, "unread_count"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v47

    .line 1250
    .restart local v47    # "unreadCount":I
    if-lez v47, :cond_24

    .line 1253
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    move-object/from16 v0, v20

    move-object/from16 v1, v33

    invoke-static {v4, v0, v1}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->access$2900(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 1255
    .restart local v29    # "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    move-object/from16 v0, v20

    move-object/from16 v1, v33

    invoke-static {v4, v0, v1}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->access$3100(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 1257
    .restart local v32    # "photoUri":Ljava/lang/String;
    if-eqz v32, :cond_25

    const-string v4, "null"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 1258
    const/16 v32, 0x0

    .line 1260
    :cond_25
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_26

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    invoke-virtual {v4}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->isKoreaFeature()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1261
    sget v4, Lcom/sec/android/sviewcover/R$string;->unknown_address:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 1263
    :cond_26
    new-instance v21, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    const/4 v8, 0x0

    move-object/from16 v0, v21

    invoke-direct {v0, v4, v8}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;-><init>(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;Lcom/sec/android/sviewcover/SViewCoverMissedEvents$1;)V

    .line 1265
    .restart local v21    # "e":Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    move-object/from16 v0, v20

    move-wide/from16 v1, v40

    move-object/from16 v3, v21

    invoke-static {v4, v0, v1, v2, v3}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->access$3400(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;Landroid/content/Context;JLcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;)Z

    move-result v4

    if-nez v4, :cond_27

    .line 1266
    const-string v4, "date"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    move-wide/from16 v0, v16

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->time:J

    .line 1268
    const-string v4, "snippet"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    iput-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->content:Ljava/lang/String;

    .line 1272
    :cond_27
    move-object/from16 v0, v29

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->name:Ljava/lang/String;

    .line 1273
    move-object/from16 v0, v32

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->photoUri:Ljava/lang/String;

    .line 1274
    move/from16 v0, v47

    move-object/from16 v1, v21

    iput v0, v1, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->unreadCount:I

    .line 1275
    const/4 v4, 0x0

    move-object/from16 v0, v21

    iput v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->type:I

    .line 1276
    move-wide/from16 v0, v40

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->id:J

    .line 1277
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->mMissedEventTable:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1278
    const-string v4, "SViewCoverMissedEvents"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "threadID="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, v40

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    .line 1280
    .end local v21    # "e":Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;
    .end local v29    # "name":Ljava/lang/String;
    .end local v32    # "photoUri":Ljava/lang/String;
    .end local v33    # "recipient_ids":Ljava/lang/String;
    .end local v40    # "threadId":J
    .end local v47    # "unreadCount":I
    :cond_28
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    goto/16 :goto_13

    .line 1283
    :cond_29
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    iget-object v4, v4, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v4}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$2500(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)I

    move-result v4

    const/4 v8, 0x3

    if-ne v4, v8, :cond_2f

    .line 1284
    if-eqz v18, :cond_1e

    .line 1285
    :cond_2a
    :goto_15
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 1287
    const-string v4, "_id"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v40

    .line 1289
    .restart local v40    # "threadId":J
    const-string v4, "recipient_ids"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 1292
    .restart local v33    # "recipient_ids":Ljava/lang/String;
    const-string v4, "unread_count"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v47

    .line 1294
    .restart local v47    # "unreadCount":I
    if-lez v47, :cond_2a

    .line 1297
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    move-object/from16 v0, v20

    move-object/from16 v1, v33

    invoke-static {v4, v0, v1}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->access$2900(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 1300
    .restart local v29    # "name":Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    invoke-virtual {v4}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->isKoreaFeature()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 1301
    sget v4, Lcom/sec/android/sviewcover/R$string;->unknown_address:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 1304
    :cond_2b
    new-instance v21, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    const/4 v8, 0x0

    move-object/from16 v0, v21

    invoke-direct {v0, v4, v8}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;-><init>(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;Lcom/sec/android/sviewcover/SViewCoverMissedEvents$1;)V

    .line 1306
    .restart local v21    # "e":Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    move-object/from16 v0, v20

    move-wide/from16 v1, v40

    move-object/from16 v3, v21

    invoke-static {v4, v0, v1, v2, v3}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->access$3400(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;Landroid/content/Context;JLcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;)Z

    move-result v4

    if-nez v4, :cond_2c

    .line 1307
    const-string v4, "date"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    move-wide/from16 v0, v16

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->time:J

    .line 1311
    :cond_2c
    const/16 v36, 0x0

    .line 1312
    .restart local v36    # "str":Ljava/lang/String;
    const/4 v4, 0x1

    move/from16 v0, v47

    if-ne v0, v4, :cond_2d

    .line 1313
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    iget-object v4, v4, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-virtual {v4}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v8, Lcom/sec/android/sviewcover/R$string;->new_message:I

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v36

    .line 1319
    :goto_16
    move-object/from16 v0, v36

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->content:Ljava/lang/String;

    .line 1320
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    iget-object v4, v4, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-virtual {v4}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v8, Lcom/sec/android/sviewcover/R$string;->new_message_title:I

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    iput-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->name:Ljava/lang/String;

    .line 1322
    const/4 v4, 0x0

    move-object/from16 v0, v21

    iput-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->photoUri:Ljava/lang/String;

    .line 1323
    move/from16 v0, v47

    move-object/from16 v1, v21

    iput v0, v1, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->unreadCount:I

    .line 1324
    const/4 v4, 0x0

    move-object/from16 v0, v21

    iput v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->type:I

    .line 1325
    move-wide/from16 v0, v40

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->id:J

    .line 1326
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->mMissedEventTable:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1327
    const-string v4, "SViewCoverMissedEvents"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "threadID="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, v40

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 1316
    :cond_2d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    iget-object v4, v4, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-virtual {v4}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v8, Lcom/sec/android/sviewcover/R$string;->message_count:I

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v10, v12

    invoke-virtual {v4, v8, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    goto :goto_16

    .line 1329
    .end local v21    # "e":Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;
    .end local v29    # "name":Ljava/lang/String;
    .end local v33    # "recipient_ids":Ljava/lang/String;
    .end local v36    # "str":Ljava/lang/String;
    .end local v40    # "threadId":J
    .end local v47    # "unreadCount":I
    :cond_2e
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    goto/16 :goto_13

    .line 1332
    :cond_2f
    const-wide/16 v40, 0x0

    .line 1333
    .restart local v40    # "threadId":J
    if-eqz v18, :cond_1e

    .line 1334
    :cond_30
    :goto_17
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_31

    .line 1335
    const-string v4, "unread_count"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v47

    .line 1337
    .restart local v47    # "unreadCount":I
    if-lez v47, :cond_30

    .line 1340
    add-int v46, v46, v47

    .line 1341
    const-string v4, "_id"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v40

    .line 1343
    goto :goto_17

    .line 1344
    .end local v47    # "unreadCount":I
    :cond_31
    if-lez v46, :cond_32

    .line 1345
    new-instance v21, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    const/4 v8, 0x0

    move-object/from16 v0, v21

    invoke-direct {v0, v4, v8}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;-><init>(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;Lcom/sec/android/sviewcover/SViewCoverMissedEvents$1;)V

    .line 1346
    .restart local v21    # "e":Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    iget-object v4, v4, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-virtual {v4}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v8, Lcom/sec/android/sviewcover/R$string;->new_message_title:I

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    iput-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->name:Ljava/lang/String;

    .line 1348
    move/from16 v0, v46

    move-object/from16 v1, v21

    iput v0, v1, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->unreadCount:I

    .line 1349
    const/16 v36, 0x0

    .line 1350
    .restart local v36    # "str":Ljava/lang/String;
    const/4 v4, 0x1

    move/from16 v0, v46

    if-ne v0, v4, :cond_33

    .line 1351
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    iget-object v4, v4, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-virtual {v4}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v8, Lcom/sec/android/sviewcover/R$string;->new_message:I

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v36

    .line 1357
    :goto_18
    move-object/from16 v0, v36

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->content:Ljava/lang/String;

    .line 1358
    const/4 v4, 0x0

    move-object/from16 v0, v21

    iput v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->type:I

    .line 1359
    move-wide/from16 v0, v40

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->id:J

    .line 1360
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    move-object/from16 v0, v20

    invoke-static {v4, v0}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->access$3200(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;Landroid/content/Context;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->time:J

    .line 1361
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->mMissedEventTable:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1363
    .end local v21    # "e":Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;
    .end local v36    # "str":Ljava/lang/String;
    :cond_32
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    goto/16 :goto_13

    .line 1354
    .restart local v21    # "e":Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;
    .restart local v36    # "str":Ljava/lang/String;
    :cond_33
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    iget-object v4, v4, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-virtual {v4}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v8, Lcom/sec/android/sviewcover/R$string;->message_count:I

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v10, v12

    invoke-virtual {v4, v8, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    goto :goto_18

    .line 1085
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 823
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 828
    const-string v0, "SViewCoverMissedEvents"

    const-string v1, "onPostExecute() "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->mMissedEventTable:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->access$1902(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 831
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->mMissedEventTable:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->access$2100(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;Ljava/util/ArrayList;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$2002(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;I)I

    .line 832
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->mMissedEventTable:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->access$2100(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;Ljava/util/ArrayList;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$2202(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;I)I

    .line 834
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->access$2300(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;)Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsCallbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 835
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->access$2300(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;)Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsCallbacks;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    iget-object v1, v1, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$2000(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    iget-object v2, v2, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v2}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$2200(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsCallbacks;->onMissedEventsArrived(II)V

    .line 838
    :cond_0
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    invoke-virtual {v0}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->notifyDataSetChanged()V

    .line 839
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 840
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 823
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
