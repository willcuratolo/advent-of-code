import System.IO
import Data.List.Split
import Text.Read

main = do  
        contents <- readFile "input.txt"
        print $ maxInList . map sum $ getIntLists contents

readInt :: String -> Int
readInt = read

maxInList :: [Int] -> Int
maxInList = foldl1 max

splitOnNewLines :: String -> [String]
splitOnNewLines = splitOn "\n\n"

getLines :: [String] -> [[Int]]
getLines = map (map readInt) . map lines

getIntLists :: String -> [[Int]]
getIntLists = getLines . splitOnNewLines
