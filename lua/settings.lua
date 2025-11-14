local opt = vim.opt
local g = vim.g

-- Líder: espacio
g.mapleader = " "

-- UI
opt.number = true -- Número de líneas
opt.relativenumber = true -- Número relativo
opt.cursorline = true -- Resalta la línea actual
opt.termguicolors = true -- Colores modernos
opt.signcolumn = "yes" -- Siempre mostrar signos (LSP, git)

-- Tabs y sangría
opt.expandtab = true -- Tabs → espacios
opt.shiftwidth = 2 -- Sangría de 2 espacios
opt.tabstop = 2 -- Un tab = 2 espacios
opt.smartindent = true -- Indent inteligente

-- Búsqueda
opt.ignorecase = true -- Ignorar mayúsculas en búsqueda…
opt.smartcase = true -- …a menos que uses mayúsculas
opt.incsearch = true -- Buscar mientras escribes

-- Ventanas
opt.splitright = true -- Nuevos splits a la derecha
opt.splitbelow = true -- Nuevos splits abajo

-- Desempeño
opt.updatetime = 250 -- Respuesta más rápida para plugins
opt.scrolloff = 8 -- Margen al hacer scroll

-- Clipboard (para copiar/pegar con macOS y sistemas modernos)
opt.clipboard = "unnamedplus"

-- Desactivar Swapfile
opt.swapfile = false
opt.backup = false

-- Mejor experiencia inserción
opt.completeopt = { "menu", "menuone", "noselect" }

vim.keymap.set("n", "<C-z>", "u", { desc = "Undo like VSCode" })
