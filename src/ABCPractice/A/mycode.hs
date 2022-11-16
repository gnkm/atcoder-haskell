{- A - Welcome to AtCoder

https://atcoder.jp/contests/practice/tasks/practice_1

高橋君はデータの加工が行いたいです。
整数 a,b,cと、文字列 s が与えられます。 a+b+c の計算結果と、文字列 s を並べて表示しなさい。

入力は以下の形式で与えられる。

```
a
b c
s
```
-}

main :: IO ()
main = do
  a <- readLn :: IO Int
  [b, c] <- map read . words <$> getLine :: IO [Int]
  s <- getLine
  putStrLn $ show (a + b + c) ++ " " ++ s
