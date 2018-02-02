def main():
	vp=eval(input("\nvrai positifs\t"))
	vn=eval(input("vrai négatis\t"))
	fp=eval(input("faux positifs\t"))
	fn=eval(input("faux négatif\t"))
	print("\n")

	try :
		pre=vp/(vp+fp)
		rap=vp/(vp+fn)
		fme = 2*(pre*rap)/(pre+rap)
		spe=vn/(fp+vn)
		exa=(vp+vn)/(vp+vn+fp+fn)
	except:
		print("erreur")

	else :
		print("précision   =", pre)
		print("rappel      =", rap)
		print("fmesure     =", fme)
		print("spécificité =", spe)
		print("exactitude  =", exa)

	finally:
		print("\n")

if __name__=='__main__':
	main()