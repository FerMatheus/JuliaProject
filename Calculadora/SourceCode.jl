using Gtk

win = GtkWindow("Calculadora Julia")

hbox = GtkButtonBox(:h)
hbox2 = GtkButtonBox(:h)
hbox3 = GtkButtonBox(:h)
hbox4 = GtkButtonBox(:h)
hbox5 = GtkButtonBox(:h)
hbox6 = GtkButtonBox(:h)
hbox7 = GtkButtonBox(:h)

vbox = GtkButtonBox(:v)
label = GtkLabel("")
GAccessor.text(label, "")

push!(vbox, GtkLabel(""))
push!(vbox, label)
push!(vbox, GtkLabel(""))
# Buttons

# Numerics
bt1 = GtkButton("1")
bt2 = GtkButton("2")
bt3 = GtkButton("3")
bt4 = GtkButton("4")
bt5 = GtkButton("5")
bt6 = GtkButton("6")
bt7 = GtkButton("7")
bt8 = GtkButton("8")
bt9 = GtkButton("9")
bt0 = GtkButton("0")
# Clean
btC = GtkButton("C")
btequals = GtkButton("=")
# Operations
btplus = GtkButton("+")
btminus = GtkButton("-")
btmulti = GtkButton("*")
btdiv = GtkButton("/")
btpi = GtkButton("π")
# Invert
btinv = GtkButton("+/-")
# functions
btfat = GtkButton("n!")
btcos = GtkButton("cos")
btsen = GtkButton("sen")
btsquareRoot = GtkButton("√")
btoneAboveX = GtkButton("1/x")
btsquare = GtkButton("x²")
btmod = GtkButton("mod")
btmoduler = GtkButton("|x|")
bteuler = GtkButton("ℯ")
btln = GtkButton("ln")
btlog = GtkButton("log")
btdot = GtkButton(".")
btspace = GtkButton("space")

cyan = GtkCssProvider(data="#cyan {background:cyan;}")
silver = GtkCssProvider(data="#silver {background:silver}")

# Changing the button's color
sc = GAccessor.style_context(btequals)
spb = GtkStyleProvider(cyan)
push!(sc, spb, 600)
set_gtk_property!(btequals, :name, "cyan")

sc = GAccessor.style_context(btpi)
spb = GtkStyleProvider(silver)
push!(sc, spb, 600)
set_gtk_property!(btpi, :name, "silver")
sc = GAccessor.style_context(bteuler)
spb = GtkStyleProvider(silver)
push!(sc, spb, 600)
set_gtk_property!(bteuler, :name, "silver")
sc = GAccessor.style_context(btcos)
spb = GtkStyleProvider(silver)
push!(sc, spb, 600)
set_gtk_property!(btcos, :name, "silver")
sc = GAccessor.style_context(btsen)
spb = GtkStyleProvider(silver)
push!(sc, spb, 600)
set_gtk_property!(btsen, :name, "silver")
sc = GAccessor.style_context(btfat)
spb = GtkStyleProvider(silver)
push!(sc, spb, 600)
set_gtk_property!(btfat, :name, "silver")
sc = GAccessor.style_context(btsquare)
spb = GtkStyleProvider(silver)
push!(sc, spb, 600)
set_gtk_property!(btsquare, :name, "silver")
sc = GAccessor.style_context(btoneAboveX)
spb = GtkStyleProvider(silver)
push!(sc, spb, 600)
set_gtk_property!(btoneAboveX, :name, "silver")
sc = GAccessor.style_context(btmoduler)
spb = GtkStyleProvider(silver)
push!(sc, spb, 600)
set_gtk_property!(btmoduler, :name, "silver")
sc = GAccessor.style_context(btsquareRoot)
spb = GtkStyleProvider(silver)
push!(sc, spb, 600)
set_gtk_property!(btsquareRoot, :name, "silver")
sc = GAccessor.style_context(btdiv)
spb = GtkStyleProvider(silver)
push!(sc, spb, 600)
set_gtk_property!(btdiv, :name, "silver")
sc = GAccessor.style_context(btmod)
spb = GtkStyleProvider(silver)
push!(sc, spb, 600)
set_gtk_property!(btmod, :name, "silver")
sc = GAccessor.style_context(btmulti)
spb = GtkStyleProvider(silver)
push!(sc, spb, 600)
set_gtk_property!(btmulti, :name, "silver")
sc = GAccessor.style_context(btln)
spb = GtkStyleProvider(silver)
push!(sc, spb, 600)
set_gtk_property!(btln, :name, "silver")
sc = GAccessor.style_context(btminus)
spb = GtkStyleProvider(silver)
push!(sc, spb, 600)
set_gtk_property!(btminus, :name, "silver")
sc = GAccessor.style_context(btlog)
spb = GtkStyleProvider(silver)
push!(sc, spb, 600)
set_gtk_property!(btlog, :name, "silver")
sc = GAccessor.style_context(btplus)
spb = GtkStyleProvider(silver)
push!(sc, spb, 600)
set_gtk_property!(btplus, :name, "silver")
sc = GAccessor.style_context(btC)
spb = GtkStyleProvider(silver)
push!(sc, spb, 600)
set_gtk_property!(btC, :name, "silver")
sc = GAccessor.style_context(btinv)
spb = GtkStyleProvider(silver)
push!(sc, spb, 600)
set_gtk_property!(btinv, :name, "silver")
sc = GAccessor.style_context(btdot)
spb = GtkStyleProvider(silver)
push!(sc, spb, 600)
set_gtk_property!(btdot, :name, "silver")
sc = GAccessor.style_context(btspace)
spb = GtkStyleProvider(silver)
push!(sc, spb, 600)
set_gtk_property!(btspace, :name, "silver")


# Oriented buttons
push!(hbox, btpi)
push!(hbox, bteuler)
push!(hbox, btcos)
push!(hbox, btsen)
push!(hbox, btfat)

push!(hbox2, btsquare)
push!(hbox2, btoneAboveX)
push!(hbox2, btmoduler)
push!(hbox2, btsquareRoot)
push!(hbox2, btdiv)

push!(hbox3, btmod)
push!(hbox3, bt7)
push!(hbox3, bt8)
push!(hbox3, bt9)
push!(hbox3, btmulti)

push!(hbox4, btln)
push!(hbox4, bt4)
push!(hbox4, bt5)
push!(hbox4, bt6)
push!(hbox4, btminus)

push!(hbox5, btlog)
push!(hbox5, bt1)
push!(hbox5, bt2)
push!(hbox5, bt3)
push!(hbox5, btplus)

push!(hbox6, btC)
push!(hbox6, btinv)
push!(hbox6, bt0)
push!(hbox6, btdot)
push!(hbox6, btequals)

push!(hbox7, btspace)

push!(vbox, hbox)
push!(vbox, hbox2)
push!(vbox, hbox3)
push!(vbox, hbox4)
push!(vbox, hbox5)
push!(vbox, hbox6)
push!(vbox, hbox7)

push!(win, vbox)

output = ""
func = "C:\\workspace\\JuliaProject\\Calculadora\\C_functions\\libmath_em_c_v4.dll"

function calculate(input)
    middle = "+ " * input
    final = split(middle)
    result = 0

    for index = 1:lastindex(final)
        if final[index] == "+"
            result += parse(Float64, final[index+1])
        elseif final[index] == "-"
            result -= parse(Float64, final[index+1])
        elseif final[index] == "*"
            result *= parse(Float64, final[index+1])
        elseif final[index] == "/"
            result /= parse(Float64, final[index+1])
        end
    end
    return string(result)
end
function write_label(wiget)
    if wiget == bt1
        global output = output * "1"
        GAccessor.text(label, output)
    elseif wiget == bt2
        global output = output * "2"
        GAccessor.text(label, output)
    elseif wiget == bt3
        global output = output * "3"
        GAccessor.text(label, output)
    elseif wiget == bt4
        global output = output * "4"
        GAccessor.text(label, output)
    elseif wiget == bt5
        global output = output * "5"
        GAccessor.text(label, output)
    elseif wiget == bt6
        global output = output * "6"
        GAccessor.text(label, output)
    elseif wiget == bt7
        global output = output * "7"
        GAccessor.text(label, output)
    elseif wiget == bt8
        global output = output * "8"
        GAccessor.text(label, output)
    elseif wiget == bt9
        global output = output * "9"
        GAccessor.text(label, output)
    elseif wiget == bt0
        global output = output * "0"
        GAccessor.text(label, output)
    elseif wiget == btC
        global output = ""
        GAccessor.text(label, output)
    elseif wiget == btequals
        global output = calculate(output)
        GAccessor.text(label, output)
    elseif wiget == btplus
        global output = output * "+"
        GAccessor.text(label, output)
    elseif wiget == btminus
        global output = output * "-"
        GAccessor.text(label, output)
    elseif wiget == btmulti
        global output = output * "*"
        GAccessor.text(label, output)
    elseif wiget == btdiv
        global output = output * "/"
        GAccessor.text(label, output)
    elseif wiget == btpi
        pi = ccall((:pi, func), Float64, (),)
        global output = "$pi"
        GAccessor.text(label, output)
    elseif wiget == btinv
        aux = parse(Float64, output)
        global output = string(aux * -1)
        GAccessor.text(label, output)
    elseif wiget == btfat
        fat = ccall((:factorial, func), Float64, (Float64,), parse(Float64, output))
        global output = "$fat"
        GAccessor.text(label, output)
    elseif wiget == btcos
        cosseno_C = ccall((:cosseno_C, func), Float64, (Float64,), parse(Float64, output))
        cossenoFormat = round(cosseno_C, digits=3)
        global output = "$cossenoFormat"
        GAccessor.text(label, output)
    elseif wiget == btsen
        seno_C = ccall((:seno_C, func), Float64, (Float64,), parse(Float64, output))
        senoFormat = round(seno_C, digits=3)
        global output = "$senoFormat"
        GAccessor.text(label, output)
    elseif wiget == btsquareRoot
        squareRoot = ccall((:squareRoot, func), Float64, (Float64,), parse(Float64, output))
        global output = "$squareRoot"
        GAccessor.text(label, output)
    elseif wiget == btoneAboveX
        oneAboveX = ccall((:oneAboveX, func), Float64, (Float64,), parse(Float64, output))
        global output = "$oneAboveX"
        GAccessor.text(label, output)
    elseif wiget == btsquare
        square = ccall((:square, func), Float64, (Float64,), parse(Float64, output))
        global output = "$square"
        GAccessor.text(label, output)
    elseif wiget == btmod
        op = split(output)
        result = (parse(Float64, op[1]) % parse(Float64, op[2]))
        global output = "$result"
        GAccessor.text(label, output)
    elseif wiget == btmoduler
        moduler = ccall((:module, func), Float64, (Float64,), parse(Float64, output))
        global output = "$moduler"
        GAccessor.text(label, output)
    elseif wiget == bteuler
        euler = ccall((:euler, func), Float64, (),)
        global output = "$euler"
        GAccessor.text(label, output)
    elseif wiget == btln
        ln = log(parse(Float64, output))
        global output = "$ln"
        GAccessor.text(label, output)
    elseif wiget == btlog
        log_C = ccall((:log, func), Float64, (Float64,), parse(Float64, output))
        global output = "$log_C"
        GAccessor.text(label, output)
    elseif wiget == btdot
        global output = output * "."
        GAccessor.text(label, output)
    elseif wiget == btspace
        global output = output * " "
    end
end
id1 = signal_connect(write_label, bt1, "clicked")
id2 = signal_connect(write_label, bt2, "clicked")
id3 = signal_connect(write_label, bt3, "clicked")
id4 = signal_connect(write_label, bt4, "clicked")
id5 = signal_connect(write_label, bt5, "clicked")
id6 = signal_connect(write_label, bt6, "clicked")
id7 = signal_connect(write_label, bt7, "clicked")
id8 = signal_connect(write_label, bt8, "clicked")
id9 = signal_connect(write_label, bt9, "clicked")
id10 = signal_connect(write_label, bt0, "clicked")
id11 = signal_connect(write_label, btplus, "clicked")
id12 = signal_connect(write_label, btminus, "clicked")
id13 = signal_connect(write_label, btmulti, "clicked")
id14 = signal_connect(write_label, btdiv, "clicked")
id15 = signal_connect(write_label, btC, "clicked")
id16 = signal_connect(write_label, btequals, "clicked")
id17 = signal_connect(write_label, btpi, "clicked")
id18 = signal_connect(write_label, bteuler, "clicked")
id19 = signal_connect(write_label, btcos, "clicked")
id20 = signal_connect(write_label, btsen, "clicked")
id21 = signal_connect(write_label, btfat, "clicked")
id22 = signal_connect(write_label, btsquare, "clicked")
id23 = signal_connect(write_label, btoneAboveX, "clicked")
id24 = signal_connect(write_label, btmoduler, "clicked")
id25 = signal_connect(write_label, btsquareRoot, "clicked")
id26 = signal_connect(write_label, btmod, "clicked")
id27 = signal_connect(write_label, btln, "clicked")
id28 = signal_connect(write_label, btlog, "clicked")
id29 = signal_connect(write_label, btinv, "clicked")
id30 = signal_connect(write_label, btdot, "clicked")
id30 = signal_connect(write_label, btspace, "clicked")

showall(win)
