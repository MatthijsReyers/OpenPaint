#pragma once
#include <string>
#include <gtkmm.h>

class Window : public Gtk::Window
{
    private:
        GtkWidget* window;

    public:
        Window();
        Window(std::string title);

        ~Window();

        void open();
};