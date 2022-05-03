lst = [
	("Program", 1),
	("ExtDefList", 2),
	("ExtDef", 3),
	("ExtDecList", 2),
	("Specifier", 2),
	("StructSpecifier", 2),
	("OptTag", 2),
	("Tag", 1),
	("VarDec", 2),
	("FunDec", 2),
	("VarList", 2),
	("ParamDec", 2),
	("Compst", 1),
	("StmtList", 2),
	("Stmt", 6), 
	("DefList", 2),
	("Def", 1),
	("DecList", 2),
	("Dec", 2),
	("Exp", 18),
	("Args", 2)
]
with open("std.c", "w") as fp:
	for item in lst:
		fp.write(f"#define gen_{item[0]}(x) void {item[0]}##x(TreeNode* rt)\n")
	
	for item in lst:
		fp.write(f"#define call_{item[0]}(x) {item[0]}##x(rt)\n")
	for item in lst:
		for i in range(0, item[1] + 1):
			fp.write(f"static gen_{item[0]}({i});\n")

	for item in lst:
		for i in range(0, item[1] + 1):
			funcName = f"gen_{item[0]}({i})"
			if (i == 0):
				fp.write(f"{funcName} {{ \n")
				fp.write("\t switch(rt->no) {\n")
				for j in range(1, item[1] + 1):
					fp.write(f"\t\tcase {j}: call_{item[0]}({j}); break; \n")
				fp.write("\t}\n")
				fp.write("}\n")
			else:
				fp.write(f"{funcName} {{ \n\n}}\n")
			fp.write("\n")
			