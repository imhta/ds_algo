# frozen_string_literal: true

# This is class used to learn about algo and ds
class DsAlgo
  # #ds-eff? => nil
  # used to know the efficiency of the data structure, its a table in a terminal
  def ds_eff?
    puts '+-----------------------------------------------------------------------------------+'
    puts '|                          Efficency table for DsAlgo                               |'
    puts '|                                                                                   |'
    puts '|                        B- Begining, M- Middle,  E- End                            |'
    puts '+-----------------------------------------------------------------------------------+'
    puts '| Type         |  Indexing  |  Insert/Delete B|  Insert/Delete E|  Insert/Delete M  |'
    puts '+-----------------------------------------------------------------------------------+'
    puts '|Linked list(S)|     O(n)  |       O(1)      |       O(1)      | search time+O(1)   |'
    puts '+-----------------------------------------------------------------------------------+'
    puts '|Linked list(D)|     O(n)  |       O(1)      |       O(1)      | search time+O(1)   |'
    puts '+-----------------------------------------------------------------------------------+'
    puts '|   Stack      |     nil   |        nil      |       O(1)      |        nil         |'
    puts '+-----------------------------------------------------------------------------------+'
    puts '|   Queue      |     nil   |        O(1)     |       O(1)      |        nil         |'
    puts '+-----------------------------------------------------------------------------------+'
  end
end
