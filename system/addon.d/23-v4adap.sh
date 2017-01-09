#!/sbin/sh
# 
# /system/addon.d/23-v4adap.sh
#
. /tmp/backuptool.functions

list_files() {
cat <<EOF
addon.d/23-v4adap.sh
priv-app/As/As.apk
priv-app/AsUI/AsUI.apk
priv-app/ViPER4AndroidFX-2.4.0.1/ViPER4AndroidFX-2.4.0.1.apk
priv-app/ViPER4AndroidFX-2.4.0.1/lib/arm/libV4AJniUtils.so
lib/libdlbdapstorage.so
lib/soundfx/libswdap-mod.so
lib/soundfx/libv4a_fx_ics.so
lib/libacdbmapper.so
lib/libasound.so
lib/libaudcal.so
lib/libaudio_init.so
lib/libaudioalsa.so
lib/libAudioTrimmer.so
lib/libbeatscorehtc.so
lib/libsoundhoundaudio.so
lib/libvoAudioFR.so
lib/libUXVisualizerCore.so
lib/libV4AJniUtils.so
etc/dolby/ds-default.xml
etc/audio_policy.conf
etc/audio_effects.conf
etc/audio_effects_vendor.conf
etc/htc_audio_effects.conf
vendor/etc/audio_effects.conf
vendor/lib/soundfx/libqcbassboost.so
vendor/lib/soundfx/libqcreverb.so
vendor/lib/soundfx/libqcvirt
bin/alsa_amixer
bin/alsa_aplay
bin/alsa_ctl
bin/aplay
bin/asound
bin/snd
bin/snd8k
bin/sound
bin/sound8x60
bin/spkamp
etc/sony_effect/clearphase_sp_param.bin
etc/sony_effect/effect_params.data
etc/sony_effect/sforce_param_arm.bin
etc/sony_effect/sforce_param_qdsp.bin
etc/sony_effect/xloud_param_arm.bin
etc/sony_effect/xloud_param_qdsp.bin
etc/soundimage/srs_bypass.cfg
etc/soundimage/srs_geq10.cfg
etc/soundimage/srs_global.cfg
etc/soundimage/srsfx_trumedia_51.cfg
etc/soundimage/srsfx_trumedia_movie.cfg
etc/soundimage/srsfx_trumedia_music.cfg
etc/soundimage/srsfx_trumedia_voice.cfg
etc/tfa/playbackbeats.config
etc/tfa/playbackbeats.eq
etc/tfa/playbackbeats.preset
etc/tfa/playbackbeats_I.config
etc/tfa/playbackbeats_I.eq
etc/tfa/playbackbeats_I.preset
etc/image_beatbox_bt.bin
etc/image_beats_speaker.bin
etc/image_beats_wireless_bt.bin
etc/image_gec.bin
etc/image_gec_2vol.bin
etc/image_gec_bt.bin
etc/image_htc_earbud.bin
etc/image_htc_earbud_2vol.bin
etc/image_htc_midtier.bin
etc/image_htc_midtier_2vol.bin
etc/image_ibeats.bin
etc/image_ibeats_2vol.bin
etc/image_ibeats_solo.bin
etc/image_ibeats_solo_2vol.bin
etc/image_ibeats_solo_v2.bin
etc/image_ibeats_solo_v2_2vol.bin
etc/image_ibeats_v2.bin
etc/image_ibeats_v2_2vol.bin
lib/soundfx/libsonypostprocbundle.so
lib/soundfx/libsonysweffect.so
lib/soundfx/libvpt51wrapper.so
lib/soundfx/libeffectproxy.so
lib/soundfx/libsrsfx.so
lib/soundfx/libbeatsbass.so
lib/soundfx/libbeatscorehtc.so
lib/soundfx/libsrscore.so
lib/soundfx/libsrscorehtc.so
lib/soundfx/libsrsprocessing.so
lib/soundfx/libsrstb.so
lib/soundfx/libvptwrapper.so
lib/soundfx/libaudiopreprocessing.so
lib/soundfx/libbundlewrapper.so
lib/soundfx/libdownmix.so
lib/soundfx/libldnhncr.so
lib/soundfx/libqcompostprocbundle.so
lib/soundfx/libqcomvisualizer.so
lib/soundfx/libqcomvoiceprocessing.so
lib/soundfx/libreverbwrapper.so
lib/soundfx/libvisualizer.so
lib/soundfx/libxloudwrapper.so
user/share/alsa/alsa.conf
user/share/alsa/cards/aliases.conf
user/share/alsa/pcm/center_lfe.conf
user/share/alsa/pcm/default.conf
user/share/alsa/pcm/dmix.conf
user/share/alsa/pcm/dpl.conf
user/share/alsa/pcm/dsnoop.conf
user/share/alsa/pcm/front.conf
user/share/alsa/pcm/iec958.conf
user/share/alsa/pcm/modem.conf
user/share/alsa/pcm/rear.conf
user/share/alsa/pcm/side.conf
user/share/alsa/pcm/surround40.conf
user/share/alsa/pcm/surround41.conf
user/share/alsa/pcm/surround50.conf
user/share/alsa/pcm/surround51.conf
user/share/alsa/pcm/surround71.conf
su.d/50viper.sh
ViPER Version Info.txt
EOF
}

case "$1" in
  backup)
    list_files | while read FILE DUMMY; do
      backup_file $S/$FILE
    done
  ;;
  restore)
    list_files | while read FILE REPLACEMENT; do
      R=""
      [ -n "$REPLACEMENT" ] && R="$S/$REPLACEMENT"
      [ -f "$C/$S/$FILE" ] && restore_file $S/$FILE $R
    done
  ;;
  pre-backup)
    # Stub
  ;;
  post-backup)
    # Stub
  ;;
  pre-restore)
	# Stub
  ;;
  post-restore)

echo " " >> /system/build.prop
echo "## ViPER|Audio™ ##" >> /system/build.prop
echo " " >> /system/build.prop
echo "audio.deep_buffer.media=false" >> /system/build.prop
echo "lpa.decode=false" >> /system/build.prop
echo "tunnel.decode=false" >> /system/build.prop
echo "tunnel.audiovideo.decode=false" >> /system/build.prop
echo "lpa.releaselock=false" >> /system/build.prop
echo "lpa.use-stagefright=false" >> /system/build.prop
echo "persist.sys.media.use-awesome=1" >> /system/build.prop
echo "af.resampler.quality=255" >> /system/build.prop
echo "persist.af.resampler.quality=255" >> /system/build.prop
echo "persist.dev.pm.dyn_samplingrate=1" >> /system/build.prop
echo "ro.sound.driver=alsa" >> /system/build.prop
echo "ro.sound.alsa=snd_pcm" >> /system/build.prop
echo "AUDIODRIVER=alsa" >> /system/build.prop
echo "ro.sound.driver=alsa" >> /system/build.prop
echo "clock.allow_streaming_errors=false" >> /system/build.prop
echo "default.pcm.rate_converter=samplerate_zero_order" >> /system/build.prop
echo "ro.ril.enable.amr.wideband=1" >> /system/build.prop
echo " " >> /system/build.prop
echo "## SONY effect ##" >> /system/build.prop
echo "#  Allocate bit for each effect." >> /system/build.prop
echo "#  If necessary, define effect list with logical sum." >> /system/build.prop
echo "#  EFFECT_DN        0x0001 (Dynamic Normalizer)" >> /system/build.prop
echo "#  EFFECT_SF        0x0002 (S-Force)" >> /system/build.prop
echo "#  EFFECT_CPHP      0x0004 (ClearPhase Headphone)" >> /system/build.prop
echo "#  EFFECT_CA        0x0008 (ClearAudio)" >> /system/build.prop
echo "#  EFFECT_VPT       0x0010 (VPT)" >> /system/build.prop
echo "#  EFFECT_CPSP      0x0020 (ClearPhase Speaker)" >> /system/build.prop
echo "#  EFFECT_XLOUD     0x0040 (xLOUD)" >> /system/build.prop
echo "#  EFFECT_CAPLUS    0x0080 (ClearAudio+)" >> /system/build.prop
echo "#  EFFECT_SPBUNDLE  0x0100 (Speaker Bundle)" >> /system/build.prop
echo " " >> /system/build.prop
echo "# Effect used by Speaker Bundle." >> /system/build.prop
echo "# EFFECT_SF | EFFECT_CPSP | EFFECT_SPBUNDLE = 0x122" >> /system/build.prop
echo "sony.effect.custom.sp_bundle=0x122" >> /system/build.prop
echo " " >> /system/build.prop
echo "# Effect used by ClearAudio+ headset" >> /system/build.prop
echo "# EFFECT_CA | EFFECT_VPT | EFFECT_CAPLUS = 0x298" >> /system/build.prop
echo "sony.effect.custom.caplus_hs=0x298" >> /system/build.prop
echo " " >> /system/build.prop
echo "# Effect used by ClearAudio+ speaker" >> /system/build.prop
echo "# EFFECT_CA | EFFECT_VPT | EFFECT_CPSP | EFFECT_CAPLUS = 0x2B8" >> /system/build.prop
echo "sony.effect.custom.caplus_sp=0x2B8" >> /system/build.prop
echo " " >> /system/build.prop
echo "# Sound Enhancement Effects #" >> /system/build.prop
echo "sony.support.effect=0x1FF" >> /system/build.prop
echo "ro.semc.xloud.supported=true" >> /system/build.prop 
echo "persist.service.xloud.enable=1" >> /system/build.prop
echo "ro.semc.clearaudio.supported=true" >> /system/build.prop
echo "persist.service.clearaudio.enable=1" >> /system/build.prop
echo "ro.semc.clearphase.supported=true" >> /system/build.prop
echo "persist.service.clearphase.enable=1" >> /system/build.prop
echo "ro.somc.sforce.supported=true" >> /system/build.prop
echo "persist.service.sforce.enable=1" >> /system/build.prop
echo "" >> /system/build.prop
  ;;
esac
