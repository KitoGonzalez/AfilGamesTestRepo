/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if (window_get_fullscreen()) {
    window_set_fullscreen(false); // Salir de pantalla completa
} else {
    window_set_fullscreen(true);  // Entrar en pantalla completa
}