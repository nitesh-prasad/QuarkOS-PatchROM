.class public Lcom/android/settings/temasek/NetworkTraffic;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "NetworkTraffic.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private MASK_DOWN:I

.field private MASK_PERIOD:I

.field private MASK_UNIT:I

.field private MASK_UP:I

.field private mNetTrafficAutohide:Landroid/preference/CheckBoxPreference;

.field private mNetTrafficAutohideThreshold:Lcom/android/settings/temasek/SeekBarPreference;

.field private mNetTrafficColor:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

.field private mNetTrafficPeriod:Landroid/preference/ListPreference;

.field private mNetTrafficState:Landroid/preference/ListPreference;

.field private mNetTrafficUnit:Landroid/preference/ListPreference;

.field private mNetTrafficVal:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private NetworkTrafficColorReset()V
    .locals 5

    const/4 v4, -0x1

    invoke-virtual {p0}, Lcom/android/settings/temasek/NetworkTraffic;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "network_traffic_color"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/settings/temasek/NetworkTraffic;->mNetTrafficColor:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    invoke-virtual {v1, v4}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setNewPreviewColor(I)V

    const-string v1, "#%08x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/temasek/NetworkTraffic;->mNetTrafficColor:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    invoke-virtual {v1, v0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/temasek/NetworkTraffic;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/temasek/NetworkTraffic;->NetworkTrafficColorReset()V

    return-void
.end method

.method private getBit(II)Z
    .locals 1

    and-int v0, p1, p2

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadResources()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/temasek/NetworkTraffic;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0019      ## public integer maskUp

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/temasek/NetworkTraffic;->MASK_UP:I

    const v1, 0x7f0e001a      ## public integer maskDown

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/temasek/NetworkTraffic;->MASK_DOWN:I

    const v1, 0x7f0e001b      ## public integer maskUnit

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/temasek/NetworkTraffic;->MASK_UNIT:I

    const v1, 0x7f0e001c      ## public integer maskPeriod

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/temasek/NetworkTraffic;->MASK_PERIOD:I

    return-void
.end method

.method private resetToDefault()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/temasek/NetworkTraffic;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090daf      ## public string network_traffic_color_reset

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f090db0      ## public string network_traffic_color_reset_message

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0900a7      ## public string ok

    new-instance v2, Lcom/android/settings/temasek/NetworkTraffic$1;

    invoke-direct {v2, p0}, Lcom/android/settings/temasek/NetworkTraffic$1;-><init>(Lcom/android/settings/temasek/NetworkTraffic;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0901da      ## public string cancel

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private setBit(IIZ)I
    .locals 1

    if-eqz p3, :cond_0

    or-int v0, p1, p2

    :goto_0
    return v0

    :cond_0
    xor-int/lit8 v0, p2, -0x1

    and-int/2addr v0, p1

    goto :goto_0
.end method

.method private updateNetworkTrafficState(I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-gtz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/temasek/NetworkTraffic;->mNetTrafficUnit:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/temasek/NetworkTraffic;->mNetTrafficColor:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    invoke-virtual {v0, v1}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/temasek/NetworkTraffic;->mNetTrafficPeriod:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/temasek/NetworkTraffic;->mNetTrafficAutohide:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/temasek/NetworkTraffic;->mNetTrafficAutohideThreshold:Lcom/android/settings/temasek/SeekBarPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/temasek/SeekBarPreference;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/temasek/NetworkTraffic;->mNetTrafficUnit:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/temasek/NetworkTraffic;->mNetTrafficColor:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    invoke-virtual {v0, v2}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/temasek/NetworkTraffic;->mNetTrafficPeriod:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/temasek/NetworkTraffic;->mNetTrafficAutohide:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/temasek/NetworkTraffic;->mNetTrafficAutohideThreshold:Lcom/android/settings/temasek/SeekBarPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/temasek/SeekBarPreference;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 14

    const-wide/16 v12, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v6, 0x7f06006f      ## public xml network_traffic

    invoke-virtual {p0, v6}, Lcom/android/settings/temasek/NetworkTraffic;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/android/settings/temasek/NetworkTraffic;->loadResources()V

    invoke-virtual {p0}, Lcom/android/settings/temasek/NetworkTraffic;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/temasek/NetworkTraffic;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "network_traffic_state"

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/android/settings/temasek/NetworkTraffic;->mNetTrafficState:Landroid/preference/ListPreference;

    const-string v6, "network_traffic_unit"

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/android/settings/temasek/NetworkTraffic;->mNetTrafficUnit:Landroid/preference/ListPreference;

    const-string v6, "network_traffic_period"

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/android/settings/temasek/NetworkTraffic;->mNetTrafficPeriod:Landroid/preference/ListPreference;

    const-string v6, "network_traffic_autohide"

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/temasek/NetworkTraffic;->mNetTrafficAutohide:Landroid/preference/CheckBoxPreference;

    iget-object v9, p0, Lcom/android/settings/temasek/NetworkTraffic;->mNetTrafficAutohide:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/temasek/NetworkTraffic;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v10, "network_traffic_autohide"

    invoke-static {v6, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_2

    move v6, v7

    :goto_0
    invoke-virtual {v9, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v6, p0, Lcom/android/settings/temasek/NetworkTraffic;->mNetTrafficAutohide:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v6, "network_traffic_autohide_threshold"

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/settings/temasek/SeekBarPreference;

    iput-object v6, p0, Lcom/android/settings/temasek/NetworkTraffic;->mNetTrafficAutohideThreshold:Lcom/android/settings/temasek/SeekBarPreference;

    invoke-virtual {p0}, Lcom/android/settings/temasek/NetworkTraffic;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "network_traffic_autohide_threshold"

    const/16 v10, 0xa

    invoke-static {v6, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iget-object v6, p0, Lcom/android/settings/temasek/NetworkTraffic;->mNetTrafficAutohideThreshold:Lcom/android/settings/temasek/SeekBarPreference;

    div-int/lit8 v9, v3, 0x1

    invoke-virtual {v6, v9}, Lcom/android/settings/temasek/SeekBarPreference;->setValue(I)V

    iget-object v6, p0, Lcom/android/settings/temasek/NetworkTraffic;->mNetTrafficAutohideThreshold:Lcom/android/settings/temasek/SeekBarPreference;

    invoke-virtual {v6, p0}, Lcom/android/settings/temasek/SeekBarPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v6, "network_traffic_color"

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    iput-object v6, p0, Lcom/android/settings/temasek/NetworkTraffic;->mNetTrafficColor:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    iget-object v6, p0, Lcom/android/settings/temasek/NetworkTraffic;->mNetTrafficColor:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    invoke-virtual {v6, p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/android/settings/temasek/NetworkTraffic;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "network_traffic_color"

    const/4 v10, -0x1

    invoke-static {v6, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v6, "#%08x"

    new-array v9, v7, [Ljava/lang/Object;

    and-int/lit8 v10, v1, -0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v8

    invoke-static {v6, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/android/settings/temasek/NetworkTraffic;->mNetTrafficColor:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    invoke-virtual {v6, v0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/settings/temasek/NetworkTraffic;->mNetTrafficColor:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    invoke-virtual {v6, v1}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setNewPreviewColor(I)V

    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v10

    cmp-long v6, v10, v12

    if-eqz v6, :cond_1

    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v10

    cmp-long v6, v10, v12

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/temasek/NetworkTraffic;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "network_traffic_state"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/settings/temasek/NetworkTraffic;->mNetTrafficVal:I

    iget v6, p0, Lcom/android/settings/temasek/NetworkTraffic;->mNetTrafficVal:I

    iget v9, p0, Lcom/android/settings/temasek/NetworkTraffic;->MASK_UP:I

    iget v10, p0, Lcom/android/settings/temasek/NetworkTraffic;->MASK_DOWN:I

    add-int/2addr v9, v10

    and-int v2, v6, v9

    iget-object v6, p0, Lcom/android/settings/temasek/NetworkTraffic;->mNetTrafficState:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/temasek/NetworkTraffic;->updateNetworkTrafficState(I)V

    iget-object v6, p0, Lcom/android/settings/temasek/NetworkTraffic;->mNetTrafficState:Landroid/preference/ListPreference;

    if-ltz v2, :cond_3

    :goto_1
    invoke-virtual {v6, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    iget-object v6, p0, Lcom/android/settings/temasek/NetworkTraffic;->mNetTrafficState:Landroid/preference/ListPreference;

    iget-object v9, p0, Lcom/android/settings/temasek/NetworkTraffic;->mNetTrafficState:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/settings/temasek/NetworkTraffic;->mNetTrafficState:Landroid/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v6, p0, Lcom/android/settings/temasek/NetworkTraffic;->mNetTrafficUnit:Landroid/preference/ListPreference;

    iget v9, p0, Lcom/android/settings/temasek/NetworkTraffic;->mNetTrafficVal:I

    iget v10, p0, Lcom/android/settings/temasek/NetworkTraffic;->MASK_UNIT:I

    invoke-direct {p0, v9, v10}, Lcom/android/settings/temasek/NetworkTraffic;->getBit(II)Z

    move-result v9

    if-eqz v9, :cond_0

    move v8, v7

    :cond_0
    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setValueIndex(I)V

    iget-object v6, p0, Lcom/android/settings/temasek/NetworkTraffic;->mNetTrafficUnit:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/android/settings/temasek/NetworkTraffic;->mNetTrafficUnit:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/settings/temasek/NetworkTraffic;->mNetTrafficUnit:Landroid/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget v6, p0, Lcom/android/settings/temasek/NetworkTraffic;->mNetTrafficVal:I

    iget v8, p0, Lcom/android/settings/temasek/NetworkTraffic;->MASK_PERIOD:I

    and-int/2addr v6, v8

    ushr-int/lit8 v2, v6, 0x10

    iget-object v6, p0, Lcom/android/settings/temasek/NetworkTraffic;->mNetTrafficPeriod:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    iget-object v6, p0, Lcom/android/settings/temasek/NetworkTraffic;->mNetTrafficPeriod:Landroid/preference/ListPreference;

    if-ltz v2, :cond_4

    :goto_2
    invoke-virtual {v6, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    iget-object v6, p0, Lcom/android/settings/temasek/NetworkTraffic;->mNetTrafficPeriod:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/android/settings/temasek/NetworkTraffic;->mNetTrafficPeriod:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/settings/temasek/NetworkTraffic;->mNetTrafficPeriod:Landroid/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    return-void

    :cond_2
    move v6, v8

    goto/16 :goto_0

    :cond_3
    move v2, v8

    goto :goto_1

    :cond_4
    move v2, v7

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    const v1, 0x7f090daf      ## public string network_traffic_color_reset

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200a7      ## public drawable ic_settings_backup

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/temasek/NetworkTraffic;->resetToDefault()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 11

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-object v6, p0, Lcom/android/settings/temasek/NetworkTraffic;->mNetTrafficState:Landroid/preference/ListPreference;

    if-ne p1, v6, :cond_0

    move-object v6, p2

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v6, p0, Lcom/android/settings/temasek/NetworkTraffic;->mNetTrafficVal:I

    iget v8, p0, Lcom/android/settings/temasek/NetworkTraffic;->MASK_UP:I

    iget v9, p0, Lcom/android/settings/temasek/NetworkTraffic;->MASK_UP:I

    invoke-direct {p0, v3, v9}, Lcom/android/settings/temasek/NetworkTraffic;->getBit(II)Z

    move-result v9

    invoke-direct {p0, v6, v8, v9}, Lcom/android/settings/temasek/NetworkTraffic;->setBit(IIZ)I

    move-result v6

    iput v6, p0, Lcom/android/settings/temasek/NetworkTraffic;->mNetTrafficVal:I

    iget v6, p0, Lcom/android/settings/temasek/NetworkTraffic;->mNetTrafficVal:I

    iget v8, p0, Lcom/android/settings/temasek/NetworkTraffic;->MASK_DOWN:I

    iget v9, p0, Lcom/android/settings/temasek/NetworkTraffic;->MASK_DOWN:I

    invoke-direct {p0, v3, v9}, Lcom/android/settings/temasek/NetworkTraffic;->getBit(II)Z

    move-result v9

    invoke-direct {p0, v6, v8, v9}, Lcom/android/settings/temasek/NetworkTraffic;->setBit(IIZ)I

    move-result v6

    iput v6, p0, Lcom/android/settings/temasek/NetworkTraffic;->mNetTrafficVal:I

    invoke-virtual {p0}, Lcom/android/settings/temasek/NetworkTraffic;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "network_traffic_state"

    iget v9, p0, Lcom/android/settings/temasek/NetworkTraffic;->mNetTrafficVal:I

    invoke-static {v6, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v6, p0, Lcom/android/settings/temasek/NetworkTraffic;->mNetTrafficState:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v6, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    iget-object v6, p0, Lcom/android/settings/temasek/NetworkTraffic;->mNetTrafficState:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/android/settings/temasek/NetworkTraffic;->mNetTrafficState:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v8

    aget-object v8, v8, v1

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v1}, Lcom/android/settings/temasek/NetworkTraffic;->updateNetworkTrafficState(I)V

    :goto_0
    return v7

    :cond_0
    iget-object v6, p0, Lcom/android/settings/temasek/NetworkTraffic;->mNetTrafficColor:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    if-ne p1, v6, :cond_1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->convertToARGB(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->convertToColorInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/temasek/NetworkTraffic;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "network_traffic_color"

    invoke-static {v6, v8, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/android/settings/temasek/NetworkTraffic;->mNetTrafficUnit:Landroid/preference/ListPreference;

    if-ne p1, v6, :cond_2

    iget v8, p0, Lcom/android/settings/temasek/NetworkTraffic;->mNetTrafficVal:I

    iget v9, p0, Lcom/android/settings/temasek/NetworkTraffic;->MASK_UNIT:I

    move-object v6, p2

    check-cast v6, Ljava/lang/String;

    const-string v10, "1"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-direct {p0, v8, v9, v6}, Lcom/android/settings/temasek/NetworkTraffic;->setBit(IIZ)I

    move-result v6

    iput v6, p0, Lcom/android/settings/temasek/NetworkTraffic;->mNetTrafficVal:I

    invoke-virtual {p0}, Lcom/android/settings/temasek/NetworkTraffic;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "network_traffic_state"

    iget v9, p0, Lcom/android/settings/temasek/NetworkTraffic;->mNetTrafficVal:I

    invoke-static {v6, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v6, p0, Lcom/android/settings/temasek/NetworkTraffic;->mNetTrafficUnit:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v6, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    iget-object v6, p0, Lcom/android/settings/temasek/NetworkTraffic;->mNetTrafficUnit:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/android/settings/temasek/NetworkTraffic;->mNetTrafficUnit:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v8

    aget-object v8, v8, v1

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/android/settings/temasek/NetworkTraffic;->mNetTrafficPeriod:Landroid/preference/ListPreference;

    if-ne p1, v6, :cond_3

    move-object v6, p2

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v6, p0, Lcom/android/settings/temasek/NetworkTraffic;->mNetTrafficVal:I

    iget v9, p0, Lcom/android/settings/temasek/NetworkTraffic;->MASK_PERIOD:I

    invoke-direct {p0, v6, v9, v8}, Lcom/android/settings/temasek/NetworkTraffic;->setBit(IIZ)I

    move-result v6

    shl-int/lit8 v8, v3, 0x10

    add-int/2addr v6, v8

    iput v6, p0, Lcom/android/settings/temasek/NetworkTraffic;->mNetTrafficVal:I

    invoke-virtual {p0}, Lcom/android/settings/temasek/NetworkTraffic;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "network_traffic_state"

    iget v9, p0, Lcom/android/settings/temasek/NetworkTraffic;->mNetTrafficVal:I

    invoke-static {v6, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v6, p0, Lcom/android/settings/temasek/NetworkTraffic;->mNetTrafficPeriod:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v6, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    iget-object v6, p0, Lcom/android/settings/temasek/NetworkTraffic;->mNetTrafficPeriod:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/android/settings/temasek/NetworkTraffic;->mNetTrafficPeriod:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v8

    aget-object v8, v8, v1

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3
    iget-object v6, p0, Lcom/android/settings/temasek/NetworkTraffic;->mNetTrafficAutohide:Landroid/preference/CheckBoxPreference;

    if-ne p1, v6, :cond_5

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {p0}, Lcom/android/settings/temasek/NetworkTraffic;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "network_traffic_autohide"

    if-eqz v5, :cond_4

    move v6, v7

    :goto_1
    invoke-static {v9, v10, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_4
    move v6, v8

    goto :goto_1

    :cond_5
    iget-object v6, p0, Lcom/android/settings/temasek/NetworkTraffic;->mNetTrafficAutohideThreshold:Lcom/android/settings/temasek/SeekBarPreference;

    if-ne p1, v6, :cond_6

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/settings/temasek/NetworkTraffic;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "network_traffic_autohide_threshold"

    mul-int/lit8 v9, v4, 0x1

    invoke-static {v6, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_6
    move v7, v8

    goto/16 :goto_0
.end method
