.class public Lcom/android/settings/AboutRom;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AboutRom.java"


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

    const v0, 0x7f06006e      ## public xml rom_info

    invoke-virtual {p0, v0}, Lcom/android/settings/AboutRom;->addPreferencesFromResource(I)V

    return-void
.end method
