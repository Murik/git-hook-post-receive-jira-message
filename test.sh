echo "hello aaa">> aaa
git add aaa
git commit -m "AIC-1000 : test aaa" aaa
echo "hello bbb" >> bbb
git add bbb
git commit -m "AIC-2000 : test bbb" bbb
echo "hello ccc" >> ccc
git add ccc
git commit -m "AIC-3000 : test ccc - 2 jiras - AIC-999" ccc
echo
echo
git log -4
echo
echo
git push origin master
echo
