########## numbers1 - Search for numbers with dashes (ie, 123-456-7890) ##########
grep '[0-9]{3}-[0-9]{3}-[0-9]{4}' cs1u* golden > output

########## numbers2 - Search for numbers with dashes and those with no dashes (ie, 1234567890) ##########
grep '[0-9]{3}[-]?[0-9]{3}[-]?[0-9]{4}' cs1u* golden > output

########## numbers3 - Search for numbers with dashes, no dashes, and those with parens (ie, (123)456-7890) ##########
grep '[(]?[0-9]{3}[)]?[-]?[0-9]{3}[-]?[0-9]{4}' cs1u* golden > output

########## numbers4 - Again, you want dashes, no dashes, parens.  But someone malicious introduced malformed output into our files: missing parens (ie, 123456-7890 or 123)456-7890) -- so you SHOULD NOT match malformed numbers. ##########
grep '\([0-9]{3}\)[0-9]{3}-[0-9]{4}|[^(][0-9]{3}[-]?[0-9]{3}[-]?[0-9]{4}' cs1u* golden > output

########## numbers5 - Dashes, no dashes, parens.  Now you have missing parens and missing dashes (ie, 123-4567890) as part of the malformations-- again you SHOULD NOT match malformed numbers. ##########
grep '[^(][0-9]{10}|\([0-9]{3}\)[0-9]{3}[-][0-9]{4}|[^(][0-9]{3}[-][0-9]{3}[-][0-9]{4}' cs1u* golden > output
