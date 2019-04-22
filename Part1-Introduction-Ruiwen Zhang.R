# Create a numeric variable my.age that is equal to your age.
> my.age<-29
> my.age
[1] 29

# Create a variable my.name that stores your name
> my.name<-c("Rita")
> my.name
[1] "Rita"

# Define a function called MakeIntroduction that takes in two arguments: a name and an age. The function should return a character string of the format "Hello, my name is NAME and I'm AGE years old." (replacing NAME and AGE with the arguments)
> MakeIntroduction <- function(...){
  args <- list(...)
  NAME <- args[["NAME"]]
  AGE <- args[["AGE"]]
  paste("Hello, my name is", NAME, "and I'm", AGE, "years old.")
}

# Create a variable my.intro by passing your variables my.name and my.age into your MakeIntroduction() function. Print the variable after you create it.
> MakeIntroduction(NAME = my.name,AGE = my.age)
[1] "Hello, my name is Rita and I'm 29 years old."
> my.intro <- MakeIntroduction(NAME = my.name, AGE = my.age)

> my.intro
[1] "Hello, my name is Rita and I'm 29 years old."


# Create a variable casual.intro by using the sub() function to replace (substitute) "Hello, my name is ", with "Hey, I'm" in your my.intro variable. You may need to look up the arguments for this function! Print the variable after you create it.
> casual.intro <- function (my.intro){
  sub("Hello", "Hey", c(my.intro))
}

> casual.intro(my.intro)
[1] "Hey, my name is Rita and I'm 29 years old."

# Create a variable capital.intro, which is your my.intro variable with each word capitalized. Use the stringr library function str_to_title() to do this. You will need to install and load the stringr library: do this at the top of your script. Print the variable after you create it.
> library(stringr)
> install.packages("space")
> package 'space' successfully unpacked and MD5 sums checked
> The downloaded binary packages are in
C:\Users\ritap\AppData\Local\Temp\Rtmp4aXkrO\downloaded_packages

> capital.intro <- function(my.intro){
  str_to_title(my.intro)
}

> capital.intro(my.intro)
[1] "Hello, My Name Is Rita And I'm 29 Years Old."

# Create a variable intro.e.count that stores the number of times the letter 'e' (lower-case only) appears in the my.intro variable. Find another method from the stringr library to "count" the letters. Print the variable after you create it.
>intro.e.count <- function(my.intro){
  str_count(my.intro,"e")
}

> intro.e.count(my.intro)
[1] 3