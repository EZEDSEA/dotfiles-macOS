-- https://505e06b2.github.io/Image-to-Braille/
-- http://www.patorjk.com/software/taag/#p=display&f=ANSI%20Shadow&t=

return {
  eden = {
    "███████╗██████╗ ███████╗███╗   ██╗",
    "██╔════╝██╔══██╗██╔════╝████╗  ██║",
    "█████╗  ██║  ██║█████╗  ██╔██╗ ██║",
    "██╔══╝  ██║  ██║██╔══╝  ██║╚██╗██║",
    "███████╗██████╔╝███████╗██║ ╚████║",
    "╚══════╝╚═════╝ ╚══════╝╚═╝  ╚═══╝",
  },

  neovim = {
    "███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗",
    "████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║",
    "██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║",
    "██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║",
    "██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║",
    "╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝",
  },

  hydra = {
    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⣄⡀⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣤⣤⣤⣀⣀⠙⣦⡀⠀⢻⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠀⢀⣼⣿⣷⣦⣤⠶⠶⢶⣤⣤⣤⡴⠟⠀⠀⠀⠀⠀⠀⠀⠈⢀⣠⣤⣶⣾⣿⣿⣿⣿⣿⣷⣤⣿⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠈⠉⠉⠛⠿⣿⣿⣷⣿⣿⣿⣿⣶⣶⣤⣄⣀⠀⠀⠀⣠⣾⣿⣿⣿⣿⣿⠟⠛⠛⠛⠿⣿⣿⣿⣿⠿⣶⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⠀⠀⠀⠀⠉⠿⠿⠋⠉⠛⠻⣿⣿⣿⣶⣮⡉⠀⠔⠉⣸⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⣿⣿⣿⣶⣜⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⣿⣿⣿⣛⠦⠀⠀⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠹⠿⠿⣿⣿⣿⣿⣶⣄⠀⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣆⠁⠀⢿⣿⣿⣿⣿⣿⣷⡀⠀⠀⠀⠀⣄⠀⠀⠀⠈⠙⠻⣿⣿⠀⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⣿⣿⣿⢿⠀⠀⠸⡇⠙⢿⣿⣿⣿⣿⣷⣶⣤⣀⣈⣳⣶⣤⣤⣄⣀⠙⠉⠀⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⣿⣿⣿⠈⠀⠀⠀⠨⠄⠒⠛⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⣭⣛⣷⣤⣄⣀⡀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⠈⣿⠀⣤⢖⣋⡁⠀⠀⠀⠀⣿⣿⣿⣿⢻⠟⠀⠀⠀⠀⢀⣤⣾⣿⣿⣿⣿⣿⣿⣿⣿⣯⠉⠛⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⠀⠀⠀",
    "⠀⠀⠀⠀⣸⣿⣿⣿⣿⣿⣿⣿⡢⠄⠀⣿⣿⣿⡏⠀⠀⠀⠀⠀⣠⣿⣿⣿⣿⣿⠛⠀⠈⢻⣿⣿⣿⣧⠀⠘⠛⠋⠉⠀⠀⠀⡉⠛⠀⠀⠀⠀",
    "⠀⠀⢠⡾⢻⣿⣿⠛⠛⢿⣿⣿⣿⣷⡀⣿⣿⣿⣧⠀⠀⠀⠀⠐⢁⣾⣿⣿⣿⠁⠀⠀⠀⠸⣿⣿⣿⣿⠀⠀⠀⠒⠒⢤⣄⣾⡄⠀⠀⠀⠀⠀",
    "⠀⠀⢸⣷⣿⣿⡿⠀⠀⠀⣿⣿⣿⣷⠈⢹⣿⣿⣿⣆⠀⠀⠀⠀⢸⣿⣿⣿⣿⣧⠀⠀⠀⢸⣿⣿⣿⣿⠀⠠⢞⣿⣿⣿⣿⣿⣿⣦⡀⠀⠀⠀",
    "⠀⣶⣿⡿⠋⠀⠀⠀⠀⣰⣿⣿⣿⢿⠇⠀⠻⣿⣿⣿⣷⣄⠀⠀⢸⡟⢿⣿⣿⣿⣷⣄⢀⣾⣿⣿⣿⣿⠀⣴⣿⣿⡿⠉⠉⣻⣿⣯⣻⡀⠀⠀",
    "⠀⠈⠛⠀⠀⠀⠀⠀⢰⣿⣿⣿⡇⠘⠀⠀⠀⠙⢿⣿⣿⣿⣷⣦⣄⡱⠈⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⠊⣾⣿⣿⣷⠀⠀⠉⠛⠻⢿⣷⣄⠀",
    "⠀⠀⠀⠀⠀⠀⠀⠀⠸⣿⣿⣿⣇⠀⠀⠀⠀⠀⠀⠉⠻⣿⣿⣿⣿⣿⣷⣦⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀⢿⢻⣿⣿⣦⠀⠀⠀⠀⠀⠙⠋⠀",
    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣿⣿⣿⣷⣦⣀⣀⠀⠀⠀⠀⠈⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠀⠀⠈⠊⣿⣿⣿⠆⠀⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⢿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠀⠀⣀⣠⣼⣿⣿⡿⠀⠀⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣉⣛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣿⣿⣿⣿⣿⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⠀⠀⡠⢾⣿⣿⣦⣄⣈⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⣷⡟⣁⣤⣄⡀⠀⠀⣤⠤⢤⣄",
    "⣴⣀⣤⣼⣷⣦⣤⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣮⣥⣴⡿",
  },

  noble = {
    "⠀⠀⠀⠀⠀⠀⣠⣤⣤⣤⣤⣤⣤⣄⠀⠀⠀⠀⠀⠀",
    "⠀⠀⢀⣴⠾⠋⣉⣠⣴⣶⣶⣤⣄⣉⠛⠶⣄⠀⠀⠀",
    "⠀⣴⠟⢁⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣶⣤⠉⢷⣄⠀",
    "⢰⠋⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡀⢻⣄",
    "⣿⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⣿",
    "⣿⠀⠘⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⣿",
    "⢻⡀⠀⠀⠀⠀⢀⣤⡘⣿⣿⠈⠙⠿⣿⣿⣿⠃⣰⡿",
    "⠈⣷⡀⠀⠀⠀⢸⣿⡇⣿⡿⠀⠀⠀⠉⣿⣿⣶⡿⠁",
    "⠀⠀⠻⣦⣀⠀⢸⣿⡇⠻⠇⢀⣠⣤⣿⣿⡿⠛⠀⠀",
    "⠀⠀⠀⠀⠉⠿⠾⣿⣿⣶⣶⣿⣿⠿⠟⠉⠀⠀⠀⠀",
  },

  panda = {
    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣶⣶⣦⡤⠒⠒⠊⠉⠉⠐⠒⠿⣿⣿⣷⠀⠀⠀",
    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⠀⠀⠀",
    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠀⠀⠀",
    "⠀⠀⠀⢀⣴⣶⣶⠄⠀⡜⠀⠀⠀⣀⣠⣤⣤⣄⡀⠀⠀⠀⠀⣶⣿⣿⣧⡀⠀",
    "⠀⠀⠀⠸⡿⠋⠀⠀⠀⠀⠀⠀⢰⣿⡿⣛⣻⣿⡇⠀⠀⠀⠀⣿⣯⣶⣿⡷⡀",
    "⠀⠀⠀⠐⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⢿⣿⡿⠏⠁⠀⡐⢖⠂⠈⠉⠉⠉⠀⡇",
    "⠀⢀⣀⡄⠀⠀⠀⠀⠀⣣⣤⣤⣀⠀⠀⠀⠀⠀⠀⠀⠉⠁⠉⠀⠀⠀⠀⣠⠃",
    "⢰⣿⣿⣷⡀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⣀⣾⣿⣷",
    "⠀⠉⠛⠛⠛⠉⠐⠒⠒⠛⠻⠿⢿⣿⣿⣿⡿⠟⠒⠒⠒⠒⠚⠛⠻⠿⠿⠛⠁",
  },

  fox = {
    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣠⣔⠂⢆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣾⡿⢿⣿⣇⠘⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡴⣿⣿⠃⠀⠉⠻⢿⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    "⢀⠤⠤⢤⣤⣄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⠞⠁⢛⡇⠀⠀⠀⢠⡔⠀⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    "⠸⠀⠀⡰⠚⠛⠻⣿⣶⡤⣄⡀⣀⠠⠄⠐⠒⠉⠀⠀⠘⠓⠠⠀⢠⣽⡅⠀⣿⡤⠀⠒⠒⠀⠠⠤⢀⡀⠀⠀⠀⠀⠀⠀⠀⠀",
    "⢸⠀⢠⣿⠋⠀⠀⠈⢏⠀⠈⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠋⠀⢀⣿⡇⠀⠀⠀⠀⠀⠀⠀⠉⠢⣀⠀⠀⠀⠀⠀⠀",
    "⠘⡀⠘⠁⠀⠀⠀⠀⠔⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢼⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠡⢀⠀⠀⠀⠀",
    "⠀⢇⠀⢰⣶⣧⠀⡔⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠑⣿⣣⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣢⠀⠀",
    "⠀⠘⣆⠀⠉⠻⠈⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡀⠀⠈⢻⣷⣦⣄⠀⠀⠀⠀⠀⡠⠀⠀⠀⢢⣥⠀⠀",
    "⠀⠀⠹⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣼⠏⠁⠀⠀⢀⣿⣿⡿⣿⡯⠗⠋⠁⠀⠀⠀⠀⢺⢞⣆⠀",
    "⠀⠀⠀⠹⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢼⠃⠀⠀⠀⢀⣾⡿⠟⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢟⡆",
    "⠀⠀⠀⠀⠈⠻⣷⡆⠀⠀⠀⢀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇",
    "⠀⠀⠀⠀⠀⠀⠈⡇⠀⠀⠀⠋⠉⠉⠉⠑⠂⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡞⡇",
    "⠀⠀⠀⠀⠀⠀⠀⠰⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣴⠀⣠⣾⡿⠁⡧⠈⠑⠀⠉⠁⠈⠃⠀⠀⠀⠀⠀⠀⠀⡼⡸⠀",
    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠂⠀⠀⠀⠤⢤⣤⣤⢤⠤⠤⢤⢤⣤⣾⣿⣿⠁⠀⠀⠀⠀⠀⠀⠐⠑⠂⢄⠤⠀⠀⠀⢀⣰⠝⠁⠀",
    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⢹⣿⣿⡀⠂⣪⣤⣼⣿⡿⢻⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠀⠀⣤⣠⣐⡿⠋⠀⠀⠀",
    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⠿⠿⢡⣾⣿⣿⣿⠛⠁⠈⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠄⣪⠕⠋⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠛⠋⠁⠀⠀⠀⠐⡀⠀⠀⠀⠀⠀⢀⣠⠴⠒⠉⠀⠀⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠑⣀⡠⠔⠒⠈⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  },

  phoenix = {
    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣤⣤⣤⣴⣶⣶⣶⢦⠤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⡀⣀⠤⠀⠒⡁⠀⢤⣶⣾⣿⣿⣿⣒⣨⣉⣛⠢⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢤⠠⣔⣒⡼⡿⠋⢑⡥⣵⣯⡿⠛⢫⠄⠐⠚⠛⠛⠿⣿⡿⣿⣿⡙⠟⠝⣝⠛⢏⡫⢍⠉⠁⠐⠀⠀⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⠀⠀⢟⠀⠀⠀⠀⢀⠀⠐⢀⣭⣶⣟⣢⣿⡏⢆⣴⣟⠝⣴⠽⣿⡾⢟⣢⠄⣠⣖⣻⣿⣿⡿⠏⡛⠿⡣⣐⠺⢶⠾⣦⠥⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⠀⠀⣻⠀⠀⠀⠀⠄⠀⣰⣿⡿⣿⣿⡯⠾⣺⣿⣿⣿⣾⠈⢸⣿⣿⠊⣁⡀⢴⣶⣿⣿⣭⡿⣟⡛⣟⡷⠖⠤⠄⠀⢀⡈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⠀⠈⡞⠀⠀⠀⠀⢸⣝⢿⣏⣝⠩⣿⣷⢁⣿⢿⣿⣿⣊⠐⣲⣶⡋⠁⠤⣬⣽⡗⢿⣵⣭⣎⣊⠪⠌⠌⠑⠂⠈⠀⠀⠀⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⠀⡜⠀⠀⢀⠀⠈⠈⠺⠬⢺⣿⡿⣿⣽⢴⣉⣿⣿⣟⣋⠩⠿⡿⠛⠐⠲⣽⡙⢯⠗⢿⡽⡃⠅⠉⠀⠀⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⠞⠡⠀⢠⡄⠀⠀⠀⠀⠀⠁⣸⣽⣞⣾⣾⣿⣿⣿⣟⣢⣭⠿⢁⢊⣹⡟⠸⠭⠙⠠⡀⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⡠⢂⠠⠉⠀⠀⠀⠀⠀⠀⣤⣿⣻⣟⣷⣿⣿⣿⠷⡋⢒⡺⠑⣷⣴⣯⣿⠳⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣶⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠐⠠⠀⠀⢀⣀⢀⠀⠀⢠⣾⡿⣟⣥⣿⣟⣿⡷⠽⢃⡞⠟⢲⣼⣽⣛⡣⠂⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⡿⣷⣀⣀⠀⠀⠀⠀⠀⠀",
    "⠀⠀⢠⢀⢀⣠⢾⣿⣮⢴⣯⣴⣨⣽⣿⣿⣿⣿⠟⢘⣃⣤⡺⣍⣺⡻⣿⣿⣋⢟⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠋⢹⣿⣻⡄⠀⠀⠀⠀⠀",
    "⠀⠀⢨⢰⣞⣿⡯⣟⣝⣿⠛⢾⣿⣿⡟⡿⠛⣮⢴⡞⡷⠕⠀⡾⣿⡿⣿⣽⢭⡋⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⠈⠿⣿⡇⠀⠀⠀⠀⠀",
    "⠀⠀⣸⣸⡟⣻⣷⣿⣿⣿⣿⣿⣿⣿⡨⢿⢗⠻⠈⣫⣰⣤⣿⣿⣿⠵⣿⡻⠆⠈⠓⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⣨⣞⡄⠀⠀⠀⠀⠀",
    "⠀⠀⢸⣿⣰⣿⠛⠣⠽⣿⣿⣿⣿⣿⣿⣦⣶⣸⣷⣿⣯⣿⡿⠿⣇⡣⡉⡙⠠⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠰⢠⣦⠀⠀⠀⠀⠀⠀⠀⠀⠠⡨⣻⣭⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠈⢿⠿⡏⠀⠀⠀⢀⣼⣾⡿⣿⣿⣿⡿⢿⢺⠝⢝⡜⠯⡘⠂⠑⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡁⣰⠇⠀⠀⠀⠀⠀⠀⠀⢀⣿⣾⠟⠃⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⠣⣱⠀⠀⡄⠭⠉⠊⢁⣻⣿⢿⣗⣼⣷⣬⡀⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠴⠚⠀⠀⠀⠀⠀⠀⠀⠀⣠⣿⡟⠋⠀⠀⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⠀⠀⠁⠀⢇⠀⠀⡰⠅⠉⠈⢀⣾⣿⣿⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⠀⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⡜⠋⠉⢀⣤⠀⠀⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠦⠀⠀⠀⠀⠀⠁⠿⣇⣿⣿⣿⣿⣑⠂⠤⠤⠤⠤⠄⠀⠀⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠈⠀⠀⠀⡊⠒⡕⠀⠀⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⠀⠀⠀⠀⠴⠋⠀⠀⠀⠀⠀⠀⠀⠀⠑⠜⢻⣻⣼⡿⣗⢤⣤⣄⣀⡀⠀⠀⠀⠀⠀⠀⢀⣀⠠⠄⠀⠀⠁⠀⠀⠀⠀⢠⠄⣤⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠁⠁⡁⠪⠢⡉⠓⠬⡍⠉⠉⠉⠉⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⠶⠂⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠐⠒⠂⠠⠤⠄⠀⠀⠀⠠⠀⠀⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  },

  dragon = {
    {
      "⠀⠀⠀⠀⠀⠀⠀⠙⢦⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⡙⠛⠷⠶⢶⣤⣤⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣭⣓⢦⣀⠀⠄⣀⠈⠉⠉⠛⠳⠶⣤⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⢀⣀⣠⣴⠛⠉⠁⠀⠀⣠⣌⡻⢤⣀⠛⠿⣶⣤⣤⣀⠀⠙⠿⣷⣄⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠉⠉⠉⠉⠉⠉⠙⠓⡠⣴⡟⣫⣭⣭⣓⢫⠳⣦⡈⠛⢿⣟⠻⠶⣤⡀⠙⢷⣄⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⣗⣽⣷⢟⠯⠭⣽⣧⢳⣌⡻⣦⡀⠙⢷⡄⠈⠙⠦⡀⠻⣧⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⣷⣿⣿⣦⠀⠀⠀⢸⣿⠺⣿⠸⣯⢻⣦⡄⠹⣦⠀⢄⠈⠂⠘⣧⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⢦⡿⡻⠛⠀⠀⢠⣿⡟⢰⣼⣴⡹⣅⠹⣿⣆⠈⢣⠈⢳⡄⠀⡸⣦⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⣏⠿⠀⠀⠀⣴⠿⡟⣱⡾⠷⠈⢿⠿⠈⢨⢿⣷⡀⠂⠀⢿⣆⢱⣿⡀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠀⠀⠀⡌⠃⢆⣮⡷⢚⠟⡆⣆⠑⠁⠀⢫⠿⣿⡄⠠⠈⢿⣆⢿⡇⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡗⣤⣟⠻⢳⣤⡾⡣⠿⠄⡀⠀⠀⣿⣻⣿⣆⢣⡘⣿⣌⣿⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⡇⣿⢸⠶⢿⡇⢰⡾⠛⠻⢶⣮⢑⢿⣷⣻⣿⡜⣧⢻⣿⣿⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠤⣍⣓⢶⠒⣁⢬⡳⣀⠒⢄⡹⡇⢪⡁⠉⢿⣷⣸⣾⣿⣿⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣴⣧⡫⠛⢫⣗⣼⢿⡟⣼⣶⣤⣼⣷⠙⢀⣿⠆⠈⣿⣿⣿⣿⣿⡆",
      "⠀⠀⠀⠀⠀⠀⠀⠀⢀⣢⠛⠃⠁⠀⠠⣪⠞⠋⠁⠀⠈⠉⠉⡻⢿⢠⣿⠧⢳⣆⢹⣿⣿⠀⠘⡇",
      "⠀⠀⠀⠀⠀⠀⠀⢀⢆⡽⠁⠀⠀⠀⠀⡆⠀⠀⠀⠀⠀⠀⠀⣼⠸⢘⡶⢁⣾⣿⠘⣿⣿⠀⠀⠁",
      "⠀⠀⠀⢀⣠⡤⢖⡛⣛⣬⠥⣐⣒⢾⡼⡧⢀⠀⠀⠀⠀⣀⡾⠛⣠⣾⣧⡘⣻⣿⠀⢹⡏⠀⠀⠈",
      "⠀⢀⣴⠟⠥⠾⠗⠒⠀⠉⠁⠀⠀⠈⠛⠏⢴⡌⠠⡀⣰⠛⣠⡿⢛⠍⠀⡸⢍⠹⠀⢸⡇⠀⠀⠀",
      "⢠⣿⣫⠖⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⢊⣪⡴⣿⣐⣻⣷⣋⣼⢢⠄⠀⢸⡀⠀⠀⠀",
      "⢸⠻⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣿⣝⠛⡯⡺⣋⣵⠏⡔⠂⠈⠛⠀⠀⠀",
      "⢸⡆⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡄⣶⠹⣦⡀⢢⣿⡏⠀⠈⠒⠢⡀⠀⠀⠀",
      "⠀⢻⣿⣞⢄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⣰⣞⠘⣿⠾⣟⡳⣝⠋⠀⠀⠀⠀⠀⠈⠳⡄⠀",
      "⠀⠀⠉⠿⣧⣙⢦⣄⠀⠀⠀⠀⠀⠀⠀⠀⣰⡿⣈⣵⠗⢠⣶⡿⠏⠈⠿⣦⣀⡀⠀⠀⠀⣀⡇⠀",
      "⠀⠀⠀⠀⠙⠋⠗⣲⡭⣿⣒⣒⣒⣒⣚⡃⠓⠫⣑⣢⠴⠛⠉⠀⠀⠀⠀⠀⠉⠙⠛⠒⠚⠉⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠓⠒⠒⠖⠒⠒⠛⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    },

    {
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣴⣶⣿⣿⣿⣿⣿⣿⣷⣶⣦⣤⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣴⠟⠋⠉⠀⠀⠀⠉⠛⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠁⠀⠀⠀⠀⠀⠀⠀⠀⠸⠋⣁⣤⣶⣶⣶⣦⣤⣉⡛⠿⣦⡀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣴⡿⠿⠿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣝⡦⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠞⠁⠀⠀⠀⠀⠙⢿⣿⣿⣿⣿⣿⣿⠿⠿⠦⠄⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠟⠋⠩⢤⡙⢿⣿⣿⣿⣿⢂⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⣠⡟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣠⡴⠊⡠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣧⢻⣿⣿⣿⢸⣆⠀⠀",
      "⠀⠀⠀⠀⠀⣾⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣽⠶⢛⣋⣉⣀⣀⣠⡇⠀⢀⠀⠀⠀⠀⠀⢹⣇⢻⣿⣿⣸⣿⠀⠀",
      "⠀⠀⠀⠀⢠⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣾⣯⡶⠾⠭⣝⣘⣿⣽⣌⢻⣶⣟⠀⠀⠀⠀⠀⢸⣿⠘⣿⡇⣿⣿⣇⠀",
      "⠀⠀⠀⠀⢸⣿⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⡟⠋⣾⢟⠭⣭⢒⣩⡝⠻⣥⣾⣿⣿⣿⡟⠀⠀⠀⢸⣿⢠⡟⣼⣿⣿⣿⠀",
      "⠀⠀⠀⠀⢸⣿⣿⣿⡄⠀⠀⠀⠀⠀⠀⢀⣼⣵⣿⠏⠸⢰⣼⠇⠈⣻⣷⢹⣿⠈⣿⡽⣿⡛⠁⠀⣿⠇⡼⠼⠿⢿⣿⣿⡀",
      "⠀⠀⠀⠀⣼⣿⣿⣿⣿⣦⡀⠀⠀⠀⢸⣽⣿⠟⠦⢰⣶⠟⠁⠀⠠⣻⡽⣸⣿⣰⣿⣷⢻⣷⣤⣾⣿⣼⢡⣿⣿⣆⢻⣿⡇",
      "⠀⢀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣦⡀⠀⠈⠉⠀⠀⣀⡿⠁⠀⠀⢄⣛⠍⣰⡿⣡⣿⣿⡟⣼⣿⢠⣿⡿⣌⣸⣿⣿⣿⡎⣿⠁",
      "⠀⠀⠐⠶⣶⣦⣍⠻⢿⣿⣿⣿⣿⣶⣄⠀⠀⠀⠙⠓⠀⢄⣺⣭⢅⣾⡿⣽⣿⣿⣿⢱⣿⢃⣿⡿⣱⣿⣿⣿⣿⣿⡇⣿⠀",
      "⠀⠀⠀⠀⠈⣿⣿⣿⣷⣬⣙⠻⠿⣿⣿⣿⣷⣄⡀⠀⠴⣛⡯⣠⣿⡟⢰⠟⠛⠛⢿⢸⠏⣾⣿⣱⣿⣿⣿⣿⣿⣿⡇⡏⠀",
      "⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣷⠶⢒⢈⣉⠙⢡⣾⣿⠟⢰⣿⡿⠀⠁⣿⣿⣿⣄⠈⣼⣿⢇⣿⣿⣿⣿⣿⣿⣿⠃⠃⠀",
      "⠀⠀⠀⠀⠀⣸⣿⣿⣿⣿⡿⢋⣥⠞⣠⠘⣿⡇⣾⢟⣵⡇⢿⣿⡇⠀⠀⠀⠀⣿⣿⢸⣿⡿⣸⣿⣿⣿⣿⣿⣿⣿⠸⠀⠀",
      "⠀⠀⠀⣀⣴⣿⡿⠟⣋⣴⣾⣿⡟⣸⣿⡇⣿⡇⢏⣿⣿⢡⣾⣿⣷⣄⣀⣀⣴⣿⡿⣿⣿⡇⣿⣿⣿⣿⣿⣿⣿⠏⠀⠀⠀",
      "⠠⠒⠋⠉⠁⠲⢾⣿⣿⣿⣿⡿⢠⣿⣿⣿⢸⣧⠸⣿⣏⢺⣿⣿⣿⣿⣿⠿⠟⢉⢄⣿⣿⡇⣿⣿⣿⣿⣿⠋⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠙⣿⣿⣿⢃⣾⣿⣿⣿⡆⣿⠇⠻⣿⠸⣿⣿⣿⣟⡿⠿⠛⣡⠎⣿⠟⠛⢹⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⠏⣾⣿⣿⣿⣿⡇⠏⠀⠀⠈⠳⣌⢿⣿⣿⢿⡿⠟⠁⠊⠀⠀⠀⠀⢿⣿⣿⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⣸⢃⣾⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠈⠉⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠻⣿⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠻⣿⣿⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    },

    {
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣀⣀⡀⠀⠀⠀⢀⣴⠀⠀⠀⢀⣀⣀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣤⣶⣿⠿⠟⠛⠋⠁⡄⠀⠀⢰⣾⣿⡟⠀⢀⡀⠀⠀⠈⠙⠛⠻⠿⣿⣶⣤⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⢀⣠⣾⣿⡿⢟⣡⣤⡶⠁⠀⠀⠀⢸⢠⣶⣶⡟⢦⣛⣻⡿⣥⣤⡆⠀⠀⠀⠈⢶⣦⣌⡛⢿⣿⣷⣄⡀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⣴⣾⣿⠟⣩⣶⣿⣿⣿⠁⠀⠀⠀⠀⣼⣼⠫⣻⡿⣣⣭⣛⠿⣷⣝⢤⣤⡆⠀⠀⠀⢿⣿⣿⣶⣍⡻⣿⣿⣦⠀⠀⠀⠀⠀",
      "⠀⠀⠀⢀⣾⣿⢟⣱⣿⣿⣿⣿⣿⠃⠀⠀⠀⠀⣰⣟⣿⣶⣿⣷⠟⠿⢿⣷⣈⣿⣎⣏⡀⠀⠀⠀⠘⣿⣿⣿⣿⣿⣎⡻⣿⣷⡄⠀⠀⠀",
      "⠀⠀⢠⣿⡿⣡⣾⣿⣿⣿⣿⣿⣿⠀⠀⠀⠰⣾⡏⠙⠉⠸⢹⣿⠖⠀⠘⣿⣿⢸⣿⢸⠛⠁⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣌⢿⣿⡄⠀⠀",
      "⠀⢀⣾⣿⣱⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠈⠂⠀⠀⠀⣸⡇⠀⠀⣸⣿⡿⣼⡿⡜⠓⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣮⢿⣷⡀⠀",
      "⠀⣼⣿⣱⣿⣿⣿⣿⣿⣿⣿⣿⣿⣇⡀⠀⠀⠀⠀⠀⠀⠐⠛⠃⣠⣾⣿⣟⣵⡿⣵⠉⠁⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣏⣿⣷⠀",
      "⢠⣿⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣮⢶⣦⣤⢀⢀⡤⡤⣴⣿⡿⣓⣷⡿⣻⣾⠙⠀⠀⠀⠀⣤⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⣿⡄",
      "⣼⣿⣿⣿⣿⣿⡿⢻⣿⣿⣿⣿⣿⡿⢟⣛⣊⣻⣨⣫⣾⣿⢟⣥⣾⠛⣡⡾⣿⠝⠀⠀⢀⣀⣛⡻⢿⣿⣿⣿⣿⣿⡟⢿⣿⣿⣿⣿⣿⣧",
      "⣿⣿⣿⠇⣿⣿⣧⢸⣿⣿⢠⢿⡟⠜⠛⠛⠛⠛⣵⣿⢟⣽⡿⠛⢀⣾⣫⣾⡷⢀⡴⠟⠛⠿⠿⠛⠣⢻⣿⡄⣿⣿⡇⡜⣿⣿⡿⣿⣿⣿",
      "⣿⣿⡿⠀⣿⣿⣿⢸⣿⣿⢸⡼⣿⠀⠀⠀⠀⣸⣻⡟⣾⡿⠁⠀⢸⣧⣿⢨⠮⠁⠀⠀⠀⠀⠀⠀⠀⣾⢇⡇⣿⣿⡇⡇⣿⣿⠀⢿⣿⣿",
      "⣿⣿⡇⣀⣿⣿⣿⡟⣿⣿⢸⡇⡟⠀⠀⠀⠀⣿⣿⠇⣿⡇⠀⠀⠘⠯⣻⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⢸⡇⣿⣿⢻⡇⣿⣿⢠⢸⣿⣿",
      "⢿⣿⣧⢸⢹⣿⡏⣧⢻⣿⠘⠁⠇⠀⠀⠀⠀⣿⢿⣇⣿⡇⠀⠀⠀⠀⠀⢀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠸⠈⠃⣿⡟⣼⢹⣿⡏⡈⣼⣿⣿",
      "⢸⣿⣿⢸⡸⣿⡇⣿⡼⣿⡄⠀⠀⠀⠀⠀⠀⠸⣿⣿⡹⣧⡀⠀⣀⣒⣶⡶⠽⣷⣄⣧⠀⠀⠀⠀⠀⠀⠀⢠⣿⣇⣿⢸⣿⠇⡇⣿⣿⡇",
      "⠘⣿⣿⡞⡇⣿⡇⣿⡇⣿⠃⠀⠀⠀⠀⠀⠀⠀⠈⢿⣾⣎⢷⣍⠛⣽⡷⠿⣿⣶⡽⣿⠀⠀⠀⠀⠀⠀⠀⠈⣿⢻⣿⢸⣿⢸⣷⣿⣿⠃",
      "⠀⣿⣿⡇⣷⢿⡇⣿⡇⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⠷⡬⣛⢶⣦⣤⣬⣽⠞⠃⠀⠀⠀⠀⠀⠀⠀⠀⣿⢸⣿⢸⡿⣾⢻⣿⣿⠀",
      "⠀⢸⣿⣷⣿⢸⡇⣿⡇⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠴⢿⣟⣼⡗⠀⠈⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⢸⣿⢸⡇⣿⢸⣿⡿⠀",
      "⠀⢸⣿⣿⢻⢸⡇⠀⢀⠃⠀⠀⠀⠀⠀⠀⠀⠀⢐⣻⢏⣾⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⡇⠀⢸⡇⡿⢸⣿⡇⠀",
      "⠀⠈⣿⣿⡸⢸⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠰⠿⡟⣾⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇⢇⣿⣿⠁⠀",
      "⠀⠀⣿⣿⠀⢸⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡰⠿⢷⣿⡇⠀⠀⠀⠀⢠⢢⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⠀⢿⣿⠀⠀",
      "⠀⠀⣿⣿⠀⠘⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⢾⣸⣿⡇⠀⠀⠀⠀⣼⡾⣿⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢃⠀⢸⣿⠀⠀",
      "⠀⠀⣿⡏⠀⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠿⡏⣿⣷⡄⠀⠀⠀⠁⢰⣿⠻⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠀⢸⣿⠀⠀",
      "⠀⠀⣿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣝⢿⣿⣦⣄⣀⣴⣾⡏⠀⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣿⠀⠀",
      "⠀⠀⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣽⣛⣛⣛⣫⡟⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⠀⠀",
      "⠀⢸⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠿⡎⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⡇⠀",
      "⠀⠌⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠑⠀",
    },
  },
}
