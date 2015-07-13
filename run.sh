
import operator
import os
import csv

#this module opens the file and reads it
os.chdir('C:\\Python34')

test_file=open("./tweet_input/tweets.txt", "r")
test_file=test_file.read()
# split the file to words
spliter=test_file.split()
#case1 is the unique set of values in spliter
case1=list(set(spliter))
# myvar is temporary variable for generating dictionary with words and count
myvar={}
# this loop calculates each word count in the file
mycount=0
for z in range(0,len(case1)):
	for j in range(0,len(spliter)):
		temp1=spliter[j]
		if temp1==case1[z]:mycount=mycount+1
	j=j+1
	myvar[z]=mycount
	mycount=0
	z=z+1
# this loop assigns word count to words and stores it in mynew
mynew={}
for i in range(0,len(case1)):
	mynew[i]=[case1[i],myvar[i]]
	i=i+1
# this module sorts the dictionary mynew by ASCII code for key
abcd=sorted(mynew.values(),key=lambda elem:(elem[0],elem[1]))
#print(abcd)

# this module writes results to file ft1.txt
dataCSV=open("./tweet_output/ft1.txt","w")
#writer = csv.writer(dataCSV, dialect='excel')
for i in range(0,len(abcd)):
	Field_Value1=abcd[i][0]
	Field_Value2=abcd[i][1]
	dataCSV.writelines(str(Field_Value1)+'\t'+str(Field_Value2)+"\n")
dataCSV.close()

# this function calculates the count of unique words in every tweet and returns dict defmedian
def function1(filename,t):
	with open("./tweet_input/tweets.txt","r") as f:
		defmedian={}
		for line in f:
			c=0
			split1=line.split()
			my={}
			for i in split1:
				if i in my:my[i]+1
				else:my[i]=1
			for j in my:
				if my[j]==1:
					c=c+1
			defmedian[t]=c
			t=t+1
		return(defmedian)
# this function calculates median of tweets as they come in and returns dictionary 'median'

def medianfunction(list1,n):
	for n in range(0,len(list1)):
		for i in range (0,n+1):
			emp1[i]=list1.get(i)
			
		i=i+1
                # sorts the stored file to calculate median
		empsorted=sorted(emp1.values())
		if n==0:median[n]=empsorted[n]
		elif n%2!=0:median[n]=(empsorted[int((n-1)/2)]+empsorted[int(((n-1)/2))+1])/2
		else:median[n]=empsorted[int(n/2)]
	n=n+1
	return(median)

# def emp1,median as {} to start
emp1={}
empsorted=[]
median={}
# final result can be obtained by running nested functions medianfunction and function1 on file "tweet.txt"
final=medianfunction(function1("./tweet_input/tweets.txt",0),0)
#print(final)

# this module writes to file ft2.txt in directory tweet_output
dataCSV=open("./tweet_output/ft2.txt","w")
writer = csv.writer(dataCSV, dialect='excel')
for i in range(0,len(final)):
	Field_Value3=final[i]
	
	writer.writerow([Field_Value3])
dataCSV.close()



