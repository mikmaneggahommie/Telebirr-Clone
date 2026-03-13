.class public Lcom/android/systemui/multiwindow/SplitAppListFragment$GridViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "SplitAppListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/multiwindow/SplitAppListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GridViewAdapter"
.end annotation


# instance fields
.field mInflater:Landroid/view/LayoutInflater;

.field mViewPagerNum:I

.field final synthetic this$0:Lcom/android/systemui/multiwindow/SplitAppListFragment;


# direct methods
.method public constructor <init>(Lcom/android/systemui/multiwindow/SplitAppListFragment;I)V
    .locals 2
    .param p2, "position"    # I

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment$GridViewAdapter;->this$0:Lcom/android/systemui/multiwindow/SplitAppListFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 166
    invoke-static {p1}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->access$200(Lcom/android/systemui/multiwindow/SplitAppListFragment;)I

    move-result v0

    mul-int/2addr v0, p2

    iput v0, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment$GridViewAdapter;->mViewPagerNum:I

    .line 167
    invoke-static {p1}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->access$300(Lcom/android/systemui/multiwindow/SplitAppListFragment;)Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment$GridViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 168
    return-void
.end method


# virtual methods
.method public createView(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    const/4 v4, 0x0

    .line 191
    iget-object v2, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment$GridViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040003

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 193
    .local v0, "convertView":Landroid/view/View;
    new-instance v1, Lcom/android/systemui/multiwindow/SplitAppListFragment$AppListItemGridViewHolder;

    invoke-direct {v1}, Lcom/android/systemui/multiwindow/SplitAppListFragment$AppListItemGridViewHolder;-><init>()V

    .line 195
    .local v1, "holder":Lcom/android/systemui/multiwindow/SplitAppListFragment$AppListItemGridViewHolder;
    const v2, 0x7f0f00b6

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/systemui/multiwindow/SplitAppListFragment$AppListItemGridViewHolder;->iconView:Landroid/widget/ImageView;

    .line 196
    iget-object v2, v1, Lcom/android/systemui/multiwindow/SplitAppListFragment$AppListItemGridViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 197
    const v2, 0x7f0f00b8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/systemui/multiwindow/SplitAppListFragment$AppListItemGridViewHolder;->labelView:Landroid/widget/TextView;

    .line 198
    iget-object v2, v1, Lcom/android/systemui/multiwindow/SplitAppListFragment$AppListItemGridViewHolder;->labelView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 199
    iput p2, v1, Lcom/android/systemui/multiwindow/SplitAppListFragment$AppListItemGridViewHolder;->position:I

    .line 201
    iget-object v2, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment$GridViewAdapter;->this$0:Lcom/android/systemui/multiwindow/SplitAppListFragment;

    iget-object v2, v2, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mViewPagerIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v2, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment$GridViewAdapter;->this$0:Lcom/android/systemui/multiwindow/SplitAppListFragment;

    iget-object v2, v2, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mViewPagerIconTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 203
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 204
    return-object v0
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 172
    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment$GridViewAdapter;->this$0:Lcom/android/systemui/multiwindow/SplitAppListFragment;

    invoke-static {v1}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->access$300(Lcom/android/systemui/multiwindow/SplitAppListFragment;)Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getMultiWindowAppListInfo()Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->getViewPagerAppListCnt()I

    move-result v0

    .line 173
    .local v0, "appcnt":I
    iget v1, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment$GridViewAdapter;->mViewPagerNum:I

    sub-int v1, v0, v1

    iget-object v2, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment$GridViewAdapter;->this$0:Lcom/android/systemui/multiwindow/SplitAppListFragment;

    invoke-static {v2}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->access$200(Lcom/android/systemui/multiwindow/SplitAppListFragment;)I

    move-result v2

    if-le v1, v2, :cond_0

    .line 174
    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment$GridViewAdapter;->this$0:Lcom/android/systemui/multiwindow/SplitAppListFragment;

    invoke-static {v1}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->access$200(Lcom/android/systemui/multiwindow/SplitAppListFragment;)I

    move-result v1

    .line 176
    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment$GridViewAdapter;->mViewPagerNum:I

    sub-int v1, v0, v1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment$GridViewAdapter;->this$0:Lcom/android/systemui/multiwindow/SplitAppListFragment;

    invoke-static {v0}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->access$300(Lcom/android/systemui/multiwindow/SplitAppListFragment;)Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getMultiWindowAppListInfo()Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment$GridViewAdapter;->mViewPagerNum:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->getViewPagerAppListItem(I)Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 187
    iget v0, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment$GridViewAdapter;->mViewPagerNum:I

    add-int/2addr v0, p1

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v9, 0xff

    const/16 v8, 0x4c

    .line 209
    if-nez p2, :cond_0

    .line 210
    invoke-virtual {p0, p3, p1}, Lcom/android/systemui/multiwindow/SplitAppListFragment$GridViewAdapter;->createView(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p2

    .line 211
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 212
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Recycled child has parent"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 214
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 215
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Recycled child has parent"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 218
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/multiwindow/SplitAppListFragment$AppListItemGridViewHolder;

    .line 219
    .local v1, "holder":Lcom/android/systemui/multiwindow/SplitAppListFragment$AppListItemGridViewHolder;
    iget-object v6, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment$GridViewAdapter;->this$0:Lcom/android/systemui/multiwindow/SplitAppListFragment;

    invoke-static {v6}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->access$300(Lcom/android/systemui/multiwindow/SplitAppListFragment;)Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getMultiWindowAppListInfo()Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

    move-result-object v6

    iget v7, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment$GridViewAdapter;->mViewPagerNum:I

    add-int/2addr v7, p1

    invoke-virtual {v6, v7}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->getViewPagerAppListItem(I)Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;

    move-result-object v4

    .line 221
    .local v4, "launchItem":Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;
    invoke-virtual {v4}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    .line 222
    .local v3, "label":Ljava/lang/CharSequence;
    iget-object v6, v1, Lcom/android/systemui/multiwindow/SplitAppListFragment$AppListItemGridViewHolder;->labelView:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v6, v1, Lcom/android/systemui/multiwindow/SplitAppListFragment$AppListItemGridViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v6, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment$GridViewAdapter;->this$0:Lcom/android/systemui/multiwindow/SplitAppListFragment;

    iget-object v7, v1, Lcom/android/systemui/multiwindow/SplitAppListFragment$AppListItemGridViewHolder;->labelView:Landroid/widget/TextView;

    invoke-static {v6, v7}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->access$400(Lcom/android/systemui/multiwindow/SplitAppListFragment;Landroid/widget/TextView;)V

    .line 226
    invoke-virtual {v4}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 227
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    if-nez v2, :cond_2

    .line 228
    invoke-virtual {v4}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->refreshItemIcon()V

    .line 229
    invoke-virtual {v4}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 231
    :cond_2
    iget-object v6, v1, Lcom/android/systemui/multiwindow/SplitAppListFragment$AppListItemGridViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 233
    invoke-virtual {v4}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 234
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v6, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment$GridViewAdapter;->this$0:Lcom/android/systemui/multiwindow/SplitAppListFragment;

    invoke-static {v6}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->access$300(Lcom/android/systemui/multiwindow/SplitAppListFragment;)Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v6

    if-eqz v6, :cond_6

    if-eqz v5, :cond_6

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment$GridViewAdapter;->this$0:Lcom/android/systemui/multiwindow/SplitAppListFragment;

    invoke-static {v7}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->access$500(Lcom/android/systemui/multiwindow/SplitAppListFragment;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 236
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_5

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 237
    .local v0, "applicationMetaData":Landroid/os/Bundle;
    :goto_0
    if-eqz v0, :cond_3

    const-string v6, "com.samsung.android.sdk.multiwindow.multiinstance.enable"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    :cond_3
    iget-object v6, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment$GridViewAdapter;->this$0:Lcom/android/systemui/multiwindow/SplitAppListFragment;

    invoke-static {v6}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->access$600(Lcom/android/systemui/multiwindow/SplitAppListFragment;)Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-result-object v6

    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v6, v7}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupporMultiInstance(Landroid/content/pm/ActivityInfo;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 239
    iget-object v6, v1, Lcom/android/systemui/multiwindow/SplitAppListFragment$AppListItemGridViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 240
    iget-object v6, v1, Lcom/android/systemui/multiwindow/SplitAppListFragment$AppListItemGridViewHolder;->labelView:Landroid/widget/TextView;

    iget-object v7, v1, Lcom/android/systemui/multiwindow/SplitAppListFragment$AppListItemGridViewHolder;->labelView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 241
    const/4 v6, 0x0

    invoke-virtual {p2, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 248
    .end local v0    # "applicationMetaData":Landroid/os/Bundle;
    :cond_4
    :goto_1
    iget-object v6, v1, Lcom/android/systemui/multiwindow/SplitAppListFragment$AppListItemGridViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->invalidate()V

    .line 249
    return-object p2

    .line 236
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 244
    :cond_6
    iget-object v6, v1, Lcom/android/systemui/multiwindow/SplitAppListFragment$AppListItemGridViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 245
    iget-object v6, v1, Lcom/android/systemui/multiwindow/SplitAppListFragment$AppListItemGridViewHolder;->labelView:Landroid/widget/TextView;

    iget-object v7, v1, Lcom/android/systemui/multiwindow/SplitAppListFragment$AppListItemGridViewHolder;->labelView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 246
    const/4 v6, 0x1

    invoke-virtual {p2, v6}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1
.end method
