

global.effects_volumen += 0.0005;
if (global.effects_volumen > 1.0) {
    global.effects_volumen = 1.0;
}
// Asumimos que mi_sonido es el índice del sonido que deseas ajustar
audio_sound_gain(snd_loopmusic, global.effects_volumen, 0);
