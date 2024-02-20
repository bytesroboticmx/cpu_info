#include <stdio.h>
#include <stdlib.h>

int main() {
    printf("Características físicas del CPU:\n");

    // Comando para obtener el modelo del CPU
    printf("Modelo del CPU:\n");
    system("cat /proc/cpuinfo | grep 'model name' | uniq");

    // Comando para contar la cantidad de núcleos físicos
    printf("\nCantidad de núcleos físicos:\n");
    system("cat /proc/cpuinfo | grep 'cpu cores' | uniq");

    // Comando para obtener la velocidad del reloj
    printf("\nVelocidad del reloj (MHz):\n");
    system("cat /proc/cpuinfo | grep 'cpu MHz' | uniq");

    // Agregar más comandos según sea necesario para mostrar otras características

    return 0;
}
