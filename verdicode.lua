-- PROJETO VERDICODE
-- OBS: SÓ VAI FUNCIONAR SE HOUVER ESSE PREPROCESSADOR

local arquivo = arg[1] or "exemplo.vdc"     -- pega o nome do arquivo

-- 1) Lê o código VerdiCode
local codigo = io.open(arquivo):read("*a")

-- 2) SUBSTITUI
codigo = codigo
    :gsub("sustentar", "do")
    :gsub("fim", "end")
    :gsub("monitorar (.-) então", "if %1 then")
    :gsub("senão", "else")
    :gsub("eco_registrar%(\"(.-)\"%)", 'print("[VERDICODE] %1")')

-- 3) Adiciona proteção de 15 segundos
codigo = [[
local inicio = os.time()
]] .. codigo .. [[

if os.time() - inicio > 15 then
    print("[VERDICODE] Parou! Economizando bateria ♻️")
    os.exit()
end
]]
-- GERA UM ARQUIVO NOVO TRADUZIDO PARA O LUA 
local nome_lua = arquivo:gsub(".vdc", ".lua")
io.open(nome_lua, "w"):write(codigo)
print("Convertido → " .. nome_lua)
os.execute("lua " .. nome_lua)   