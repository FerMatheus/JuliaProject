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
push!(vbox, label)
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
btparamsL = GtkButton("(")
btparamsR = GtkButton(")")
btsquareRoot = GtkButton("√")
btoneAboveX = GtkButton("1/x")
btsquare = GtkButton("x²")
btanySquare = GtkButton("xʸ")
btmoduler = GtkButton("|x|")
bteuler = GtkButton("ℯ")
btln = GtkButton("ln")
btlog = GtkButton("log")
btdot = GtkButton(".")




# Oriented buttons
push!(hbox, btpi)
push!(hbox, bteuler)
push!(hbox, btparamsL)
push!(hbox, btparamsR)
push!(hbox, btfat)

push!(hbox2, btsquare)
push!(hbox2, btoneAboveX)
push!(hbox2, btmoduler)
push!(hbox2, btsquareRoot)
push!(hbox2, btdiv)

push!(hbox3, btanySquare)
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



push!(vbox, hbox)
push!(vbox, hbox2)
push!(vbox, hbox3)
push!(vbox, hbox4)
push!(vbox, hbox5)
push!(vbox, hbox6)


push!(win, vbox)

output = ""

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
        global output = output * "π"
        GAccessor.text(label, output)
    elseif wiget == btinv
        num = parse(Float64, outpout)
        num = num*-1
        global output = parse(String, num)
        GAccessor.text(label, output)
    elseif wiget == btfat
        global output = output * "!"
        GAccessor.text(label, output)
    elseif wiget == btparamsL
        global output = output * "("
        GAccessor.text(label, output)
    elseif wiget == btparamsR
        global output = output * ")"
        GAccessor.text(label, output)
    elseif wiget == btsquareRoot
        global output = output * "√"
        GAccessor.text(label, output)
    elseif wiget == btoneAboveX
        global output = output * "1/"
        GAccessor.text(label, output)
    elseif wiget == btsquare
        global output = output * "²"
        GAccessor.text(label, output)
    elseif wiget == btanySquare
        global output = output * "^"
        GAccessor.text(label, output)
    elseif wiget == btmoduler
        global output = output * "|"
        GAccessor.text(label, output)
    elseif wiget == bteuler
        global output = output * "ℯ"
        GAccessor.text(label, output)
    elseif wiget == btln
        global output = output * "ln"
        GAccessor.text(label, output)
    elseif wiget == btlog
        global output = output * "log"
        GAccessor.text(label, output)
    elseif wiget == btdot
        global output = output * "."
        GAccessor.text(label, output)
    end
end
id1 = signal_connect(write_label, bt1, "clicked")
id2 = signal_connect(write_label, btinv, "clicked")
showall(win)