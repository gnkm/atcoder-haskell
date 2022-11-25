{- ABC087B - Coins

https://atcoder.jp/contests/abs/tasks/abc087_b

[AtCoder Beginners Selection]

あなたは、500 円玉を A 枚、100 円玉を B 枚、50 円玉を C 枚持っています。 これらの硬貨の中から何枚かを選び、合計金額をちょうど X 円にする方法は何通りありますか。
同じ種類の硬貨どうしは区別できません。2 通りの硬貨の選び方は、ある種類の硬貨についてその硬貨を選ぶ枚数が異なるとき区別されます。

入力は以下の形式で標準入力から与えられる。

```
A
B
C
X
```

-}

main :: IO ()
main = do
  a <- readLn :: IO Int
  b <- readLn :: IO Int
  c <- readLn :: IO Int
  x <- readLn :: IO Int
  let candidates = [(i, j, k) | i <- [0..a], j <- [0..b], k <- [0..c], 500 * i + 100 * j + 50 * k == x]
  print $ length candidates
