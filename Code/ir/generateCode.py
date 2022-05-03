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
with open("std.out", "w") as fp:
	for item in lst:
		for i in range(0, item[1] + 1):
			funcName = f"static void {item[0]}{i}(TreeNode* rt)"
			fp.write(f"{funcName};\n")

	for item in lst:
		for i in range(0, item[1] + 1):
			funcName = f"void {item[0]}{i}(TreeNode* rt)"
			if (i == 0):
				fp.write(f"{funcName} {{ \n")
				fp.write("\t switch(rt->no) {\n")
				for j in range(1, item[1] + 1):
					fp.write(f"\t\tcase {j}: {item[0]}{j}(rt); break; \n")
				fp.write("\t}\n")
				fp.write("}\n")
			else:
				fp.write(f"{funcName} {{ \n\n}}\n")
			fp.write("\n")
			