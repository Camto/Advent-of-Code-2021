Ben/PRO/Stu/Advent of Code 2021> ghci
GHCi, version 8.10.1: https://www.haskell.org/ghc/  :? for help
macro 'doc' overwrites builtin command.  Use ':def!' to overwrite.
Loaded GHCi configuration from C:\Users\Camto\AppData\Roaming\ghc\ghci.conf
Prelude> match q:qs = let rec = matchall qs in if rec == 0 then case rec of {x:xs -> if opposite q x then 0 else nof q ; _ -> 0} else rec

<interactive>:1:1: error: Parse error in pattern: match
Prelude> match (q:qs) = let rec = matchall qs in if rec == 0 then case rec of {(x:xs) -> if opposite q x then 0 else nof q ; _ -> 0} else rec

<interactive>:2:26: error:
    Variable not in scope: matchall :: [t] -> t1      

<interactive>:2:84: error:
    Variable not in scope: opposite :: t -> t0 -> Bool

<interactive>:2:109: error:
    * Variable not in scope: nof :: t -> p
    * Perhaps you meant `not' (imported from Prelude)
Prelude> matchall s = until 
Prelude> import Control.Monad
Prelude Control.Monad> matchall s = foldM (\s i -> let (n,rest) = match in if n == 0 then else Just )

<interactive>:5:68: error: parse error on input `else'
Prelude Control.Monad> match (q:qs) = let (s,n) = until (\(s,n) -> n /= 0 || s == "" || close (head s)) (\(s,n) -> match s) (qs,0) in if not (oppo q $ s)
  
<interactive>:6:136: error:
    parse error (possibly incorrect indentation or mismatched brackets)
Prelude Control.Monad> match (q:qs) = let (s,n) = until (\(s,n) -> n /= 0 || s == "" || close (head s)) (\(s,n) -> match s) (qs,0) in if n /= 0 && not (oppo q $ head s) then value q else n

<interactive>:7:66: error:
    Variable not in scope: close :: Char -> Bool

<interactive>:7:130: error:
    Variable not in scope: oppo :: Char -> Char -> Bool

<interactive>:7:152: error:
    Variable not in scope: value :: Char -> p
Prelude Control.Monad> :{
Prelude Control.Monad| value '(' = 3
Prelude Control.Monad| value '[' = 57
Prelude Control.Monad| value '{' = 1197
Prelude Control.Monad| value '<' = 25137
Prelude Control.Monad| :}
Prelude Control.Monad> :{
Prelude Control.Monad| oppo '(' ')' = True
Prelude Control.Monad| oppo '[' ']' = True
Prelude Control.Monad| oppo  
Prelude Control.Monad| oppo '{' '}' = True
Prelude Control.Monad| oppo '<' '>' = True
Prelude Control.Monad| oppo _ _ = False
Prelude Control.Monad| :}

<interactive>:17:1: error:
    Parse error: module header, import declaration
    or top-level declaration expected.
Prelude Control.Monad> :{
Prelude Control.Monad| oppo '(' ')' = True
Prelude Control.Monad| oppo '[' ']' = True
Prelude Control.Monad| oppo '{' '}' = True
Prelude Control.Monad| oppo '<' '>' = True
Prelude Control.Monad| oppo _ _ = False
Prelude Control.Monad| :}
Prelude Control.Monad> :{
Prelude Control.Monad| close = (`elem` ")]}>")
Prelude Control.Monad| match (q:qs) = let (s,n) = until (\(s,n) -> n /= 0 || s == "" || close (head s)) (\(s,n) -> match s) (qs,0) in if n /= 0 && not (oppo q $ head s) then value q else n
Prelude Control.Monad| :}

<interactive>:31:93: error:
    * Occurs check: cannot construct the infinite type: p ~ ([Char], p)
      Expected type: [Char] -> ([Char], p)
        Actual type: [Char] -> p
    * In the expression: match s
      In the second argument of `until', namely `(\ (s, n) -> match s)'
      In the expression:
        until
          (\ (s, n) -> n /= 0 || s == "" || close (head s))
          (\ (s, n) -> match s) (qs, 0)
    * Relevant bindings include
        n :: p (bound at <interactive>:31:87)
        match :: [Char] -> p (bound at <interactive>:31:1)
Prelude Control.Monad> close = (`elem` ")]}>")
Prelude Control.Monad> match (q:qs) = let (s,n) = until (\(s,n) -> n /= 0 || s == "" || close (head s)) (\(s,n) -> match s) (qs,0) in if n /= 0 && not (oppo q $ head s) then value q else n

<interactive>:34:93: error:
    * Occurs check: cannot construct the infinite type: p ~ ([Char], p)
      Expected type: [Char] -> ([Char], p)
        Actual type: [Char] -> p
    * In the expression: match s
      In the second argument of `until', namely `(\ (s, n) -> match s)'
      In the expression:
        until
          (\ (s, n) -> n /= 0 || s == "" || close (head s))
          (\ (s, n) -> match s) (qs, 0)
    * Relevant bindings include
        n :: p (bound at <interactive>:34:87)
        match :: [Char] -> p (bound at <interactive>:34:1)
Prelude Control.Monad> match (q:qs) = let (s,n) = until (\(s,n) -> n /= 0 || s == "" || close (head s)) (\(s,n) -> match s) (qs,0) in if n /= 0 && not (oppo q $ head s) then (s,value q) else (s,n)
Prelude Control.Monad> match "("
("",0)
Prelude Control.Monad> match "(]"
("]",0)
Prelude Control.Monad> match (q:qs) = let (s,n) = until (\(s,n) -> n /= 0 || s == "" || close (head s)) (\(s,n) -> match s) (qs,0) in if n /= 0 || not (oppo q $ head s) then (s,value q) else (s,n)
Prelude Control.Monad> match "(]"
("]",3)
Prelude Control.Monad> match "(" 
*** Exception: Prelude.head: empty list
Prelude Control.Monad> match (q:qs) = let (s,n) = until (\(s,n) -> n /= 0 || s == "" || close (head s)) (\(s,n) -> match s) (qs,0) in if n /= 0 || (length s > 1 && not (oppo q $ head s)) then (s,value q) else (s,n)
Prelude Control.Monad> match "("
("",0)
Prelude Control.Monad> match (q:qs) = let (s,n) = until (\(s,n) -> n /= 0 || s == "" || close (head s)) (\(s,n) -> match s) (qs,0) in if n /= 0 || (length s > 1 && not (oppo q $ head s)) then (s,value q) else (s,n)
Prelude Control.Monad> :{
Prelude Control.Monad| sail [] = []
Prelude Control.Monad| sail a = tail a
Prelude Control.Monad| :}
Prelude Control.Monad> match (q:qs) = let (s,n) = until (\(s,n) -> n /= 0 || s == "" || close (head s)) (\(s,n) -> match s) (qs,0) in if n /= 0 || (length s > 1 && not (oppo q $ head s)) then (sail s,value q) else (sail s,n)
Prelude Control.Monad> match "(]"
("",0)
Prelude Control.Monad> match (q:qs) = let (s,n) = until (\(s,n) -> n /= 0 || s == "" || close (head s)) (\(s,n) -> match s) (qs,0) in if n /= 0 || (length s > 0 && not (oppo q $ head s)) then (sail s,value q) else (sail s,n)
Prelude Control.Monad> match "(]"
("",3)
Prelude Control.Monad> match "(>"
("",3)
Prelude Control.Monad> :{
Prelude Control.Monad| value ')' = 3
Prelude Control.Monad| value ']' = 57
Prelude Control.Monad| value '}' = 1197
Prelude Control.Monad| value '>' = 25137
Prelude Control.Monad| :}
Prelude Control.Monad> match (q:qs) = let (s,n) = until (\(s,n) -> n /= 0 || s == "" || close (head s)) (\(s,n) -> match s) (qs,0) in if n /= 0 || (length s > 0 && not (oppo q $ head s)) then (sail s,value $ head s) else (sail s,n)
Prelude Control.Monad> match "(>"       
("",25137)
Prelude Control.Monad> match "<{([([[(<>()){}]>(<<{{"
*** Exception: <interactive>:(54,1)-(57,17): Non-exhaustive patterns in function value

Prelude Control.Monad> match "(()"                   
("",0)
Prelude Control.Monad> match "(())"
("",0)
Prelude Control.Monad> match "((>" 
("",*** Exception: Prelude.head: empty list
Prelude Control.Monad> match (q:qs) = let (s,n) = until (\(s,n) -> n /= 0 || s == "" || close (head s)) (\(s,n) -> match s) (qs,0) in if n /= 0 || length s > 0 || not (oppo q $ head s) then (sail s,value $ head s) else (sail s,n)
Prelude Control.Monad> match "((>"
("",*** Exception: Prelude.head: empty list
Prelude Control.Monad> match (q:qs) = let (s,n) = until (\(s,n) -> n /= 0 || s == "" || close (head s)) (\(s,n) -> match s) (qs,0) in if n == 0 && length s > 0 && not (oppo q $ head s) then (sail s,value $ head s) else (sail s,n)
Prelude Control.Monad> match "((>"
("",25137)
Prelude Control.Monad> match "<{([([[(<>()){}]>(<<{{"
("",25137)
Prelude Control.Monad> match "[<(<(<(<{}))><([]([]()"
("[]()",3)
Prelude Control.Monad> match "[{[{({}]{}}([{[{{{}}([]"
("[{[{{{}}([]",57)
Prelude Control.Monad> match (q:qs) = let (s,n) = until (\(s,n) -> n /= 0 || s == "" || close (head s)) (\(s,n) -> match s) (qs,0) in if n == 0 && length s > 0 && not (oppo q $ head s) then ("",value $ head s) else (sail s,n)    
Prelude Control.Monad> match "[{[{({}]{}}([{[{{{}}([]"
("",57)
Prelude Control.Monad> match "[<(<(<(<{}))><([]([]()" 
("",3)
Prelude Control.Monad> match "<{([([[(<>()){}]>(<<{{" 
("",25137)
Prelude Control.Monad> fun = "[({(<(())[]>[[{[]{<()<>>\n[(()[<>])]({[<{<<[]>>(\n{([(<{}[<>[]}>{[]{[(<()>\n(((({<>}<{<{<>}{[]{[]{}\n[[<[([]))<([[{}[[()]n"Prelude Control.Monad> arr = lines fun
Prelude Control.Monad> map match arr
[("",0),("({[<{<<[]>>(",0),("",1197),("",0),("",3),("",57),("<{[{[{[]{()[[[]",0),("",3),("",25137),("",0)]
Prelude Control.Monad> map (snd . match) arr
[0,0,1197,0,3,57,0,3,25137,0]
Prelude Control.Monad> sum $ map (snd . match) arr
26397
Prelude Control.Monad> fun <- readFile "Speed/qw.txt"
Prelude Control.Monad> arr = lines fun               
Prelude Control.Monad> sum $ map (snd . match) arr   
388713
Prelude Control.Monad> ar = filter ((== 0) . snd . match) arr
Prelude Control.Monad> ar
["(({(({{<{{(<{<{}()>(<>{})}{[(){}]{{}[]}}>)<[{{{}[]}{{}{}}}{{[]()}<[][]>}]>}}(<[{([()<>][[]<>])}(((","([<[([<{(<[[[<()[]>[()()]]<[<>()]<[][]>>]](({({}{})}{<[]<>><[]()>})[<<[]<>>([]())>{<<>{}><<><>>}])><{<{(","({{<({<{<{{[<{{}<>}[<>()]>[<()<>><[]()>]]}(([{{}<>}{(){}}][(()<>){<><>}])(({{}()})[{[]{}}]))}>}","[<[[({([(<[{<({}())[[]()]>{<()<>>[(){}]}}]>)]<<{(<<<<>><{}>>([{}()][{}<>])>[[{<>}<{}()>][{()[]}]])}>>","[{(<{{([(<[<{(<>[]){{}()}}>(<({}<>)[{}{}]>{{<><>}[<>{}]})]{[{{{}()}<()()>}]{([()[]])[(<>())<()[]","<[[<<<{({[<{(<[][]><{}<>>)[([]<>)[[][]]]}[{[<>[]]}((<>()){()<>})]>{[(<()()>{{}()})<[{}[]]{","{<<<{<{({[[({<<>{}>[<>]})<[<<>[]><[]<>>][[<>{}]({}{})]>]][{[([[][]][[]()])]([[()()]{[]<>}])}<[({[]<>}","([<(<<{<<((<<({}())[{}<>]>{<[][]>{{}()}}>(<<<>()>(()[])>))<<{[<>()](<>())}<([][])[()()]>>>","<<(<[{[<{(<<{<[][]>[<>[]]}<(<>{})([][])>>>)<<[{[()()][[]{}]}<[()[]]<[][]>>]>{<{<[]<>>{<>()}}[<()()>[<>()","({[[{<[({[{({{{}[]}[<>[]]}{({}()){{}}})[({<>[]}{[]()}){{(){}}[[]{}]}]}](([[[()<>](<>[])]<<","<<{(<({{[{<[(([]<>)<[]{}>)(<<>{}><[]()>)]{{[{}[]]<(){}>}(<{}<>>(()()))}>(<<({})(<>[])>><{{[]<>}(<","({[<(({[{((((<<>[]>(<>()))<(()[])>)<<({}{})<<><>>>>)[[[<(){}>(<><>)]([(){}][{}()])]])[((<((","({[{[([{[[<[((<>())[<>()])]({{(){}}{()()}}([(){}]<<>[]>))>]][[<[<[{}<>]<(){}>>({[]()}<{}[]>)]((<()()>(","<{[{(<{<({[<<(<>{})((){})>(({}<>)[{}{}])><[[<>[]]<(){}>]<(<>[])<{}{}>>>]{{([{}[]])<<()[]>>}","[{[[(([(<[[{<{()[]}([]<>)><<[]()>[<>()]>}]<([<()<>>{<>()}][(()<>){{}{}}])>]<{{[{[][]}(())]}(","({(<<<<[({{<<{<>{}}({}())>({()<>}[()<>])>{{{()<>}(()[])}(<[]<>>(()<>))}}(<<[{}]((){})><({}[","{(<{<{[({({[<[[]<>][()[]]>{({}()){<><>}}]{([[]()]({}{}))[<<><>>{{}{}}]}}){{(<([]{})>({<>[]}<[][]>))}","{{((<({[({{{({<>{}}<[]{}>)[{{}()}{<>[]}]}<[({}[])<<>>]>}}(<<({[]<>}([][]))(<[]()><{}[]>)>{<({}[]){{}{","[<(<[{<({[(([[[]][[]<>]][[<><>]{[]()}])[{({}{}){<>{}}}<{()<>}{{}{}}>])](<[({<>{}}([]()))][[<{}<>>([]())]((","<<([({({{[{[<(()[])><([]<>){<>{}}>]<[(<>[])<{}()>]>}]}<<<[{([][])((){})}(<{}<>>{()[]})][({[][]}{[]{}})]><[(","[[((([([[{<([(()()){{}<>}]<([]<>){[]{}}>)[(<{}{}>[{}<>])(<{}{}>[()[]])]><[({{}[]})[[<>()][{}[]]]]{<<()[]","([[{{<{<{[<{([()()]<<>[]>)[[()<>](()<>)]}>[<({()<>}(()))<{[]{}}{{}{}}>>(([(){}]<()()>)<<()()>(<><>)>)]](({","[<{(({{[{<[[{[<>()]}[[()()]({}[])]]<[({}<>)(<>{})]<(<>{})[{}<>]>>]<<(([]())<{}()>)(<[][]>(()[]))>>>((","{[[[{<[{[{[[[(<>()){[]}]{[{}()]}]{[<()<>><<><>>]({<>()}{[]()})}]}]<[{(<<()()><[]()>>(<{}<>>{(){}}))([{{}}][[","[<{(<<<{{{([{[[][]]{()()}}<[[][]](()())>][(<{}[]>({}[]))]){({<(){}>(<>())}<{(){}}{[]{}}>){<(()())[(){}]>({{}(","{<<[<[{([[<{<(<>){<>{}}>{({}())(<>{})}}<(([][]))>><{{[[]<>][[]()]}[<<>()><(){}>]}>]])}[{([((<((){","[{(<<<{((<<({[()[]]<{}()>}{<<>{}>{<>[]}})((<{}[]>[()<>])<<<>[]>[<>[]]>)><<<[(){}]>{<()[]>{(){}}}>([<<><>>{{","[[[((<[([({({<<>{}>[<><>]}){{(()<>)<[]()>}<{{}[]}({}())>}})[((({<><>})({[][]}(()())))<[{{}{}}{()","[{{[<(<{(<<<({{}()}<<>()>)([[]()]{()[]})>(({} 
<>}[<>{}])([(){}]{()<>}))>[[(<[]{}>(<><>))[<[]","{{{[{<{[<<{{{{()<>}{(){}}}}<([{}<>][{}{}])<<{}<>>{()[]}>>}{[<<<>>[()<>]>]([[{}()](<>{})]{{[][]}{(){}}})","[[[{<({{(<([(<()()>({}()))])>)<<(<[(()())]{(<>())[<>[]]}><<{(){}}<{}<>>>[{[]()}(<>{})]>)([{([]<>)([][","[[{{([<([{{([{[]{}}<()[]>]{<(){}>([][])})}<<{{<><>}[()]}{<<>{}>{<>}}>([(<>{})<<>[]>]{{<><>}{<>()}})>}","<([({[[([[{{<[{}[]](<>)><{()()}[[]{}]>}<<({}{})({}{})><<(){}><<>[]>>>}[{{([][])(<>{})}[<<>[]><{}{}>]}[<[","[(({{<[([{[[({(){}}{()[]}){([]{})([]{})}][{{<>()}<{}{}>}]]({{[<>[]]}(<{}[]><{}()>)}(({()()}((","<{[<({(<({<[[(()[])][<()()>({}())]](<{[]()}[{}[]]>({(){}}{()[]}))>}[<{<<<><>>[(){}]>{<()<>>{<>[]}}}>[<{","<({[<(<(({[([<{}()><(){}>]([<>][()()]))(<[()[]]><[()[]]({}{})>)]{(<(<>{})[{}<>]><{{}{}}{[]()}>)","{{<([{[[<(<{{{{}[]}{<><>}}}((<{}>))>[(<(()[]){<>{}}>((()())[<>]))])>]]}[{[{((([<(){}>({}[])][<(","([{[<(({(<<<<<[]<>>{[]{}}><((){}){<>()}>>([[()[]][<>{}]]([[][]][()<>]))>><<[([()()]{<><>}){<{}<>>{<><","{[[<({<<<<<{[[{}{}](()())]<([][]){<><>}>}>{<[[<>()]<[]>][{<>{}}({}[])]>}>[{{{[()<>][<>{}]}}}[[[({","[<(<(<{<<{{{(<()[]>{{}})}}<[[{[]{}}([]{})][(<><>)[[]()]]]{<{<>[]}(<><>)>[({})(<>[])]}>}[(([[{}{}][","([[([{<{([<<<(()())[{}()]>([{}<>](()[]))>({<{}[]><<>[]>}{([]<>)({}())})>[(<<{}()><<>()>>[[<><>]])({[[]()]<{}","{[{{([(<<([([<[]()>])<{({}<>)({}())}<([]()){[]<>}>>]){((<{[]<>}({}{})>({{}[]}{{}<>}))[({[][","{(<<[(<<<<{([[[]<>]{(){}}]{{[]()}}){<<()<>>>[{{}{}}<{}<>>]}}>[[{[{<>()}<{}[]>]<{{}[]}>}<(({}[])(<><>)","<<[(<{[({<<<<{[]{}}<{}[]>>>({{()[]}{()()}}<<{}{}>({}{})>)>>})]{(<((<([[]()][()<>]){((){})<[]","[(({<<<({<{[(<{}{}>{()<>}){{()[]}{[]{}}}]}>})([<<<({<>()}[[]()])>({[{}<>]<[]<>>}(((){})))>>{[[([<><>]([]<","{{[[({{[({<{[{()<>}([][])]([(){}])}>(<(([]())<()<>>){[[]()]([]())}><<<<>[]>[()<>]>[<[]{}>[<><>]]","(<<{{{[{[{((<{()<>}({}<>)>[(()<>)(<><>)]))[[[(<>[])<{}<>>][[[]<>]<{}()>]]<[(<>{})[<>]]>]}]}][(","((({([[<[([[[[()[]]<{}()>](({}())[()])]<[{(){}}({}())](([]()){{}()})>]<(({<>{}}[[]{}])<<()<>","[<<({{[<<[({((()<>)[<>()]){<{}>[[]<>]}}[<{[]()}(()<>)>])<([<<>{}>[<><>]]<{[]<>}[()<>]>){[{<><>}<<>[]>]{(("]
Prelude Control.Monad> complete = foldl' (\stack q -> if not (close q) then q:stack else tail stack) []            

<interactive>:86:12: error:
    * Variable not in scope:
        foldl' :: ([Char] -> Char -> [Char]) -> [a0] -> t
    * Perhaps you meant one of these:
        `foldl' (imported from Prelude), `foldl1' (imported from Prelude),
        `foldr' (imported from Prelude)
Prelude Control.Monad> import Data.List
Prelude Control.Monad Data.List> complete = foldl' (\stack q -> if not (close q) then q:stack else tail stack) []
Prelude Control.Monad Data.List> complete "[({(<(())[]>[[{[]{<()<>>"
"{{[[({(["
Prelude Control.Monad Data.List> calc = foldl' (\score q -> score * 5 + case q of { '(' -> 1 ; '[' -> 2 ; '{' -> 3 ; '<' -> 4 }) 0
Prelude Control.Monad Data.List> calc $ complete "[({(<(())[]>[[{[]{<()<>>"
288957
Prelude Control.Monad Data.List> ar
["(({(({{<{{(<{<{}()>(<>{})}{[(){}]{{}[]}}>)<[{{{}[]}{{}{}}}{{[]()}<[][]>}]>}}(<[{([()<>][[]<>])}(((","([<[([<{(<[[[<()[]>[()()]]<[<>()]<[][]>>]](({({}{})}{<[]<>><[]()>})[<<[]<>>([]())>{<<>{}><<><>>}])><{<{(","({{<({<{<{{[<{{}<>}[<>()]>[<()<>><[]()>]]}(([{{}<>}{(){}}][(()<>){<><>}])(({{}()})[{[]{}}]))}>}","[<[[({([(<[{<({}())[[]()]>{<()<>>[(){}]}}]>)]<<{(<<<<>><{}>>([{}()][{}<>])>[[{<>}<{}()>][{()[]}]])}>>","[{(<{{([(<[<{(<>[]){{}()}}>(<({}<>)[{}{}]>{{<><>}[<>{}]})]{[{{{}()}<()()>}]{([()[]])[(<>())<()[]","<[[<<<{({[<{(<[][]><{}<>>)[([]<>)[[][]]]}[{[<>[]]}((<>()){()<>})]>{[(<()()>{{}()})<[{}[]]{","{<<<{<{({[[({<<>{}>[<>]})<[<<>[]><[]<>>][[<>{}]({}{})]>]][{[([[][]][[]()])]([[()()]{[]<>}])}<[({[]<>}","([<(<<{<<((<<({}())[{}<>]>{<[][]>{{}()}}>(<<<>()>(()[])>))<<{[<>()](<>())}<([][])[()()]>>>","<<(<[{[<{(<<{<[][]>[<>[]]}<(<>{})([][])>>>)<<[{[()()][[]{}]}<[()[]]<[][]>>]>{<{<[]<>>{<>()}}[<()()>[<>()","({[[{<[({[{({{{}[]}[<>[]]}{({}()){{}}})[({<>[]}{[]()}){{(){}}[[]{}]}]}](([[[()<>](<>[])]<<","<<{(<({{[{<[(([]<>)<[]{}>)(<<>{}><[]()>)]{{[{}[]]<(){}>}(<{}<>>(()()))}>(<<({})(<>[])>><{{[]<>}(<","({[<(({[{((((<<>[]>(<>()))<(()[])>)<<({}{})<<><>>>>)[[[<(){}>(<><>)]([(){}][{}()])]])[((<((","({[{[([{[[<[((<>())[<>()])]({{(){}}{()()}}([(){}]<<>[]>))>]][[<[<[{}<>]<(){}>>({[]()}<{}[]>)]((<()()>(","<{[{(<{<({[<<(<>{})((){})>(({}<>)[{}{}])><[[<>[]]<(){}>]<(<>[])<{}{}>>>]{{([{}[]])<<()[]>>}","[{[[(([(<[[{<{()[]}([]<>)><<[]()>[<>()]>}]<([<()<>>{<>()}][(()<>){{}{}}])>]<{{[{[][]}(())]}(","({(<<<<[({{<<{<>{}}({}())>({()<>}[()<>])>{{{()<>}(()[])}(<[]<>>(()<>))}}(<<[{}]((){})><({}[","{(<{<{[({({[<[[]<>][()[]]>{({}()){<><>}}]{([[]()]({}{}))[<<><>>{{}{}}]}}){{(<([]{})>({<>[]}<[][]>))}","{{((<({[({{{({<>{}}<[]{}>)[{{}()}{<>[]}]}<[({}[])<<>>]>}}(<<({[]<>}([][]))(<[]()><{}[]>)>{<({}[]){{}{","[<(<[{<({[(([[[]][[]<>]][[<><>]{[]()}])[{({}{}){<>{}}}<{()<>}{{}{}}>])](<[({<>{}}([]()))][[<{}<>>([]())]((","<<([({({{[{[<(()[])><([]<>){<>{}}>]<[(<>[])<{}()>]>}]}<<<[{([][])((){})}(<{}<>>{()[]})][({[][]}{[]{}})]><[(","[[((([([[{<([(()()){{}<>}]<([]<>){[]{}}>)[(<{}{}>[{}<>])(<{}{}>[()[]])]><[({{}[]})[[<>()][{}[]]]]{<<()[]","([[{{<{<{[<{([()()]<<>[]>)[[()<>](()<>)]}>[<({()<>}(()))<{[]{}}{{}{}}>>(([(){}]<()()>)<<()()>(<><>)>)]](({","[<{(({{[{<[[{[<>()]}[[()()]({}[])]]<[({}<>)(<>{})]<(<>{})[{}<>]>>]<<(([]())<{}()>)(<[][]>(()[]))>>>((","{[[[{<[{[{[[[(<>()){[]}]{[{}()]}]{[<()<>><<><>>]({<>()}{[]()})}]}]<[{(<<()()><[]()>>(<{}<>>{(){}}))([{{}}][[","[<{(<<<{{{([{[[][]]{()()}}<[[][]](()())>][(<{}[]>({}[]))]){({<(){}>(<>())}<{(){}}{[]{}}>){<(()())[(){}]>({{}(","{<<[<[{([[<{<(<>){<>{}}>{({}())(<>{})}}<(([][]))>><{{[[]<>][[]()]}[<<>()><(){}>]}>]])}[{([((<((){","[{(<<<{((<<({[()[]]<{}()>}{<<>{}>{<>[]}})((<{}[]>[()<>])<<<>[]>[<>[]]>)><<<[(){}]>{<()[]>{(){}}}>([<<><>>{{","[[[((<[([({({<<>{}>[<><>]}){{(()<>)<[]()>}<{{}[]}({}())>}})[((({<><>})({[][]}(()())))<[{{}{}}{()","[{{[<(<{(<<<({{}()}<<>()>)([[]()]{()[]})>(({{}<>}[<>{}])([(){}]{()<>}))>[[(<[]{}>(<><>))[<[]","{{{[{<{[<<{{{{()<>}{(){}}}}<([{}<>][{}{}])<<{}<>>{()[]}>>}{[<<<>>[()<>]>]([[{}()](<>{})]{{[][]}{(){}}})","[[[{<({{(<([(<()()>({}()))])>)<<(<[(()())]{(<>())[<>[]]}><<{(){}}<{}<>>>[{[]()}(<>{})]>)([{([]<>)([][","[[{{([<([{{([{[]{}}<()[]>]{<(){}>([][])})}<<{{<><>}[()]}{<<>{}>{<>}}>([(<>{})<<>[]>]{{<><>}{<>()}})>}","<([({[[([[{{<[{}[]](<>)><{()()}[[]{}]>}<<({}{})({}{})><<(){}><<>[]>>>}[{{([][])(<>{})}[<<>[]><{}{}>]}[<[","[(({{<[([{[[({(){}}{()[]}){([]{})([]{})}][{{<>()}<{}{}>}]]({{[<>[]]}(<{}[]><{}()>)}(({()()}((","<{[<({(<({<[[(()[])][<()()>({}())]](<{[]()}[{}[]]>({(){}}{()[]}))>}[<{<<<><>>[(){}]>{<()<>>{<>[]}}}>[<{","<({[<(<(({[([<{}()><(){}>]([<>][()()]))(<[()[]]><[()[]]({}{})>)]{(<(<>{})[{}<>]><{{}{}}{[]()}>)","{{<([{[[<(<{{{{}[]}{<><>}}}((<{}>))>[(<(()[]){<>{}}>((()())[<>]))])>]]}[{[{((([<(){}>({}[])][<(","([{[<(({(<<<<<[]<>>{[]{}}><((){}){<>()}>>([[()[]][<>{}]]([[][]][()<>]))>><<[([()()]{<><>}){<{}<>>{<><","{[[<({<<<<<{[[{}{}](()())]<([][]){<><>}>}>{<[[<>()]<[]>][{<>{}}({}[])]>}>[{{{[()<>][<>{}]}}}[[[({","[<(<(<{<<{{{(<()[]>{{}})}}<[[{[]{}}([]{})][(<><>)[[]()]]]{<{<>[]}(<><>)>[({})(<>[])]}>}[(([[{}{}][","([[([{<{([<<<(()())[{}()]>([{}<>](()[]))>({<{}[]><<>[]>}{([]<>)({}())})>[(<<{}()><<>()>>[[<><>]])({[[]()]<{}","{[{{([(<<([([<[]()>])<{({}<>)({}())}<([]()){[]<>}>>]){((<{[]<>}({}{})>({{}[]}{{}<>}))[({[][","{(<<[(<<<<{([[[]<>]{(){}}]{{[]()}}){<<()<>>>[{{}{}}<{}<>>]}}>[[{[{<>()}<{}[]>]<{{}[]}>}<(({}[])(<><>)","<<[(<{[({<<<<{[]{}}<{}[]>>>({{()[]}{()()}}<<{}{}>({}{})>)>>})]{(<((<([[]()][()<>]){((){})<[]","[(({<<<({<{[(<{}{}>{()<>}){{()[]}{[]{}}}]}>})([<<<({<>()}[[]()])>({[{}<>]<[]<>>}(((){})))>>{[[([<><>]([]<","{{[[({{[({<{[{()<>}([][])]([(){}])}>(<(([]())<()<>>){[[]()]([]())}><<<<>[]>[()<>]>[<[]{}>[<><>]]","(<<{{{[{[{((<{()<>}({}<>)>[(()<>)(<><>)]))[[[(<>[])<{}<>>][[[]<>]<{}()>]]<[(<>{})[<>]]>]}]}][(","((({([[<[([[[[()[]]<{}()>](({}())[()])]<[{(){}}({}())](([]()){{}()})>]<(({<>{}}[[]{}])<<()<>","[<<({{[<<[({((()<>)[<>()]){<{}>[[]<>]}}[<{[]()}(()<>)>])<([<<>{}>[<><>]]<{[]<>}[()<>]>){[{<><>}<<>[]>]{(("]
Prelude Control.Monad Data.List> scores = map (calc . complete) ar
Prelude Control.Monad Data.List> scores
[1541775831,2186241611,73091,25947,5555261792,4770843689,386077498,3890236,3163636174,5970045941,26579193349,8364660566,1557692316,35919819,87613442,14615859291,7152983,23137318293,1604839297,390494674,6051741412,159749186,13103972,3013561563,10192890222,20570977873,22557171792,4360278937,5496787217,38889718,14277240437,929212,3539961434,7633717907,951901194,35693459,11536538993,28953771586,20142573063,2994123047,5688198311,16228460463,464833108,5823965199,26002890407,211541568,121121,5950351031,8248011497]
Prelude Control.Monad Data.List> serocs = sort scores
Prelude Control.Monad Data.List> serocs
[25947,73091,121121,929212,3890236,7152983,13103972,35693459,35919819,38889718,87613442,159749186,211541568,386077498,390494674,464833108,951901194,1541775831,1557692316,1604839297,2186241611,2994123047,3013561563,3163636174,3539961434,4360278937,4770843689,5496787217,5555261792,5688198311,5823965199,5950351031,5970045941,6051741412,7633717907,8248011497,8364660566,10192890222,11536538993,14277240437,14615859291,16228460463,20142573063,20570977873,22557171792,23137318293,26002890407,26579193349,28953771586]
Prelude Control.Monad Data.List> length scores
49
Prelude Control.Monad Data.List> 49 `div` 2
24
Prelude Control.Monad Data.List> 24 + 1 + 24
49
Prelude Control.Monad Data.List> serocs !! 24
3539961434
Prelude Control.Monad Data.List>