if exists("loaded_FixStyle")
    finish
endif
let loaded_FixStyle = 1

function FixStyle()
    "try
    %s/\(\s*try|^try\){/\1 {/cg
    "while/for/switch
    %s/\(^\s*\)\(while\|for\|switch\)(/\1\2 (/cg
    "if/else/catch
    %s/\(\s\+if\|^if\)(/\1 (/cg
    %s/}\(else\|catch\)/} \1/cg
    %s/\(else\){/\1 {/cg
    "逗号两侧加空格
    %s/,\(\w\+\|{\|"\|'\)/, \1/cg
    "逻辑运算符两侧加空格
    %s/\(^[^"']*\w\+\)\(=\|>\|>=\|<\|<=\|!=\)/\1 \2/cg
    %s/\(^[^"']*\w\+\s*\)\(=\|>\|>=\|<\|<=\|!=\)\(=\{0,2\}\)\([a-zA-Z0-9_"'{\[(]\)/\1\2\3 \4/cg
    "由于加号在正则表达式中频繁出现，所以屏蔽正则
    "^\(.*\)\%(new RegExp(.*\|\/.*\)\@<! 排除代码中的正则表达式
    %s/^\(.*\)\%(new RegExp(.*\|\/.*\)\@<!\(\w\+\|["'}\])]\+\)+\s*\(\w\+\|["'}\])]\+\)/\1\2 + \3/cg
    %s/^\(.*\)\%(new RegExp(.*\|\/.*\)\@<!\(\w\+\|["'}\])]\+\)\s*+\(\w\+\|["'}\])]\+\)/\1\2 + \3/cg
    "function/if/while/for/switch等)与{之间加空格
    %s/){/) {/cg
    "去除空字符串
    %s/\s\+$//cg
endfunction
