# https://patorjk.com/software/taag/#p=display&f=ANSI%20Shadow

text = '''
 ██████╗ ███████╗ ██████╗  █████╗    ██████╗ ███████╗██╗   ██╗
██╔═══██╗██╔════╝██╔════╝ ██╔══██╗   ██╔══██╗██╔════╝██║   ██║
██║   ██║███████╗██║  ███╗███████║   ██║  ██║█████╗  ██║   ██║
██║   ██║╚════██║██║   ██║██╔══██║   ██║  ██║██╔══╝  ╚██╗ ██╔╝
╚██████╔╝███████║╚██████╔╝██║  ██║██╗██████╔╝███████╗ ╚████╔╝
 ╚═════╝ ╚══════╝ ╚═════╝ ╚═╝  ╚═╝╚═╝╚═════╝ ╚══════╝  ╚═══╝
'''

relust = text.split('\n')[1:-1]
with open("result.txt", "w", encoding="utf-8") as file:
    file.write('lvim.builtin.alpha.dashboard.section.header.val = {\n')
    for i in relust:
        file.write(f'"{i}",\n')
    file.write('}\n')

print("writed in `./result.txt`")
