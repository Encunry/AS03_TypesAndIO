module Folds where

data Expr
    = Val Int
    | Add Expr Expr
    | Mul Expr Expr
    deriving Show


foldExpr :: (Int -> a) -> (a -> a -> a) -> (a -> a -> a) -> Expr -> a
foldExpr val _ _ (Val n) = val n
foldExpr val mul add (Mul l r) = mul (foldExpr val mul add l) (foldExpr val mul add r)
foldExpr val mul add (Add l r) = add (foldExpr val mul add l) (foldExpr val mul add r)


eval :: Expr -> Int
eval e = foldExpr (\n -> n) (\e1 e2 -> e1 * e2) (\e1 e2 -> e1 + e2) e

toString :: Expr -> String
toString e = foldExpr show (\e1 e2 -> e1 ++ " * " ++ e2) (\e1 e2 -> "(" ++ e1 ++ " + " ++ e2 ++ ")") e