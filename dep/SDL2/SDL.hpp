
#include <SDL2/SDL.h>

namespace SDL
{
    const auto& init = SDL_Init;
    const auto& quit = SDL_Quit;

    enum InitFlag
    {
        TIMER = SDL_INIT_TIMER,
        AUDIO = SDL_INIT_AUDIO,
        VIDEO = SDL_INIT_VIDEO,
        JOYSTICK = SDL_INIT_JOYSTICK,
        HAPTIC = SDL_INIT_HAPTIC,
        GAMECONTROLLER = SDL_INIT_GAMECONTROLLER,
        EVENTS = SDL_INIT_EVENTS,
        EVERYTHING = SDL_INIT_EVERYTHING,
        NOPARACHUTE = SDL_INIT_NOPARACHUTE
    };
} 
