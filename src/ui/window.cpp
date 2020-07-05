
#include "window.hpp"

Window::Window(std::string title)
{
    
}

Window::~Window()
{

}

void Window::open()
{
    gtk_widget_show_all(this->window);
    gtk_main();
}