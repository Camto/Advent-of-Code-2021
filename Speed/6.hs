input = [...] -- Paste input here
ar = map ((flip count) input) [0..8]
step [q,w,e,r,t,y,u,i,o] = [w,e,r,t,y,u,i+q,o,q]
part1 = sum . (!!80) $ iterate step ar
part2 = sum . (!!256) $ iterate step ar