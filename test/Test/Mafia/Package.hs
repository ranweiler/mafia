{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-missing-signatures #-}
module Test.Mafia.Package where

import           Disorder.Core.Tripping (tripping)

import           Mafia.Package

import           P

import           Test.Mafia.Arbitrary ()
import           Test.QuickCheck
import           Test.QuickCheck.Instances ()


prop_roundtrip_PackageId =
  tripping renderPackageId parsePackageId

return []
tests = $quickCheckAll
