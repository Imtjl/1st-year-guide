def graphColoring(graph):
    colored = [[]]
    color = 0
    stack = []
    num1 = -1

    def loop(num):
        for t in colored[color]:
            if graph[t][num] == 1:
                return False
        return True

    for a in graph:
        num1 += 1
        if num1 not in stack:
            if not loop(num1):
                colored.append([])
                color += 1
                stack.append(num1)
                colored[color].append(num1)
            num2 = num1
            for b in a[num1:]:
                if b == 0 and num2 not in stack and loop(num2):
                    stack.append(num2)
                    colored[color].append(num2)
                num2 += 1
    return [[w + 1 for w in m] for m in colored]


g = [[0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0],
     [1, 0, 1, 0, 0, 0, 0, 1, 1, 0, 0, 1],
     [0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1],
     [0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0],
     [0, 0, 1, 0, 0, 1, 1, 1, 1, 0, 1, 0],
     [0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 0, 1],
     [1, 0, 0, 0, 1, 1, 0, 0, 1, 0, 0, 1],
     [0, 1, 0, 1, 1, 1, 0, 0, 1, 0, 0, 1],
     [0, 1, 0, 1, 1, 1, 1, 1, 0, 0, 1, 0],
     [1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 1],
     [0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 1],
     [0, 1, 1, 0, 0, 1, 1, 1, 0, 1, 1, 0]]
rrr = [sum(k) for k in g]
w = [i+1 for i in range(12)]
x = zip(g, w, rrr)
x = sorted(x, key=lambda f: f[-1], reverse=True)
g1 = [[g[i][j] for j in range(12) if j != 8 and j != 11] for i in range(12) if i != 8 and i != 11]
rr = [sum(k) for k in g1]
w1 = [1, 2, 3, 4, 5, 6, 7, 8, 10, 11]
x1 = zip(g1, w1, rr)
x1 = sorted(x1, key=lambda f: f[-1], reverse=True)

g2 = [[g[i][j] for j in range(12) if j not in [1, 4, 9, 8, 11]] for i in range(12) if i not in [1, 4, 9, 8, 11]]
r = [sum(k) for k in g2]
w2 = [1, 3, 4, 6, 7, 8, 11]
x2 = zip(g2, w2, r)
x2 = sorted(x2, key=lambda f: f[-1], reverse=True)

for row in x2:
    print(*row)
print('\n')
print(graphColoring(g))
