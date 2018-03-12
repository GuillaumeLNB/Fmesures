prompt :: IO Float
prompt = do
    str <- getLine
    return (read str)

main :: IO ()
main = do
  putStrLn "vrais positifs"
  vp <- prompt
  putStrLn "vrais negatifs"
  vn <- prompt
  putStrLn "faux positifs"
  fp <- prompt
  putStrLn "faux negatifs"
  fn <- prompt
  let pre=vp/(vp+fp);
		  rap=vp/(vp+fn);
		  fme = 2*(pre*rap)/(pre+rap);
		  spe=vn/(fp+vn);
		  exa=(vp+vn)/(vp+vn+fp+fn);
  putStrLn ("Precision = " ++ (show pre))
  putStrLn ("Rappel = " ++ (show rap))
  putStrLn ("Fmesure = " ++ (show fme))
  putStrLn ("Specificite = " ++ (show spe))
  putStrLn ("Exactitude = " ++ (show exa))
