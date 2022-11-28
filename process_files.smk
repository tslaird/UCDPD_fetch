FILES, = glob_wildcards("{file}cl.pdf")

rule all:
    input: expand( "{file}cl.txt", file=FILES  )

rule convert2txt:
    input: "{file}cl.pdf"
    output: "{file}cl.txt"
    shell:
        '''
        pdftotext -layout {input} {output}
        '''
