import fileinput
x = 0
for line in fileinput.FileInput("N:\idlehandsdev\Projects\digiOBSCURA\PCB\digiobscura - Copy.kicad_pcb", inplace=1):
    if(line.find("**")):
    #    x = x+1
    #    print x
        line.replace("**","Q" + str(x+1))
    


