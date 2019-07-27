# ds_algo
 [![Build Status](https://travis-ci.com/imhtapm/ds_algo.svg?branch=master)](https://travis-ci.com/imhtapm/ds_algo)

This ruby gem is aimed to build a library for data structures and algorithms. with learning methods, facts.

## Install

```
gem install ds_algo
```

## Data Structures

Everything in computer is data. When you are dealing with computer, you have to understand the structure of the data. So, Data structures are funtamental part of software engineering and development.

### Linked List
Linked list is like chain of data. They are made of nodes, each node has a data, next_val or pre_val and next_val.
There are two type of linked list 
- Singly
- Doubly

#### Singly

```
require 'data_struct/linked_list'

singly = LinkedList::Singly.new
```
##### Methods => #push, #shift, #pop, #each, #index, #index_of, #to_s, #to_a, :length

#### Doubly

```
require 'data_struct/linked_list'

doubly = LinkedList::Doubly.new
```
##### Methods => #push, #shift, #pop, #each, #index, #index_of, #to_s, #to_a, :length

### Stacks
First In Last Out(FILO) type data structure. One of widely used data structure. 

```
require 'data_struct/stack'

stack = Stack.new
```
##### Methods => #push, #pop, #top, #empty?, #to_a, :length

### Queue
First In First Out(FIFO) type data structure. One of widely used data structure. 

```
require 'data_struct/queue'

queue = Queue.new
```
##### Methods => #in, #out, #front, #last, #empty?,  #to_a, :length

## Contribution
Feel free to make pull request. 


