#Module 1 for output to ft1 in tweet_output
# Insight-Data-Engineering-Challenge-cc-example
# As a first step I change directory to current directory where Python code can run and read file "tweets.txt"
# I split the file to component words and generate two lists spliter which contains all words in the file and case1 which contains the unique words in spliter using function set,list
# Initialize myvar as {} and mycount as 0
#Run nested loop using length of spliter and case1 to increase mycount by 1 everytime a given word reoccurs in spliter otherwise default count is 1
# combine words and count of words to output dictionary mynew by running loop for length of list case1
#sort mynew values according to ASCII code first and then by count into list abcd
# write abcd to file ft1.txt

#Module 2 for calculating median of unique words count and store in file ft2.txt. This module uses two functions- function1 that always takes input (filename, 0) and returns defmedian, a dictionary with count of unique words in every tweet. Second function, medianfunction always takes input as ouput defmedian of previous function and number 0 to return the median list for unique words as new tweets come in.
#Function 1: for every line in input file, split line
# calculate count of unique words in every tweet
#output defmedian as dictionary with count of unique words in every tweet
#medianfunction: using defmedian as input get dictionary emp1 that contains count of unique words as tweets come in
# sort values in emp1 to empsorted that will be used for calculating median of unique word count
# if number of tweets =0, (ie first entry only)
  median = emp1 sorted
  if number of tweets is even, median is the average of (n-1)/2 and (n-1)/2+ 1 th element
  otherwise (if number of tweets is odd, median is value of n/2 th element in the sorted list
# return list median
# write every value in median to a new line in output file ft2.txt in directory tweet_output
