#!/bin/sh

#テスト1
#引数が数字以外の場合
./CommonDivisor.sh a b > /tmp/result-$$
echo "自然数を入力してください"  > /tmp/ans-$$
diff /tmp/result-$$ /tmp/ans-$$ || exit 1
echo "テスト1終わり"

#テスト2
#引数が一つしかない場合
./CommonDivisor.sh 1 > /tmp/result-$$
echo "引数を二つ入力してください"  > /tmp/ans-$$
diff /tmp/result-$$ /tmp/ans-$$ || exit 1
echo "テスト2終わり"

#テスト3
#引数1が引数2よりも大きい、かつ剰余が0の場合
#引数2が最大公約数になる
./CommonDivisor.sh 8 4 > /tmp/result-$$
echo "最大公約数は 4" > /tmp/ans-$$

diff /tmp/result-$$ /tmp/ans-$$ || exit 1
echo "テスト3終わり"

#テスト4
#引数2が引数1よりも大きい、かつ剰余が0の場合
#引数1が最大公約数になる
./CommonDivisor.sh 9 18 > /tmp/result-$$
echo "最大公約数は 9" > /tmp/ans-$$

diff /tmp/result-$$ /tmp/ans-$$ || exit 1
echo "テスト4終わり"

#テスト5
#引数1が引数2よりも大きい、かつ剰余が0ではない場合
#剰余が０になった時の割った数が最大公約数になる
./CommonDivisor.sh 8 3 > /tmp/result-$$
echo "最大公約数は 1" > /tmp/ans-$$

diff /tmp/result-$$ /tmp/ans-$$ || exit 1
echo "テスト5終わり"

#テスト6
#引数2が引数1よりも大きい、かつ剰余が0ではない場合
#剰余が０になった時の割った数が最大公約数になる
./CommonDivisor.sh 3 8 > /tmp/result-$$
echo "最大公約数は 1" > /tmp/ans-$$

diff /tmp/result-$$ /tmp/ans-$$ || exit 1
echo "テスト6終わり"
