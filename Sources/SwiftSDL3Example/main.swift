import SwiftSDL3

guard SDL_Init(SDL_INIT_VIDEO) == true else {
    fatalError("SDL could not initialize! SDL_Error: \(String(cString: SDL_GetError()))")
}
SDL_SetHint(SDL_HINT_TRACKPAD_IS_TOUCH_ONLY, "1")

let window = SwiftSDL3.SDL_CreateWindow(
    "he",
    800,
    600,
    //   SDL_WINDOW_OPENGL
    0
)

let renderer = SDL_CreateRenderer(window, nil)

var event = SDL_Event()
var renderCount = 0
while true {
    let ok = SDL_WaitEvent(&event)
    // let ok = SDL_PollEvent(&event)
    if ok == true {
        print("event:", event.type)
        if event.type == SDL_EVENT_QUIT.rawValue {
            break
        }
    }

    var rect = SDL_FRect(x: 0, y: 0, w: Float(100 + renderCount), h: Float(100 + renderCount))
    SDL_SetRenderDrawColor(renderer, 255, 0, 0, 255)
    SDL_RenderRect(renderer, &rect)
    SDL_RenderPresent(renderer)
    print("render:", renderCount)
    renderCount += 1
}
