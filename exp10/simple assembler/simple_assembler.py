import sys

def code_to_bin(code):
    parts = code.split(" ")
    opcode = opcodes[parts[0]]
    operand = 8 * "0"
    if (opcode in opcodes_with_one_operand):
        operand = str(bin(int(parts[1])))[2:]
        operand = (8 - len(operand)) * "0" + operand
    bin_code = opcode + operand
    return bin_code

def program_to_bin(program):
    bin_program = []
    for line in program:
        bin_program.append(code_to_bin(line))
    return bin_program

opcodes = {
    "pushc" : "0000",
    "push" : "0001",
    "pop" : "0010",
    "jump" : "0011",
    "jz" : "0100",
    "js" : "0101",
    "add" : "0110",
    "sub" : "0111"
}
opcodes_with_one_operand = ["0000", "0001", "0010"]

args = sys.argv.copy()
final_separator = "\n"
try:
    args.pop(args.index("--lines"))
except:
    final_separator = ""

code_file = args[1]
bin_code_file = args[2]

f = open(code_file, "r")
program = f.readlines()
f.close()

bin_program = program_to_bin(program)
f = open(bin_code_file, "w")
f.write(final_separator.join(bin_program))
f.close()