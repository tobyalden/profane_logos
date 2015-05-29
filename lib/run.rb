require 'curses'

class Main

  def initialize
    @WINDOW_HEIGHT = 24
    @WINDOW_WIDTH = 80

    @intro = ["The sun burns a red haze in the dirty sky.",
              "The scent of smoke and sweat, meat roasting on a hot grill. Seagulls turn in lazy arcs above.",
              "Turning, you see a figure approach."]

    Curses.init_screen()
    Curses.noecho()
    @win = Curses::Window.new(24, 80, 0, 0)
    main()
    @win.close
  end

  def main

    title = "PROFANE LOGOS"
    @win.setpos(@WINDOW_HEIGHT/2-1, @WINDOW_WIDTH/2-1 - title.length/2)
    @win.addstr(title)

    c = @win.getch()

    if(c)
      @win.clear
    end

    esc = false
    i = 0
    while(!esc)

      @win.addstr(@intro[i])

      c = @win.getch()

      if(c == 'q' || c == "Q")
        esc = true
      end

      i += 1

      @win.clear()
      @win.refresh()

    end
  end

end

main = Main.new()
