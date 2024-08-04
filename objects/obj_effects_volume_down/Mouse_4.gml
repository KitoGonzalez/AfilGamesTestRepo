/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
global.effects_volumen -= 0.0005;
if (global.effects_volumen < 0.0) {
    global.effects_volumen = 0.0;
}
// Asumimos que mi_sonido es el índice del sonido que deseas ajustar
audio_sound_gain(snd_buttonsound, global.effects_volumen, 0);