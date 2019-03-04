module Main where

import Test.Hspec


import qualified Fixtures as F
import AlgorithmsSpec
import Utils

import qualified Fixtures as F
import AlgorithmsSpec

spec :: Spec
spec = describe "Q-R Decomposition" $ do
        it "Q x R returns the original matrix" $ do
          qrDecompositionInvariant F.matB `shouldBe` True
        it "Matrix Q is orthogonal for the QR factorization of an invertible matrix" $ do
          qrFirstOrthoInvariant F.matD`shouldBe` True
        it "Matrix R is triangular" $ do
          qrSecondTriInvariant F.matB `shouldBe` True


main :: IO ()
main = do
  hspec spec
