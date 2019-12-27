x = 1024
count = 0
with open("N:\idlehandsdev\Projects\digiOBSCURA\PCB\digiobscura - Copy.kicad_pcb", "rt") as fin:
    with open("N:\idlehandsdev\Projects\digiOBSCURA\PCB\digiobscura - Copy2.kicad_pcb", "wt") as fout:
        for text in fin:
            #if 'fp_text' in fin:
            #    x = x - 1
            #    print x
            
            s = fout.write(text.replace('**', 'Q' + str(x),1))
            if (text.count('**')):
                x = x - 1
                print x
            #if (s==True):
            #    print x