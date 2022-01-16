########## 1. < ##########
python3 read-input.py < nums-0-999

########## 2. >, >> ##########
ls > hd_content
ls >> hd_content

########## 3. head, tail ##########
tail -n 3 table
head -n 3 table
head -n 3 table | tail -n 2 table

########## 4. tr ##########
cat bad-new-line | tr -s '\n' '\n' > good-new-line

########## 5. sort ##########
grep '[0-9].*' pumpkinsizes | sort -n -t '|' -k2 -r | head -n 3
grep '[0-9].*' pumpkinsizes | sort -n -t '|' -k2 | head -n 2

########## 6. uniq ##########
uniq -u words-sorted > uniq-words
uniq -d -c words-sorted > sorted-uniq-words

################## EXTENSION ##################
########## 1. cut ##########
wc -w table | cut -f1 -d ' '

########## 2. join ##########
# First, join the emails and the pumpkin sizes together.
tail -n +3 pumpkinsizes | sort > sorted-pumpkinsizes
sort emails > sorted-emails
join sorted-pumpkinsizes sorted-emails > pumpkinsizes-emails
# Second, leverage your first solution and then get the email of the winner (only the email; not the name or anything else).
sort -n -t '|' -k2 -r pumpkinsizes-emails | head -n 3 | cut -f3 -d ' '

########## 3. sed ##########
sed -r 's/\(([0-9]), ([0-9])\)/\(\2, \1)/' sed-numbers

########## 4. awk ##########
cat table | awk 'BEGIN{srand();}{print rand()"\t"$0}' | sort -k1 -n | cut -f2- > table-permuted

########## 5. tee ##########
cut -d ' ' -f 3-4 table | tee new-table | sed -r 's/x x/y y/'

########## 6. comm ##########
var1=$(comm -12 <(sort prog1.c) <(sort prog2.c)| wc -l)
var2=$(wc -l prog1.c | cut -d ' ' -f1)
echo "scale=2 ; $var1 / $var2" | bc
