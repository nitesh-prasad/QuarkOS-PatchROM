.class public Lcom/android/settings/temasek/SeekBarPreference;
.super Landroid/preference/Preference;
.source "SeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCurrentValue:I

.field private mInterval:I

.field private mMaxValue:I

.field private mMinValue:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mStatusText:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private mUnitsLeft:Ljava/lang/String;

.field private mUnitsRight:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/temasek/SeekBarPreference;->TAG:Ljava/lang/String;

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/settings/temasek/SeekBarPreference;->mMaxValue:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/temasek/SeekBarPreference;->mMinValue:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/temasek/SeekBarPreference;->mInterval:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/temasek/SeekBarPreference;->mUnitsLeft:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/temasek/SeekBarPreference;->mUnitsRight:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/temasek/SeekBarPreference;->initPreference(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/temasek/SeekBarPreference;->TAG:Ljava/lang/String;

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/settings/temasek/SeekBarPreference;->mMaxValue:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/temasek/SeekBarPreference;->mMinValue:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/temasek/SeekBarPreference;->mInterval:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/temasek/SeekBarPreference;->mUnitsLeft:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/temasek/SeekBarPreference;->mUnitsRight:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/temasek/SeekBarPreference;->initPreference(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getAttributeStringValue(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-interface {p1, p2, p3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p4

    :cond_0
    return-object v0
.end method

.method private initPreference(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p2}, Lcom/android/settings/temasek/SeekBarPreference;->setValuesFromXml(Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/widget/SeekBar;

    invoke-direct {v0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/settings/temasek/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/android/settings/temasek/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/settings/temasek/SeekBarPreference;->mMaxValue:I

    iget v2, p0, Lcom/android/settings/temasek/SeekBarPreference;->mMinValue:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/android/settings/temasek/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method private setValuesFromXml(Landroid/util/AttributeSet;)V
    .locals 6

    const-string v3, "http://schemas.android.com/apk/res/android"

    const-string v4, "max"

    const/16 v5, 0x64

    invoke-interface {p1, v3, v4, v5}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/temasek/SeekBarPreference;->mMaxValue:I

    const-string v3, "http://schemas.android.com/apk/res/com.android.settings"

    const-string v4, "min"

    const/4 v5, 0x0

    invoke-interface {p1, v3, v4, v5}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/temasek/SeekBarPreference;->mMinValue:I

    const-string v3, "http://schemas.android.com/apk/res/com.android.settings"

    const-string v4, "unitsLeft"

    const-string v5, ""

    invoke-direct {p0, p1, v3, v4, v5}, Lcom/android/settings/temasek/SeekBarPreference;->getAttributeStringValue(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/temasek/SeekBarPreference;->mUnitsLeft:Ljava/lang/String;

    const-string v3, "http://schemas.android.com/apk/res/com.android.settings"

    const-string v4, "units"

    const-string v5, ""

    invoke-direct {p0, p1, v3, v4, v5}, Lcom/android/settings/temasek/SeekBarPreference;->getAttributeStringValue(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "http://schemas.android.com/apk/res/com.android.settings"

    const-string v4, "unitsRight"

    invoke-direct {p0, p1, v3, v4, v2}, Lcom/android/settings/temasek/SeekBarPreference;->getAttributeStringValue(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/temasek/SeekBarPreference;->mUnitsRight:Ljava/lang/String;

    :try_start_0
    const-string v3, "http://schemas.android.com/apk/res/com.android.settings"

    const-string v4, "interval"

    invoke-interface {p1, v3, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/settings/temasek/SeekBarPreference;->mInterval:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v3, p0, Lcom/android/settings/temasek/SeekBarPreference;->TAG:Ljava/lang/String;

    const-string v4, "Invalid interval value"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    :try_start_0
    iget-object v3, p0, Lcom/android/settings/temasek/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const v3, 0x7f0f031f      ## public id seekBarPrefBarContainer

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eq v2, v1, :cond_1

    if-eqz v2, :cond_0

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/settings/temasek/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v3, p0, Lcom/android/settings/temasek/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-virtual {v1, v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/temasek/SeekBarPreference;->updateView(Landroid/view/View;)V

    return-void

    :catch_0
    move-exception v0

    iget-object v3, p0, Lcom/android/settings/temasek/SeekBarPreference;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error binding view: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/temasek/SeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v4, 0x7f040130      ## public layout seek_bar_preference

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/widget/RelativeLayout;

    move-object v2, v0

    const v4, 0x1020016

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/temasek/SeekBarPreference;->mTitle:Landroid/widget/TextView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    iget-object v4, p0, Lcom/android/settings/temasek/SeekBarPreference;->TAG:Ljava/lang/String;

    const-string v5, "Error creating seek bar preference"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onDependencyChanged(Landroid/preference/Preference;Z)V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->onDependencyChanged(Landroid/preference/Preference;Z)V

    invoke-virtual {p0, v1}, Lcom/android/settings/temasek/SeekBarPreference;->setShouldDisableView(Z)V

    iget-object v0, p0, Lcom/android/settings/temasek/SeekBarPreference;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/settings/temasek/SeekBarPreference;->mTitle:Landroid/widget/TextView;

    if-nez p2, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/temasek/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/temasek/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-nez p2, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 2

    const/16 v1, 0x32

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    iget v1, p0, Lcom/android/settings/temasek/SeekBarPreference;->mMinValue:I

    add-int v0, p2, v1

    iget v1, p0, Lcom/android/settings/temasek/SeekBarPreference;->mMaxValue:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/android/settings/temasek/SeekBarPreference;->mMaxValue:I

    :cond_0
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/temasek/SeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/settings/temasek/SeekBarPreference;->mCurrentValue:I

    iget v2, p0, Lcom/android/settings/temasek/SeekBarPreference;->mMinValue:I

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    :goto_1
    return-void

    :cond_1
    iget v1, p0, Lcom/android/settings/temasek/SeekBarPreference;->mMinValue:I

    if-ge v0, v1, :cond_2

    iget v0, p0, Lcom/android/settings/temasek/SeekBarPreference;->mMinValue:I

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/settings/temasek/SeekBarPreference;->mInterval:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/settings/temasek/SeekBarPreference;->mInterval:I

    rem-int v1, v0, v1

    if-eqz v1, :cond_0

    int-to-float v1, v0

    iget v2, p0, Lcom/android/settings/temasek/SeekBarPreference;->mInterval:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, p0, Lcom/android/settings/temasek/SeekBarPreference;->mInterval:I

    mul-int v0, v1, v2

    goto :goto_0

    :cond_3
    iput v0, p0, Lcom/android/settings/temasek/SeekBarPreference;->mCurrentValue:I

    iget-object v1, p0, Lcom/android/settings/temasek/SeekBarPreference;->mStatusText:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/temasek/SeekBarPreference;->persistInt(I)Z

    goto :goto_1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 6

    if-eqz p1, :cond_0

    iget v3, p0, Lcom/android/settings/temasek/SeekBarPreference;->mCurrentValue:I

    invoke-virtual {p0, v3}, Lcom/android/settings/temasek/SeekBarPreference;->getPersistedInt(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/temasek/SeekBarPreference;->mCurrentValue:I

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/settings/temasek/SeekBarPreference;->persistInt(I)Z

    iput v2, p0, Lcom/android/settings/temasek/SeekBarPreference;->mCurrentValue:I

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v3, p0, Lcom/android/settings/temasek/SeekBarPreference;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid default value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/temasek/SeekBarPreference;->notifyChanged()V

    return-void
.end method

.method public setValue(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/temasek/SeekBarPreference;->mCurrentValue:I

    return-void
.end method

.method protected updateView(Landroid/view/View;)V
    .locals 8

    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/widget/RelativeLayout;

    move-object v2, v0

    const v5, 0x7f0f031d      ## public id seekBarPrefValue

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings/temasek/SeekBarPreference;->mStatusText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/temasek/SeekBarPreference;->mStatusText:Landroid/widget/TextView;

    iget v6, p0, Lcom/android/settings/temasek/SeekBarPreference;->mCurrentValue:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/settings/temasek/SeekBarPreference;->mStatusText:Landroid/widget/TextView;

    const/16 v6, 0x1e

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMinimumWidth(I)V

    iget-object v5, p0, Lcom/android/settings/temasek/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v6, p0, Lcom/android/settings/temasek/SeekBarPreference;->mCurrentValue:I

    iget v7, p0, Lcom/android/settings/temasek/SeekBarPreference;->mMinValue:I

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    const v5, 0x7f0f031c      ## public id seekBarPrefUnitsRight

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/temasek/SeekBarPreference;->mUnitsRight:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v5, 0x7f0f031e      ## public id seekBarPrefUnitsLeft

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/temasek/SeekBarPreference;->mUnitsLeft:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    iget-object v5, p0, Lcom/android/settings/temasek/SeekBarPreference;->TAG:Ljava/lang/String;

    const-string v6, "Error updating seek bar preference"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
