/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
global.music_volumen -= 0.0005;
if (global.music_volumen < 0.0) {
    global.music_volumen = 0.0;
}
// Asumimos que mi_sonido es el índice del sonido que deseas ajustar
audio_sound_gain(snd_loopmusic, global.music_volumen, 0);