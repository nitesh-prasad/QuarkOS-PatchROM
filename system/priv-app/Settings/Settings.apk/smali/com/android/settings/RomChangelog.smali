.class public Lcom/android/settings/RomChangelog;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "RomChangelog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f060070      ## public xml rom_changelog

    invoke-virtual {p0, v0}, Lcom/android/settings/RomChangelog;->addPreferencesFromResource(I)V

    return-void
.end method
